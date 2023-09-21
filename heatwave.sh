#!/bin/bash
set -xe
NCRCAT = "ncrcat -O -t 8"
BASEURL = "https://www.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/marine_heatwave/v1.0.1/category/nc/"
# noaa-crw_mhw_v1.0.1_category_19850127.nc

# [Description: Time period: 1985 to 2023 
#               Temporal Frequency: daily]

for yy in {1985..1987}
do
# for dd in {01..365}
#do
echo $yy
wget -c -r -l1 -nd --no-parent -A.nc $BASEURL/${yy}/noaa-crw_mhw_v1.0.1_category_*.nc
done
# done
# ncrcat -O -t 8 oisst-avhrr-v02r01.*.nc oisst_1989-2022.nc

#cdo -O -P 8 remapbil,r360x180 oisst_1989-2022.nc oisst_1989-2022_360x180.nc