const std = @import("std");

pub fn main() void {
    const nama_kamu = "james";
    const nama_kakak = "anne";
    const nama_adik = "jonas";

    var umur_kamu: i32 = 18;
    var umur_kakak: i32 = 24;
    var umur_adik: i32 = 13;

    var jarak_umur_kamu_kakak = umur_kakak - umur_kamu;
    var jarak_umur_kamu_adik = umur_kamu - umur_adik;

    std.debug.print("{s}, jarak kamu dengan {s} adalah {} tahun\n", .{ nama_kamu, nama_kakak, jarak_umur_kamu_kakak });
    std.debug.print("sedangkan jarak umur kamu dengan {s} kamu adalah {} tahun\n", .{ nama_adik, jarak_umur_kamu_adik });
}
