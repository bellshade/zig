// Variabel ini digunakan untuk memanggil standard module zig
const std = @import("std");

pub fn main() void {
    // Array a.k.a Erei merupakan materi yang sering kita jumpa dalam pemrograman
    // Secara teoritikal materi ini menjelaskan tentang kumpulan data
    // Baik itu tipe data string, integer, bahkan nested array

    // Ini salah satu contoh array dari kumpulan kata
    const message = [_]u8{ 'b', 'e', 'l', 'l', 's', 'h', 'a', 'd', 'e' };
    std.debug.print("{s}\n", .{message});

    // Didalam array juga bisa melakukan operator
    // Misal ingin menggabungkan dua buah array dalam satu line
    // Kalian bisa menggukan operator `++`
    // Contoh program
    const msg = "hebat";
    std.debug.print("{s}\n", .{message ++ " " ++ msg});

    // Selain itu data dari dalam array juga bisa digandakan jumlah datanya
    // Dengan kata lain bisa dikali, untuk melakukan ini
    // Bisa menggunakan operator `**`
    const isInteger = [_]i32{ 2, 9, 4, 7, 8, 1 };
    std.debug.print("{d}\n", .{isInteger ** 3});

    // Kalau kalian ingin mengetahui nilai panjang dari sebuah array
    // Kalian bisa menggunakan `len` untuk melihat nilainya
    // Misal disini saya ingin melihat banyaknya jumlah data dari variabel `isInteger`
    std.debug.print("Banyaknya data dari variabel isInteger adalah: {d}\n", .{isInteger.len});

    // Kalian bisa juga mengambil salah satu data yang ada dari dalam array
    // misal saya ingin mengambil angka 8 didalam array isInteger
    // maka harus tahu terlebih dahulu posisi index dari angka 8
    // dan disini angka 8 berada di index ke 4

    std.debug.print("Nilai dari index ke-4 adalah: {d}", .{isInteger[4]});
}
