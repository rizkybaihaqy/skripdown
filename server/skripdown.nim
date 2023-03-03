import std/[tempfiles, os], jester

routes:
  get "/":
    const index = readFile "server/public/index.html"
    resp index
  post "/":
    let files: MultiData = request.formData
    let dir = createTempDir("tmp_", "_", "server/uploads")

    for i, f in files.pairs:
      case i
      of "skripsi":
        writeFile(dir & "/" & "skripsi.md", f.body)
      of "bib":
        writeFile(dir & "/" & "reference.bib", f.body)
      of "assets":
        writeFile(dir & "/" & f.fields["filename"], f.body)
      else: discard

    let output = execShellCmd("pandoc " & dir &
        "/skripsi.md --citeproc --bibliography=" & dir &
        "/reference.bib --csl=template/apa.csl --pdf-engine=xelatex --metadata-file=config.yaml --template=template/template.tex --lua-filter=lua-filters/list-table.lua --lua-filter=lua-filters/tables-rules.lua --resource-path=" &
        dir & " -o " & dir & "/skripsi.pdf")

    let pdf = readFile dir & "/skripsi.pdf"

    removeDir(dir)

    attachment "skripsi.pdf"

    resp pdf
