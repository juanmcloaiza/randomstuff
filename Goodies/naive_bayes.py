# Quick intro to naive bayes:
# https://blog.paperspace.com/introduction-to-naive-bayes/
#
# P(B|A) = P(A and B)/P(A) 
#
# It follows that:
# P(A|B) = P(B|A) P(A) / P(B) 
#
# Predicting an outcome from a set of observations (evidence):
# P(Y=k | X1...Xn) is called the Posterior Probability
# P(X1 | Y=k) * P(X2 | Y=k) * ... P(Xn | Y=k) is the probability of the likelihood of evidence.
# P(Y=k) is called the Prior Probability.
# P(X1)*P(X2)*P(Xn) is the probability of the evidence.
# "Naive" because it assumes that X1, X2, ... , Xn are independent from each other
#
# P(Y=k | X1...Xn) =  P(Y=k) * P(X1 | Y=k) * P(X2 | Y=k) *...* P(Xn | Y=k) / ( P(X1)*...*P(Xn) )

#Advantages:
#  - Easy to grasp and works quickly to predict class labels.
#  - Performs well on multi-class prediction.
#  - When the assumption of independence holds, performs better than other models like logistic regression.
#  - Need less training data as compared to other models.
#  - It performs well when the input values are categorical rather than numeric. 

#Disadvantages:
#  - If a categorical variable has a category in the test data set, which is not observed by the model in the training data,
#    it will assign a 0 (zero) probability and not be able to make a prediction. This is often referred to as "Zero Frequency".
#    To solve this problem, the smoothing technique is used. One of the simplest smoothing techniques is called Laplace estimation.
#  - Assumption of independence among the features, which is mostly not the case in reality.
#  - In the case of numerical data, a normal distribution is assumed to compute the probabilities (a bell curve, which is a strong assumption).


import numpy as np

# Import LabelEncoder
from sklearn import preprocessing

# Import Gaussian Naive Bayes model
# GaussianNB is the Gaussian Naive Bayes algorithm
# The likelihood of the features is assumed to be Gaussian.
from sklearn.naive_bayes import GaussianNB

# Assigning features and label variables
weather = ['Sunny','Sunny','Overcast','Rainy','Rainy','Rainy','Overcast','Sunny','Sunny','Rainy','Sunny','Overcast','Overcast','Rainy']
temp = ['Hot','Hot','Hot','Mild','Cool','Cool','Cool','Mild','Cool','Mild','Mild','Mild','Hot','Mild']
play = ['No','No','Yes','Yes','Yes','No','Yes','No','Yes','Yes','Yes','Yes','Yes','No']


# Creating labelEncoder
le = preprocessing.LabelEncoder()

# Converting string labels into numbers
weather_encoded=le.fit_transform(weather)
print("Weather: ",weather)
print("Weather encoded: ",weather_encoded)

temp_encoded = le.fit_transform(temp)
print("Temp: ",temp)
print("Temp encoded: ",temp_encoded)

label = le.fit_transform(play)
print("Play encoded: ",play)
print("Play: ",label)

stacked = np.vstack([weather_encoded, temp_encoded]).T
print(stacked)

# Create a Gaussian Classifier
model = GaussianNB()

# Train the model using the training sets
model.fit(stacked,label)

# Predict Output
predicted= model.predict([[0,2]]) # 0:Overcast, 2:Mild
print ("Predicted Value:", predicted)