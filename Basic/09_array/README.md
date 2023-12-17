## Pendahuluan
Yooo, materi kali ini ialah tentang array. Array sering kita jumpai di setiap bahasa pemrograman, baik itu `python`, `golang`, `php`, `c++`, bahkan di `bash` juga ada array. Secara simpelnya, array ialah merupakan kumpulan dari banyak data. Ada beberapa bahasa yang bisa menggunakan array dengan beberapa tipe data. Namun untuk Zig tidak semua tipe data bisa masuk ke dalam array yang sama, tergantung dari tipe data yang digunakan dalam pembuatan array. Untuk memahami tentang arry kalian harus juga paham tentang tipe data, kalian bisa cek disini :u [Tipe Data](https://github.com/bellshade/Zig/Basic/02_tipe_data)

## Array a.k.a Erei
Seperti yang dijelaskan di pendahuluan, array didalam zig ini tidak semua tipe data bisa dalam satu array seperti array dalam pemroraman `python`. Arraynya sudah ditentukan dalam bentuk tipe data, contohnya seperti dibawah ini
```zig
const isInteger = [_]i32{ 2, 9, 4, 7, 8, 1 };
```
Merupakan kumpulan array dari beberapa angka. Didalam array ini kalian bisa melakukan beberapa operator misalnya untuk menggabungkan dua / lebih array dan melipat gandakan banyaknya data

| Operator |            Description          |               Example            |
| :-----:  | :------------------------------:| :------------------------------: |
|   ++      | Menggabungkan                  | `a ++ b`                         |
|   **      | Melipatgandakan                | `a ** b`                         |

Nah kalau kalian ingin memanggil salah satu data dalam array kalian bisa menggunakan cara seperti ini `variabel[index]` seperti pada umumnya sebuah array. Array dalam zig juga bisa menghitung banyaknya data dengan cara `variabel.len`

## Example Array
```zig
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
```