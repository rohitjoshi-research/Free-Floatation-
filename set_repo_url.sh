#!/usr/bin/env bash
# Usage: ./set_repo_url.sh <github-username>   — fills the repository URL into the notebook and CITATION.cff
set -e
U="$1"; [ -z "$U" ] && { echo "usage: $0 <github-username>"; exit 1; }
sed -i "s#https://github.com/<user>/free-flotation#https://github.com/$U/free-flotation#g" notebook/build_notebook.py notebook/FREE_validation.ipynb
grep -q '^repository-code:' CITATION.cff || sed -i "/^license: MIT/a repository-code: \"https://github.com/$U/free-flotation\"" CITATION.cff
echo "Repository URL set to https://github.com/$U/free-flotation"
