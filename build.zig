const std = @import("std");

// fungsi build menangani proses kompilasi dan build berdasarkan opsi target
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // memeriksa opsi 'algoritma' yang digunakan untuk memilih algoritma yang akan di build
    const op = b.option([]const u8, "algoritma", "pilih algoritma yang akan di build") orelse return;

    // memilih folder berdasarkan opsi algoritma
    // jika opsi adalah 'math/gcd' maka fungsi buat_algo dipanggil untuk membuat algoritma gcd
    if (std.mem.eql(u8, op, "math/gcd"))
        buat_algo(b, .{
            .optimize = optimize,
            .target = target,
            .name = "gcd.zig",
            .category = "math",
        });

    // memilih folder berdasarkan opsi algoritma
    // jika opsi adalah 'math/faktorial' maka fungsi buat_algo dipanggil untuk membuat algoritma faktorial
    if (std.mem.eql(u8, op, "math/faktorial"))
        buat_algo(b, .{
            .optimize = optimize,
            .target = target,
            .name = "faktorial.zig",
            .category = "math",
        });

    // math/ceil
    // ceil
    if (std.mem.eql(u8, op, "math/ceil"))
        buat_algo(b, .{
            .optimize = optimize,
            .target = target,
            .name = "ceil.zig",
            .category = "math",
        });

    // algoritma/sorting
    // bubble sorting
    if (std.mem.eql(u8, op, "algorithm/sorting/bubbleSort"))
        buat_algo(b, .{
            .optimize = optimize,
            .target = target,
            .name = "bubbleSort.zig",
            .category = "algorithm/sorting",
        });

    // algoritma/sorting
    // merge sorting
    if (std.mem.eql(u8, op, "algorithm/sorting/mergeSort"))
        buat_algo(b, .{
            .optimize = optimize,
            .target = target,
            .name = "mergeSort.zig",
            .category = "algorithm/sorting",
        });
}

// fungsi untuk membangun algoritma berdasarkan informasi yang diberikan
fn buat_algo(b: *std.Build, info: BInfo) void {
    // menggabungkan path dari kategori dan nama file untuk mendapatkan path lengkap sumber kode
    const src = std.mem.concat(b.allocator, u8, &.{ info.category, "/", info.name }) catch @panic("concat error");
    const exe_test = b.addTest(.{
        .name = info.name,
        .target = info.target,
        .optimize = info.optimize,
        .root_source_file = .{
            .path = src,
        },
    });
    // menyusun deskripsi untuk langkah testing
    var deskripsi = b.fmt("test folder: {s}", .{info.name});

    // menambah langkah (step) untuk menjalankan testing
    const jalankan_testing = b.addRunArtifact(exe_test);
    const testing_step = b.step("test", deskripsi);
    testing_step.dependOn(&jalankan_testing.step);
}

// struktur untuk menyimpan informasi build yang diperlukan untuk membangun algoritma
const BInfo = struct {
    optimize: std.builtin.OptimizeMode,
    target: std.zig.CrossTarget,
    name: []const u8,
    category: []const u8,
};
