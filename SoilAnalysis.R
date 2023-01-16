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


