import std/[os, parseopt], pandoc

proc writeHelp() =
  echo """

  SKRIPDOWN - Tulis Skripsi di Markdown 0.2.0

  usage: skripdown [options] <markdown-file>

  allowed options:
    -h, --help              show this help message,
    -v, --version           show version,
    -o, --output            specify output file,
    -b, --bibliography      specify bibliography file,
    --resource-path         specify resource path,
  """

proc writeVersion() =
  echo "SKRIPDOWN - Tulis Skripsi di Markdown 0.2.0"

proc cli*() =
  var
    markdown: string
    output: string
    bibliography: string
    resourcePath: string

  if paramCount() == 0:
    writeHelp()
    quit(0)

  for kind, key, val in getopt():
    case kind
    of cmdLongOption, cmdShortOption:
      case key
      of "help", "h":
        writeHelp()
        quit()
      of "version", "v":
        writeVersion()
        quit()
      of "output", "o":
        output = val
      of "bibliography", "b":
        bibliography = val
      of "resource-path":
        resourcePath = val
      else:
        discard
    of cmdArgument:
      markdown = key
    else:
      discard

  pandoc(markdown, output, bibliography, resourcePath)
