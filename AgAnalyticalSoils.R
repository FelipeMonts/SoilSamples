##############################################################################################################
# 
# 
# Program to plot soil analysis results from the Ag analytical laboratory
# It is going to be used in teh report of the living filter willow project
#  
# 
# Felipe Montes 2019 01/29
# 
############################################################################################################### 



#  Tell the program where the package libraries are  #####################


.libPaths("C:/Felipe/SotwareANDCoding/R_Library/library")  ;


setwd('C:\\Felipe\\Willow_Project\\Willow_Experiments\\LivingFilter') ;


library('lattice') ;
library('latticeExtra') ;
library('openxlsx') ;

############ read soil analysis data from the excel spreadsheet provided by the Ag analytical service at penn state ####
Data.ColLabels<-read.xlsx('Montes_10_4_18.xlsx', sheet=1, startRow=1,colNames = T, rows=1) ;

Data.1<-read.xlsx('Montes_10_4_18.xlsx', sheet=1, startRow=125,colNames = F, rows=c(125:142)) ;

names(Data.1)<-names(Data.ColLabels)  ;

####### Split the Field.ID column into its components



FieldId.split<-sapply(strsplit(Data.1$Field.ID,split=" "), FUN='[') ;

str(FieldId.split);


Data.1$Block<-FieldId.split[1,] ;

Data.1$Depth<-FieldId.split[3,] ;

#Using Lattice to plot the data
names(Data.1)[9]<-"CEC.meq_100g"

bwplot(pH~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');


bwplot(Phosphorus.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(Potassium.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(Magnesium.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(Calcium.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(CEC.meq_100g~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(Nitrate.Nitrogen.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(Zinc.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(Copper.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');

bwplot(Sulfur.ppm~Block|Depth, data=Data.1, auto.key=T ,xlab='Block', main=list(label='Depth', font=1));
title(main='Depth');
