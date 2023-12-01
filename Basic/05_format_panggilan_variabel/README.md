# Pendahuluan
Materi kali ini adalah format pemanggilan sebuah variabel pada bahasa pemrograman zig. Setiap tipe data memiliki cara pemanggilan yang berbeda beda. Ditambah scope dari setiap tipe data yang dibuat itu juga ada ketentuannya. Maka dari itu kita bahas dulu setiap pemanggilan bedasarkan tipe datanya, antara lain:

- **string**, Berbeda dengan bahasa pemrograman yang lainnya, untuk memanggil tipe data string didalam bahasa program zig kalian bisa menggunakan `{s}` ketika melakukan print out sebuah variabel, caranya seperti ini

```zig
const print = @import("std").debug.print;

pub fn main() void {
    const name = "Bellshade";

    // ini cara memanggil variabel
    // {s} bisa digunakan untuk running sebuah variabel jika tipe datanya string
    print("Hello welcome to {s}\n", .{name});
}
```

- **char**, Untuk tipe char sendiri kalian bisa memanggil nama variabel ini menggunakan `{c}` ketika melakukan print out variabel
```zig
const print = @import("std").debug.print;

pub fn main() void {
    const thisIsChar = 'S';

    // ini cara memanggil variabel
    // {c} digunakan untuk memanggil nilai character
    print("Ini adalah karakter: {c}\n", .{thisIsChar});
}
```

- **integer**, Tipe data integer tipe data yang kalian bisa panggil variabelnya dengan menggunakan `{d}` ketika ingin melakukan sebuah print out variabel, caranya seperti ini
```zig
const print = @import("std").debug.print;

pub fn main() void {
    // {d} digunakan untuk memanggil nilai variabel jika tipe datanya adalah integer
    var result: i16 = 20 * 10;
    print("Hasil perkalian dari 20 x 10 adalah: {d}\n", .{result});
    result = 10 * 10;
    print("Hasil perkalian dari 10 x 10 adalah: {d}\n", .{result});
}
```

Dari segi scope nya, setiap variabel sebenarnya masih terbilang sama cara memanggilnya tergantung tipe datanya. Namun scope ini mempengaruhi untuk keterbatasan memanggil variabelnya

#### Static Local Variabel
Static Local Variabel ialah jenis variabel yang bersifat local dan tidak bisa diubah nilai valuenya. Biasanya ditandai dengan `const` untuk variabelnya.
```zig
const print = @import("std").debug.print;

pub fn main() void {
    // ini merupakan static local variabel ,
    // biasanya static local variabel ditandakan dengan const
    const name = "Bellshade";
    const thisIsChar = 'S';

}
```

#### Local Variabel
Local Variabel sebenarnya sama dengan Static Local Variabel sama sama bersifat local scopenya dan tidak bisa dipanggil diluar function. Namun variabel ini masih bisa diubah nilai datanya biasanya menggunakan `var`
```zig
const print = @import("std").debug.print;

pub fn main() void {
    // ini local variabel yang berarti hanya bisa dipanggil didalam function saja
    // berbeda dengan static local kalau local variabel valuenya bisa diubah
    var result: i16 = 20 * 10;
}
```

#### Container Variabel
Container Variabel variabel yang biasanya berhubungan dengan `comptime`. Secara simpelnya variabel ini sering digunakan untuk memanggil sebuah library / modul dari zig programnya
```zig
// variabel yang digunakan untuk membawa module bawaan dari zig
// variabel ini dapat disebut juga dengan container level variabel
// container variabel secara definisi merupakan variabel yang mengharuskan memanggil "comptime"
// biasanya container variabel menggunakan const untuk memanggil comptime
const print = @import("std").debug.print;

pub fn main() void {}
```

> Note: setiap format pemanggilan variabel bisa menggunakan `{}` ataupun `{:}` 