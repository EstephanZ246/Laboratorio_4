module testbench();

  reg p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14;
  wire led1, led2, led3, led4,led5,led6,led7,led8;
//instancias
  tabla1ejercicio1 pr1(p1,p2,p3,led1);
  tabla2ejercicio1 pr2(p1,p2,p3,led2);
  tabla3ejercicio1 pr3(p4,p5,p6,p7,led3);
  tabla4ejercicio1 pr4(p4,p5,p6,p7,led4);
  tabla1ejercicio2 pr5(p8,p9,p10,p11,led5);
  tabla2ejercicio2 pr6(p12,p13,p14,led6);
  tabla3ejercicio2 pr7(p8,p9,p10,p11,led7);
  tabla4ejercicio2 pr8(p12,p13,p14,led8);


// primera y segunda tabla ejercicio 1
  initial begin
  #1
  $display("");
  $display("Tabla 1 y 2");
  $display("A B C | Y1 Y2");
  $display("______|_______");
  $monitor("%b %b %b |%b  %b",p1, p2, p3, led1, led2);
     p1=0; p2=0; p3=0;
  #1 p1=0; p2=0; p3=1;
  #1 p1=0; p2=1; p3=0;
  #1 p1=0; p2=1; p3=1;
  #1 p1=1; p2=0; p3=0;
  #1 p1=1; p2=0; p3=1;
  #1 p1=1; p2=1; p3=0;
  #1 p1=1; p2=1; p3=1;
  end
  // tercera y cuarta tabla ejercicio 1
  initial begin
  #8
  $display("");
  $display("Tabla 3 y 4");
  $display("A B C D | Y3 Y4");
  $display("________|_______");
  $monitor("%b %b %b %b | %b %b",p4,p5,p6,p7, led3, led4);
     p4=0; p5=0; p6=0; p7=0;
  #1 p4=0; p5=0; p6=0; p7=1;
  #1 p4=0; p5=0; p6=1; p7=0;
  #1 p4=0; p5=0; p6=1; p7=1;
  #1 p4=0; p5=1; p6=0; p7=0;
  #1 p4=0; p5=1; p6=0; p7=1;
  #1 p4=0; p5=1; p6=1; p7=0;
  #1 p4=0; p5=1; p6=1; p7=1;
  #1 p4=1; p5=0; p6=0; p7=0;
  #1 p4=1; p5=0; p6=0; p7=1;
  #1 p4=1; p5=0; p6=1; p7=0;
  #1 p4=1; p5=0; p6=1; p7=1;
  #1 p4=1; p5=1; p6=0; p7=0;
  #1 p4=1; p5=1; p6=0; p7=1;
  #1 p4=1; p5=1; p6=1; p7=0;
  #1 p4=1; p5=1; p6=1; p7=1;
  end
//primera y tercera tabla ejercicio 2
  initial begin
  #50
  $display("");
  $display("Tabla 1 y 3 ejercicio 2");
  $display("A B C D | Y1 Y3");
  $display("________|_______");
  $monitor("%b %b %b %b | %b %b",p8,p9,p10,p11,led5,led7);
     p8=0; p9=0; p10=0; p11=0;
  #1 p8=0; p9=0; p10=0; p11=1;
  #1 p8=0; p9=0; p10=1; p11=0;
  #1 p8=0; p9=0; p10=1; p11=1;
  #1 p8=0; p9=1; p10=0; p11=0;
  #1 p8=0; p9=1; p10=0; p11=1;
  #1 p8=0; p9=1; p10=1; p11=0;
  #1 p8=0; p9=1; p10=1; p11=1;
  #1 p8=1; p9=0; p10=0; p11=0;
  #1 p8=1; p9=0; p10=0; p11=1;
  #1 p8=1; p9=0; p10=1; p11=0;
  #1 p8=1; p9=0; p10=1; p11=1;
  #1 p8=1; p9=1; p10=0; p11=0;
  #1 p8=1; p9=1; p10=0; p11=1;
  #1 p8=1; p9=1; p10=1; p11=0;
  #1 p8=1; p9=1; p10=1; p11=1;
  end
  // segunda y cuarta tabla ejercicio 2
initial begin
#70
  $display("");
  $display("Tabla 2 y 4 ejercicio 2");
  $display("A B C | Y2 Y4");
  $display("______|_______");
  $monitor("%b %b %b |%b %b", p12,p13,p14,led6,led8);
     p12=0; p13=0; p14=0;
  #1 p12=0; p13=0; p14=1;
  #1 p12=0; p13=1; p14=0;
  #1 p12=0; p13=1; p14=1;
  #1 p12=1; p13=0; p14=0;
  #1 p12=1; p13=0; p14=1;
  #1 p12=1; p13=1; p14=0;
  #1 p12=1; p13=1; p14=1;
end

  initial
  #100 $finish;
  initial begin
    $dumpfile("Tablas_de_laboratorio_4_tb.vcd");
    $dumpvars(0,testbench);
  end
endmodule
