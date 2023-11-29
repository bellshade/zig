# *Contributing*

***Contributor***

Kami sangat senang anda telah ikut berkontribusi dalam implementasi algortima, struktur data, atau memperbaiki *error*.
Semua boleh ikut berkontribusi sekecil apapun dengan pengecualian sebagai berikut:

- Hasil pekerjaan kamu adalah buatan kamu sendiri dan tidak ada hak cipta dari orang lain. Jika kami menemukan kesamaan, maka tidak kami *merge*.
- Hasil kerja kamu akan berlisensi [MIT](LICENSE) ketika *pull request* kamu sudah di-*merge*.
- Hasil kerja kamu wajib mengikuti standar dan *style* koding dari kami.
- Hanya menerima *file* dengan ekstensi ``*.zig``, selain itu dibuat pengecualian dengan menjelaskan secara detail.

Algoritma harus dikemas sedemikian rupa agar dapat dengan mudah dimasukkan ke dalam program yang lebih besar.

Algoritma harus:

- memiliki nama kelas dan fungsi intuitif yang memperjelas tujuannya bagi pembaca;
- menggunakan konvensi penamaan Zig dan nama variabel intuitif untuk memudahkan pemahaman;
- fleksibel untuk mengambil nilai *input* yang berbeda;
- memiliki *doc comment* dengan penjelasan yang jelas dan/atau URL ke materi sumber;
- berisi *testing* yang menguji nilai *input* yang valid dan salah;

## Doc comments

penggunaan *doc comments* bertujuan untuk memudahkan pembaca membaca dan mengimplementasikan algoritma

**docs comment yang baik**
```zig
const std = @import("std");

fn angka(a: i32, b: i32) i32 {
    // membuat fungsi untuk menambahkan 2 angka yaitu a dan b
    // parameter:
    //    a (i32): angka integer
    //    b (i32): angka integer
    // return:
    //     hasil nilai yang ditambahkan
    // contoh
    // hasil = angka(3, 2);
    // std.debug.print("{d}\n", .{hasil});
    return a + b;
}

pub fn main() void {
    var result = angka(13, 14);
    std.debug.print("result {d}\n", .{result});
}
```

## format dan testing

kami menggunakan default format dari zig untuk memformat file dan kamu bisa mengetest file zig kamu dengan

```bash
zig fmt .

# atau
zig fmt --check .
```

```bash
zig test namaFile.zig
```

# *Pull Request*

***Pull request* yang baik**

Informasi: gunakan [*issue*](https://github.com/bellshade/zig/issues) apabila ingin menambahkan kode atau implementasi algoritma, dll (*basic*) agar tidak ada konflik dengan *pull request* lainnya. Kamu juga bisa menggunakan issue jika kamu ada 
kendala atau masalah ketika melakukan pull request. Kamu juga bisa bertanya pada forum discord **WPU** dan **Kelas Terbuka** perihal bellshade.

- Lakukan penjelasan deskripsi perubahan yang anda lakukan pada repositori kami dengan membuat penjelasan di [*issue*](https://github.com/bellshade/zig/issues).
- Setelah menjelaskan perubahan anda di [*issue*](https://github.com/bellshade/zig/issues) kemudian lakukan *fork* pada repositori kami.
- Setelah melakukan *fork*, anda dibebaskan untuk mengubah atau menambah algoritma.
  - Untuk *pull request* merubah atau memperbaiki, diusahakan kamu menerapkan algoritma yang lebih baik dan lebih mudah serta memeberikan penjelasan lebih detail alasan dari perubahaan tersebut lebih baik dari sebelumnya.
- Setelah merubah-rubah atau menambahkan algoritma serta melakukan tes lokal kode kamu, usahakan kamu membuat *local branch* baru:
  ```bash
  git checkout -b <branch_name>
  git add . # atau git add nama_perubahan_kamu.zig
  git commit -m "feat: menambahkan algoritma terbaru"
  ```
- Lakukan *push* ke *branch* kamu dan kemudian *open pull request*.

**Saran pesan commit**

- `feat:` untuk menambah algoritma atau tambahan lainnya;
- `fix:` untuk mengubah algoritma yang sudah ada atau memperbaiki;
- `docs:` untuk mengubah atau membuat dokumentasi;
- `add:` untuk menambah algoritma atau tambahan lainnya (opsional);

Catatan: pesan commit harus menjelaskan perubahan secara singkat.

Contoh yang benar:
- &#9746; feat: test_x.zig
- &#9745; feat: tambah testing untuk algoritma x

Lebih lengkapnya bisa dilihat di:
- [EN](https://www.conventionalcommits.org/en/v1.0.0/)
- [ID](https://www.conventionalcommits.org/id/v1.0.0/)

Pull request akan di-*merge* jika:

- mengikuti standar dan arahan dari `CONTRIBUTING.md`;
- lulus tes dan cek dari beberapa tes yang sudah kami siapkan.

**Tambahan**:

- Jika ada kendala atau masalah dalam *pull request*, kamu bisa laporkan masalahnya dalam [issue](https://github.com/bellshade/zig/issues).
- Jika ada tes yang tidak lewat atau gagal, kami akan cek kembali perubahan anda.

Untuk *pull request*, disarankan untuk menjelaskan secara detail yang kamu ubah atau tambahkan, dan bersikap sopan serta selalu berterima kasih. Itu salah satu bentuk tata krama yang baik terhadap sesama *contributor* dan *programmer* lainnya.