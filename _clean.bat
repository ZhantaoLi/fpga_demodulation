@echo off
del /s *.bak
del /s *.orig
del /s *.rej
del /s *~
del /s *.pof
rmdir /s /q db
rmdir /s /q incremental_db
cd output_files
for /f "delims=" %%f in ('dir /b /a-d ^| findstr /v "\.stp$" ^| findstr /v "\.sof$"') do del "%%f"
for /d %%i in (*) do rmdir /s /q "%%i"
cd ..
rmdir /s /q simulation
rmdir /s /q greybox_tmp
rmdir /s /q hc_output
rmdir /s /q .qsys_edit
rmdir /s /q hps_isw_handoff
rmdir /s /q sys\.qsys_edit
rmdir /s /q sys\vip
rmdir /s /q system
for /d %%i in (*_sim) do rmdir /s /q "%%~nxi"
del build_id.v
del c5_pin_model_dump.txt
del PLLJ_PLLSPE_INFO.txt
del /s *.qws
del /s *.ppf
del /s *.ddb
del /s *.csv
del /s *.cmp
del /s *.sip
del /s *.spd
del /s *.bsf
del /s *.f
del /s *.sopcinfo
del /s *.xml
del /s *.cdf
del /s *.rpt
del /s *.summary
del /s *..smsg
del /s *.done
del /s *.qdf
del /s *.smsg
del /s *.pin
del /s *.jdi
del /s *.sld
del /s new_rtl_netlist
del /s old_rtl_netlist