##############################################################################################################
# 
# 
# Program to Process, Analyze and plot soil chemical analysis results from the CCC Strategic tillage experiment
# 
# Felipe Montes 01/16/2023
# 
#
# 
# 
############################################################################################################### 



###############################################################################################################
#                             Tell the program where the package libraries are stored                        
###############################################################################################################


###############################################################################################################
#                             Setting up working directory  Loading Packages and Setting up working directory                        
###############################################################################################################


#      set the working directory

# readClipboard() Willow Rock Spring\\SkyCap_SelectionTrial\\DataCollection") ;   # 

"https://pennstateoffice365.sharepoint.com/:f:/s/StrategicTillageAndN2O/Ehl9Lh_gza5FiOtKIyDD7MQBOKFdFk6h_k4EEYEktWJUYw?e=uYLqL0"

setwd("D:\\Felipe\\CCC Based Experiments\\StrategicTillage_NitrogenLosses_OrganicCoverCrops\\Data\\Soil") ;

###############################################################################################################
#                            Install the packages that are needed                       
###############################################################################################################

install.packages("openxlxs", dependencies = T)

# 
# install.packages("magick", dependencies = T)
# 
# install.packages("jpeg", dependencies = T)
# 
# install.packages("Rcpp", dependencies = T)


###############################################################################################################
#                           load the libraries that are needed   
###############################################################################################################

library(openxlsx)

# library(lattice)
# 
# library(jpeg)
# 
# library(magick)

###############################################################################################################
#                           Read the results from the Lab  
###############################################################################################################

Lab.Results<-readWorkbook("D:\\Felipe\\CCC Based Experiments\\StrategicTillage_NitrogenLosses_OrganicCoverCrops\\Data\\Soil\\Soil2022\\S22-51678_S22-51917 Montes Soil data.xlsx", sheet=1) ;

head(Lab.Results)

names(Lab.Results)[2]<-"Soil.Lab.Analysis.Number" ;

###############################################################################################################
#                           Read the sample records information  
###############################################################################################################

Sample.Record<-readWorkbook("D:\\Felipe\\CCC Based Experiments\\StrategicTillage_NitrogenLosses_OrganicCoverCrops\\Data\\Soil\\Soil2022\\SoilAnalysis2022.xlsx", sheet= "SoilAnalysis") ;

head(Sample.Record)

Sample.Record$Sample.Date<-convertToDate(Sample.Record$Date) ;

head(Sample.Record)

###############################################################################################################
#                          Match the lab results with the sample records
###############################################################################################################

Sample.Lab.Analysis<-merge(Lab.Results,Sample.Record,by="Soil.Lab.Analysis.Number");

head(Sample.Lab.Analysis)

###############################################################################################################
#                         Write the lab analysis to an Excel spreadsheet
###############################################################################################################

write.xlsx(Sample.Lab.Analysis,"D:\\Felipe\\CCC Based Experiments\\StrategicTillage_NitrogenLosses_OrganicCoverCrops\\Data\\Soil\\Soil2022\\SoilAnalysisResults2022.xlsx",overwrite = T)

