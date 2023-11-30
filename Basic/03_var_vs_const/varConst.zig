// variable tersebut untuk memanggil lib `standard` dan diharuskan tidak berubah
const std = @import("std");

pub fn main() void {
    // inisialisasi variable dan tipe data
    var angka: i32 = 30;
    const pi: f64 = 3.14;

    // memanggil variable yang sudah dibuat
    std.debug.print("nilai dari variable angka adalah: {} ini merupakan nilai awal\n", .{angka});
    std.debug.print("nilai dari variable const pi adalah: {}\n", .{pi});

    // mengganti value dari variable angka
    angka = 50;
    std.debug.print("nilai variable angka yang dirubah adalah: {:}\n", .{angka});

    // jika kode ini tidak di comment maka akan menyebabkan error
    // pi = 22.3;
    // std.debug.print("nilai pi yang dirubah adalah {}\n", .{pi});
}
