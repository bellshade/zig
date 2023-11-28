# Pendahuluan

Tipe data adalah klasifikasi data. Tipe data menentukan jenis sebuah variabel. Variabel sendiri adalah sebuah wadah untuk menyimpan data. pada zig terdapat banyak tipe data dan ukuran dari sebuah tipe data itu sendiri, antara lain:

- **integer**
    ini adalah tipe data yang digunakan untuk menyimpan bilangan bulat, baik yang positif maupun negatif, tipe data ini tidak memiliki komponen pecahan, dalam bahasa pemograman zig, tipe data integer direpresentasikan dengan huruf `i` diikuti dengan ukurannya, misalnya tipe data dengan ukuran 32 bit bisa direpresentasikan dengan `i32` (rentang nilai dari `i8` sampai i128), contoh

    ```zig
    const std = @import("std");

    pub fn main() void {
        // tipe data integer 8 bit
        const angka8: i8 = 12;
        // memanggil variable `angka8`
        std.debug.print("angka dari variable `angka8` dengan rentang 8 bit: {:} ", .{angka8});
    }
    ```
    contoh bisa dilihat [disini](tipeDataInteger.zig) untuk panjang dari tipe data integer.

    zig juga memberikan model tipe data lainnya yaitu unsigned yang direpresentasikan dengan `u`, tipe data ini adalah tipe data integer yang hanya menyimpan nilai positif, tipe data ini tidak akan menyimpan nilai negatif (`nilai kurang dari 0`), rentang nilai yang dapat disimpan oleh tiep adata unsigned ini juga bergantung pada ukurannya. contoh

    ```zig
    const std = @import("std");

    pub fn main() void {
        // tipe data integer 8 bit
        const angkaU8: u8 = 30;
        // memanggil variable `angkaU8`
        std.debug.print("angka dari variable `angkaU8` dengan rentang 8 bit: {:} ", .{angkaU8});
    }
    ```
    contoh bisa dilihat [disini](tipeDataInteger.zig) untuk panjang tipe data unsigned integer

- **bool**
    bool adalah tipe data hanya dapat menyimpan dua nilai, yaitu ``true`` dan ``false``, tipe data ini juga sering digunakan untuk menyimpan nilai logika, seperti benar atau salah, aktif atau tidak aktif, contoh

    ```zig
    const std = @import("std");

    pub fn main() void {
        // tipe data bool
        const hujan: bool = false;
        // memanggil variable `hujan`
        std.debug.print("apakah hujan harini ini?, jawabannya adalah {:} ", .{hujan});
    }
    ```
    contoh bisa dilihat [disini](tipeDataBool.zig) untuk mengetahui contoh kode dari tipe data bool

- **float**
    float adalah tipe data yang digunakan untuk menyimpan bilangan pecahan, tipe data ini memiliki model pecehan yang dapat menyimpan nilai yang sangat kecil atau sangat besar, rentang nilai yang dapat disimpan float bergantung pada ukurannya, dalam zig, tipe data float direpresentasikan dengan `f` diikuti dengan ukurannya, dimulai pada `f32` hingga `f128` (terdapat juga `f80` yaitu ukuran 80 bit untuk standar presisi nilai float), contoh

    ```zig
    const std = @import("std");

    pub fn main() void {
        // contoh nilai float 32 bit
        const nilai_ipk: f32 = 123.0E+77;
        // memanggil variable `nilai_ipk`
        std.debug.print("nilai ipk dari pace adalah {:} ", .{nilai_ipk});
    }
    ```
    contoh bisa dilihat [disini](tipeDataFloat.zig) untuk mengetahui contoh dari tipe data float

- **char**
    `char` adalah tipe data yang digunakan untuk menyimpan karakter tunggal, karakter bisa berupa huruf, angka, simbol, tanda baca, spasi. tipe data `char` direpresentasikan dengan kata kunci `c_char`

    ```zig
    const std = @import("std");

    pub fn main() void {
        // membuat tipe data char
        const huruf = 'B';
        std.debug.print("setelah huruf A maka keluar huruf: {c}\n", .{huruf});
    }
    ```
    contoh bisa dilihat [disini](tipeDataChar.zig) untuk mengetahui contoh dari tipe data char

