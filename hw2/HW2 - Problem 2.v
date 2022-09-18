/ *

ECE 6213 - Design of VLSI Circuits - Fall 2022
HW 2 - Problem 2 - Osama Yousuf

* /

module p2_gates(w, x, y, z, a, b, c, d);

input w, x, y, z;
output a, b, c, d;

wire t1, t2, t3

    // model output a

    and g1(t1, w, x);   // t1 = wx
    and g2(t2, t1, y);  // t2 = wxy
    and g3(t3, t1, z);  // t3 = wxz
    or g4(a, t2, t3);   // a = wxy + wxz

    // model output b
    not g5(t4, x);          // t4 = x'
    and g6(t5, t4, y);      // t5 = x'y
    and g7(t6, t4, z);      // t6 = x'z

    not g8(t7, y);          // t7 = y'
    not g9(t8, z);          // t8 = z'

    and g10(t9, x, t7);     // t9 = xy'
    and g11(t10, t9, t8);   // t10 = xy'z'

    or g12(t11, t5, t6);    // t11 = x'y + x'z
    or g13(b, t11, t10);    // b = x'y + x'z + xy'z'

    // model output c
    and g14(t12, t7, t8);   // t12 = y'z'
    and g15(t13, y, z);     // t13 = yz
    or g16(c, t12, t13);    // c = y'z' + yz

    // model output d
    not g17(d, z);          // d = z'

endmodule