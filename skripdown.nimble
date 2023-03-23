# Package

version       = "0.1.0"
author        = "Rizky Muhammad Baihaqy"
description   = "Tulis Skripsi di Markdown"
license       = "MIT"
srcDir        = "src"
bin           = @["skripdown"]


# Dependencies

requires "nim >= 1.6.10"

# Task

before dist:
  echo "Building assets"
  exec "nim scripts/assets_builder.nims"

task dist, "Build for windows and linux distribution":
  echo "Building for windows"
  exec "nim c -d:mingw -d:release --outdir=bin src/skripdown.nim"
  echo "Building for linux"
  exec "nim c -d:release --outdir=bin src/skripdown.nim"