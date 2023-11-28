const std = @import("std");

pub fn main() void {
    // membuat nilai flaot dengan panjang 16 bit hingga 128 bit
    const nilai_ipk: f16 = 132.0E+11;
    const nilai_pelajaran: f32 = 332.2731233;
    const nilai_sosial: f64 = 452.92472781;
    const nilai_olahraga: f80 = 763.23344;
    const nilai_pi: f128 = 3.14159265358979323846;

    // memanggil variabel
    std.debug.print("nilai ipk pace adalah: {:}\n", .{nilai_ipk});
    std.debug.print("nilai pelajaran pace adalah: {:}\n", .{nilai_pelajaran});
    std.debug.print("nilai pelajaran sosial pace adalah: {:}\n", .{nilai_sosial});
    std.debug.print("nilai pelajaran olahraga pace: {:}\n", .{nilai_olahraga});
    std.debug.print("nilai pi adalah: {:}\n", .{nilai_pi});
}
