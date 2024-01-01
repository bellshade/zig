## Pendahuluan
Yoo, comeback to materi Zig :u. Materi kali ini ialah tentang looping ialah dimana metode yang digunakan untuk melakukan program dengan data yang telah ditentukan. Seperti pada bahasa umumnya seperti `python`, `go`, `c++`, `c`, dan sebagainya . Looping tetaplah looping , fungsinya sama dengan bahasa pemrograman yang lainnya. Hanya saja style nya yang berbeda. Nah kali ini ada beberapa case untuk memahami gimana si looping didalam zig itu hehee :u

## For a.k.a 4Loop, 4Luping
Seperti yang dijelaskan didalam pendahuluan, for loop disini bisa digunakan untuk dilakukan dengan tipe data yang berbeda. Untuk for loop didalam zig ini punya style yang sangat unik, mau tau ? ini dia stylenya

```zig
// variabel ini digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
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
}
```
Unik bukan ? hehehe, nah program diatas yaa sebenarnya program basic untuk pengenalan tentang for loop didalam zig saja. Dimana program diatas cuma printout nilai dengan logic yang berbeda, for loop pertama untuk pengecekan jika `value` habis dibagi `2` maka akan di `lewati / continue`, sedangkan yang for loop kedua jika angkanya menyentuh `7` maka akan `berhenti`. Selain itu, ada beberapa style yang berbeda lagi, misal ingin melakukan kombinasi 2 `slice` atau `array` dalam satu loop, gimana bang contohnyaaa ?

## Magic For in Zig
Nahh ada beberap magic didalam for loop zig, salah satunya adalah kombinasi 2 slice dalam satu array, contohnya gimana tuh bang? gini contohnyaa.

```zig
// variabel ini digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    ...
    var kataPertama = [_][]const u8{ "Mari", "Zig" };
    var kataKedua = [_][]const u8{ "Belajar", "di Bellshade" };

    // Statement inilah dimana untuk mengambil semua kata yang didalam array
    for (kataPertama, kataKedua) |p, k| {
        // expected output: Mari Belajar Zig di Bellshade
        std.debug.print("{s} {s} ", .{ p, k });
    }
}
```
Nah jika kalian ingin mengambil nilai index di dalam array pun juga bisa , contohnya seperti ini
```zig
// variabel ini digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    var number = [_]u8{ 2, 5, 4, 7, 8, 9 };
    ...
    // Nah ini cara kalian jika ingin mengambil nilai indexnya
    // Maksud dari 0.. ialah indexnya dimulai dari data ke 0
    for (number, 0..) |value, idx| {
        std.debug.print("index ke - {}, datanya adalah: {}\n", .{ idx, value });
    }
}
```
Selain dua hal diatas ada juga `labaled` for, ini sering digunakan ketika ingin melakukan nested loop, biasanya ini digunakan untuk melakukan `break` atau `continue` dalam sebuah statement loop

```zig
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
```