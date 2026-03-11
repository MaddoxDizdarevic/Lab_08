module top (

    input[15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0] led

);

wire [3:0] output_mux;

wire [1:0] select_mux;
wire [1:0] select_demux;

assign select_mux = {btnU, btnL};
assign select_demux = {btnR, btnD};

mux mux_inst1 (

    .CEO(sw[3:0]),
    .You(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .select(select_mux),
    .local_lib(output_mux),
    .enable(btnC)
   
);



demux demux_inst1 (

    //.C(sw[3:0]),
    //.Y(sw[7:4]),
    //.F(sw[11:8]),
    //.select_mux(select_mux),
    .In(output_mux),
    .select_demux(select_demux),
    .enable(btnC),
    
    .local_lib(led[3:0]),
    .fire_dep(led[7:4]),
    .school(led[11:8]),
    .rib_shack(led[15:12])
);

endmodule

