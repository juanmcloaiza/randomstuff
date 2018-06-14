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



# initialize parameters randomly:
W = 0.01 * np.random.randn(D,K) #weights
b = np.zeros((1,K)) #biases

loss_at_step = []
for i in range(200):
  
  # compute class scores for a linear classifier
  scores = np.dot(X, W) + b
  
  
  # get unnormalized probabilities and
  # normalize them for each example
  exp_scores = np.exp(scores)
  probs = exp_scores / np.sum(exp_scores, axis=1, keepdims=True)
  
  # logprobs of each class
  logprobs0 = -np.log(probs[range(num_examples),0])
  logprobs1 = -np.log(probs[range(num_examples),1])
  logprobs2 = -np.log(probs[range(num_examples),2])
  logprobs_all = -np.log(probs[range(num_examples),Y])
  
  # compute the loss: average cross-entropy loss and regularization
  lambda_reg = 1e-4
  data_loss = np.sum(logprobs_all)/num_examples
  reg_loss = 0.5*lambda_reg*np.sum(W*W)
  loss = data_loss + reg_loss
  
  # compute the gradient:
  dscores = probs
  dscores[range(num_examples),Y] -= 1
  dscores /= num_examples
  
  dW = np.dot(X.T, dscores)
  db = np.sum(dscores, axis=0, keepdims=True)
  dW += lambda_reg*W # don't forget the regularization gradient
  
  # perform a parameter update
  W += -dW
  b += -db

  # print update
  loss_at_step.append([loss,i])
  if(i%10 ==0):
    print("step: {} ; loss: {:.5f}".format(i,loss))

loss_at_step = np.array(loss_at_step)
plt.plot(loss_at_step[:,1], loss_at_step[:,0])
plt.xlabel("step")
plt.ylabel("loss")
plt.savefig("loss_at_step.png")

# evaluate training set accuracy
scores = np.dot(X, W) + b
predicted_class = np.argmax(scores, axis=1)
print('training accuracy (percentage of classes correctly classified): %.2f' % (np.mean(predicted_class == Y)))

xx, yy = np.meshgrid(np.arange(-1, 1, 0.01),np.arange(-1, 1, 0.01))
scores = np.dot(np.array([yy,xx]).T, W) + b
Z = np.argmax(scores,axis=2) # The index of the highest score (i.e. higher probability)

# Put the result into a color plot
Z = Z.reshape(xx.shape)
plt.figure()
plt.pcolormesh(xx, yy, Z)
plt.scatter(X[:,0],X[:,1],c=Y,edgecolor="black")
plt.savefig("learned_regions.png")
print("png outputs generated... ") 
