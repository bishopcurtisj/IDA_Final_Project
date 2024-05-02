clear all
use ..\data\hdd_charts.dta

gen postHalftime = post * halftime
reg change post halftime postHalftime

reg movement post halftime postHalftime
reg tea post halftime postHalftime

bootstrap, reps(1000) nodots nodrop: reg change post halftime postHalftime
bootstrap, reps(1000): reg total post halftime postHalftime
bootstrap, reps(1000): reg album_sales post halftime postHalftime

