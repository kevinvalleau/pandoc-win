# Docker Image for pandoc based on a Windows Server Code Layer

---

Pandoc is a wonderful project but their Docker images are built only for linux.
See the documentation here : <https://pandoc.org/installing.html>

Here is a Docker image based on Windows Server Core LTSC 2016.

---

Example usage :

```
docker run --rm --volume "${PWD}:C:\data" k0e0vcikner/pandoc-win:0.1 file.md -o file.pptx --reference-doc template.pptx --slide-level 2
```
