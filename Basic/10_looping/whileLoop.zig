// variabel ini digunakan untuk memanggil module standard Zig
const std = @import("std");

pub fn main() void {
    // While loop adalah salah satu jenis looping juga
    // Biasanya ini sering digunakan untuk melakukan looping yang dimana dengan jumlah yang telah ditentukan
    // Misal kalian ingin melakukan looping sebanyak x, nah case while ini lebih baik ketimbang for loop
    // Use case for loop sendiri digunakan ketika udah ada data pasti
    // Sedangkan while ini digunakan ketika ingin melakukan eksekusi sebanyak beberapa kali

    // Misal disini punya sebuah program :
    // Pace ingin melakukan eksekusi sebuah program, dimana programnya ini dinamakan dengan BellZig
    // Program ini akan mengecek jika angkanya habis dibagi 2 dan 4 maka akan return BellZig
    // Jika hanya habis dibagi 5 maka disebut Bell
    // Jika habis dibagi 3 maka disebut Zig
    // Nah jika diluar itu semua maka akan return angka

    // Index ini sebagai counter untuk melakukan looping
    var index: usize = 1;
    // disini logicnya dia akan terus looping jika angkanya lebih kecil / sama dengan 20
    // statement dari (index += 1) ini adalah proses setiap index ini ditambah 1 seiring loop
    while (index <= 20) : (index += 1) {
        // logic pertama akan bernilai true jika angkanya habis dibagi 8
        if (index % 8 == 0) {
            std.debug.print("BellZig\n", .{});
            // logic kedua akan berjalan jika nilai index habis dibagi 3
        } else if (index % 3 == 0) {
            std.debug.print("Bell\n", .{});
            // logic yang ini akan berjalan jika nilai index habis dibagi 5
        } else if (index % 5 == 0) {
            std.debug.print("Zig\n", .{});
            // selain logic diatas akan return nilai index
        } else {
            std.debug.print("{d}\n", .{index});
        }
    }
}
