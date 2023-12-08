const std = @import("std");

// fungsi ceil untuk mengembalikan nilai ceil dari suatu angka
pub fn ceil(comptime T: type, x: T) T {
    // simpan nilai x yang dibulatkan ke nol untuk memeriksa kondisi pembulatan
    // ke atas
    const x_bulat_ke_nol = x;

    // jika x kurang dari 0 atau x dusah bulat ke 0, kembalikan x yang sudah bulat ke 0
    if (x < 0 or x_bulat_ke_nol == x) {
        return x_bulat_ke_nol;
    } else {
        // jika x positif dan belum bulat ke nol, kembalikan x yang sudah bulat ke nol ditambah 1
        return x_bulat_ke_nol + @as(T, 1);
    }
}

// testing untuk fungsi ceil berfungsi dengan benar
test "testing ceil" {
    try std.testing.expectEqual(@as(u4, 9), ceil(u4, 9));
    try std.testing.expectEqual(@as(f80, 3263.56), ceil(f80, 3263.56));
    try std.testing.expectEqual(@as(u5, 7), ceil(u5, 7));
}
