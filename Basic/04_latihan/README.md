# Latihan

Di bagian ini kita membuat contoh program sederhana untuk menghitung jarak umur keluarga, dengan menggunakan operator matematika, operator matematika terdapat pada zig antara lain adalah, ``+``, ``-``, ``/`` dan``*``.

pertama kita inisialisasi terlebih dahulu variable-variable yang dibutuhkan

```zig
const std = @import("std");

pub fn main() void {
    const nama_kamu = "james";
    const nama_kakak = "anne";
    const nama_adik = "jonas";
    
    var umur_kamu: i32 = 18;
    var umur_kakak: i32 = 24;
    var umur_adik: i32 = 12;
}
```

setelah dibuat maka kita lakukan operasi pengurangan untuk mengetahui jarak umur

```zig
var jarak_umur_kamu_kakak = umur_kakak - umur_kamu;
var jarak_umur_kamu_adik = umur_kamu - umur_adik;
```

```zig
const std = @import("std");

pub fn main() void {
    const nama_kamu = "james";
    const nama_kakak = "anne";
    const nama_adik = "jonas";
    
    var umur_kamu: i32 = 18;
    var umur_kakak: i32 = 24;
    var umur_adik: i32 = 12;

    var jarak_umur_kamu_kakak = umur_kakak - umur_kamu;
    var jarak_umur_kamu_adik = umur_kamu - umur_adik;
}
```

kemudian lakukan tampilkan hasil
```zig
std.debug.print("james, jarak kamu dengan kakak adalah {} tahun\n", .{jarak_umur_kamu_kakak});
std.debug.print("sedangkan jarak umur kamu dengan adik kamu adalah {} tahun\n", .{jarak_umur_kamu_adik} );
```

```zig
const std = @import("std");

pub fn main() void {
    const nama_kamu = "james";
    const nama_kakak = "anne";
    const nama_adik = "jonas";
    
    var umur_kamu: i32 = 18;
    var umur_kakak: i32 = 24;
    var umur_adik: i32 = 12;

    var jarak_umur_kamu_kakak = umur_kakak - umur_kamu;
    var jarak_umur_kamu_adik = umur_kamu - umur_adik;

    std.debug.print("james, jarak kamu dengan kakak adalah {} tahun\n", .{jarak_umur_kamu_kakak});
    std.debug.print("sedangkan jarak umur kamu dengan adik kamu adalah {} tahun\n", .{jarak_umur_kamu_adik} );
}
```