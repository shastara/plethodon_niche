library(raster)
library(maps)
library(ENMTools)
library(ENMeval)


###asupak###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/asupak")

#import all raster layers
c_asupak <- raster("P_asupak_raster.asc")

f_CCSM4_4550_asupak <- raster("P_asupak_ccsm4_4550.asc")
f_CCSM4_4570_asupak <- raster("P_asupak_ccsm4_4570.asc")
f_CCSM4_8550_asupak <- raster("P_asupak_ccsm4_8550.asc")
f_CCSM4_8570_asupak <- raster("P_asupak_ccsm4_8570.asc")
f_MIROC5_4550_asupak <- raster("P_asupak_miroc5_4550.asc")
f_MIROC5_4570_asupak <- raster("P_asupak_miroc5_4570.asc")
f_MIROC5_8550_asupak <- raster("P_asupak_miroc5_8550.asc")
f_MIROC5_8570_asupak <- raster("P_asupak_miroc5_8570.asc")

#calculate niche breadth
b_asupak <- calc.B2(c_asupak)

#calculate range overlap between current and future
asupak_stack <- stack(c_asupak, f_CCSM4_4550_asupak, f_CCSM4_4570_asupak, f_CCSM4_8550_asupak, f_CCSM4_8570_asupak, f_MIROC5_4550_asupak, f_MIROC5_4570_asupak, f_MIROC5_8550_asupak, f_MIROC5_8570_asupak)

