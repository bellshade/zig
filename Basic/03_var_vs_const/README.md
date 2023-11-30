# Var VS Const

``var`` dan ``const`` adalah dua keyword yang digunakan untuk mendeklarasikan variable pada bahasa pemograman zig, ``var`` digunakan untuk mendklarasikan variable yang nilainya dapat dirubah, sedangkan const digunakan untuk mendklarasikan variable yang nilainya yang tidak dapat diubah ubah

contoh

```zig
// variable tersebut untuk memanggil lib `standard` dan diharuskan tidak berubah
const std = @import("std");

pub fn main() void {
    var angka: i32 = 30;
    const pi: f32 = 3.141592;
    std.debug.print("nilai dari variable angka adalah: {:}", .{angka});
    std.debug.print("nilai dari variable const pi adalah: {f}", .{pi});
}
```

contoh dari kode bisa kamu lihat [disini](varConst.zig)

keyword ``const`` dapat membantu mencegah kesalah program yang disebabkan oleh perubahan nilai variable yang tidak diinginkan. contohnya, jika sebuah variable digunakan untuk menghitung jumlah deting yang telah berlalu, maka variable tersebut seharusnya tidak dapat diubah nilainya, dengan menggunakan keyword `const`, untuk mendeklarasikan variable tersebut, dapat memastikan baha variable tersebut tidak akan berubah dan perhitungan yang berlalu tetap akurat.

``const`` juga dapat meningkatkan performa program, misalnya jika sebuah variable digunakan sebagai indeks array, maka variable tidak dapat diubah nilainyam dengan menggunakan keyword tersebut, dapat memungkinkan kompilator melakukan optimasi tertentu yang dapat meningkatkan performa program

sedangkan ``var`` memiliki sintaks yang mudah dipahami serta fleksibel, dan efisien, efisien sehingga kompilator dapat melakukan optimasi tertentu yang dapat meningkatkan performa program.