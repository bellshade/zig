const std = @import("std");

// Fungsi sorting untuk mengurutkan array dari variable A dengan merge sorting
pub fn mergeSort(array: []i32, b: []i32) void {
    // cek panjang array a dan b sama
    std.debug.assert(array.len == b.len);
    // salin elemen-elemen dari array ke b
    salinArray(array, 0, array.len, b);
    // jalankan merge sort
    bagiArray(b, 0, array.len, array);
}

// fungsi untuk membagi dan menggabungkan array
fn bagiArray(b: []i32, start: usize, end: usize, array: []i32) void {
    // jika panjang array kurang dari atau sama dengan 1, maka
    // array sudah terurut
    if (end - start <= 1) {
        return;
    }
    // mencari titik tengah array
    var mid = (end + start) / 2;
    // panggil fungsi bagiArray secara rekursif dua bagian array
    bagiArray(array, start, mid, b);
    bagiArray(array, mid, end, b);
    // gabung dua baguan array yang sudah terurut
    gabungArray(b, start, mid, end, array);
}

// fungsi menggabungkan dua bagian array yang terurut
fn gabungArray(array: []i32, start: usize, mid: usize, end: usize, b: []i32) void {
    var i = start;
    var k = start;
    var j = mid;
    // gabunggang dua bagian array
    while (k < end) : (k += 1) {
        if (i < mid and (j >= end or array[i] <= array[j])) {
            b[k] = array[i];
            i = i + 1;
        } else {
            b[k] = array[j];
            j = j + 1;
        }
    }
}

// fungsi salin_array untuk menyalin elemen array dari satu array ke array lainnya
fn salinArray(array: []i32, start: usize, end: usize, b: []i32) void {
    var k = start;
    while (k < end) : (k += 1) {
        b[k] = array[k];
    }
}

// buat testing untuk memastikan fungsi mergeSort berjalan
test "testing mergeSorting" {
    // test array kosong
    var array: []i32 = &.{};
    var w_array: []i32 = &.{};
    mergeSort(array, w_array);
    const a = array.len;
    try std.testing.expect(a == 0);

    // testing dengan array terbalik
    var array_terbalik: [10]i32 = .{ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1 };
    var w_array_terbalik: [10]i32 = .{0} ** 10;
    mergeSort(&array_terbalik, &w_array_terbalik);
    for (array_terbalik, 0..) |value, i| {
        try std.testing.expect(value == (i + 1));
    }
}
