# Pendahuluan
Materi kali ini ialah materi tentang operator pada pemrograman zig. Seperti pada umumnya bahasa pemrograman, operator aritmatika, operator bitwise, dan operator antar variabel berlaku juga di zig ini. Hanya saja ada 2 operator yang hanya ada di zig, yaitu operator wrapping dan operator saturating. Lalu apa si kedua operator itu ? Yuk simak dulu pembahasannya

### Operator Aritmatika
Operator aritmatika seperti pada umumnya saja. Operator ini terdapat perkalian, pertambahan, pengurangan, pembagian, dan modulo. Syntaxnya pun masih sama seperti bahasa pemrograman pada umumnya.

| Operator |            Description          |               Example            |
| :-----:  | :------------------------------:| :------------------------------: |
|   *      | Ini operator perkalian          | `a * b` or `a *= b`              |
|   -      | Ini operator Perngurangan       | `a - b` or `a -= b`              |
|   +      | Ini operator penambahan         | `a + b` or `a += b`              |
|   /      | Ini operator pembagian          | `a / b` or `a /= b`              |
|   %      | Ini operator modulo / sisa bagi | `a % b` or `a %= b`              |

#### Implementasi Zig Operator Aritmatika
```zig
// variabel ini merupakan variabel untuk memanggil library standard
const std = @import("std");

pub fn main() void {
    // ini adalah operator aritmatika perkalian
    var multiplication: i16 = 10 * 10;
    std.debug.print("Hasil perkalian dari 10 * 10 adalah: {d}\n", .{multiplication});

    // ini adalah operator aritmatika pembagian
    var division: i16 = 90 / 10;
    std.debug.print("Hasil pembagian dari 90 / 10 adalah: {d}\n", .{division});

    // ini adalah operator aritmatika pertambahan
    var addition: i8 = 20 + 32;
    std.debug.print("Hasil pertambahan dari 10 + 10 adalah: {d}\n", .{addition});

    // ini adalah operator aritmatika pengurangan
    var negation: i8 = 10 - 12;
    std.debug.print("Hasil pengurangan dari 10 - 12 adalah: {d}\n", .{negation});

    // ini adalah operator aritmatika modulo
    var modulo: i8 = 10 % 3;
    std.debug.print("Hasil sisa bagi dari 10 % 3 adalah: {d}\n", .{modulo});
}

```

### Operator Bitwise
Operator Bitwise ialah operator yang nge-return nilai datanya berupa boolean. Operator bitwise sendiri masih sama dengan bahasa pemrograman yang lainnya, ada AND, XOR, OR, SHIFTING LEFT, dan SHIFTING RIGHT. Syntaxnya pun masih sama seperti bahasa pemrograman pada umumnya.

| Operator |            Description          |               Example            |
| :-----:  | :------------------------------:| :------------------------------: |
|   &      | Ini operator and                | `a & b` or `a &= b`              |
|   or      | Ini operator or                 | `a or b`                        |
|   ^      | Ini operator xor                | `a ^ b` or `a ^= b`              |
|   >>     | Ini operator shifting right     | `a << b` or `a >>= b`            |
|   <<     | Ini operator shifting left      | `a >> b` or `a <<= b`            |

#### Implementasi Zig Operator Bitwise
```zig
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
```

### Operator Wrapping
Nah ini operator yang ada di dalam Zig. Operator ini operator yang ketika nilainya sudah menyentuh batas maximal dari suatu tipe data, maka akan nge-return nilai terendah dari tipe data tersebut. Namun sebaliknya jika , nilainya sudah mencapai nilai terendah dari suatu tipe data, maka akan nge-return nilai tertinggi dari tipe data tersebut. Biasanya untuk operator ini ditandai dengan adanya `%`, disini hanya terdapat 3 saja yaitu Wrapping Addition ( Penambahan ) `+%`, Wrapping Negation ( Pengurangan ) `-%`, dan Wrapping Multiplication ( Perkalian ) `*%`. Untuk implementasinya yaitu seperti ini:

