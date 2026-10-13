# Release checklist (author)

1. **Employer IP clearance** obtained in writing (required before the repository is made public).
2. Add your ORCID to `CITATION.cff` and `.zenodo.json`.
3. Create an empty public repository `free-flotation` on GitHub (no README, no licence — they are included here).
4. In this folder:
   ```bash
   ./set_repo_url.sh <your-github-username>
   git init -b main && git add -A && git commit -m "Where, Not When v1.0.0"
   git remote add origin https://github.com/<your-github-username>/free-flotation.git
   git push -u origin main
   ```
5. On zenodo.org, sign in with GitHub, switch the repository on under *GitHub*, then on GitHub create release
   `v1.0.0`. Zenodo archives it and issues a DOI (metadata from `.zenodo.json`).
6. Add the DOI badge to the README and the DOI to the paper's data-availability statement and to the LinkedIn first comment.
7. Upload `paper/paper.pdf` to arXiv (or a preprint server) and link it from the README.
