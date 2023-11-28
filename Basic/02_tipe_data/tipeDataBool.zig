const std = @import("std");

pub fn main() void {
    // tipe data integer 8 bit
    const hujan: bool = true;
    // memanggil variable `angka8`
    std.debug.print("apakah hujan hari ini?, jawabannya adalah: {:}\n", .{hujan});
}
