const std = @import("std");
const builtin = std.builtin;

// fungsi untuk melakukan pengurutan pada array A secara naik
pub fn bubleSorting(A: []i32) void {
    var n = A.len;
    while (n > 1) {
        var new_n: usize = 0;
        for (A[0 .. n - 1], 0..) |value, i| {
            // jika nilai saat ini lebih besar dari nilai berikutnya, tukar posisi
            if (value > A[i + 1]) {
                std.mem.swap(i32, &A[i], &A[i + 1]);
                new_n = i + 1;
            }
        }
        n = new_n;
    }
}

// testing jika array nya adalah kosong
test "array kosong" {
    var array: [1]i32 = .{5};
    bubleSorting(&array);
    const a = array.len;
    try std.testing.expect(a == 1);
    try std.testing.expect(array[0] == 5);
}

// testing untuk array dengan satu elemen
test "array satu elemen" {
    var array: [1]i32 = .{5};
    bubleSorting(&array);
    const a = array.len;
    try std.testing.expect(a == 1);
    try std.testing.expect(array[0] == 5);
}

// testing array yang tidak terurut
test "array tidak terurut" {
    var array: [10]i32 = .{ 2, 1, 3, 4, 5, 6, 7, 9, 8, 10 };
    bubleSorting(&array);
    for (array, 0..) |value, i| {
        try std.testing.expect(value == (i + 1));
    }
}
