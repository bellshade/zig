// import modul std ke dalam variabel `std`
const std = @import("std");

// fungsi `main()` adalah fungsi utama, fungsi ini akan dipanggil saat program dijalankan
pub fn main() void {
    // fungsi `debug.print()` digunakan untuk mencetak pesan ke konsol, fungsi ini menerima dua
    // parameter yaitu pesan yang akan dicetak dan variabel opsional yang akan dicetak bersama pesan.
    // pada kali ini kita akan mengosongkannya
    // kemudian fungsi itu akan mencetak `hello bellshade!`
    std.debug.print("hello bellshade!\n", .{});
}
