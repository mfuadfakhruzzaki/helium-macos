#!/bin/bash -eux

# Unpacking script for GitHub Actions

echo "Checking sha256sum of archive:"
sha256sum -c build_resources_sums.txt

ls -lrt
df -h

echo "Extracting build archive"
zstd -d -T0 --rm build_resources.tar.zst -o build_resources.tar
tar -xf build_resources.tar
rm -f build_resources.tar
df -h
