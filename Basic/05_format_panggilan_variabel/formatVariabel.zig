// variabel yang digunakan untuk membawa module bawaan dari zig
// variabel ini dapat disebut juga dengan container level variabel
// container variabel secara definisi merupakan variabel yang mengharuskan memanggil "comptime"
// biasanya container variabel menggunakan const untuk memanggil comptime
const print = @import("std").debug.print;

pub fn main() void {
    // ini merupakan static local variabel ,
    // biasanya static local variabel ditandakan dengan const
    const name = "Bellshade";
    const thisIsChar = 'S';

    // ini cara memanggil variabel
    // {s} bisa digunakan untuk running sebuah variabel jika tipe datanya string
    // {c} digunakan untuk memanggil nilai character
    print("Hello welcome to {s}\n", .{name});
    print("Ini adalah karakter: {c}\n", .{thisIsChar});

    // ini local variabel yang berarti hanya bisa dipanggil didalam function saja
    // berbeda dengan static local kalau local variabel valuenya bisa diubah
    // {d} digunakan untuk memanggil nilai variabel jika tipe datanya adalah integer
    var result: i16 = 20 * 10;
    print("Hasil perkalian dari 20 x 10 adalah: {d}\n", .{result});

    // ini adalahh stuct, didalam struct ini kalian bebas ingin menambahkan tipe data dan parameter apa saja
    // setiap struct harus didefinisikan tipedatanya
    // struct bisa digunakan berulang kali tanpa takut valuenya berubah
    const thisIsStruct = struct {
        age: i8,
        birthDay: i16,
    };

    // implement struct, jadi harus memasukan default parameternya dan ditambahkan valuenya
    const myBiodata = thisIsStruct{
        .age = 20,
        .birthDay = 2003,
    };

    // ini cara memanggil struct untuk satu line print
    // disini kalian bisa ganti {:} dengan {d} sesuai dengan tipe data parameter structnya
    print("Haii, aku lahir pada tahun {:}, umurku ialah {:} tahun\n", .{ myBiodata.birthDay, myBiodata.age });
}
