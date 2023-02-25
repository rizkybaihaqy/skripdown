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
2. Pastikan anda sudah meng-install engine pdf `xelatex`
3. Buat skripsi anda di file markdown(.md)
4. Contoh cara menjalankan perintah `pandoc` menggunakan file `example.md` dan `example.bib`
```bash
pandoc example.md --citeproc --bibliography=example.bib --csl=apa.csl --pdf-engine=xelatex --metadata-file config.yaml --template=template.tex --lua-filter tables-rules.lua  -o example.pdf
```