```zig
// variabel ini merupakan variabel untuk memanggil library standard
const std = @import("std");

pub fn main() void {
    // Kali ini ialah wrapping operator
    // Wrapping operator ialah merupakan operator yang nge-wrap value kita dari batasan maaximal tipe data yang kita gunakan
    // Wrapping Operator sendiri menggunakan operator `%` a.k.a modulo untuk mendapatkan sisa baginya
    // Ada 3 operator saja yang bisa dilakukan wrapping
    // Operator * a.k.a perkalian
    // Operator + a.k.a pertambahan
    // Operator - a.k.a pengurangan

    // Ini adalah wrapping untuk penambahan
    // Logikanya ketika nilai valuenya melebihi batas dari tipe data yang ditentukan
    // Maka akan meghasilkan nilai dari titik terendah
    var wrappingAddition: u8 = 255;
    wrappingAddition +%= 1; // result 0
    std.debug.print("Hasil dari 255 +% 1 adalah: {d}\n", .{wrappingAddition});

    // Ini adalah wrapping untuk perkalian
    // Secara bahasa manusia ia akan melakukan perkalian dan jika hasilnya melebihi batas tipe datanya
    // Maka akan dikurangi dari batasan nilai tipe data tersebut
    var wrappingMultiplication: u8 = 200;
    // Disini akan return 144, karena batasan dari u8 adalah 255
    // Dan hasil 200 * 2 adalah 400 maka akan dikurangi 256
    // Dikurangi 256 karena nilai 400 sendiri sudah masuk kedalam nilai u16
    // Maka dikurangi dari nilai terendah u16 dan hasilnya adalah 144
    wrappingMultiplication *%= 2; // result 144
    std.debug.print("Hasil dari 200 *% 2 adalah: {d}\n", .{wrappingMultiplication});

    // Ini adalah wrapping untuk pengurangan
    // Disini berlaku jika nilainya kurang dari nilai terendah tipe data
    // Maka akan mengambil nilai dari nilai tertinggi tipe data yang digunakan
    var wrappingNegation: u8 = 1;
    // Disini 1 - 10 hasilnya adalah -9
    // Dan hasil sisa baginya adalah -0,9 maka akan dikurangi dari 255
    // Maka returnnya adalah 247
    // Kenapa hasilnya 247 karena jika ditambah dengan hasil operasinya akan menjadi nilai 0 karena sudah mencapai batasan dari tipe data `u8`
    wrappingNegation -%= 10;
    std.debug.print("Hasil dari 1 -% 10 adalah: {}\n", .{wrappingNegation});
}
```

### Operator Saturate
Operator satu ini, juga operator yang ada di dalam Zig. Operator ini operator yang ketika nilainya sudah menyentuh batas maximal dari suatu tipe data, maka akan nge-return nilai tertinggi dari tipe data tersebut. Jika , nilainya sudah mencapai nilai terendah dari suatu tipe data, maka akan nge-return nilai terendah dari tipe data tersebut. Biasanya untuk operator ini ditandai dengan adanya `|`, disini hanya terdapat 3 saja yaitu Saturate Addition ( Penambahan ) `+|`, Saturate Negation ( Pengurangan ) `-|`, dan Saturate Multiplication ( Perkalian )`*|`. Untuk implementasinya yaitu seperti ini:

```zig
// variabel ini merupakan variabel untuk memanggil library standard
const std = @import("std");

pub fn main() void {
    // Kali ini ialah saturating operator
    // Saturating operator ialah merupakan operator yang nge-saturate value kita dari batasan maaximal dan minimal tipe data yang kita gunakan
    // Saturating Operator sendiri menggunakan operator `|`
    // Ada 3 operator saja yang bisa dilakukan saturating
    // Operator * a.k.a perkalian
    // Operator + a.k.a pertambahan
    // Operator - a.k.a pengurangan

    // Ini adalah saturating untuk penambahan
    // Logikanya ketika nilai valuenya melebihi batas dari tipe data yang ditentukan
    // Maka akan menhasilkan nilai dari titik tertingginya
    var saturatingAddition: u8 = 255;
    saturatingAddition +|= 1; // result 255
    std.debug.print("Hasil dari 255 +| 1 adalah: {d}\n", .{saturatingAddition});

    // Ini adalah saturating untuk perkalian
    // Secara bahasa manusia ia akan melakukan perkalian dan jika hasilnya melebihi batas tipe datanya
    // Maka akan return dari nilai tertinggi tipe datanya
    var saturatingMultiplication: u8 = 200;
    // Dan hasil 200 * 2 adalah 400
    // Disini akan return 255, karena batasan dari u8 adalah 255
    saturatingMultiplication *|= 2; // result 144
    std.debug.print("Hasil dari 200 *| 2 adalah: {d}\n", .{saturatingMultiplication});

    // Ini adalah saturating untuk pengurangan
    // Disini berlaku jika nilainya kurang dari nilai terendah tipe data
    // Maka akan mengambil nilai dari nilai terendah tipe data yang digunakan
    var saturatingNegation: u8 = 0;
    // Disini 0 - 1 hasilnya adalah -1
    // Maka returnnya adalah 0, karena nilai terendah u8 adalah 0
    saturatingNegation -|= 1;
    std.debug.print("Hasil dari 0 -| 1 adalah: {}\n", .{saturatingNegation});
}
```