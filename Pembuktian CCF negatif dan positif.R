#ypw: NA NA data1 data2...data_n
#ypw lag1: NA NA NA data1 data2...datan
#ypw lag-1: NA data1 data2...data_n NA
--------------------------------------------------------------------------------
# Plot ACF Suhu
ccf( x.pw, CH, na.action = na.omit, lag.max = 30, main = "Cross-correlation Curah Hujan vs Temperature")

# Pembuktian lag 1 negatif dan positif 
xlag1<-Hmisc::Lag(x.pw,1)
xlag.rev1<-Hmisc::Lag(x.pw,-1)
cor(xlag1%>%na.omit(),CH[-1:-3])#ccf lag 1 negatif
cor(xlag.rev1%>%na.omit(),CH[-c(1,3653)])#ccf lag 1 positif

# pembuktian lag 2 negatif dan positif
xlag2<-Hmisc::Lag(x.pw,2)
xlag.rev2<-Hmisc::Lag(x.pw,-2)
cor(xlag2%>%na.omit(),CH[-1:-4])#ccf lag 2 negatif
cor(xlag.rev2%>%na.omit(),CH[-c(3652,3653)])#ccf lag 2 positif

# pembuktian lag 3 negatif dan positif
xlag3<-Hmisc::Lag(x.pw,3)
xlag.rev3<-Hmisc::Lag(x.pw,-3)
cor(xlag3%>%na.omit(),CH[-1:-5])#ccf lag 3 negatif
cor(xlag.rev3%>%na.omit(),CH[-c(3651,3652,3653)])#ccf lag 3 positif
