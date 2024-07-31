#!/bin/bash

# Install VSCode extensions.
# These get installed to $CONDA_PREFIX/envs/notebook/share/code-server/extensions/

extensions=("ms-python.python" "ms-toolsai.jupyter" "ms-python.debugpy" "quarto.quarto")

for EXT in "${extensions[@]}"; do
    code-server --install-extension "${EXT}"
done
