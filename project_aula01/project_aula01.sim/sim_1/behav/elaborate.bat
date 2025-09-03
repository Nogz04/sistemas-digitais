@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 29b8a338568d4ed78b5b57fbc6e892ac -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot testbench_behav xil_defaultlib.testbench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
