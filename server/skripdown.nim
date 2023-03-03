import std/[tempfiles, os, osproc], jester

routes:
  get "/":
    const index = readFile "public/index.html"
    resp index
  post "/":
    let files: MultiData = request.formData
    let dir = createTempDir("tmp_", "_", "uploads")
    let skripsi = files.getOrDefault("skripsi").fields["filename"]
    let bib = files.getOrDefault("bib").fields["filename"]

    for i, f in files.pairs:
      case i
      of "skripsi":
        writeFile(dir & "/" & "srkipsi.md", f.body)
      of "bib":
        writeFile(dir & "/" & "reference.bib", f.body)
      of "assets":
        writeFile(dir & "/" & f.fields["filename"], f.body)
      else: discard

    let output = execProcess("pandoc", args = [dir & "skripsi.md", "--citeproc",
        "--bibliography=" & dir & "reference.md", "--csl=../template/apa.csl",
        "--pdf-engine=xelatex", "--metadata-file=../config.yaml",
        "--template=../template/template.tex",
        "--lua-filter=../lua-filters/list-table.lua",
        "--lua-filter=../lua-filters/tables-rules.lua", "-o skripsi.pdf"],
        options = {poUsePath})

    let pdf = readFile dir & "/skripsi.pdf"

    removeDir(dir)

    attachment "skripsi.pdf"

    resp pdf
