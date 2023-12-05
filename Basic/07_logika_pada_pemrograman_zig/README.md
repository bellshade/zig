# Pendahuluan
Materi kali ini ialah materi yang menjelaskan tentang logika pada pemrograman Zig. Sebenarnya setiap logika akan berjalan tergantung dari operator yang kita gunakan. Jika kalian belum paham tentang Opeator kalian bisa berkunjung di materi Opearator [Operator](https://github.com/bellshade/zig/Bellshade/06_operator_pada_pemrograman_zig)

## If Else
If Else ialah merupakan logika percabangan yang digunakan untuk mengechek hasil operasi dan akan return data dari statemen yang telah ditetapkan. Logika ini sering digunakan apalgi untuk pengechekan nilai sebuah data. Untuk example contohnya itu seperti ini 
```zig
// ini variabel yang digunakan untuk memanggil standard library pada pemrograman Zig
const std = @import("std");

pub fn main() void {
    // Materi kali ini ialah merupakan logika pada Zig
    // Sebelumnya kita telah mempelajari sebuah operator
    // Kurang lengkap jika kita tidak menerapkan di sebuah logika
    // di Zig sebenarnya ada banyak cara mengolah logika, salah satunya yaitu if else
    // Semua tergantung operator yang kita gunakan, entah itu aritmatika, bitwise, wrapped, saturated, dsbnya
    const valueA: u8 = 20;
    const valueB: u8 = 10;
    const result: u8 = valueA * valueB;

    // IF ELSE merupakan sebuah logika percabangan yang dimana ia akan selalu ngecheck sampai hasilnya ketemu
    // Disini logika pertama jika hasilnya tidak sama dengan 200 maka akan nge-print teks yang telah ditentukan
    // Dan jika logika pertama gagal maka lanjut ke print-out untuk logika kedua
    if (result != 200) {
        std.debug.print("Maaf hasil nya tidak sesuai prediksi\n");
    } else {
        std.debug.print("Yeayy hasil sesuai: {}\n", .{result});
    }
}

```

## Example Implementation
Untuk implementasinya disini menggunakan [ZigZag](https://ziglang.org/learn/samples/). Sebenarnya logika ZigZag ini merupakan logika yang mirip dengan FizzBuzz. Dimana setiap angka yang habis dibagi 15 akan return ZigZag. Jika habis di bagi 3 maka akan return Zig dan jika habis dibagi 5 makan akan return Zag.

```zig
// Ini variabel yang digunakan untuk memanggil library standard zig
const std = @import("std");

// function dibuat return nya !void alias tidak null
// karena setiap data yang di write itu bukan null
// maka dari itu return nya adalah !void

pub fn main() !void {
    // Logika ini ialah logika tentang ZigZag
    // Yaa sebenarnya ini sama kaya FizzBuzz
    // Setiap angka yang dapat dibagi 3 dan 5 maka return ZigZag
    // angka yang hanya dapat dibagi 3 akan return Zig
    // dan angka yang hanya dapat dibagi 5 akan return Zag

    // ini merupakan module untuk writer dari output nya
    const stdout = std.io.getStdOut().writer();

    var iterate: usize = 1;
    while (iterate <= 20) : (iterate += 1) {
        if (iterate % 15 == 0) {
            try stdout.writeAll("ZigZag\n");
        } else if (iterate % 3 == 0) {
            try stdout.writeAll("Zig\n");
        } else if (iterate % 5 == 0) {
            try stdout.writeAll("Zag\n");
        } else {
            try stdout.print("{d}\n", .{iterate});
        }
    }
}

```
