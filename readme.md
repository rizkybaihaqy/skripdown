# SKRIPDOWN

> Template belum terbukti diterima oleh dosen karena penulis sendiri masih dalam proses menyusun skripsi

Repository ini berisi konfigurasi dan aplikasi _Command Line Interface_ (CLI) untuk mengkonversi skripsi S1 Informatika Undip yang ditulis menggunakan markdown menjadi file PDF menggunakan pandoc dan LaTeX. Konfigurasi ini telah disesuaikan dengan pedoman skripsi versi 2023.

## Fitur

- Tulis skripsi dengan markdown di editor favorit Anda (VSCode, Vim, Notepad, dll)
- Hasil pdf yang sesuai dengan pedoman skripsi versi 2023
- Konversi yang mudah dengan hanya menjalankan satu perintah pada terminal
  - via CLI yang membungkus template dan konfigurasi pandoc
  - via Web GUI tanpa perlu menginstall aplikasi tambahan (coming soon)
  - via pandoc langsung
- Dapat digunakan pada sistem operasi Windows, macOS, dan Linux

## Kebutuhan

- [Pandoc](https://pandoc.org/installing.html)
- LaTeX engine. Disranan untuk mengikuti panduan install LaTeX yang diberikan pandoc.

## Penggunaan

### CLI

1. Unduh file binary sesuai dengan sistem operasi dari [releases](https://github.com/rizkybaihaqy/skripdown/releases)
2. _Copy_ file binary ke folder yang sama dengan file markdown, referensi, dan file-file gambar
3. Buka terminal dan masuk ke folder yang sama dengan file markdown, referensi, dan file-file gambar
4. Jalankan perintah berikut di diretori yang sama dengan file markdown, file referensi, dan file-file gambar untuk mengkonversi file markdown menjadi file PDF

```bash
skripdown example.md --bibliography="example.bib" --output="example.pdf"
```

- Untuk info lebih lanjut opsi apa yang dapat digunakan di cli gunakan perintah `skripdown --help`
- Pastikan untuk menjalankan cli di direktori yang sama dengan file markdown, file referensi, dan file-file gambar
- Di windows gunakan perintah `skripdown.exe` untuk menjalankan cli

5. File PDF akan terbentuk di folder yang sama dengan file markdown. Cli akan membuat direktori `.skripdown`. Proses ini hanya akan dilakukan jika folder tersebut belum ada

### Pandoc

1. Clone repository atau unduh dari [releases](https://github.com/rizkybaihaqy/skripdown/releases)
2. Contoh cara menjalankan perintah `pandoc` menggunakan file `example.md` dan `example.bib`

```powershell
pandoc skripsi.md `
  --bibliography=skripsi.bib `
  --citeproc `
  --csl=.skripdown/template/apa.csl `
  --pdf-engine=xelatex `
  --metadata-file=.skripdown/config.yaml `
  --template=.skripdown/template/template.tex `
  --lua-filter=.skripdown/lua-filters/list-table.lua `
  --lua-filter=.skripdown/lua-filters/tables-rules.lua `
  --output=skripsi.pdf
```

## Resep

### Organisasi File

Cara penulis mengorganisasi file adalah dengan menyimpan file markdown, file referensi, dan file gambar pada satu folder. Contoh struktur folder yang dapat digunakan adalah sebagai berikut:

```text
├── .git/
├── .skripdown/
│── .gitignore
│── skripdown.exe
│── skripsi.bib
│── skripsi.md
│
└── ref/
    ├── gambar-1.png
    ├── gambar-2.png
```

Dengan cara ini maka perintah yang digunakan untuk mengkonversi menjadi

```bash
skripdown skripsi.md -b="skripsi.bib" --resource-path="ref" -o="sripsi.pdf"
```

### Pantau Perubahan File dengan Git

Dengan menggunakan git, kita dapat memantau perubahan yang terjadi pada file markdown dan file referensi. Hal ini berguna untuk memudahkan kita dalam mengelola perubahan yang terjadi pada skripsi. Selain itu, dengan menambahkan file .gitignore, Anda dapat mengabaikan file yang tidak ingin Anda ikuti perubahannya. Berikut adalah contoh isi dari file `.gitignore` yang akan mengabaikan folder `.skripdown`, file binary `skripdown.exe`, dan file PDF yang dihasilkan dari proses konversi.

```text
.skripdown
skripdown.exe
*.pdf
```

## Kontribusi

Kontribusi anda akan sangat dihargai. Jika Anda menemukan bug, baik itu format yang tidak sesuai atau hasil keluaran yang tidak sesuai dengan yang diharapkan, silakan buat issue baru atau lebih baik lagi, berikan pull request untuk perbaikan yang Anda ajukan. Anda juga dapat membantu review pull request yang sedang berjalan. Ada alasan mengapa repositori ini public. Jangan ragu atau takut, karena kontribusi Anda sangat membantu perkembangan repositori ini untuk menjadi lebih baik lagi.
