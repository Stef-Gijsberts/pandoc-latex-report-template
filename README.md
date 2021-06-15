# Simple PDF generation based on MarkDown

## Requirements

 - Pandoc
 - A LaTeX engine
 - A text editor (even the simplest notepad application will do)
 - `make`
 - `entr` to use watch-mode

Using a linux system is recommended.

On Ubuntu, a quick (and a bit dirty) way to install all requirements is:
```sh
sudo apt install pandoc texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra make entr
```

## Usage
Run the following command to automatically render the PDF whenever the MarkDown
file changes:

```sh
make watch
```
