#! usr/bin/env bash

echo "Wait.."
echo "TOP $(date '+%Y_%d_%m--%H:%M:%S')" > top1.dat
echo "==============***================" > top2.dat
cat top1.dat top2.dat > maintop.dat
top -b -n1 > MSITOP.log
cat maintop.dat MSITOP.log > TOPTOP.log
echo "SIZE  $(date '+%Y_%d_%m--%H:%M:%S')" > size1.dat
echo "================***================" > size2.dat
cat size1.dat size2.dat > mainsize.dat
df -h > MSIDF.log
cat mainsize.dat MSIDF.log > SIZESIZE.log
cat TOPTOP.log SIZESIZE.log > LOG_$(date '+%Y_%d_%m--%H:%M:%S').log
cat TOPTOP.log  SIZESIZE.log > output.tmp


rm -rf output.tmp MSITOP.log MSIDF.log top1.dat top2.dat maintop.dat TOPTOP.log size1.dat size2.dat mainsize.dat MSIDF.log SIZESIZE.log
echo "OK"
