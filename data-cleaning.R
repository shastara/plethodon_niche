library(tidyverse)
library(maps)
library(tools)
library(rgdal)
library(plyr)

mapWorld <- borders("world", colour="gray50", fill="gray50")

#create quick maps to observe points
#create list of all GBIF files
filename <- Sys.glob("*csv")

#loop for maps
for (f in filename){
  species <- file_path_sans_ext(f)
  file <- read.delim(f)
  g <- ggplot() + mapWorld + geom_point(data = file, aes(x = decimalLongitude, y = decimalLatitude)) + coord_quickmap()
  
  pdf(file = paste (species,"_points1.pdf"))
  plot(g)
  dev.off()
}

#maps zoomed in to focus on points in PNW
for (f in filename){
  species <- file_path_sans_ext(f)
  file <- read.delim(f)
  g <- ggplot() + mapWorld + geom_point(data = file, aes(x = decimalLongitude, y = decimalLatitude, color = basisOfRecord)) + xlim(-134,-111) + ylim(31,58) + coord_quickmap()
  
  pdf(file = paste (species,"_points2.pdf"))
  plot(g)
  dev.off()
}

##############################################################################
#import data from GBIF to clean separately

raw_asupak <- read.delim("asupak.csv")
raw_dunni <- read.delim("dunni.csv")
raw_elongatus <- read.delim("elongatus.csv")
raw_idahoensis <- read.delim("idahoensis.csv")
raw_larselli <- read.delim("larselli.csv")
raw_stormi <- read.delim("stormi.csv")
raw_vandykei <- read.delim("vandykei.csv")
raw_vehiculum <- read.delim("vehiculum.csv")

#pull needed columns
c_asupak <- raw_asupak[, c(10,22,23)]
c_dunni <- raw_dunni[, c(10,22,23)]
c_elongatus <- raw_elongatus[, c(10,22,23)]
c_idahoensis <- raw_idahoensis[, c(10,22,23)]
c_larselli <- raw_larselli[, c(10,22,23)]
c_stormi <- raw_stormi[, c(10,22,23)]
c_vandykei <- raw_vandykei[, c(10,22,23)]
c_vehiculum <- raw_vehiculum[, c(10,22,23)]

#merge two datasets

#remove impossible points
c_asupak <- c_asupak %>% filter(decimalLatitude != 0, decimalLongitude != 0)
c_dunni <- c_dunni %>% filter(decimalLatitude != 0, decimalLongitude != 0)
c_elongatus <- c_elongatus %>% filter(decimalLatitude != 0, decimalLongitude != 0)
c_idahoensis <- c_idahoensis %>% filter(decimalLatitude != 0, decimalLongitude != 0)
c_larselli <- c_larselli %>% filter(decimalLatitude != 0, decimalLongitude != 0)
c_stormi <- c_stormi %>% filter(decimalLatitude != 0, decimalLongitude != 0)
c_vandykei <- c_vandykei %>% filter(decimalLatitude != 0, decimalLongitude != 0)
c_vehiculum <- c_vehiculum %>% filter(decimalLatitude != 0, decimalLongitude != 0)

#round all points to two decimal places so that precision is same across all individuals.
c_asupak$decimalLatitude <- round(c_asupak$decimalLatitude, digits = 2)
c_dunni$decimalLatitude <- round(c_dunni$decimalLatitude, digits = 2)
c_elongatus$decimalLatitude <- round(c_elongatus$decimalLatitude, digits = 2)
c_idahoensis$decimalLatitude <- round(c_idahoensis$decimalLatitude, digits = 2)
c_larselli$decimalLatitude <- round(c_larselli$decimalLatitude, digits = 2)
c_stormi$decimalLatitude <- round(c_stormi$decimalLatitude, digits = 2)
c_vandykei$decimalLatitude <- round(c_vandykei$decimalLatitude, digits = 2)
c_vehiculum$decimalLatitude <- round(c_vehiculum$decimalLatitude, digits = 2)

c_asupak$decimalLongitude <- round(c_asupak$decimalLongitude, digits = 2)
c_dunni$decimalLongitude <- round(c_dunni$decimalLongitude, digits = 2)
c_elongatus$decimalLongitude <- round(c_elongatus$decimalLongitude, digits = 2)
c_idahoensis$decimalLongitude <- round(c_idahoensis$decimalLongitude, digits = 2)
c_larselli$decimalLongitude <- round(c_larselli$decimalLongitude, digits = 2)
c_stormi$decimalLongitude <- round(c_stormi$decimalLongitude, digits = 2)
c_vandykei$decimalLongitude <- round(c_vandykei$decimalLongitude, digits = 2)
c_vehiculum$decimalLongitude <- round(c_vehiculum$decimalLongitude, digits = 2)

####################################################################################
#remove spurious points

#asupak
p_asupak <- c_asupak %>% filter(decimalLongitude > -123.5)
ggplot() + mapWorld + geom_point(data = p_asupak, aes(x = decimalLongitude, y = decimalLatitude)) + xlim(-134,-111) + ylim(31,58) + coord_quickmap()

#dunni
p_dunni <- c_dunni %>% filter(decimalLatitude < 47)
ggplot() + mapWorld + geom_point(data = p_dunni, aes(x = decimalLongitude, y = decimalLatitude)) + xlim(-134,-111) + ylim(31,58) + coord_quickmap()

#elongatus
p_elongatus <- c_elongatus %>% filter(decimalLatitude > 40)
ggplot() + mapWorld + geom_point(data = p_elongatus, aes(x = decimalLongitude, y = decimalLatitude)) + xlim(-134,-111) + ylim(31,58) + coord_quickmap()

