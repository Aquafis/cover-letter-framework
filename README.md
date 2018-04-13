# cover-letter-framework
This project is the framework from which I generate all of my cover letters.  It is highly configurable and can be fully tailored to any requirements.

## Prerequisites
For your convenience, a [GNU Make](https://www.gnu.org/software/make/) file has been included to perform common build and clean-up tasks.  It is not necessary to be able to use this project.  To build this project using the provided Makefile, you will need to have `pdflatex` installed and on your path.  See the [TeX Live](https://www.tug.org/texlive/) project for more information.

### Latex Package Dependencies
- [graphicx](https://ctan.org/pkg/graphicx?lang=en)

## Usage
To start, clone this repository.

```bash
git clone https://github.com/jdbeightol/cover-letter-framework.git
```

The build using one of the methods below.

### Using GNU Make and TeX Live
```bash
make test
```

Additional rules have been included.
- `all`
    - Searches for all top-level *.tex files and generates PDF files for each.  Allows batching of multiple cover letters at the same time.
- `prune`
    - Removes all *.aux, *.fdb_latexmk, *.fls, *.log, *.out, and *.gz files.  Convenient if you aren't using references or other complex Latex features and only care about the generated PDF file.
- `clean`
    - Performs the `prune` rule and also removes all *.pdf files.
- `test`
    - Builds the provided _test-cover-letter.tex_ file.  Useful for experimentation with different variables and functionality within Latex without risk of overwriting your important cover letters.  Used in the provided example above.
- `xxx.pdf`
    - Builds a PDF from the specified _xxx.tex_ file.  Note, _xxx_ in this case is not literal.

### Manual
You can also build the project manually using your preferred Tex software.  Here is an example of how to build the project on the command line using `pdflatex`.

```bash
pdflatex test-cover-letter.tex
```

## Editing
If you're looking for a rich developer-friendly editor to write your cover letter, consider using [Visual Studio Code](https://code.visualstudio.com/) with the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) plugin.

## Signature
The provided example signature was borrowed from here http://itlaunchpad.blogs.uua.org/uncategorized/digitize-your-signature-to-save-time-and-paper/

I do not recommend you include this signature with your own cover letter.  
