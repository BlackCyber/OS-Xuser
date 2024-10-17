# OS-Xuser
create an operating system with Xuser
Langkah 1: Mempersiapkan Lingkungan Pengembangan
Pasang Free Pascal Compiler (FPC): Anda perlu mengunduh dan menginstal Free Pascal
Langkah 2: Membuat Bootloader
Bootloader adalah program pertama yang dijalankan saat komputer boot. Bootloader bertanggung jawab untuk memuat kernel ke dalam memori dan menjalankannya.
Langkah Kompilasi Bootloader:

Gunakan NASM untuk mengompilasi bootloader:
bash Command
nasm -f bin bootloader.asm -o bootloader.bin
Langkah 3: Membuat Kernel Dasar dengan Free Pascal
Kernel adalah inti dari sistem operasi. Dalam contoh ini, kita akan menulis kernel dasar menggunakan Free Pascal yang hanya menampilkan pesan di layar
Langkah Kompilasi Kernel dengan Free Pascal:

Untuk mengompilasi kernel menggunakan Free Pascal:
bash Command
fpc -Tfreedos -Mdelphi -O2 -n -Fekernel.elf -m32 kernel.pas