#idahoensis
#none
  
#larselli
#none
  
#stormi
#none
  
#vandykei
p_vandykei <- c_vandykei %>% filter(decimalLongitude < -120)
ggplot() + mapWorld + geom_point(data = p_vandykei, aes(x = decimalLongitude, y = decimalLatitude)) + xlim(-134,-111) + ylim(31,58) + coord_quickmap()

#vehiculum
p_vehiculum <- c_vehiculum %>% filter(decimalLongitude < -120)
p_vehiculum <- p_vehiculum %>% filter(decimalLatitude > 40)
ggplot() + mapWorld + geom_point(data = p_vehiculum, aes(x = decimalLongitude, y = decimalLatitude)) + xlim(-134,-111) + ylim(31,58) + coord_quickmap()

#####################################################################################
#remove dups
p_asupak <- unique(p_asupak)
p_dunni <- unique(p_dunni)
p_elongatus <- unique(p_elongatus)
p_idahoensis <- unique(c_idahoensis)
p_larselli <- unique(c_larselli)
p_stormi <- unique(c_stormi)
p_vandykei <- unique(p_vandykei)
p_vehiculum <- unique(p_vehiculum)


#export
write.csv(p_asupak, file="Pasupak.csv", row.names=F)
write.csv(p_dunni, file="Pdunni.csv", row.names=F)
write.csv(p_elongatus, file="Pelongatus.csv", row.names=F)
write.csv(p_idahoensis, file="Pidahoensis.csv", row.names=F)
write.csv(p_larselli, file="Plarselli.csv", row.names=F)
write.csv(p_stormi, file="Pstormi.csv", row.names=F)
write.csv(p_vandykei, file="Pvandykei.csv", row.names=F)
write.csv(p_vehiculum, file="Pvehiculum.csv", row.names=F)

#####################################################################################
#create plots for supp MS

asupak <- read.csv("Pasupak.csv")
dunni <- read.csv("Pdunni.csv")
elongatus <- read.csv("Pelongatus.csv")
idahoensis <- read.csv("Pidahoensis.csv")
larselli <- read.csv("Plarselli.csv")
stormi <- read.csv("Pstormi.csv")
vandykei <- read.csv("Pvandykei.csv")
vehiculum <- read.csv("Pvehiculum.csv")

#asupak
a = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_asupak/data_0.shp")
a@data$id = rownames(a@data)
a.points = fortify(a, region="id")
a.df = join(a.points, a@data, by="id")

ga <- ggplot() + geom_polygon(data = a.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = asupak, aes(x = decimalLongitude, y = decimalLatitude)) + ggtitle("asupak") + coord_quickmap()
ga

#dunni
d = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_dunni/data_0.shp")
d@data$id = rownames(d@data)
d.points = fortify(d, region="id")
d.df = join(d.points, d@data, by="id")

gd <- ggplot() + geom_polygon(data = d.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = dunni, aes(x = decimalLongitude, y = decimalLatitude)) + ggtitle("dunni") + coord_quickmap()
gd

#elongatus
e = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_elongatus/data_0.shp")
e@data$id = rownames(e@data)
e.points = fortify(e, region="id")
e.df = join(e.points, e@data, by="id")

ge <- ggplot() + geom_polygon(data = e.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = elongatus, aes(x = decimalLongitude, y = decimalLatitude)) + ggtitle("elongatus") + coord_quickmap()
ge

#idahoensis
i = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_idahoensis/data_0.shp")
i@data$id = rownames(i@data)
i.points = fortify(i, region="id")
i.df = join(i.points, i@data, by="id")

gi <- ggplot() + geom_polygon(data = i.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = idahoensis, aes(x = decimalLongitude, y = decimalLatitude)) + ggtitle("idahoensis") + coord_quickmap()
gi

#larselli
l = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_larselli/data_0.shp")
l@data$id = rownames(l@data)
l.points = fortify(l, region="id")
l.df = join(l.points, l@data, by="id")

gl <- ggplot() + geom_polygon(data = l.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = larselli, aes(x = decimalLongitude, y = decimalLatitude)) + ggtitle("larselli") + coord_quickmap()
gl

#stormi
s = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_stormi/data_0.shp")
s@data$id = rownames(s@data)
s.points = fortify(s, region="id")
s.df = join(s.points, s@data, by="id")

gs <- ggplot() + geom_polygon(data = s.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = stormi, aes(x = decimalLongitude, y = decimalLatitude)) + ggtitle("stormi") + coord_quickmap() 
gs

#vandykei
va = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_vandykei/data_0.shp")
va@data$id = rownames(va@data)
va.points = fortify(va, region="id")
va.df = join(va.points, va@data, by="id")

gva <- ggplot() + geom_polygon(data = va.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = vandykei, aes(x = decimalLongitude, y = decimalLatitude))  + ggtitle("vandykei") + coord_quickmap()
gva

#vehiculum
ve = readOGR("~/Desktop/Plethodon/redlist_downloads/redlist_species_data_vehiculum/data_0.shp")
ve@data$id = rownames(ve@data)
ve.points = fortify(ve, region="id")
ve.df = join(ve.points, ve@data, by="id")

gve <- ggplot() + geom_polygon(data = ve.df, aes(long,lat, group=group), colour = "red", fill=NA) + geom_point(data = vehiculum, aes(x = decimalLongitude, y = decimalLatitude)) + ggtitle("vehiculum") + coord_quickmap()
gve

pdf(file = "all_species.pdf")
plot(ga)
plot(gd)
plot(ge)
plot(gi)
plot(gl)
plot(gs)
plot(gva)
plot(gve)
dev.off()
