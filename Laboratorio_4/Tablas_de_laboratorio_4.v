

//Tabla1
module tabla1ejercicio1(input wire A,B,C, output wire out1);
  wire   wa,wb,wc,s1,s2,s3,s4,s5;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);

  and a1(s1,wa,wc);
  and a2(s2,wc,wb);
  and a3(s3,A,C);
  and a4(s4,A,wb);

  or or1(out1,s1,s2,s3,s4);
endmodule

module tabla2ejercicio1(input wire A,B,C, output wire out2);
  wire wa,wb,wc,s5,s6 ;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);

  and a5(s5,wb,wc);
  and a6(s6,A,wb);

  or or2(out2,s5,s6);
endmodule

module tabla3ejercicio1(input wire A,B,C,D, output wire out3);
  wire  wa,wb,wc,wd,s7,s8,s9,s10,s11,s12,s13,s14;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);
  not n4(wd,D);

  and a7(s7,wa,wb,wc,wd);
  and a8(s8,A,B,wc,wd);
  and a9(s9,A,wb,C,wd);
  and a10(s10,wa,B,C,wd);
  and a11(s11,wa,wb,C,D);
  and a12(s12,A,B,C,D);
  and a13(s13,A,wb,wc,D);
  and a14(s14,wa,B,wc,D);

  or or3(out3,s7,s8,s9,s10,s12,s13,s14);
endmodule

module  tabla4ejercicio1(input wire A,B,C,D, output wire out4);

  wire wa,wb,wc,wd,s15,s16,s17,s18 ;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);
  not n4(wd,D);

  and a15(s15,A,wc,wd);
  and a16(s16,A,B);
  and a17(s17,A,C,D);

  or or4(out4,s15,s16,s17);

endmodule

module tabla1ejercicio2(input wire A,B,C,D, output wire out5);
  assign out5=(A & ~B)|(~B & ~C & ~D) |(A & !D) | (A & ~C & D);
endmodule

module tabla2ejercicio2(input wire A,B,C, output wire out6 );
  assign out6=!B | C;
endmodule

module tabla3ejercicio2(input wire A,B,C,D, output wire out7 );
  assign out7=(~A & ~B)|(A)|(A & ~B);
endmodule

module tabla4ejercicio2(input wire A,B,C, output wire out8 );
  assign out8=(B)|(~A & ~C);
endmodule
