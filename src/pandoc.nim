import std/[os, strformat, strutils]

proc pandoc*(
    markdown: string,
    output: string = "skripsi.pdf",
    bibliography: string,
    resourcePath: string
    ) =
  let args = fmt"""
  pandoc {markdown}
  --bibliography={bibliography}
  --resource-path={resourcePath}
  --citeproc
  --csl=.skripdown/template/apa.csl
  --pdf-engine=xelatex
  --metadata-file=.skripdown/config.yaml
  --template=.skripdown/template/template.tex
  --lua-filter=.skripdown/lua-filters/list-table.lua
  --lua-filter=.skripdown/lua-filters/tables-rules.lua
  --output={output}
  """.strip().replace("\n", "")

  echo "Generating PDF..."
  echo execShellCmd(args)
