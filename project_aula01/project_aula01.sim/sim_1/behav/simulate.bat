@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.1\\bin
call %xv_path%/xsim variaveis_exemplo_behav -key {Behavioral:sim_1:Functional:variaveis_exemplo} -tclbatch variaveis_exemplo.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
