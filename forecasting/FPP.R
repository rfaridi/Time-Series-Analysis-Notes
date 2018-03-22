H

#.libPaths("E:\\Frequently Used\\Research\\Current Research\\R\\library")
.libPaths("J:\\Rushad\\MOF\\R-stuff\\library")
library(forecast)
library(fpp)

#===========  CHAPTER 6 ================
# Here we learn about Trend, Seasonality and Cyclic behavior.
# Trend: long term increase or decrease in data
# Seasonality: When a series is influenced by seasonal factors
# Cyclic: when data exhibits rise and fall that are not of 
# fixed period. Duration of fluctuation is at least two years
# 
# Following R code shows different type of these patterns:
par(mfrow=c(2,2))
plot(hsales, xlab="Year", ylab="Monthly Housing Sales(Millions)")
# Author says, it has seasonality. This is probably it is regularly
# having a peak and then trough. Also has an upward and downward
# trend meaning showing cyclical behavior. There is no apparent trend.
plot(ustreas,xlab="Day",ylab="US treasury bill contracts")
# This is daily data. The figure shows it is going down steadily. Therefore
# we can say that it has a downward trend. But it does not have any regular
# peak and trough, so we can not say there is any seasonality. In a larger
# time frame than the 100 days we have here, we might see a cyclical patter
# but in the short time frame, all we can say that it is trend.
plot(elec,xlab="Year",ylab="Australian monthly electricity production")
# This is again monthly data.It shows strong upward trend with regular
# peaks and troughs. That means seasonality with an upward trend.
plot(diff(dj),xlab="Day",ylab="Daily change in Dow Jones index")
# No pattern is visible

#======== Time Series Decomposition ===========

# A time series can have the following components:
#   Seasonality
#   Trend-cycle
#   Everything else
# These components can be additive or multiplicative. If variation in 
# seasonal pattern seem to be proportional to time period, meaning, the 
# variation changes as year passes, then we use multiplicative model. If
# seasonal pattern is stable, then we use additive model.

#========= Example 6.1 Electrical Equipment Manufacturing ======

