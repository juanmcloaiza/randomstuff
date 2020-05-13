from __future__ import print_function, division
import tensorflow as tf
from tensorflow import keras

from tensorflow.keras.layers import Input, Dense, Reshape, Flatten, Dropout
from tensorflow.keras.layers import BatchNormalization
from tensorflow.keras.layers import LeakyReLU
from tensorflow.keras.models import Sequential, Model
from tensorflow.keras.optimizers import Adam

import matplotlib.pyplot as plt

import sys

import numpy as np
SLD_LENGTH = 256#512
REF_LENGTH = 256#129

class GAN():
    def __init__(self):
        self.img_rows = 1
        self.img_cols = SLD_LENGTH
        self.channels = 1
        self.sld_shape = (self.img_cols,)#, self.channels)

        optimizer = Adam(0.0002, 0.5)

        # Build and compile the discriminator
        self.discriminator = self.build_discriminator()
        self.discriminator.compile(loss='mean_squared_error', optimizer='adam', metrics=['mean_absolute_error', 'mean_squared_error'])
        #self.discriminator.compile(loss='binary_crossentropy', optimizer=optimizer, metrics=['accuracy'])

        # Build and compile the generator
        self.generator = self.build_generator()
        self.generator.compile(loss='mean_squared_error', optimizer='adam', metrics=['mean_absolute_error', 'mean_squared_error'])
        #self.generator.compile(loss='binary_crossentropy', optimizer=optimizer)

        # Build and compile the combined model
        self.combined = self.build_combined()
        self.combined.compile(loss='mean_squared_error', optimizer='adam', metrics=['mean_absolute_error', 'mean_squared_error'])
        #self.combined.compile(loss='binary_crossentropy', optimizer=optimizer)


    def build_combined(self):
        # The generator takes noise as input and generated imgs
        ref_curve_input_layer = Input(shape=(REF_LENGTH,))
        gen_sld_network = self.generator(ref_curve_input_layer)

        # For the combined model we will only train the generator
        #self.discriminator.trainable = False

        # The valid takes generated images as input and determines validity
        gen_ref_network = self.discriminator(gen_sld_network)

        # The combined model  (stacked generator and discriminator) takes
        # noise as input => generates images => determines validity
        return Model(ref_curve_input_layer, gen_ref_network)


    def build_generator(self):

        ref_shape = (REF_LENGTH,)
        single_input_size, output_size = REF_LENGTH, SLD_LENGTH

        model = Sequential()

        ###
        model.add(Dense(output_size, input_dim=single_input_size, 
                           kernel_initializer='random_uniform', activation=None))
        ###
        #model.add(Flatten(input_shape=ref_shape))
        #model.add(Dense(4*output_size, activation='relu'))    
        #model.add(Dense(4*output_size, activation='relu'))
        #model.add(Dense(4*output_size, activation='relu'))
        
        #model.add(Dropout(0.5))
        
        #model.add(Dense(output_size))
        model.summary()

        in_layer = Input(shape=ref_shape)
        out_layer = model(in_layer)

        return Model(in_layer, out_layer)


    def build_discriminator(self):

        sld_shape = self.sld_shape 
        single_input_size, output_size = SLD_LENGTH, REF_LENGTH

        model = Sequential()

        ###
        model.add(Dense(output_size, input_dim=single_input_size, 
                           kernel_initializer='random_uniform', activation=None))
        ###
        #model.add(Flatten(input_shape=sld_shape))
        #model.add(Dense(4*output_size, activation='relu'))    
        #model.add(Dense(4*output_size, activation='relu'))
        #model.add(Dense(4*output_size, activation='relu'))
        
        #model.add(Dropout(0.5))
        
        #model.add(Dense(output_size))
        model.summary()

        in_layer = Input(shape=sld_shape)
        out_layer = model(in_layer)

        return Model(in_layer, out_layer)

    def train(self, epochs, batch_size=128, save_interval=50):

        # Load the dataset
        print("Loading dataset...")
        #sld_train = np.load("../square_waves_sum_1/labels_arr_square_waves_sum_674729_shuffled.npy")
        #ref_train = np.load("../square_waves_sum_1/features_arr_square_waves_sum_674729_shuffled.npy")
        #ref_mean  = np.load("../square_waves_sum_1/reference_mean_square_waves_sum_674729.npy")
        #ref_std   = np.load("../square_waves_sum_1/reference_std_square_waves_sum_674729.npy")
        #sld_mean = sld_train.mean(axis=0)
        #sld_std = sld_train.std(axis=0)
        my_fft = lambda s: np.fft.fft(s, norm='ortho')
        sld_train = np.random.uniform(-2*np.pi,2*np.pi,(int(1e5),128))
        ref_train = my_fft(sld_train)
        # complex rearrange:
        sld_train = np.hstack([sld_train.real, sld_train.imag])
        ref_train = np.hstack([ref_train.real, ref_train.imag])
        sld_mean = 0.#sld_train.mean(axis=0)
        sld_std  = 1.#sld_train.std(axis=0)
        ref_mean = 0.#ref_train.mean(axis=0)
        ref_std  = 1.#ref_train.std(axis=0)

        # Rescale and expand dims if needed
        print("rescaling...")
        ref_train = np.nan_to_num( (ref_train - ref_mean) / ref_std )
        sld_train = np.nan_to_num( (sld_train - sld_mean) / sld_std )

        half_batch = int(batch_size / 2)

        for epoch in range(epochs):

            # ---------------------
            #  Train Discriminator
            # ---------------------

            # Select a random half batch of reflectivity curves / sld pairs:
            idx = np.random.randint(0, sld_train.shape[0], batch_size)
            real_slds = sld_train[idx]
            ref_curves = ref_train[idx]

            # Generate a half batch of new slds
            #gen_slds = self.generator.predict(ref_curves)

            # Train the discriminator
            d_loss_real = self.discriminator.train_on_batch(real_slds, ref_curves)
            #d_loss_fake = self.discriminator.train_on_batch(gen_slds, ref_curves)
            d_loss = d_loss_real#0.5 * np.add(d_loss_real, d_loss_fake)
            #d_loss_real = self.discriminator.train_on_batch(real_slds, np.ones((half_batch, 1)))
            #d_loss_fake = self.discriminator.train_on_batch(gen_slds, np.zeros((half_batch, 1)))
            #d_loss = 0.5 * np.add(d_loss_real, d_loss_fake)


            # ---------------------
            #  Train Generator
            # ---------------------

            idx = np.random.randint(0, sld_train.shape[0], batch_size)
            real_slds = sld_train[idx]
            ref_curves = ref_train[idx]

            # The generator wants the discriminator to label the generated samples
            # as valid (ones)
            #valid_y = real_slds
            #valid_y = np.array([1] * batch_size)

            # Train the generator
            g_loss = self.generator.train_on_batch(ref_curves, real_slds)
            #g_loss = self.combined.train_on_batch(ref_curves, valid_y)


            # ---------------------
            #  Train Combined
            # ---------------------

            idx = np.random.randint(0, sld_train.shape[0], batch_size)
            real_slds = sld_train[idx]
            ref_curves = ref_train[idx]

            # The generator wants the discriminator to label the generated samples
            # as valid (ones)
            #valid_y = real_slds
            #valid_y = np.array([1] * batch_size)

            # Train the generator
            c_loss = self.combined.train_on_batch(ref_curves, ref_curves)
            #g_loss = self.combined.train_on_batch(ref_curves, valid_y)

            # Plot the progress
            print ("%d [D loss: %f] [G loss: %f] [C loss: %f]" % (epoch, d_loss[0], g_loss[0], c_loss[0]))

            # If at save interval => save generated image samples
            if epoch % save_interval == 0:
                r, c = 2, 2
                idx = np.random.randint(0, sld_train.shape[0], r*c)
                real_refs = ref_train[idx]
                real_slds  = sld_train[idx]
                gen_slds = self.generator.predict(real_refs)
                gen_refs_d = self.discriminator.predict(real_slds)
                gen_refs_c = self.combined.predict(real_refs)

                # Rescale ref_curves to true dimensions:
                real_slds = real_slds * sld_std + sld_mean
                gen_slds = gen_slds * sld_std + sld_mean
                
                self.save_imgs(epoch, real_refs, gen_refs_d, gen_refs_c, r, c, prefix="refs")
                self.save_imgs(epoch, real_slds, gen_slds, real_refs, r, c, prefix="slds")


    def save_imgs(self, epoch, real, gen_1, gen_2, r, c, prefix="img"):
        import warnings
        warnings.filterwarnings('ignore')
        fig, axs = plt.subplots(r, c)
        cnt = 0
        for i in range(r):
            for j in range(c):
                axs[i,j].plot(0 + real[cnt])
                axs[i,j].plot(10 + gen_1[cnt])
                axs[i,j].plot(-10 + gen_2[cnt])
                #axs[i,j].axis('off')
                cnt += 1
        fig.savefig("./images/%s_%d.png" % (prefix, epoch))
        plt.close()


if __name__ == '__main__':
    gan = GAN()
    gan.train(epochs=30000, batch_size=32, save_interval=200)