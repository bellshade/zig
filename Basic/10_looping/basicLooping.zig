// variabel ini digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    // Materi kali ini ialah tentang perulangan
    // Seperti pada bahasa pemrograman umumnya, perulangan a.k.a luping a.k.a looping
    // Merupakan metode yang digunakan untuk melakukan perintah dengan baris kode yang sama
    // Yang dimana ada batasan maximum yang telah ditentukan
    //
    // Biasanya perulangan juga digunakan untuk mengambil data dalam array
    // Hal ini sering terjadi ketika ingin melakukan operasi bilangan pada dalam array
    // Dan kali ini, di materi zig ada metode looping, yang biasanya sering digunakan
    // Itu ada for, labeled for, dan inline for
    // Di kode ini berisi tentang basic for

    // Ada studi kasus yaitu pengecekan nilai angka
    // Jika nilai angkanya itu habis dibagi 2 maka tidak akan di print
    // Begitu pun sebaliknya jika tidak habis dibagi 2 maka di print

    var number = [_]u8{ 2, 5, 4, 7, 8, 9 };

    // for statement yang digunakan untuk melakukan looping
    // variabel number sebagai counter untuk melakukan looping pada data di dalamnya
    // variabel value digunakan sebagai key untuk mengambil per-data di number
    for (number) |value| {
        // logic pertama jika angka didalam variabel number habis dibagi 2
        // maka akan di lewati dan langsung ke logic yang selanjutnya
        if (value % 2 == 0) {
            // statement untuk next ke logic berikutnya
            continue;
        } else {
            // logic ini akan jalan jika kondisi di if tidak terpenuhi
            std.debug.print("angka: {d}\n", .{value});
        }
    }

    for (number) |forBreak| {
        //  jika data dalam variabel number itu adalah 7 maka akan berhenti operasi
        // jika nanti angka nya udah sama dengan 7, maka akan jalanin statement yang berikutnya
        if (forBreak == 7) {
            break;
        } else {
            // logic ini akan jalan jika kondisi di if tidak terpenuhi
            std.debug.print("angka: {d}\n", .{forBreak});
        }
    }

    var kataPertama = [_][]const u8{ "Mari", "Zig" };
    var kataKedua = [_][]const u8{ "Belajar", "di Bellshade" };

    // Statement inilah dimana untuk mengambil semua kata yang didalam array
    for (kataPertama, kataKedua) |p, k| {
        // expected output: Mari Belajar Zig di Bellshade
        std.debug.print("{s} {s} \n", .{ p, k });
    }

    // Nah ini cara kalian jika ingin mengambil nilai indexnya
    // Maksud dari 0.. ialah indexnya dimulai dari data ke 0
    for (number, 0..) |value, idx| {
        std.debug.print("index ke - {}, datanya adalah: {}\n", .{ idx, value });
    }
}
