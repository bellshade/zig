// Ini variabel yang digunakan untuk memanggil library standard zig
const std = @import("std");

// function dibuat return nya !void alias tidak null
// karena setiap data yang di write itu bukan null
// maka dari itu return nya adalah !void

pub fn main() !void {
    // Logika ini ialah logika tentang ZigZag
    // Yaa sebenarnya ini sama kaya FizzBuzz
    // Setiap angka yang dapat dibagi 3 dan 5 maka return ZigZag
    // angka yang hanya dapat dibagi 3 akan return Zig
    // dan angka yang hanya dapat dibagi 5 akan return Zag

    // ini merupakan module untuk writer dari output nya
    const stdout = std.io.getStdOut().writer();

    var iterate: usize = 1;
    while (iterate <= 20) : (iterate += 1) {
        if (iterate % 15 == 0) {
            try stdout.writeAll("ZigZag\n");
        } else if (iterate % 3 == 0) {
            try stdout.writeAll("Zig\n");
        } else if (iterate % 5 == 0) {
            try stdout.writeAll("Zag\n");
        } else {
            try stdout.print("{d}\n", .{iterate});
        }
    }
}
