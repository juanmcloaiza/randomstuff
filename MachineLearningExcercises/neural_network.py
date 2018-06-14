#!/bin/env python
import numpy as np
import matplotlib.pyplot as plt
import sys

N = 300 # number of *total* data points
D = 2 # dimensionality
K = 3 # number of classes

# read input data:
X = [] # data points (coordinates)
Y = [] # classes of the data points (1,2,3)
input_data = sys.argv[1]
with open(input_data,'r') as fr:
  for line in fr:
    X.append(line.strip().split(',')[0:2])
    Y.append(line.strip().split(',')[2])
X = np.array(X).astype(np.double)
Y = np.array(Y).astype(np.uint8)
num_examples = X.shape[0]


# hidden layer parameters:
h = 100 #size of hidden layer
W = 0.01 * np.random.randn(D,h) #weights
b = np.zeros((1,h)) #biases

# initialize parameters randomly:
W2= 0.01 * np.random.randn(h,K) #weights
b2= np.zeros((1,K)) #biases


loss_at_step = []
for i in range(10000):
  # evaluate class scores with a 2-layer Neural Network
  hidden_layer = np.maximum(0, np.dot(X, W) + b) # note, ReLU activation
  scores = np.dot(hidden_layer, W2) + b2

  
  # get unnormalized probabilities and
  # normalize them for each example
  exp_scores = np.exp(scores)
  probs = exp_scores / np.sum(exp_scores, axis=1, keepdims=True)
  
  # logprobs of each class
  logprobs_all = -np.log(probs[range(num_examples),Y])
  
  # compute the loss: average cross-entropy loss and regularization
  lambda_reg = 1e-4
  data_loss = np.sum(logprobs_all)/num_examples
  reg_loss = 0.5*lambda_reg*np.sum(W*W) + 0.5*lambda_reg*np.sum(W2*W2)
  loss = data_loss + reg_loss
  
  # compute the gradient (back-propagate) for the hidden layer:
  dscores = probs
  dscores[range(num_examples),Y] -= 1
  dscores /= num_examples
  
  dW2 = np.dot(hidden_layer.T, dscores)
  db2 = np.sum(dscores, axis=0, keepdims=True)

  # backprop the ReLU non-linearity
  dhidden = np.dot(dscores, W2.T)
  dhidden[hidden_layer <= 0] = 0

  # finally to the original weights and biases:
  dW = np.dot(X.T, dhidden)
  db = np.sum(dhidden, axis=0, keepdims=True)

  # add regularization gradient contribution
  dW2 += lambda_reg * W2
  dW += lambda_reg * W

  # perform a parameter update
  W += -dW
  b += -db
  W2 += -dW2
  b2 += -db2

  # print update
  loss_at_step.append([loss,i])
  if(i%1000 ==0):
    print("step: {} ; loss: {:.5f}".format(i,loss))

loss_at_step = np.array(loss_at_step)
plt.plot(loss_at_step[:,1], loss_at_step[:,0])
plt.xlabel("step")
plt.ylabel("loss")
plt.savefig("loss_at_step_nn.png")

# evaluate training set accuracy
scores = np.dot(hidden_layer, W2) + b2
predicted_class = np.argmax(scores, axis=1)
print('training accuracy (percentage of classes correctly classified): %.2f' % (np.mean(predicted_class == Y)))

# Make predictions:

# input point:
xx, yy = np.meshgrid(np.arange(-1, 1, 0.01),np.arange(-1, 1, 0.01))
# pass it through the hidden layer:
hidden_layer = np.maximum(0, np.dot(np.array([yy,xx]).T, W) + b) # note, ReLU activation
# give it a score according to the learned weights:
scores = np.dot(hidden_layer, W2) + b2
# Associate the class of the higher score:
Z = np.argmax(scores,axis=2) # The index of the highest score (i.e. higher probability)

# Put the result into a color plot
Z = Z.reshape(xx.shape)
plt.figure()
plt.pcolormesh(xx, yy, Z)
plt.scatter(X[:,0],X[:,1],c=Y,edgecolor="black")
plt.savefig("learned_regions_nn.png")
print("png outputs generated... ") 
