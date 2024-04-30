clear all
use ..\data\hdd_charts.dta

gen postHalftime = post * halftime
reg change post halftime postHalftime

reg movement post halftime postHalftime
reg tea post halftime postHalftime

