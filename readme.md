# Skripsi S1 Informatika Undip - Pandoc LaTeX Template

> Template belum terbukti diterima oleh dosen karena penulis sendiri masih dalam proses menyusun skripsi

Repository ini berisi konfigurasi untuk mengkonversi skripsi S1 Informatika Undip yang ditulis menggunakan markdown menjadi file PDF menggunakan pandoc dan LaTeX. Konfigurasi ini telah disesuaikan dengan pedoman skripsi versi 4

## Fitur
- Template LaTeX yang sesuai dengan pedoman skripsi versi 4
- Gaya tulisan dan format penomoran otomatis sesuai dengan pedoman skripsi
- Pengaturan margin, indentasi, jarak antar paragraf, dan font yang telah disesuaikan
- Penggunaan YAML metadata untuk memudahkan pengaturan judul, nama penulis, dan halaman cover
- Konversi yang mudah dengan hanya menjalankan satu perintah pada terminal
- Dapat digunakan pada sistem operasi Windows, macOS, dan Linux

## Penggunaan
1. Unduh atau clone repository ini
2. Buat skripsi anda di file markdown(.md)
3. Jalankan perintah berikut
```bash
pandoc file-skipsi.md --pdf-engine=xelatex --metadata-file config.yaml  -o skipsi.pdf
```
