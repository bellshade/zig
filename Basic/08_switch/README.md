# Pendahuluan
Materi kali ini ialah materi yang menjelaskan tentang pemilihan / logika pada pemrograman Zig. Sebenarnya setiap logika akan berjalan tergantung dari operator yang kita gunakan. Jika kalian belum paham tentang Opeator kalian bisa berkunjung di materi Opearator [Operator](https://github.com/bellshade/zig/Basic/06_operator_pada_pemrograman_zig)

## Switch Case
Yap, materi kali ini ialah switch case dimana materi kali ini ialah bentuk lain dari sebuah percabangan. Berbeda dengan [if else](https://github.com/bellshade/zig/Basic/07_logika_pada_pemrograman_zig), di switch case ini untuk menentukannya bisa langsung nilai yang diingikan. Contohnya pengecekan nilai result dari hasil perkalian :
```zig
// variabel yang digunakan untuk memanggil module standard zig
const std = @import("std");

pub fn main() void {
    // Materi kali ini ialah tentang switch case
    // Kondisi ini sama halnya ddengan if else
    // Hanya saja kondisi yang dipake ialah dari expect nilai yang diinginkan
    var valueA: u8 = 20;
    var valueB: u8 = 5;
    var result: u8 = valueA * valueB;

    // Cara kerja switch case sama dimana ia akan melakukan pengecekan terhadap seluruh
    // data yang udah di cantumkan / opsi yang ditentukan

    // Contoh Program
    const response = switch (result) {
        // pengecekan jika nilainya adalah 100, maka return print out seperti dibawah
        100 => std.debug.print("Hasil dari perkaliannya adalah : {}\n", .{result}),

        // namun jika hasilnya tidak sesuai yang diinginkan maka return printout dari case else
        else => std.debug.print("Maaf hasilnya tidak sesuai yang diingkan", .{}),
    };

    _ = response;
}
```
Disini kalian bisa menambahkan banyak case sesuai yang diinginkan. Biasanya switch case digunakan kalau udah tahu untuk nilai pastinya. Misalnya dalam perkalian itu udah tau nilai dari resultnya adalah `100`