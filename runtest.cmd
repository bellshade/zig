@echo off

rem file ini berisi scripting command prompt yang digynakan untuk membuat beberapa
rem perintah build test zig yang terdapat di folder selain dari folder
rem `basic`. jika ada salah satu folder terdapat beberapa file,
rem maka perintah ini sangat berguna untuk mengetest semua file zig
rem yang terdapat pada folder tersebut

rem membuat parameter zig build test
set ZIG_TEST_COMMAND='zig build test'

rem membuat argumen tambahan untuk informasi lebih lanjut dari
rem hasil compile dan test
rem perintah;
rem `-freference-trace yaitu mengecek trace referencsi per kompile yang error`
set argumen=--summary all -freference-trace

rem lakukan testing salah satu folder dengan menggunakan perintah
rem yang sudah dibuat
%ZIG_TEST_COMMAND% -Dalgoritma=math/gcd %argumen%