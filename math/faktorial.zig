const std = @import("std");

// fungsi untuk menghitung faktorial secara iteratif
fn faktorial(comptime T: type, n: T) T {
    var hasil: T = @as(T, 1);
    var i: T = @as(T, 2);
    while (i <= n) : (i += 1) hasil *= i;
    return hasil;
}

// fungsi untuk menghitung faktorial secara rekursif
fn faktorialRekursif(comptime T: type, n: T) T {
    if (n < 2 and n > 0) return 1 else return n * faktorial(T, n - 1);
}

// fungsi untuk menghitung faktorial pada waktu kompilasi
pub fn faktorialWaktuKompilasi(comptime T: type, n: T) T {
    comptime var i = @as(T, 0);
    inline while (i < 12) : (i += 1) if (i == n) return comptime faktorial(T, i);
    return 1;
}

// testing untuk menguji fungsi faktorial pada saat kompilasi
test "faktorial pada waktu kompilasi" {
    try std.testing.expectEqual(@as(u32, 120), faktorialWaktuKompilasi(u32, 5));
    try std.testing.expectEqual(@as(usize, 362880), faktorialWaktuKompilasi(usize, 9));
}

// testing faktorial rekursif
test "faktorial rekursif" {
    try std.testing.expectEqual(@as(c_int, 720), faktorialRekursif(c_int, 6));
    try std.testing.expectEqual(@as(u64, 5040), faktorialRekursif(u64, 7));
}
