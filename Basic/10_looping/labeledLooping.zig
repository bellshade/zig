// variabel ini digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    // Labaled for ialah sebuah looping dimana di label
    // Alias statement loopingnya di jadikan sebuah variabel
    // Yaa seperti pada bahasa pemrograman pada umumnya saja
    // Looping juga bisa di labelin

    // Ini contoh programnya, misalnya disini akan melakukan looping sebanyak 1 - 10
    // Variabel count digunakan untuk counter
    // Untuk menambahkan semua data yang ada didalam loop

    var count: usize = 0;
    // Dilansir dari docs zig, labeled for biasanya digunakan
    // untuk melakukan break / continue terhadap nested loop
    // nah kasus kali ini dari labaled loopnya akan berhenti jika angkanya itu lebih besari dari 20
    labeledLoop: for (1..10) |loops| {
        count += loops;
        if (count >= 20) {
            break :labeledLoop;
        }
    }

    std.debug.print("Result : {d}", .{count});
}
