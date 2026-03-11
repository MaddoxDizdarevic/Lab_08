module demux (

    
    input [1:0] enable,
    input [3:0] In,
    input [1:0] select_demux,
    output [3:0] local_lib,
    output [3:0] fire_dep,
    output [3:0] school,
    output [3:0] rib_shack

);

    assign local_lib = (enable && select_demux == 2'b00) ? In : 0;
    assign fire_dep =  (enable && select_demux == 2'b01) ? In : 0;
    assign school = (enable && select_demux == 2'b10) ? In : 0;
    assign rib_shack = (enable && select_demux == 2'b11) ? In : 0;

endmodule
