# config.YAML

- `geometry`: mengatur margin dokumen. `margin` menentukan ukuran margin keseluruhan dokumen, sementara `top`, `bottom`, `left`, dan `right` menentukan ukuran margin masing-masing sisi.
- `output`: mengatur output dokumen. Dalam hal ini, outputnya adalah dokumen PDF dengan pandoc arguments untuk mengatur ukuran kertas A4 dan tampilan portrait. `keep_tex` disetel ke `true` agar file `.tex` juga dihasilkan.
- `mainfont`: Times New Roman: mengatur jenis huruf (fontasi) yang digunakan dalam dokumen menjadi Times New Roman.
- `fontsize`: 12pt: mengatur ukuran font sebesar 12 pt untuk seluruh teks dalam dokumen, termasuk judul sub bab.
- `header-includes`: menyediakan ruang untuk menambahkan paket LaTeX dan perintah-perintah khusus.
  - `\usepackage{fancyhdr}`: mengimpor paket LaTeX fancyhdr yang berguna untuk mengatur tampilan header dan footer.
  - `\pagestyle{fancy}`: mengatur tampilan halaman menggunakan paket fancyhdr.
  - `\fancyhf{}`: menghapus isi header dan footer default yang digunakan oleh fancyhdr.
  - `\fancyfoot[C]{\thepage}`: menempatkan nomor halaman di tengah-tengah footer.
  - `\renewcommand{\headrulewidth}{0pt}`: menghilangkan garis pemisah antara header dan konten dokumen.
  - `\renewcommand{\footrulewidth}{0pt}`: menghilangkan garis pemisah antara footer dan konten dokumen.
  - `\setlength{\footskip}{0}`: mengatur jarak footer untuk lebih dekat ke text (diukur dengan mata telanjang disamakan dengan skripsi sebelumnya).
  - `\linespread{1.25}`: standar factor dari lineskip adalah 1.2. linespread dikali lineskip akan menghasilkan spasi 1.5 (1.25 \* 1.2 = 1.5).
