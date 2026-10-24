#!/bin/bash -eux

# Unpacking script for GitHub Actions

echo "Checking sha256sum of archive:"
sha256sum -c sums.txt

_src_dir="$PWD/build/src"
ls -lrt

mkdir -p build
echo "Extracting build archive"
zstd -d -T0 --rm build_src.tar.zst -o build_src.tar
tar -C build -xf build_src.tar
rm -f build_src.tar

sudo df -h
sudo du -hs "$_src_dir"
