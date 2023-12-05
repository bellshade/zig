// variabel ini merupakan variabel untuk memanggil library standard
const std = @import("std");

pub fn main() void {
    const sayWelcome = "Welcome To";
    const myName = "Bellshade";
    std.debug.print("{s}\n", .{sayWelcome ++ " " ++ myName});

    const valueA = 10;
    const valueB = 10;

    const multiplication = valueA * valueB;
    std.debug.print("Hasil dari 10 * 10 adalah: {:}\n", .{multiplication});

    const negation = valueA - valueB;
    std.debug.print("Hasil dari 10 - 10 adalah: {:}\n", .{negation});

    const addition = valueA + valueB;
    std.debug.print("Hasil dari 10 + 10 adalah: {:}\n", .{addition});

    const division = valueA / valueB;
    std.debug.print("Hasil dari 10 / 10 adalah: {:}\n", .{division});

    const modulo = valueA % valueB;
    std.debug.print("Hasil dari 10 % 10 adalah: {:}\n", .{modulo});
}
