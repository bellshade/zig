// variabel ini merupakan variabel untuk memanggil library standard
const std = @import("std");

pub fn main() void {
    // ini adalah operator aritmatika perkalian
    var multiplication: i16 = 10 * 10;
    std.debug.print("Hasil perkalian dari 10 * 10 adalah: {d}\n", .{multiplication});

    // ini adalah operator aritmatika pembagian
    var division: i16 = 90 / 10;
    std.debug.print("Hasil pembagian dari 90 / 10 adalah: {d}\n", .{division});

    // ini adalah operator aritmatika pertambahan
    var addition: i8 = 20 + 32;
    std.debug.print("Hasil pertambahan dari 10 + 10 adalah: {d}\n", .{addition});

    // ini adalah operator aritmatika pengurangan
    var negation: i8 = 10 - 12;
    std.debug.print("Hasil pengurangan dari 10 - 12 adalah: {d}\n", .{negation});

    // ini adalah operator aritmatika modulo
    var modulo: i8 = 10 % 3;
    std.debug.print("Hasil sisa bagi dari 10 % 3 adalah: {d}\n", .{modulo});
}
