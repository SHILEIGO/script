/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 5.4.0-6ubuntu1~16.04.4 -O2 -fstack-protector-strong -fPIC -Os) */

(* src = "sevenseg.v:1" *)
module sevenseg(HEX0, SW);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  (* src = "sevenseg.v:1" *)
  output [6:0] HEX0;
  (* src = "sevenseg.v:2" *)
  input [3:0] SW;
  assign _00_ = SW[1] | SW[0];
  assign _01_ = ~SW[2];
  assign _02_ = SW[3] | _01_;
  assign _03_ = ~SW[0];
  assign _04_ = SW[1] | _03_;
  assign _05_ = ~(SW[3] & SW[2]);
  assign _06_ = _05_ | _04_;
  assign _07_ = ~((_02_ | _00_) & _06_);
  assign _08_ = SW[3] | SW[2];
  assign _09_ = ~(_08_ | _04_);
  assign _10_ = SW[1] & SW[0];
  assign _11_ = SW[3] & _01_;
  assign _12_ = _11_ & _10_;
  assign _13_ = _12_ | _09_;
  assign HEX0[0] = _13_ | _07_;
  assign _14_ = ~_05_;
  assign _15_ = ~(_14_ & _04_);
  assign _16_ = ~SW[3];
  assign _17_ = _16_ & SW[2];
  assign _18_ = ~(SW[1] & SW[0]);
  assign _19_ = _18_ & _00_;
  assign _20_ = ~((_19_ & _17_) | _12_);
  assign HEX0[1] = ~(_20_ & _15_);
  assign _21_ = ~(SW[1] & _03_);
  assign HEX0[2] = ~((_21_ | _08_) & _15_);
  assign _22_ = _10_ & _17_;
  assign _23_ = ~(_22_ | _09_);
  assign _24_ = ~((_18_ | _05_) & (_02_ | _00_));
  assign _25_ = ~((_19_ & _11_) | _24_);
  assign HEX0[3] = ~(_25_ & _23_);
  assign _26_ = ~((SW[3] | _03_) & SW[1]);
  assign _27_ = _01_ ? SW[0] : _16_;
  assign HEX0[4] = _27_ & _26_;
  assign _28_ = ~_00_;
  assign _29_ = ~((_08_ | _28_) & _06_);
  assign HEX0[5] = _29_ | _22_;
  assign _30_ = _11_ | _00_;
  assign HEX0[6] = ~((_30_ | _17_) & _23_);
endmodule

(* top =  1  *)
(* src = "top.v:2" *)
module top(HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7, SW);
  (* src = "top.v:2" *)
  output [6:0] HEX0;
  (* src = "top.v:2" *)
  output [6:0] HEX1;
  (* src = "top.v:2" *)
  output [6:0] HEX2;
  (* src = "top.v:2" *)
  output [6:0] HEX3;
  (* src = "top.v:2" *)
  output [6:0] HEX4;
  (* src = "top.v:2" *)
  output [6:0] HEX5;
  (* src = "top.v:2" *)
  output [6:0] HEX6;
  (* src = "top.v:2" *)
  output [6:0] HEX7;
  (* src = "top.v:3" *)
  input [15:0] SW;
  (* src = "top.v:6" *)
  sevenseg UUD0 (
    .HEX0(HEX0),
    .SW(4'b0111)
  );
  (* src = "top.v:7" *)
  sevenseg UUD1 (
    .HEX0(HEX1),
    .SW(4'b0001)
  );
  (* src = "top.v:8" *)
  sevenseg UUD2 (
    .HEX0(HEX2),
    .SW(4'b0000)
  );
  (* src = "top.v:9" *)
  sevenseg UUD3 (
    .HEX0(HEX3),
    .SW(4'b0010)
  );
  (* src = "top.v:10" *)
  sevenseg UUD4 (
    .HEX0(HEX4),
    .SW(SW[3:0])
  );
  (* src = "top.v:11" *)
  sevenseg UUD5 (
    .HEX0(HEX5),
    .SW(SW[7:4])
  );
  (* src = "top.v:12" *)
  sevenseg UUD6 (
    .HEX0(HEX6),
    .SW(SW[11:8])
  );
  (* src = "top.v:13" *)
  sevenseg UUD7 (
    .HEX0(HEX7),
    .SW(SW[15:12])
  );
endmodule
