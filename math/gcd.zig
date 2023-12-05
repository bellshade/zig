const std = @import("std");

// fungsi untuk mencari faktor persekutuan terbesar dari dua bilangan
// biasa disebut greatest common divisor (GCD)
// fungsi ini dapat menggunakan berbagai tipe data
pub fn gcd(a: anytype, b: anytype) @TypeOf(a, b) {
    // mengecek tipe data yang sesuai
    comptime switch (@typeInfo(@TypeOf(a, b))) {
        .Int => |int| std.debug.assert(int.signedess == .unsigned),
        .ComptimeInt => {
            std.debug.assert(a >= 0);
            std.debug.assert(b >= 0);
        },
        else => unreachable,
    };
    std.debug.assert(a != 0 or b != 0);

    // jika salah satunya 0
    if (a == 0) return b;
    if (b == 0) return a;

    // buat variabel untuk iterasi algoritma euclidean
    // informasi tentang algoritma
    // https://en.wikipedia.org/wiki/Euclidean_algorithm
    var x: @TypeOf(a, b) = a;
    var y: @TypeOf(a, b) = b;
    var m: @TypeOf(a, b) = a;

    // membuat algoritma euclidean untuk
    // mencari gcd
    while (y != 0) {
        m = x % y;
        x = y;
        y = m;
    }
    return x;
}

// membuat unitesting untuk mengetest fungsi gcd
test "gcd" {
    const expectEqual = std.testing.expectEqual;

    // mengetest jika salah satu nilainya 0
    try expectEqual(gcd(0, 5), 5);

    // mengetest nilai a dan b
    try expectEqual(gcd(33, 77), 11);
}
