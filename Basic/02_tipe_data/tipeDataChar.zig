const std = @import("std");

pub fn main() void {
    // membuat tipe data char
    const huruf = 'B';
    const nilai_heksadesimal = '\x65';
    // memanggil variable
    std.debug.print("setelah huruf A maka keluar huruf: {c}\n", .{huruf});
    std.debug.print("nilai heksadesimal dari 0x65 adalah {c}\n", .{nilai_heksadesimal});
}