o_asupak <- calc.niche.overlap(asupak_stack, stat = "D")
write.table(o_asupak, file="o_asupak.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_asupak)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_asupak)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_asupak)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_asupak)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_asupak)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_asupak)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_asupak)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_asupak)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_asupak)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

asupak <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###dunni###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/dunni")

#import all raster layers
c_dunni <- raster("P_dunni_raster.asc")

f_CCSM4_4550_dunni <- raster("P_dunni_ccsm4_4550.asc")
f_CCSM4_4570_dunni <- raster("P_dunni_ccsm4_4570.asc")
f_CCSM4_8550_dunni <- raster("P_dunni_ccsm4_8550.asc")
f_CCSM4_8570_dunni <- raster("P_dunni_ccsm4_8570.asc")
f_MIROC5_4550_dunni <- raster("P_dunni_miroc5_4550.asc")
f_MIROC5_4570_dunni <- raster("P_dunni_miroc5_4570.asc")
f_MIROC5_8550_dunni <- raster("P_dunni_miroc5_8550.asc")
f_MIROC5_8570_dunni <- raster("P_dunni_miroc5_8570.asc")

#calculate niche breadth
b_dunni <- calc.B2(c_dunni)

#calculate range overlap between current and future
dunni_stack <- stack(c_dunni, f_CCSM4_4550_dunni, f_CCSM4_4570_dunni, f_CCSM4_8550_dunni, f_CCSM4_8570_dunni, f_MIROC5_4550_dunni, f_MIROC5_4570_dunni, f_MIROC5_8550_dunni, f_MIROC5_8570_dunni)

o_dunni <- calc.niche.overlap(dunni_stack, stat = "D")
write.table(o_dunni, file="o_dunni.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_dunni)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_dunni)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_dunni)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_dunni)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_dunni)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_dunni)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_dunni)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_dunni)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_dunni)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

dunni <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###vehiculum###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/vehiculum")

#import all raster layers
c_vehiculum <- raster("P_vehiculum_raster.asc")

f_CCSM4_4550_vehiculum <- raster("P_vehiculum_ccsm4_4550.asc")
f_CCSM4_4570_vehiculum <- raster("P_vehiculum_ccsm4_4570.asc")
f_CCSM4_8550_vehiculum <- raster("P_vehiculum_ccsm4_8550.asc")
f_CCSM4_8570_vehiculum <- raster("P_vehiculum_ccsm4_8570.asc")
f_MIROC5_4550_vehiculum <- raster("P_vehiculum_miroc5_4550.asc")
f_MIROC5_4570_vehiculum <- raster("P_vehiculum_miroc5_4570.asc")
f_MIROC5_8550_vehiculum <- raster("P_vehiculum_miroc5_8550.asc")
f_MIROC5_8570_vehiculum <- raster("P_vehiculum_miroc5_8570.asc")

#calculate niche breadth
b_vehiculum <- calc.B2(c_vehiculum)

#calculate range overlap between current and future
vehiculum_stack <- stack(c_vehiculum, f_CCSM4_4550_vehiculum, f_CCSM4_4570_vehiculum, f_CCSM4_8550_vehiculum, f_CCSM4_8570_vehiculum, f_MIROC5_4550_vehiculum, f_MIROC5_4570_vehiculum, f_MIROC5_8550_vehiculum, f_MIROC5_8570_vehiculum)

o_vehiculum <- calc.niche.overlap(vehiculum_stack, stat = "D")
write.table(o_vehiculum, file="o_vehiculum.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_vehiculum)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_vehiculum)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_vehiculum)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_vehiculum)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_vehiculum)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_vehiculum)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_vehiculum)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_vehiculum)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_vehiculum)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

vehiculum <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###dunni-vehiculum###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/dunni-vehiculum")

#import all raster layers
c_dunni_vehiculum <- raster("P_dunni-vehiculum_raster.asc")

f_CCSM4_4550_dunni_vehiculum <- raster("P_dunni-vehiculum_ccsm4_4550.asc")
f_CCSM4_4570_dunni_vehiculum <- raster("P_dunni-vehiculum_ccsm4_4570.asc")
f_CCSM4_8550_dunni_vehiculum <- raster("P_dunni-vehiculum_ccsm4_8550.asc")
f_CCSM4_8570_dunni_vehiculum <- raster("P_dunni-vehiculum_ccsm4_8570.asc")
f_MIROC5_4550_dunni_vehiculum <- raster("P_dunni-vehiculum_miroc5_4550.asc")
f_MIROC5_4570_dunni_vehiculum <- raster("P_dunni-vehiculum_miroc5_4570.asc")
f_MIROC5_8550_dunni_vehiculum <- raster("P_dunni-vehiculum_miroc5_8550.asc")
f_MIROC5_8570_dunni_vehiculum <- raster("P_dunni-vehiculum_miroc5_8570.asc")

#calculate niche breadth
b_dunni_vehiculum <- calc.B2(c_dunni_vehiculum)

#calculate range overlap between current and future
dunni_vehiculum_stack <- stack(c_dunni_vehiculum, f_CCSM4_4550_dunni_vehiculum, f_CCSM4_4570_dunni_vehiculum, f_CCSM4_8550_dunni_vehiculum, f_CCSM4_8570_dunni_vehiculum, f_MIROC5_4550_dunni_vehiculum, f_MIROC5_4570_dunni_vehiculum, f_MIROC5_8550_dunni_vehiculum, f_MIROC5_8570_dunni_vehiculum)

o_dunni_vehiculum <- calc.niche.overlap(dunni_vehiculum_stack, stat = "D")
write.table(o_dunni_vehiculum, file="o_dunni-vehiculum.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_dunni_vehiculum)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_dunni_vehiculum)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_dunni_vehiculum)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_dunni_vehiculum)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_dunni_vehiculum)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_dunni_vehiculum)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_dunni_vehiculum)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_dunni_vehiculum)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_dunni_vehiculum)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

dunni_vehiculum <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###elongatus###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/elongatus")

#import all raster layers
c_elongatus <- raster("P_elongatus_raster.asc")

f_CCSM4_4550_elongatus <- raster("P_elongatus_ccsm4_4550.asc")
f_CCSM4_4570_elongatus <- raster("P_elongatus_ccsm4_4570.asc")
f_CCSM4_8550_elongatus <- raster("P_elongatus_ccsm4_8550.asc")
f_CCSM4_8570_elongatus <- raster("P_elongatus_ccsm4_8570.asc")
f_MIROC5_4550_elongatus <- raster("P_elongatus_miroc5_4550.asc")
f_MIROC5_4570_elongatus <- raster("P_elongatus_miroc5_4570.asc")
f_MIROC5_8550_elongatus <- raster("P_elongatus_miroc5_8550.asc")
f_MIROC5_8570_elongatus <- raster("P_elongatus_miroc5_8570.asc")

#calculate niche breadth
b_elongatus <- calc.B2(c_elongatus)

#calculate range overlap between current and future
elongatus_stack <- stack(c_elongatus, f_CCSM4_4550_elongatus, f_CCSM4_4570_elongatus, f_CCSM4_8550_elongatus, f_CCSM4_8570_elongatus, f_MIROC5_4550_elongatus, f_MIROC5_4570_elongatus, f_MIROC5_8550_elongatus, f_MIROC5_8570_elongatus)

o_elongatus <- calc.niche.overlap(elongatus_stack, stat = "D")
write.table(o_elongatus, file="o_elongatus.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_elongatus)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_elongatus)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_elongatus)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_elongatus)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_elongatus)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_elongatus)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_elongatus)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_elongatus)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_elongatus)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

elongatus <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###stormi###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/stormi")

#import all raster layers
c_stormi <- raster("P_stormi_raster.asc")

f_CCSM4_4550_stormi <- raster("P_stormi_ccsm4_4550.asc")
f_CCSM4_4570_stormi <- raster("P_stormi_ccsm4_4570.asc")
f_CCSM4_8550_stormi <- raster("P_stormi_ccsm4_8550.asc")
f_CCSM4_8570_stormi <- raster("P_stormi_ccsm4_8570.asc")
f_MIROC5_4550_stormi <- raster("P_stormi_miroc5_4550.asc")
f_MIROC5_4570_stormi <- raster("P_stormi_miroc5_4570.asc")
f_MIROC5_8550_stormi <- raster("P_stormi_miroc5_8550.asc")
f_MIROC5_8570_stormi <- raster("P_stormi_miroc5_8570.asc")

#calculate niche breadth
b_stormi <- calc.B2(c_stormi)

#calculate range overlap between current and future
stormi_stack <- stack(c_stormi, f_CCSM4_4550_stormi, f_CCSM4_4570_stormi, f_CCSM4_8550_stormi, f_CCSM4_8570_stormi, f_MIROC5_4550_stormi, f_MIROC5_4570_stormi, f_MIROC5_8550_stormi, f_MIROC5_8570_stormi)

o_stormi <- calc.niche.overlap(stormi_stack, stat = "D")
write.table(o_stormi, file="o_stormi.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_stormi)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_stormi)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_stormi)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_stormi)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_stormi)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_stormi)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_stormi)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_stormi)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_stormi)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

stormi <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###elongatus-stormi-asupak###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/elongatus-stormi-asupak")

#import all raster layers
c_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_raster.asc")

f_CCSM4_4550_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_ccsm4_4550.asc")
f_CCSM4_4570_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_ccsm4_4570.asc")
f_CCSM4_8550_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_ccsm4_8550.asc")
f_CCSM4_8570_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_ccsm4_8570.asc")
f_MIROC5_4550_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_miroc5_4550.asc")
f_MIROC5_4570_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_miroc5_4570.asc")
f_MIROC5_8550_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_miroc5_8550.asc")
f_MIROC5_8570_elongatus_stormi_asupak <- raster("P_elongatus-stormi-asupak_miroc5_8570.asc")

#calculate niche breadth
b_elongatus_stormi_asupak <- calc.B2(c_elongatus_stormi_asupak)

#calculate range overlap between current and future
elongatus_stormi_asupak_stack <- stack(c_elongatus_stormi_asupak, f_CCSM4_4550_elongatus_stormi_asupak, f_CCSM4_4570_elongatus_stormi_asupak, f_CCSM4_8550_elongatus_stormi_asupak, f_CCSM4_8570_elongatus_stormi_asupak, f_MIROC5_4550_elongatus_stormi_asupak, f_MIROC5_4570_elongatus_stormi_asupak, f_MIROC5_8550_elongatus_stormi_asupak, f_MIROC5_8570_elongatus_stormi_asupak)

o_elongatus_stormi_asupak <- calc.niche.overlap(elongatus_stormi_asupak_stack, stat = "D")
write.table(o_elongatus_stormi_asupak, file="o_elongatus-stormi-asupak.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_elongatus_stormi_asupak)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_elongatus_stormi_asupak)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_elongatus_stormi_asupak)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_elongatus_stormi_asupak)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_elongatus_stormi_asupak)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_elongatus_stormi_asupak)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_elongatus_stormi_asupak)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_elongatus_stormi_asupak)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_elongatus_stormi_asupak)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

elongatus_stormi_asupak <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###larselli###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/larselli")

#import all raster layers
c_larselli <- raster("P_larselli_raster.asc")

f_CCSM4_4550_larselli <- raster("P_larselli_ccsm4_4550.asc")
f_CCSM4_4570_larselli <- raster("P_larselli_ccsm4_4570.asc")
f_CCSM4_8550_larselli <- raster("P_larselli_ccsm4_8550.asc")
f_CCSM4_8570_larselli <- raster("P_larselli_ccsm4_8570.asc")
f_MIROC5_4550_larselli <- raster("P_larselli_miroc5_4550.asc")
f_MIROC5_4570_larselli <- raster("P_larselli_miroc5_4570.asc")
f_MIROC5_8550_larselli <- raster("P_larselli_miroc5_8550.asc")
f_MIROC5_8570_larselli <- raster("P_larselli_miroc5_8570.asc")

#calculate niche breadth
b_larselli <- calc.B2(c_larselli)

#calculate range overlap between current and future
larselli_stack <- stack(c_larselli, f_CCSM4_4550_larselli, f_CCSM4_4570_larselli, f_CCSM4_8550_larselli, f_CCSM4_8570_larselli, f_MIROC5_4550_larselli, f_MIROC5_4570_larselli, f_MIROC5_8550_larselli, f_MIROC5_8570_larselli)

o_larselli <- calc.niche.overlap(larselli_stack, stat = "D")
write.table(o_larselli, file="o_larselli.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_larselli)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_larselli)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_larselli)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_larselli)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_larselli)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_larselli)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_larselli)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_larselli)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_larselli)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

larselli <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###vandykei###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/vandykei")

#import all raster layers
c_vandykei <- raster("P_vandykei_raster.asc")

f_CCSM4_4550_vandykei <- raster("P_vandykei_ccsm4_4550.asc")
f_CCSM4_4570_vandykei <- raster("P_vandykei_ccsm4_4570.asc")
f_CCSM4_8550_vandykei <- raster("P_vandykei_ccsm4_8550.asc")
f_CCSM4_8570_vandykei <- raster("P_vandykei_ccsm4_8570.asc")
f_MIROC5_4550_vandykei <- raster("P_vandykei_miroc5_4550.asc")
f_MIROC5_4570_vandykei <- raster("P_vandykei_miroc5_4570.asc")
f_MIROC5_8550_vandykei <- raster("P_vandykei_miroc5_8550.asc")
f_MIROC5_8570_vandykei <- raster("P_vandykei_miroc5_8570.asc")

#calculate niche breadth
b_vandykei <- calc.B2(c_vandykei)

#calculate range overlap between current and future
vandykei_stack <- stack(c_vandykei, f_CCSM4_4550_vandykei, f_CCSM4_4570_vandykei, f_CCSM4_8550_vandykei, f_CCSM4_8570_vandykei, f_MIROC5_4550_vandykei, f_MIROC5_4570_vandykei, f_MIROC5_8550_vandykei, f_MIROC5_8570_vandykei)

o_vandykei <- calc.niche.overlap(vandykei_stack, stat = "D")
write.table(o_vandykei, file="o_vandykei.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_vandykei)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_vandykei)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_vandykei)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_vandykei)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_vandykei)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_vandykei)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_vandykei)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_vandykei)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_vandykei)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

vandykei <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###larselli-vandykei###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/larselli-vandykei")

#import all raster layers
c_larselli_vandykei <- raster("P_larselli-vandykei_raster.asc")

f_CCSM4_4550_larselli_vandykei <- raster("P_larselli-vandykei_ccsm4_4550.asc")
f_CCSM4_4570_larselli_vandykei <- raster("P_larselli-vandykei_ccsm4_4570.asc")
f_CCSM4_8550_larselli_vandykei <- raster("P_larselli-vandykei_ccsm4_8550.asc")
f_CCSM4_8570_larselli_vandykei <- raster("P_larselli-vandykei_ccsm4_8570.asc")
f_MIROC5_4550_larselli_vandykei <- raster("P_larselli-vandykei_miroc5_4550.asc")
f_MIROC5_4570_larselli_vandykei <- raster("P_larselli-vandykei_miroc5_4570.asc")
f_MIROC5_8550_larselli_vandykei <- raster("P_larselli-vandykei_miroc5_8550.asc")
f_MIROC5_8570_larselli_vandykei <- raster("P_larselli-vandykei_miroc5_8570.asc")

#calculate niche breadth
b_larselli_vandykei <- calc.B2(c_larselli_vandykei)

#calculate range overlap between current and future
larselli_vandykei_stack <- stack(c_larselli_vandykei, f_CCSM4_4550_larselli_vandykei, f_CCSM4_4570_larselli_vandykei, f_CCSM4_8550_larselli_vandykei, f_CCSM4_8570_larselli_vandykei, f_MIROC5_4550_larselli_vandykei, f_MIROC5_4570_larselli_vandykei, f_MIROC5_8550_larselli_vandykei, f_MIROC5_8570_larselli_vandykei)

o_larselli_vandykei <- calc.niche.overlap(larselli_vandykei_stack, stat = "D")
write.table(o_larselli-vandykei, file="o_larselli_vandykei.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_larselli_vandykei)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_larselli_vandykei)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_larselli_vandykei)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_larselli_vandykei)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_larselli_vandykei)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_larselli_vandykei)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_larselli_vandykei)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_larselli_vandykei)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_larselli_vandykei)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

larselli_vandykei <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###larselli-vandykei-idahoensis###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/larselli-vandykei-idahoensis")

#import all raster layers
c_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_raster.asc")

f_CCSM4_4550_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_ccsm4_4550.asc")
f_CCSM4_4570_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_ccsm4_4570.asc")
f_CCSM4_8550_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_ccsm4_8550.asc")
f_CCSM4_8570_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_ccsm4_8570.asc")
f_MIROC5_4550_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_miroc5_4550.asc")
f_MIROC5_4570_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_miroc5_4570.asc")
f_MIROC5_8550_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_miroc5_8550.asc")
f_MIROC5_8570_larselli_vandykei_idahoensis <- raster("P_larselli-vandykei-idahoensis_miroc5_8570.asc")

#calculate niche breadth
b_larselli_vandykei_idahoensis <- calc.B2(c_larselli_vandykei_idahoensis)

#calculate range overlap between current and future
larselli_vandykei_idahoensis_stack <- stack(c_larselli_vandykei_idahoensis, f_CCSM4_4550_larselli_vandykei_idahoensis, f_CCSM4_4570_larselli_vandykei_idahoensis, f_CCSM4_8550_larselli_vandykei_idahoensis, f_CCSM4_8570_larselli_vandykei_idahoensis, f_MIROC5_4550_larselli_vandykei_idahoensis, f_MIROC5_4570_larselli_vandykei_idahoensis, f_MIROC5_8550_larselli_vandykei_idahoensis, f_MIROC5_8570_larselli_vandykei_idahoensis)

o_larselli_vandykei_idahoensis <- calc.niche.overlap(larselli_vandykei_idahoensis_stack, stat = "D")
write.table(o_larselli_vandykei_idahoensis, file="o_larselli-vandykei-idahoensis.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_larselli_vandykei_idahoensis)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_larselli_vandykei_idahoensis)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_larselli_vandykei_idahoensis)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_larselli_vandykei_idahoensis)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_larselli_vandykei_idahoensis)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_larselli_vandykei_idahoensis)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_larselli_vandykei_idahoensis)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_larselli_vandykei_idahoensis)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_larselli_vandykei_idahoensis)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

larselli_vandykei_idahoensis <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


###idahoensis###
#change name for each species/group
setwd("/Users/tpelletier/Desktop/sallys/niche_paper/idahoensis")

#import all raster layers
c_idahoensis <- raster("P_idahoensis_raster.asc")

f_CCSM4_4550_idahoensis <- raster("P_idahoensis_ccsm4_4550.asc")
f_CCSM4_4570_idahoensis <- raster("P_idahoensis_ccsm4_4570.asc")
f_CCSM4_8550_idahoensis <- raster("P_idahoensis_ccsm4_8550.asc")
f_CCSM4_8570_idahoensis <- raster("P_idahoensis_ccsm4_8570.asc")
f_MIROC5_4550_idahoensis <- raster("P_idahoensis_miroc5_4550.asc")
f_MIROC5_4570_idahoensis <- raster("P_idahoensis_miroc5_4570.asc")
f_MIROC5_8550_idahoensis <- raster("P_idahoensis_miroc5_8550.asc")
f_MIROC5_8570_idahoensis <- raster("P_idahoensis_miroc5_8570.asc")

#calculate niche breadth
b_idahoensis <- calc.B2(c_idahoensis)

#calculate range overlap between current and future
idahoensis_stack <- stack(c_idahoensis, f_CCSM4_4550_idahoensis, f_CCSM4_4570_idahoensis, f_CCSM4_8550_idahoensis, f_CCSM4_8570_idahoensis, f_MIROC5_4550_idahoensis, f_MIROC5_4570_idahoensis, f_MIROC5_8550_idahoensis, f_MIROC5_8570_idahoensis)

o_idahoensis <- calc.niche.overlap(idahoensis_stack, stat = "D")
write.table(o_idahoensis, file="o_idahoensis.csv", sep=",")

#get sum and mean for entire SDM and compare to future
c <- as.vector(c_idahoensis)
c_sum <- sum(c, na.rm=T)
c_mean <- mean(c, na.rm=T)

f_CCSM4_4550 <- as.vector(f_CCSM4_4550_idahoensis)
f_sum_CCSM4_4550 <- sum(f_CCSM4_4550, na.rm=T)
sum_CCSM4_4550 <- f_sum_CCSM4_4550 - c_sum
f_mean_CCSM4_4550 <- mean(f_CCSM4_4550, na.rm=T)
mean_CCSM4_4550 <- f_mean_CCSM4_4550 - c_mean

f_CCSM4_4570 <- as.vector(f_CCSM4_4570_idahoensis)
f_sum_CCSM4_4570 <- sum(f_CCSM4_4570, na.rm=T)
sum_CCSM4_4570 <- f_sum_CCSM4_4570 - c_sum
f_mean_CCSM4_4570 <- mean(f_CCSM4_4570, na.rm=T)
mean_CCSM4_4570 <- f_mean_CCSM4_4570 - c_mean

f_CCSM4_8550 <- as.vector(f_CCSM4_8550_idahoensis)
f_sum_CCSM4_8550 <- sum(f_CCSM4_8550, na.rm=T)
sum_CCSM4_8550 <- f_sum_CCSM4_8550 - c_sum
f_mean_CCSM4_8550 <- mean(f_CCSM4_8550, na.rm=T)
mean_CCSM4_8550 <- f_mean_CCSM4_8550 - c_mean

f_CCSM4_8570 <- as.vector(f_CCSM4_8570_idahoensis)
f_sum_CCSM4_8570 <- sum(f_CCSM4_8570, na.rm=T)
sum_CCSM4_8570 <- f_sum_CCSM4_8570 - c_sum
f_mean_CCSM4_8570 <- mean(f_CCSM4_8570, na.rm=T)
mean_CCSM4_8570 <- f_mean_CCSM4_8570 - c_mean

f_MIROC5_4550 <- as.vector(f_MIROC5_4550_idahoensis)
f_sum_MIROC5_4550 <- sum(f_MIROC5_4550, na.rm=T)
sum_MIROC5_4550 <- f_sum_MIROC5_4550 - c_sum
f_mean_MIROC5_4550 <- mean(f_MIROC5_4550, na.rm=T)
mean_MIROC5_4550 <- f_mean_MIROC5_4550 - c_mean

f_MIROC5_4570 <- as.vector(f_MIROC5_4570_idahoensis)
f_sum_MIROC5_4570 <- sum(f_MIROC5_4570, na.rm=T)
sum_MIROC5_4570 <- f_sum_MIROC5_4570 - c_sum
f_mean_MIROC5_4570 <- mean(f_MIROC5_4570, na.rm=T)
mean_MIROC5_4570 <- f_mean_MIROC5_4570 - c_mean

f_MIROC5_8550 <- as.vector(f_MIROC5_8550_idahoensis)
f_sum_MIROC5_8550 <- sum(f_MIROC5_8550, na.rm=T)
sum_MIROC5_8550 <- f_sum_MIROC5_8550 - c_sum
f_mean_MIROC5_8550 <- mean(f_MIROC5_8550, na.rm=T)
mean_MIROC5_8550 <- f_mean_MIROC5_8550 - c_mean

f_MIROC5_8570 <- as.vector(f_MIROC5_8570_idahoensis)
f_sum_MIROC5_8570 <- sum(f_MIROC5_8570, na.rm=T)
sum_MIROC5_8570 <- f_sum_MIROC5_8570 - c_sum
f_mean_MIROC5_8570 <- mean(f_MIROC5_8570, na.rm=T)
mean_MIROC5_8570 <- f_mean_MIROC5_8570 - c_mean

idahoensis <- as.vector(c(sum_CCSM4_4550, sum_CCSM4_4570, sum_CCSM4_8550, sum_CCSM4_8570, mean_CCSM4_4550, mean_CCSM4_4570, mean_CCSM4_8550, mean_CCSM4_8570, sum_MIROC5_4550, sum_MIROC5_4570, sum_MIROC5_8550, sum_MIROC5_8570, mean_MIROC5_4550, mean_MIROC5_4570, mean_MIROC5_8550, mean_MIROC5_8570))


#all##############################################################################################################
#niche overlap
o_stack <- stack(c_asupak, c_elongatus, c_stormi, c_elongatus_stormi_asupak, c_idahoensis, c_larselli,  c_vandykei, c_larselli_vandykei, c_larselli_vandykei_idahoensis, c_dunni, c_vehiculum, c_dunni_vehiculum)

o_all <- calc.niche.overlap(o_stack, stat = "D")
write.table(o_all, file="/Users/tpelletier/Desktop/sallys/niche_paper/o_all.csv", sep=",")

#print breadths
write.table(data.frame(b_asupak, b_elongatus,  b_stormi, b_elongatus_stormi_asupak,  b_idahoensis,  b_larselli,  b_vandykei, b_larselli_vandykei,  b_larselli_vandykei_idahoensis, b_dunni, b_vehiculum, b_dunni_vehiculum), file="/Users/tpelletier/Desktop/sallys/niche_paper/breadths.csv", sep=",")

#print range expansion/contractions
model <- c("sum_CCSM4_4550", "sum_CCSM4_4570", "sum_CCSM4_8550", "sum_CCSM4_8570", "mean_CCSM4_4550", "mean_CCSM4_4570", "mean_CCSM4_8550", "mean_CCSM4_8570", "sum_MIROC5_4550", "sum_CCSM4_4570", "sum_MIROC5_8550", "sum_CCSM4_8570", "mean_MIROC5_4550", "mean_MIROC5_4570", "mean_CCSM4_8550", "mean_CCSM4_8570")

d<-rbind(model, asupak, elongatus, stormi, elongatus_stormi_asupak, idahoensis, larselli, vandykei, larselli_vandykei, larselli_vandykei_idahoensis, dunni, vehiculum, dunni_vehiculum)

write.table(d, file="/Users/tpelletier/Desktop/sallys/niche_paper/all_size_changes.csv", sep=",", col.names = F)
