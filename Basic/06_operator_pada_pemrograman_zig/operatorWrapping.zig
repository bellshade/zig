// variabel ini merupakan variabel untuk memanggil library standard
const std = @import("std");

pub fn main() void {
    // Kali ini ialah wrapping operator
    // Wrapping operator ialah merupakan operator yang nge-wrap value kita dari batasan maaximal tipe data yang kita gunakan
    // Wrapping Operator sendiri menggunakan operator `%` a.k.a modulo untuk mendapatkan sisa baginya
    // Ada 3 operator saja yang bisa dilakukan wrapping
    // Operator * a.k.a perkalian
    // Operator + a.k.a pertambahan
    // Operator - a.k.a pengurangan

    // Ini adalah wrapping untuk penambahan
    // Logikanya ketika nilai valuenya melebihi batas dari tipe data yang ditentukan
    // Maka akan menhasilkan nilai dari titik terendah
    var wrappingAddition: u8 = 255;
    wrappingAddition +%= 1; // result 0
    std.debug.print("Hasil dari 255 +% 1 adalah: {d}\n", .{wrappingAddition});

    // Ini adalah wrapping untuk perkalian
    // Secara bahasa manusia ia akan melakukan perkalian dan jika hasilnya melebihi batas tipe datanya
    // Maka akan dikurangi dari batasan nilai tipe data tersebut
    var wrappingMultiplication: u8 = 200;
    // Disini akan return 144, karena batasan dari u8 adalah 255
    // Dan hasil 200 * 2 adalah 400 maka akan dikurangi 256
    // Dikurangi 256 karena nilai 400 sendiri sudah masuk kedalam nilai u16
    // Maka dikurangi dari nilai terendah u16 dan hasilnya adalah 144
    wrappingMultiplication *%= 2; // result 144
    std.debug.print("Hasil dari 200 *% 2 adalah: {d}\n", .{wrappingMultiplication});

    // Ini adalah wrapping untuk pengurangan
    // Disini berlaku jika nilainya kurang dari nilai terendah tipe data
    // Maka akan mengambil nilai dari nilai tertinggi tipe data yang digunakan
    var wrappingNegation: u8 = 1;
    // Disini 1 - 10 hasilnya adalah -9
    // Dan hasil sisa baginya adalah -0,9 maka akan dikurangi dari 255
    // Maka returnnya adalah 247
    // Kenapa hasilnya 247 karena jika ditambah dengan hasil operasinya akan menjadi nilai 0 karena sudah mencapai batasan dari tipe data `u8`
    wrappingNegation -%= 10;
    std.debug.print("Hasil dari 1 -% 10 adalah: {}\n", .{wrappingNegation});
}
