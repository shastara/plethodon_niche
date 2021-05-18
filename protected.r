library(sf)

p_layer <- st_read("C:/Users/tpelletier/Desktop/DataLayers/Export_Output.shp")
player <- as(p_layer, "Spatial")


P_asupak <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_asupak_maxent.csv")
P_dunni <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_dunni_maxent.csv")
P_elongatus <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_elongatus_maxent.csv")
P_idahoensis <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_idahoensis_maxent.csv")
P_larselli <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_larselli_maxent.csv")
P_stormi <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_stormi_maxent.csv")
P_vandykei <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_vandykei_maxent.csv")
P_vehiculum <- read.csv("C:/Users/tpelletier/Desktop/sallys/niche_paper/Final Species Data/P_vehiculum_maxent.csv")

p_as <- P_asupak
p_du <- P_dunni[,c(3,2)]
p_el <- P_elongatus[,c(3,2)]
p_id <- P_idahoensis[,c(3,2)]
p_la <- P_larselli[,c(3,2)]
p_st <- P_stormi[,c(3,2)]
p_va <- P_vandykei[,c(3,2)]
p_ve <- P_vehiculum[,c(3,2)]

coordinates(p_as)<-~decimalLongitude+decimalLatitude
coordinates(p_du)<-~decimalLongitude+decimalLatitude
coordinates(p_el)<-~decimalLongitude+decimalLatitude
coordinates(p_id)<-~decimalLongitude+decimalLatitude
coordinates(p_la)<-~decimalLongitude+decimalLatitude
coordinates(p_st)<-~decimalLongitude+decimalLatitude
coordinates(p_va)<-~decimalLongitude+decimalLatitude
coordinates(p_ve)<-~decimalLongitude+decimalLatitude

library(GISTools)

counts <- poly.counts(p_as, player)
counts<-as.data.frame(counts)
sum(counts$counts)

counts <- poly.counts(p_du, player)
counts<-as.data.frame(counts)
sum(counts$counts)

counts <- poly.counts(p_el, player)
counts<-as.data.frame(counts)
sum(counts$counts)

counts <- poly.counts(p_id, player)
counts<-as.data.frame(counts)
sum(counts$counts)

counts <- poly.counts(p_la, player)
counts<-as.data.frame(counts)
sum(counts$counts)

counts <- poly.counts(p_st, player)
counts<-as.data.frame(counts)
sum(counts$counts)

counts <- poly.counts(p_va, player)
counts<-as.data.frame(counts)
sum(counts$counts)

counts <- poly.counts(p_ve, player)
counts<-as.data.frame(counts)
sum(counts$counts)

################################
plot(player)
plot(p_ve, col="red" , add=TRUE)
