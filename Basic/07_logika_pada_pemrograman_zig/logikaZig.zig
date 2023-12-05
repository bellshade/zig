// ini variabel yang digunakan untuk memanggil standard library pada pemrograman Zig
const std = @import("std");

pub fn main() void {
    // Materi kali ini ialah merupakan logika pada Zig
    // Sebelumnya kita telah mempelajari sebuah operator
    // Kurang lengkap jika kita tidak menerapkan di sebuah logika
    // di Zig sebenarnya ada banyak cara mengolah logika, salah satunya yaitu if else
    // Semua tergantung operator yang kita gunakan, entah itu aritmatika, bitwise, wrapped, saturated, dsbnya
    const valueA: u8 = 20;
    const valueB: u8 = 10;
    const result: u8 = valueA * valueB;

    // IF ELSE merupakan sebuah logika percabangan yang dimana ia akan selalu ngecheck sampai hasilnya ketemu
    // Disini logika pertama jika hasilnya tidak sama dengan 200 maka akan nge-print teks yang telah ditentukan
    // Dan jika logika pertama gagal maka lanjut ke print-out untuk logika kedua
    if (result != 200) {
        std.debug.print("Maaf hasil nya tidak sesuai prediksi\n");
    } else {
        std.debug.print("Yeayy hasil sesuai: {}\n", .{result});
    }
}
