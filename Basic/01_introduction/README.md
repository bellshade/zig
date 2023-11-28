## Tentang Bahasa Pemograman Zig

Zig adalah bahasa pemograman yang baru diluncurkan pada tahun 2019. Bahasa ini merupakan bahasa pengembangan dari bahasa Pemograman Rust. Zig dirancang untuk menjadi bahasa pemograman yang cepat, efisien dan mudah dipelajari

Fitur yang diutamakan dari bahasa Zig ini antara lain:

- **Cepat**: dirancang untuk menghasilkan kode yang cepat dan efisien, bahasa ini menggunakan metode modern, seperti LLVM, untuk mengoptimalkan kode yang akan dihasilkan
- **Efisien**: kontrol yang lebih granular atas memory dan sumber daya lainnya. bahasa ini juga dapat membantu programmer untuk menghemat sumber dayanya

Tujuan utama dari bahasa Zig ini adalah

- **Pengembangan sistem**: zig ini dapat digunakan untuk mengembakan operasi sistem, software embedded, dan aplikasi-aplikasi yang sangat membutuhkan performa tinggi
- **Aplikasi web**: zig dapat juga digunakan untuk mengembangkan aplikasi web yang cepat dan efisien
- **Game**: zig dapat juga digunakan untuk mengembangkan game yang cepat yang menggunakan ZigGL (sebuah library 3D graphic yang dibuat dengan ZIG)

## installasi

untuk informasi download dan installasi kamu bisa melihat pada web resmi zig [disini](https://ziglang.org)

untuk via paket manager bisa dengan cara
```bash
# arch linux
pacman -S zig

# void linux
xbps-install -Su zig

# nix Os
nix-env -i zig

# ubuntu via snap
snap install zig --classic --beta

# gentoo
emerge -av dev-lang/zig
emerge -av dev-lang/zig-bin

# macOS homebrew
brew install zig

# windows
scoop install zig

# windows choco
choco install zig

# dargonfly bsd
ravensw install zig-single-standard
```
- **


## contoh `hello world` pada zig

```zig
const std = @import("std");

pub fn main() void {
    std.debug.print("hello bellshade!", .{});
}
```
contoh kodenya bisa kamu lihat [disini](hello_world.zig)

kamu bisa menjalankannya dengan cara
```bash
zig run hello_world.zig
```