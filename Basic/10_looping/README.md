## Pendahuluan
Yoo, comeback to materi Zig :u. Materi kali ini ialah tentang looping ialah dimana metode yang digunakan untuk melakukan program dengan data yang telah ditentukan. Seperti pada bahasa umumnya seperti `python`, `go`, `c++`, `c`, dan sebagainya . Looping tetaplah looping , fungsinya sama dengan bahasa pemrograman yang lainnya. Hanya saja style nya yang berbeda. Nah kali ini ada beberapa case untuk memahami gimana si looping didalam zig itu hehee :u

## Sebelum Mulai
Sebelum dimulai mari kita perkenalan dulu tentang komponen komponen yang ada didalam for loop Zig. Style program zig ini unik, selain yang typesafe, zig juga punya struktur yang berbeda. Dalam menggunakan for loop ada yang harus kalian perhatikan. 
```zig
// variabel ini digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    // sebagai contoh disini kita punya array yaitu number
    // dimana kumpulan angka dengan tipe data u8
    // fyi _ didaalm `[]` itu menandakan jumlah datanya bebas
    // tergantung yang kita mau
    var number = [_]u8{ 2, 5, 4, 7, 8, 9 };
    ...
}
```
Nah disini bagian utamanya, `for()` didalam kurung ini diisi dengan variabel atau logic yang mau kalian gunakan, nah untuk mengambil per datanya kalian bisa tambahkan ditambahkan disamping `for()` itu dengan `|example|` bebas disini kalian namakan apa, setidaknya bisa kalian pahami. Contohnya seperti ini
```zig
// variabel ini digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    var number = [_]u8{ 2, 5, 4, 7, 8, 9 };

    // for statement yang digunakan untuk melakukan looping
    // variabel number sebagai counter untuk melakukan looping pada data di dalamnya
    // |value| sebagai variabel untuk mengambil setiap data yang ada didalam number
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
    ...
}
```

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

## While Loop 
While Loop ialah statement dimana sebuah program akan berjalan jika datanya bernilai `true`. Biasanya ini digunakan jika ingin mealkukan pengecekan data, pemilihan data, ataupun eksekusi nilai pasti. Terus contohnya gimana bang ? contohnyaa seperti ini 

```zig
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
```