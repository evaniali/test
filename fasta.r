setwd("D:\\senioryear\\reserchtraining\\R\\02fasta")
fasta=scan("sequence.fasta", what='character',skip = 1)
str <- unlist(strsplit(fasta,""))
#unlist将list数据变成字符串向量或者数字向量的形式。
#strsplit按照指定分隔符拆分字符串

num<-aggregate(str,list(str),length) 
#Splits the data into subsets, computes summary statistics for each, 
#and returns the result in a convenient form.
fre<-num$x/sum(num$x)
print(data.frame(num$Group.1,fre))
