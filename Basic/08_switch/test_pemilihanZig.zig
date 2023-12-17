// variabel yang digunakan untuk memanggil module standard zig
const std = @import("std");
// Module ini digunakan untuk melakukan testing terhadap progam yang dibuat didalam Zig
const expect = std.testing.expect;

test "switch simple" {
    // Testing pengeckean nilai value
    var valueA: u8 = 20;
    var valueB: u8 = 5;
    var result: u8 = valueA * valueB;

    const response = switch (result) {
        100 => 100,
        else => {},
    };

    // Expect dari testing ialah 100
    try expect(response == 100);
}
