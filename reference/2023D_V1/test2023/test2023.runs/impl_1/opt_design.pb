
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0352default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0352default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2t
`Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.883 . Memory (MB): peak = 1582.707 ; gain = 44.6332default:defaulth px� 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
P
;Ending Cache Timing Information Task | Checksum: 18bfeb8e1
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:07 ; elapsed = 00:00:11 . Memory (MB): peak = 2378.754 ; gain = 796.0472default:defaulth px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px� 
k
)Generating Script for core instance : %s 214*	chipscope2
dbg_hub2default:defaultZ16-329h px� 
�
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2

dbg_hub_CV2default:defaultZ19-3806h px� 
�
;Using cached IP synthesis design for IP %s, cache-ID = %s.
286*	chipscope2+
xilinx.com:ip:xsdbm:3.02default:default2$
aae41a07ec0730802default:defaultZ16-469h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:042default:default2
00:00:052default:default2
2751.3952default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0862default:default2
2751.3952default:default2
0.0002default:defaultZ17-268h px� 
W
BPhase 1 Generate And Synthesize Debug Cores | Checksum: 17337152e
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:21 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
bdesign_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_1	bdesign_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_12default:default2�
_design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[12]_i_3	_design_1_i/system_ila_0/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[12]_i_32default:default2
162default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
cdesign_1_i/system_ila_AM/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_1	cdesign_1_i/system_ila_AM/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_12default:default2�
`design_1_i/system_ila_AM/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[13]_i_3	`design_1_i/system_ila_AM/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[13]_i_32default:default2
192default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
ddesign_1_i/system_ila_DAC/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_1	ddesign_1_i/system_ila_DAC/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_12default:default2�
adesign_1_i/system_ila_DAC/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[12]_i_3	adesign_1_i/system_ila_DAC/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[12]_i_32default:default2
162default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
edesign_1_i/system_ila_FREQ/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_1	edesign_1_i/system_ila_FREQ/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/current_state[0]_i_12default:default2�
bdesign_1_i/system_ila_FREQ/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[13]_i_3	bdesign_1_i/system_ila_FREQ/inst/ila_lib/inst/ila_core_inst/xsdb_memory_read_inst/read_addr[13]_i_32default:default2
162default:default8Z31-1287h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
82default:default2
82default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 2 Retarget | Checksum: 23c0e0ec4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:25 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
1322default:default2
2492default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
1992default:defaultZ31-1021h px� 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
22default:default2
22default:defaultZ31-138h px� 
H
3Phase 3 Constant propagation | Checksum: 23a350c9a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:26 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
182default:default2
6962default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
702default:defaultZ31-1021h px� 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px� 
9
$Phase 4 Sweep | Checksum: 1b8ed30c9
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:29 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
4332default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
57012default:defaultZ31-1021h px� 
r

Phase %s%s
101*constraints2
5 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
�
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2H
4design_1_i/FREQ_counter_AM/inst/EN_2_reg_0_BUFG_inst2default:default2
1432default:default2C
/design_1_i/FREQ_counter_AM/inst/EN_2_reg_0_BUFG2default:defaultZ31-194h px� 
�
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2H
4design_1_i/FREQ_counter_FM/inst/EN_2_reg_0_BUFG_inst2default:default2
1452default:default2C
/design_1_i/FREQ_counter_FM/inst/EN_2_reg_0_BUFG2default:defaultZ31-194h px� 
�
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2I
5design_1_i/FREQ_counter_PSK/inst/EN_2_reg_0_BUFG_inst2default:default2
1432default:default2D
0design_1_i/FREQ_counter_PSK/inst/EN_2_reg_0_BUFG2default:defaultZ31-194h px� 
�
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2[
Gdesign_1_i/PSK_DM_0/inst/test_dmfm/dm1/myclk_diver64/en_reg_0_BUFG_inst2default:default2
79862default:default2V
Bdesign_1_i/PSK_DM_0/inst/test_dmfm/dm1/myclk_diver64/en_reg_0_BUFG2default:defaultZ31-194h px� 
�
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2U
Adesign_1_i/FM_DM_0/inst/test_dmfm/dm1/myclk_diver64/CLK_BUFG_inst2default:default2
97642default:default2P
<design_1_i/FM_DM_0/inst/test_dmfm/dm1/myclk_diver64/CLK_BUFG2default:defaultZ31-194h px� 
�
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2S
?design_1_i/AM_DM_0/inst/AMDM1/myclk_diver64/clk_div64_BUFG_inst2default:default2
85492default:default2N
:design_1_i/AM_DM_0/inst/AMDM1/myclk_diver64/clk_div64_BUFG2default:defaultZ31-194h px� 
�
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2H
4design_1_i/DAC_3/AD5664_spi_0/inst/clk_25M_BUFG_inst2default:default2
382default:default2C
/design_1_i/DAC_3/AD5664_spi_0/inst/clk_25M_BUFG2default:defaultZ31-194h px� 
W
!Inserted %s BUFG(s) on clock nets140*opt2
72default:defaultZ31-193h px� 
E
0Phase 5 BUFG optimization | Checksum: 2330e374a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:30 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
72default:default2
72default:default2
02default:defaultZ31-662h px� 
|

Phase %s%s
101*constraints2
6 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px� 
O
:Phase 6 Shift Register Optimization | Checksum: 21aa404ad
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:31 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
x

Phase %s%s
101*constraints2
7 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
]design_1_i/ps7_0_axi_periph/xbar/inst/gen_sasd.crossbar_sasd_0/reg_slice_r/skid_buffer[1]_i_1	]design_1_i/ps7_0_axi_periph/xbar/inst/gen_sasd.crossbar_sasd_0/reg_slice_r/skid_buffer[1]_i_12default:default2�
^design_1_i/ps7_0_axi_periph/xbar/inst/gen_sasd.crossbar_sasd_0/reg_slice_r/skid_buffer[34]_i_2	^design_1_i/ps7_0_axi_periph/xbar/inst/gen_sasd.crossbar_sasd_0/reg_slice_r/skid_buffer[34]_i_22default:default2
222default:default8Z31-1287h px� 
K
6Phase 7 Post Processing Netlist | Checksum: 1e0c34eb6
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:32 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
22default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
782default:defaultZ31-1021h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |             132  |             249  |                                            199  |
|  Constant propagation         |              18  |             696  |                                             70  |
|  Sweep                        |               0  |             433  |                                           5701  |
|  BUFG optimization            |               7  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               2  |                                             78  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.144 . Memory (MB): peak = 2751.395 ; gain = 0.0002default:defaulth px� 
J
5Ending Logic Optimization Task | Checksum: 21c758dd6
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:14 ; elapsed = 00:00:36 . Memory (MB): peak = 2751.395 ; gain = 43.8592default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02default:default2
1782default:defaultZ34-162h px� 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px� 
�
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
2382default:default2
02default:default2
3562default:defaultZ34-65h px� 
N
9Ending PowerOpt Patch Enables Task | Checksum: 1df1de796
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.818 . Memory (MB): peak = 3770.395 ; gain = 0.0002default:defaulth px� 
J
5Ending Power Optimization Task | Checksum: 1df1de796
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 3770.395 ; gain = 1019.0002default:defaulth px� 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
J
5Ending Logic Optimization Task | Checksum: 17ebec8bb
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 3770.395 ; gain = 0.0002default:defaulth px� 
E
0Ending Final Cleanup Task | Checksum: 17ebec8bb
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:10 . Memory (MB): peak = 3770.395 ; gain = 0.0002default:defaulth px� 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0322default:default2
3770.3952default:default2
0.0002default:defaultZ17-268h px� 
K
6Ending Netlist Obfuscation Task | Checksum: 17ebec8bb
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.045 . Memory (MB): peak = 3770.395 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1102default:default2
622default:default2
622default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:462default:default2
00:01:192default:default2
3770.3952default:default2
2232.3202default:defaultZ17-268h px� 
�
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0472default:default2
3770.3952default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KD:/Project/ZYNQ/7035/test2023/test2023.runs/impl_1/design_1_wrapper_opt.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:082default:default2
00:00:132default:default2
3770.3952default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
QD:/Project/ZYNQ/7035/test2023/test2023.runs/impl_1/design_1_wrapper_drc_opted.rptQD:/Project/ZYNQ/7035/test2023/test2023.runs/impl_1/design_1_wrapper_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:072default:default2
00:00:102default:default2
3770.3952default:default2
0.0002default:defaultZ17-268h px� 


End Record