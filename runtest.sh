#!/usr/bin/env bash

# file ini berisi scripting shell yang digynakan untuk membuat beberapa
# perintah build test zig yang terdapat di folder selain dari folder
# `basic`. jika ada salah satu folder terdapat beberapa file,
# maka perintah ini sangat berguna untuk mengetest semua file zig
# yang terdapat pada folder tersebut

# membuat parameter zig build test
ZIG_TEST_COMMAND='zig build test'

# membuat argumen tambahan untuk informasi lebih lanjut dari
# hasil compile dan test
# perintah;
# `-freference-trace yaitu mengecek trace referencsi per kompile yang error`
argumen='--summary all -freference-trace'

# lakukan testing salah satu folder dengan menggunakan perintah
# yang sudah dibuat
$ZIG_TEST_COMMAND -Dalgoritma=math/gcd $argumen
$ZIG_TEST_COMMAND -Dalgoritma=math/faktorial $argumen

