# LaTeX Resume

A clean, modern resume template built with LaTeX. The project is structured for easy customization and a tidy build workflow.

## Prerequisites

Install a LaTeX distribution and make sure `xelatex` is available on your PATH.

-   **macOS**
    - Full install: `brew install --cask mactex-no-gui`
    - Minimal: `brew install basictex`
-   **Linux**: TeX Live (e.g. Ubuntu: `sudo apt-get install texlive-full`)

Recommended editor: VS Code with the "LaTeX Workshop" extension, TeXstudio, or Overleaf.

## Project Structure

```
latex-resume/
├── resume.tex      # Main resume content
├── Makefile        # Build automation
├── .gitignore
├── README.md
└── output/         # Compiled PDF output
```

## Usage
### Option 1: Using Make
Build the PDF:
```bash
make
```
This compiles `resume.tex` and writes `output/resume.pdf`.

### Option 2: Manual compile

```bash
mkdir -p output
xelatex -output-directory=output resume.tex
```
Note: Some documents require running the command twice for cross-references.

## Troubleshooting

-   Error: `xelatex: No such file or directory`
    - Install TeX (see Prerequisites) and ensure `/Library/TeX/texbin` is on your PATH (macOS)
-   Fonts or packages missing (BasicTeX):
    ```bash
    sudo tlmgr update --self
    sudo tlmgr install xetex fontspec xunicode xltxtra unicode-math latexmk
    ```