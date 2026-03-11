module mux(

    input enable,
    input [3:0] CEO,
    input [3:0] You,
    input [3:0] Fred,
    input [3:0] Jill,
    input [1:0] select,
    output [3:0] local_lib
    
);

assign local_lib = enable ? (select == 2'b00 ? CEO :
                   select == 2'b01 ? You :
                   select == 2'b10 ? Fred :
                   Jill) : 0;
endmodule
