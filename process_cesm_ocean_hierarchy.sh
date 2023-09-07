cd /glade/scratch/tienyiao/archive/CAM5CN_50yr_EMOM/atm/hist/

for file in *.nc; do cdo -selvar,TAUX  $file /glade/scratch/tfenske/cesm_ocean_hierarchy/emom/TAUX_$file; done
for file in *.nc; do cdo -selvar,TAUY  $file /glade/scratch/tfenske/cesm_ocean_hierarchy/emom/TAUY_$file; done
for file in *.nc; do cdo -selvar,PSL   $file /glade/scratch/tfenske/cesm_ocean_hierarchy/emom/PSL_$file; done
for file in *.nc; do cdo -selvar,PRECC $file /glade/scratch/tfenske/cesm_ocean_hierarchy/emom/PRECC_$file; done
for file in *.nc; do cdo -selvar,PRECL $file /glade/scratch/tfenske/cesm_ocean_hierarchy/emom/PRECL_$file; done

cd /glade/scratch/tienyiao/archive/CAM5CN_50yr_MLM/atm/hist/
for file in *.nc; do cdo -selvar,TS    $file /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/TS_$file; done
for file in *.nc; do cdo -selvar,SST   $file /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/SST_$file; done
for file in *.nc; do cdo -selvar,TAUX  $file /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/TAUX_$file; done
for file in *.nc; do cdo -selvar,TAUY  $file /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/TAUY_$file; done
for file in *.nc; do cdo -selvar,PSL   $file /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/PSL_$file; done
for file in *.nc; do cdo -selvar,PRECC $file /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/PRECC_$file; done
for file in *.nc; do cdo -selvar,PRECL $file /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/PRECL_$file; done

cd /glade/scratch/tienyiao/archive/CAM5CN_50yr_SOM/atm/hist/
for file in *.nc; do cdo -selvar,TS    $file /glade/scratch/tfenske/cesm_ocean_hierarchy/som/TS_$file; done
for file in *.nc; do cdo -selvar,SST   $file /glade/scratch/tfenske/cesm_ocean_hierarchy/som/SST_$file; done
for file in *.nc; do cdo -selvar,TAUX  $file /glade/scratch/tfenske/cesm_ocean_hierarchy/som/TAUX_$file; done
for file in *.nc; do cdo -selvar,TAUY  $file /glade/scratch/tfenske/cesm_ocean_hierarchy/som/TAUY_$file; done
for file in *.nc; do cdo -selvar,PSL   $file /glade/scratch/tfenske/cesm_ocean_hierarchy/som/PSL_$file; done
for file in *.nc; do cdo -selvar,PRECC $file /glade/scratch/tfenske/cesm_ocean_hierarchy/som/PRECC_$file; done
for file in *.nc; do cdo -selvar,PRECL $file /glade/scratch/tfenske/cesm_ocean_hierarchy/som/PRECL_$file; done



cd /glade/scratch/tfenske/cesm_ocean_hierarchy/emom/
cdo -f nc4 mergetime SST*.nc   CAM5CN_50yr_EMOM_SST.nc
cdo -f nc4 mergetime TAUX*.nc  CAM5CN_50yr_EMOM_TAUX.nc
cdo -f nc4 mergetime TAUY*.nc  CAM5CN_50yr_EMOM_TAUY.nc
cdo -f nc4 mergetime PSL*.nc   CAM5CN_50yr_EMOM_PSL.nc
cdo -f nc4 mergetime PRECC*.nc CAM5CN_50yr_EMOM_PRECC.nc
cdo -f nc4 mergetime PRECL*.nc CAM5CN_50yr_EMOM_PRECL.nc

cd /glade/scratch/tfenske/cesm_ocean_hierarchy/mlm/
cdo -f nc4 mergetime TS*.nc   CAM5CN_50yr_MLM_TS.nc
cdo -f nc4 mergetime SST*.nc   CAM5CN_50yr_MLM_SST.nc
cdo -f nc4 mergetime TAUX*.nc  CAM5CN_50yr_MLM_TAUX.nc
cdo -f nc4 mergetime TAUY*.nc  CAM5CN_50yr_MLM_TAUY.nc
cdo -f nc4 mergetime PSL*.nc   CAM5CN_50yr_MLM_PSL.nc
cdo -f nc4 mergetime PRECC*.nc CAM5CN_50yr_MLM_PRECC.nc
cdo -f nc4 mergetime PRECL*.nc CAM5CN_50yr_MLM_PRECL.nc

cd /glade/scratch/tfenske/cesm_ocean_hierarchy/som/
cdo -f nc4 mergetime TS*.nc   CAM5CN_50yr_SOM_TS.nc
cdo -f nc4 mergetime SST*.nc   CAM5CN_50yr_SOM_SST.nc
cdo -f nc4 mergetime TAUX*.nc  CAM5CN_50yr_SOM_TAUX.nc
cdo -f nc4 mergetime TAUY*.nc  CAM5CN_50yr_SOM_TAUY.nc
cdo -f nc4 mergetime PSL*.nc   CAM5CN_50yr_SOM_PSL.nc
cdo -f nc4 mergetime PRECC*.nc CAM5CN_50yr_SOM_PRECC.nc
cdo -f nc4 mergetime PRECL*.nc CAM5CN_50yr_SOM_PRECL.nc
