# SKRIPDOWN

> Template belum terbukti diterima oleh dosen karena penulis sendiri masih dalam proses menyusun skripsi

Repository ini berisi konfigurasi dan aplikasi _command line interface_ untuk mengkonversi skripsi S1 Informatika Undip yang ditulis menggunakan markdown menjadi file PDF menggunakan pandoc dan LaTeX. Konfigurasi ini telah disesuaikan dengan pedoman skripsi versi 2023.

## Fitur

- Template LaTeX yang sesuai dengan pedoman skripsi versi 2023
- Gaya tulisan dan format penomoran otomatis sesuai dengan pedoman skripsi
- Pengaturan margin, indentasi, jarak antar paragraf, dan font yang telah disesuaikan
- Penggunaan YAML metadata untuk memudahkan pengaturan judul, nama penulis, dan halaman cover
- Konversi yang mudah dengan hanya menjalankan satu perintah pada terminal
- Dapat digunakan pada sistem operasi Windows, macOS, dan Linux

## Penggunaan

1. Clone repository atau unduh dari [releases](https://github.com/rizkybaihaqy/Skripsi-S1-Informatika-Undip-Pandoc-LaTeX-Template/releases)
2. Pastikan anda sudah meng-install engine pdf apapun, namun pada contoh ini kami menggunakan `xelatex`
3. Buat skripsi anda di file markdown(.md)
4. Contoh cara menjalankan perintah `pandoc` menggunakan file `example.md` dan `example.bib`

```bash
pandoc example/example.md --citeproc --bibliography=example.bib --csl=template/apa.csl --pdf-engine=xelatex --metadata-file config.yaml --template=template/template.tex --lua-filter=lua-filters/list-table.lua --lua-filter=lua-filters/tables-rules.lua --resource-path=example -o example/example.pdf
```

## Kontribusi

Kontribusi anda akan sangat dihargai. Jika Anda menemukan bug, baik itu format yang tidak sesuai atau hasil keluaran yang tidak sesuai dengan yang diharapkan, silakan buat issue baru atau lebih baik lagi, berikan pull request untuk perbaikan yang Anda ajukan. Anda juga dapat membantu review pull request yang sedang berjalan. Ada alasan mengapa repositori ini public. Jangan ragu atau takut, karena kontribusi Anda sangat membantu perkembangan repositori ini untuk menjadi lebih baik lagi.
