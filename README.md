# How-to
This template repo has an example latex file for basic articles and refs
- Compile locally with `make main.pdf` 
  - Runs `pdflatex` from the image [ghcr.io/ahayden/texbox](https://github.com
/ahayden/texbox) on an input latex file and saves it the 
    workflows artifacts.
  - The `Makefile` will run a spellchecker first
- The Actions workflow will build main.pdf on update. The PDF will be output
  in the workflow artifacts
  - Update the [Actions](https://github.com/ahayden/tex-template/blob/main/
.github/workflows/make-pdf.yaml) workflow matrix with the name of a root 
    .tex file or two for the build to work.
- All latex files in the repo should share the same refs



