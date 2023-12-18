// variabel yang digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    // Materi kali ini ialah tentang switch case
    // Kondisi ini sama halnya ddengan if else
    // Hanya saja kondisi yang dipake ialah dari expect nilai yang diinginkan
    var valueA: u8 = 20;
    var valueB: u8 = 5;
    var result: u8 = valueA * valueB;

    // Cara kerja switch case sama dimana ia akan melakukan pengecekan terhadap seluruh
    // data yang udah di cantumkan / opsi yang ditentukan

    // Contoh Program
    const response = switch (result) {
        // pengecekan jika nilainya adalah 100, maka return print out seperti dibawah
        100 => std.debug.print("Hasil dari perkaliannya adalah : {}\n", .{result}),

        // namun jika hasilnya tidak sesuai yang diinginkan maka return printout dari case else
        else => std.debug.print("Maaf hasilnya tidak sesuai yang diingkan", .{}),
    };

    _ = response;
}
