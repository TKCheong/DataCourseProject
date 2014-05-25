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

ds<-mergeddata[,c(1:6,41:46,81:86,121:126,161:166)]    #extract all mean and std columns
dsa<-mergeddata[,c(201:202,214:215,227:228,240:241)]
dsb<-mergeddata[,c(253:254,266:271,294:296,345:350,373:375)]
dsc<-mergeddata[,c(424:429,452:454,503:504,513,516:517)]
dsd<-mergeddata[,c(526,529:530,539,542:543,552,555:564)]
cleandata<-data.frame(ds,dsa,dsb,dsc,dsd)

library(data.table)                     
DT<-data.table(cleandata)
tidydata<-DT[,lapply(.SD,mean),by=list(subject,activitylabel)]   #calculate average for each measurements
View(tidydata)







