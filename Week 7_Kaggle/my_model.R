data = read.csv('C:/Users/my-pc-acct/Columbia/2021FallAAFM1/Kaggle Project/rentlala2021/analysisData.csv')
scoringData = read.csv('C:/Users/my-pc-acct/Columbia/2021FallAAFM1/Kaggle Project/rentlala2021/scoringData.csv')
model = lm(price~minimum_nights+review_scores_accuracy,data)
pred = predict(model,newdata=scoringData)
submissionDataFrame = data.frame(id = scoringData$id, price = pred)


model2 = lm(price~minimum_nights+review_scores_accuracy+review_scores_location, data)
pred2 = predict(model2, newdata=scoringData)
submissionDataFrame2 = data.frame(id=scoringData$id, price=pred2)
write.csv(submissionDataFrame2, 'C:/Users/my-pc-acct/Columbia/2021FallAAFM1/Kaggle Project/my_second_submission.csv',row.names = F)
