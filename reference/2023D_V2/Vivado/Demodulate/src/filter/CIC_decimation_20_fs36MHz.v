// -------------------------------------------------------------
//
// Module: CIC_decimation_20_fs36MHz
// Generated by MATLAB(R) 9.11 and Filter Design HDL Coder 3.1.10.
// Generated on: 2023-08-03 08:37:17
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: CIC_decimation_20_fs36MHz
// TargetLanguage: Verilog
// TestBenchStimulus: step ramp chirp noise 

// -------------------------------------------------------------
// HDL Implementation    : Fully parallel
// -------------------------------------------------------------




`timescale 1 ns / 1 ns

module CIC_decimation_20_fs36MHz
               (
                clk,
                clk_enable,
                reset,
                filter_in,
                filter_out,
                ce_out
                );

  input   clk; 
  input   clk_enable; 
  input   reset; 
  input   signed [12:0] filter_in; //sfix13
  output  signed [25:0] filter_out; //sfix26
  output  ce_out; 

////////////////////////////////////////////////////////////////
//Module Architecture: CIC_decimation_20_fs36MHz
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  // Signals
  reg  [4:0] cur_count; // ufix5
  wire phase_1; // boolean
  reg  ce_out_reg; // boolean
  //   
  reg  signed [12:0] input_register; // sfix13
  //   -- Section 1 Signals 
  wire signed [12:0] section_in1; // sfix13
  wire signed [25:0] section_cast1; // sfix26
  wire signed [25:0] sum1; // sfix26
  reg  signed [25:0] section_out1; // sfix26
  wire signed [25:0] add_cast; // sfix26
  wire signed [25:0] add_cast_1; // sfix26
  wire signed [26:0] add_temp; // sfix27
  //   -- Section 2 Signals 
  wire signed [25:0] section_in2; // sfix26
  wire signed [25:0] sum2; // sfix26
  reg  signed [25:0] section_out2; // sfix26
  wire signed [25:0] add_cast_2; // sfix26
  wire signed [25:0] add_cast_3; // sfix26
  wire signed [26:0] add_temp_1; // sfix27
  //   -- Section 3 Signals 
  wire signed [25:0] section_in3; // sfix26
  wire signed [25:0] sum3; // sfix26
  reg  signed [25:0] section_out3; // sfix26
  wire signed [25:0] add_cast_4; // sfix26
  wire signed [25:0] add_cast_5; // sfix26
  wire signed [26:0] add_temp_2; // sfix27
  //   -- Section 4 Signals 
  wire signed [25:0] section_in4; // sfix26
  reg  signed [25:0] diff1; // sfix26
  wire signed [25:0] section_out4; // sfix26
  wire signed [25:0] sub_cast; // sfix26
  wire signed [25:0] sub_cast_1; // sfix26
  wire signed [26:0] sub_temp; // sfix27
  //   -- Section 5 Signals 
  wire signed [25:0] section_in5; // sfix26
  reg  signed [25:0] diff2; // sfix26
  wire signed [25:0] section_out5; // sfix26
  wire signed [25:0] sub_cast_2; // sfix26
  wire signed [25:0] sub_cast_3; // sfix26
  wire signed [26:0] sub_temp_1; // sfix27
  //   -- Section 6 Signals 
  wire signed [25:0] section_in6; // sfix26
  reg  signed [25:0] diff3; // sfix26
  wire signed [25:0] section_out6; // sfix26
  wire signed [25:0] sub_cast_4; // sfix26
  wire signed [25:0] sub_cast_5; // sfix26
  wire signed [26:0] sub_temp_2; // sfix27
  //   
  reg  signed [25:0] output_register; // sfix26

  // Block Statements
  //   ------------------ CE Output Generation ------------------

  always @ (posedge clk or posedge reset)
    begin: ce_output
      if (reset == 1'b1) begin
        cur_count <= 5'b00000;
      end
      else begin
        if (clk_enable == 1'b1) begin
          if (cur_count >= 5'b10011) begin
            cur_count <= 5'b00000;
          end
          else begin
            cur_count <= cur_count + 5'b00001;
          end
        end
      end
    end // ce_output

  assign  phase_1 = (cur_count == 5'b00001 && clk_enable == 1'b1) ? 1'b1 : 1'b0;

  //   ------------------ CE Output Register ------------------

  always @ (posedge clk or posedge reset)
    begin: ce_output_register
      if (reset == 1'b1) begin
        ce_out_reg <= 1'b0;
      end
      else begin
          ce_out_reg <= phase_1;
      end
    end // ce_output_register

  //   ------------------ Input Register ------------------

  always @ (posedge clk or posedge reset)
    begin: input_reg_process
      if (reset == 1'b1) begin
        input_register <= 0;
      end
      else begin
        if (clk_enable == 1'b1) begin
          input_register <= filter_in;
        end
      end
    end // input_reg_process

  //   ------------------ Section # 1 : Integrator ------------------

  assign section_in1 = input_register;

  assign section_cast1 = $signed({{13{section_in1[12]}}, section_in1});

  assign add_cast = section_cast1;
  assign add_cast_1 = section_out1;
  assign add_temp = add_cast + add_cast_1;
  assign sum1 = add_temp[25:0];

  always @ (posedge clk or posedge reset)
    begin: integrator_delay_section1
      if (reset == 1'b1) begin
        section_out1 <= 0;
      end
      else begin
        if (clk_enable == 1'b1) begin
          section_out1 <= sum1;
        end
      end
    end // integrator_delay_section1

  //   ------------------ Section # 2 : Integrator ------------------

  assign section_in2 = section_out1;

  assign add_cast_2 = section_in2;
  assign add_cast_3 = section_out2;
  assign add_temp_1 = add_cast_2 + add_cast_3;
  assign sum2 = add_temp_1[25:0];

  always @ (posedge clk or posedge reset)
    begin: integrator_delay_section2
      if (reset == 1'b1) begin
        section_out2 <= 0;
      end
      else begin
        if (clk_enable == 1'b1) begin
          section_out2 <= sum2;
        end
      end
    end // integrator_delay_section2

  //   ------------------ Section # 3 : Integrator ------------------

  assign section_in3 = section_out2;

  assign add_cast_4 = section_in3;
  assign add_cast_5 = section_out3;
  assign add_temp_2 = add_cast_4 + add_cast_5;
  assign sum3 = add_temp_2[25:0];

  always @ (posedge clk or posedge reset)
    begin: integrator_delay_section3
      if (reset == 1'b1) begin
        section_out3 <= 0;
      end
      else begin
        if (clk_enable == 1'b1) begin
          section_out3 <= sum3;
        end
      end
    end // integrator_delay_section3

  //   ------------------ Section # 4 : Comb ------------------

  assign section_in4 = section_out3;

  assign sub_cast = section_in4;
  assign sub_cast_1 = diff1;
  assign sub_temp = sub_cast - sub_cast_1;
  assign section_out4 = sub_temp[25:0];

  always @ (posedge clk or posedge reset)
    begin: comb_delay_section4
      if (reset == 1'b1) begin
        diff1 <= 0;
      end
      else begin
        if (phase_1 == 1'b1) begin
          diff1 <= section_in4;
        end
      end
    end // comb_delay_section4

  //   ------------------ Section # 5 : Comb ------------------

  assign section_in5 = section_out4;

  assign sub_cast_2 = section_in5;
  assign sub_cast_3 = diff2;
  assign sub_temp_1 = sub_cast_2 - sub_cast_3;
  assign section_out5 = sub_temp_1[25:0];

  always @ (posedge clk or posedge reset)
    begin: comb_delay_section5
      if (reset == 1'b1) begin
        diff2 <= 0;
      end
      else begin
        if (phase_1 == 1'b1) begin
          diff2 <= section_in5;
        end
      end
    end // comb_delay_section5

  //   ------------------ Section # 6 : Comb ------------------

  assign section_in6 = section_out5;

  assign sub_cast_4 = section_in6;
  assign sub_cast_5 = diff3;
  assign sub_temp_2 = sub_cast_4 - sub_cast_5;
  assign section_out6 = sub_temp_2[25:0];

  always @ (posedge clk or posedge reset)
    begin: comb_delay_section6
      if (reset == 1'b1) begin
        diff3 <= 0;
      end
      else begin
        if (phase_1 == 1'b1) begin
          diff3 <= section_in6;
        end
      end
    end // comb_delay_section6

  //   ------------------ Output Register ------------------

  always @ (posedge clk or posedge reset)
    begin: output_reg_process
      if (reset == 1'b1) begin
        output_register <= 0;
      end
      else begin
        if (phase_1 == 1'b1) begin
          output_register <= section_out6;
        end
      end
    end // output_reg_process

  // Assignment Statements
  assign ce_out = ce_out_reg;
  assign filter_out = output_register;
endmodule  // CIC_decimation_20_fs36MHz
