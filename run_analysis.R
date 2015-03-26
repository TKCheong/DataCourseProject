xtest<-read.table('test/X_test.txt')              #import files into R
xtrain<-read.table('train/X_train.txt')
ytest<-read.table('test/y_test.txt')
ytrain<-read.table('train/y_train.txt')
subjecttest<-read.table('test/subject_test.txt')
subjecttrain<-read.table('train/subject_train.txt')

dftest<-data.frame(xtest)                       #create dataframe for test
dftrain<-data.frame(xtrain)                     #create dataframe for train
dataset<-rbind(dftest,dftrain)                  #append activity test and train data

features<-read.table('features.txt')            #load features file for column names
newfeatures<-gsub("\\(\\)","",features[[2]])    #remove parentheses/brackets
newfeatures<-gsub("-","",newfeatures)           #remove hyphen
newfeatures<-gsub("\\.","",newfeatures)         #remove dots
newfeatures<-tolower(newfeatures)               #change to lower case
names(dataset)<-paste(newfeatures)

dftest1<-data.frame(subjecttest,ytest)         #create dataframe for subject and ytest
dftrain1<-data.frame(subjecttrain,ytrain)
dataset2<-rbind(dftest1,dftrain1)
data_names<-c('subject','activity')            #create column names for subject and activity
names(dataset2)<-data_names
finaldata<-cbind(dataset,dataset2)             #append all files

activity<-read.table('activity_labels.txt')     #load activity file 
activityname<-c('activity','activitylabel')     #creating variable names
names(activity)<-activityname

library(plyr)                               
mergeddata<-join(finaldata,activity,type="inner")      #merge by activity in dataset with activity names

exmean<-grep('mean',names(mergeddata))
newexmean<-mergeddata[,c(exmean)]
exstd<-grep('std',names(mergeddata))
newexstd<-mergeddata[,c(exstd)]
extra<-mergeddata[,c(562:564)]
cleandata<-cbind(newexmean,newexstd,extra)

library(data.table)                     
DT<-data.table(cleandata)
tidydata<-DT[,lapply(.SD,mean),by=list(subject,activitylabel)]   #calculate average for each measurements
View(tidydata)







