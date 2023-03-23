import std/[os, tables], assetsfile

proc init*() =
  echo "Initializing assets..."

  for path in dirs:
    if not dirExists(path):
      echo ("Creating directory: " & path)
      createDir(path)

  for path, content in files.pairs:
    if not fileExists(path):
      echo ("Creating file: " & path)
      writeFile(path, getAsset(path))

  echo "Assets initialized."
