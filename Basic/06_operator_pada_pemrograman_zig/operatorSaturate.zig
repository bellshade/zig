// variabel ini merupakan variabel untuk memanggil library standard
const std = @import("std");

pub fn main() void {
    // Kali ini ialah saturating operator
    // Saturating operator ialah merupakan operator yang nge-saturate value kita dari batasan maaximal dan minimal tipe data yang kita gunakan
    // Saturating Operator sendiri menggunakan operator `|`
    // Ada 3 operator saja yang bisa dilakukan saturating
    // Operator * a.k.a perkalian
    // Operator + a.k.a pertambahan
    // Operator - a.k.a pengurangan

    // Ini adalah saturating untuk penambahan
    // Logikanya ketika nilai valuenya melebihi batas dari tipe data yang ditentukan
    // Maka akan menhasilkan nilai dari titik tertingginya
    var saturatingAddition: u8 = 255;
    saturatingAddition +|= 1; // result 255
    std.debug.print("Hasil dari 255 +| 1 adalah: {d}\n", .{saturatingAddition});

    // Ini adalah saturating untuk perkalian
    // Secara bahasa manusia ia akan melakukan perkalian dan jika hasilnya melebihi batas tipe datanya
    // Maka akan return dari nilai tertinggi tipe datanya
    var saturatingMultiplication: u8 = 200;
    // Dan hasil 200 * 2 adalah 400
    // Disini akan return 255, karena batasan dari u8 adalah 255
    saturatingMultiplication *|= 2; // result 144
    std.debug.print("Hasil dari 200 *| 2 adalah: {d}\n", .{saturatingMultiplication});

    // Ini adalah saturating untuk pengurangan
    // Disini berlaku jika nilainya kurang dari nilai terendah tipe data
    // Maka akan mengambil nilai dari nilai terendah tipe data yang digunakan
    var saturatingNegation: u8 = 0;
    // Disini 0 - 1 hasilnya adalah -1
    // Maka returnnya adalah 0, karena nilai terendah u8 adalah 0
    saturatingNegation -|= 1;
    std.debug.print("Hasil dari 0 -| 1 adalah: {}\n", .{saturatingNegation});
}
