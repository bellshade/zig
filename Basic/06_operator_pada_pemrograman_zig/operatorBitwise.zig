// variabel ini digunakan untuk memanggil library standard zig
const std = @import("std");

pub fn main() void {
    // Materi kali ini ialah operator Bitwise
    // Operator bitwise sebenarnya operator yang returnnya nilai boolean
    // Dimana membandingkan antara 2 data dari result binarynya
    // Maka akan ketahuan hasilnya berapa
    // Operator bitwise di zig ada AND, OR, XOR, SHIFTING RIGHT, dan SHIFTING LEFT
    // Implementasi disini nge-convert nilai decimal ke dalam sebuah binary

    const isTen: i8 = 0b1010;
    const isFiveTeen: i8 = 0b1111;
    const isOne: i8 = 0b0001;
    const isEight: i8 = 0b0100;

    // Operator untuk and bisa kalian gunakan `&`
    // Secara sederhana and ini jika kedua data sama
    // Maka return data nya data itu sendiri, misal 1 dan 1 maka return 1
    // Jika datanya 0 dan 1 maka return 0
    std.debug.print("Hasil operator 10 and 15 ialah: {}\n", .{isTen & isFiveTeen}); // result 10

    // Operator untuk or bisa kalian gunakan `|`
    // Secara sederhana or ini jika kedua data sama
    // Maka return data nya data itu sendiri, misal 1 dan 1 maka return 1
    // Jika datanya 0 dan 1 maka return 1
    std.debug.print("Hasil dari operator 10 or 15 adalah: {}\n", .{isTen | isFiveTeen}); // result 15

    // Operator untuk and bisa kalian gunakan `&`
    // Secara sederhana and ini jika kedua data sama
    // Maka return data nya data itu 0, misal 1 ^ 1 maka return 0
    // Jika datanya 0 dan 1 maka return 1
    std.debug.print("Hasil dari operator 10 ^ 15 adalah: {}\n", .{isTen ^ isFiveTeen}); // result 5

    // Operator shifting ialah operator pergeseran
    // Jika geser ke kiri maka bisa menggunakan `<<`
    // Jika geser ke kanan maka bisa menggunakan `>>
    std.debug.print("Hasil dari operator 10 >> 1 adalah: {}\n", .{isTen >> isOne}); // result 5
    std.debug.print("Hasil dari operator 1 << 8 adalah: {}\n", .{isOne >> isEight}); // result 0

}
