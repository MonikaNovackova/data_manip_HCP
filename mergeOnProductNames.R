
HPdata=read.csv('~/../../../data/HP/MOnika2/HPdata.csv')
names(HPdata)[1]="HPregion"
ModelMap=read.csv('~/../../../data/HP/MOnika2/ModelMap.csv')
names(ModelMap)[1]="MOdelName"

summary(HPdata)
summary(ModelMap)

dataMerged=merge(HPdata,ModelMap,all=TRUE)
write.csv(dataMerged,'~/../../../data/HP/MOnika2/dataMerged.csv')

setdiff(HPdata$Guidance,ModelMap$Guidance)
mergedResultFriday=read.csv('~/../../../data/HP/MOnika2/mergeResultFriday.csv')

setdiff(dataMerged$Guidance,mergedResultFriday$guidance)

setdiff(ModelMap$Guidance,HPdata$Guidance)