// variabel yang digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    // If Else atau bisa disebut dengan operator Percabangan
    // Dimana operator ini berperan untuk pengecekan kondisi
    // Jika kondisi pertama tidak terpenuhi maka akan lanjut ke kondisi kedua
    // dan itu terus berulang kali sesuai banyaknya operator percabangan

    var valueA: u8 = 20;
    var valueB: u8 = 5;

    // Contoh Percabangan pengecekan nilai
    // Jika nilai valuA * valueB tidak sama dengan dari 100
    if (valueA * valueB != 100) {
        // Maka hasilnya akan printout "Maaf hasilnya tidak sesuai yang diinginkan"
        std.debug.print("Maaf hasilnya tidak sesuai yang diingikan\n", .{});
    } else {
        // Jika kondisi pertama tidak terpenuhi maka lanjut kondisi yang kedua
        // Yaitu printout hasil dari perkalian
        std.debug.print("Hasilnya adalah: {}\n", .{valueA * valueB});
    }

    // Selanjutnya yaitu statement dari Else If
    // Sama juga fungsinya untuk pengecekan sebuah value
    // Kondisi ini akan digunakan jika ingin melakukan percabangan lebih dari 2

    // Contoh Program
    if (valueA / valueB == 5) {
        // Pengecekan pertama jika valuA dibagi dengan valueB sama dengan 5
        // Maka akan melakukan printout yang diinginkan
        // Namun jka tidak akan lanjut ke percabangan berikutnya
        std.debug.print("Hasil Pembagiannya adalah {}\n", .{valueA / valueB});
    } else if (valueA / valueB == 4) {
        // Yaitu percabangan kedua ini jika hasilnya adalh 4
        // Namun jika tidak sesuai juga maka langsung ke opsi terakhir
        std.debug.print("Hasil Pembagiannya adalah {}\n", .{valueA / valueB});
    } else {
        // Opsi terakhir dari percabangan
        std.debug.print("Hasilnya tidak sesuai yang diingikan \n", .{});
    }
}
