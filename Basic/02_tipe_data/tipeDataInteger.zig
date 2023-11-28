const std = @import("std");

pub fn main() void {
    // tipe data integer 8 bit hingga 128 bit
    var angka8: i8 = 12;
    var angka16: i16 = 120;
    var angka32: i32 = 12000;
    var angka64: i64 = 1122000;
    var angka128: i128 = 1172636251523211232;

    std.debug.print("angka dari variable `angka8` dengan rentang 8 bit: {:}\n", .{angka8});
    std.debug.print("angka dari variable `angka16` dengan rentang 16 bit: {:}\n", .{angka16});
    std.debug.print("angka dari variable `angka32` dengan rentang 32 bit: {:}\n", .{angka32});
    std.debug.print("angka dari variable `angka64` dengan rentang 64 bit: {:}\n", .{angka64});
    std.debug.print("angka dari variable `angka128` dengan rentang 128 bit: {:}\n\n", .{angka128});

    // tipe data unsigned dari 8 bit hingga 128 bit
    var angkaU8: u8 = 20;
    var angkaU16: u16 = 500;
    var angkaU32: u32 = 1726417242;
    var angkaU64: u64 = 164512859282755234;
    var angkaU128: u128 = 928756266578699928456116;
    std.debug.print("angka dari variable `angkaU8` dengan rentang 8 bit: {:}\n", .{angkaU8});
    std.debug.print("angka dari variable `angkaU16` dengan rentang 16 bit: {:}\n", .{angkaU16});
    std.debug.print("angka dari variable `angkaU32` dengan rentang 32 bit: {:}\n", .{angkaU32});
    std.debug.print("angka dari variable `angkaU64` dengan rentang 64 bit: {:}\n", .{angkaU64});
    std.debug.print("angka dari variable `angkaU128` dengan rentang 128 bit: {:}\n", .{angkaU128});
}
