# Robopsychology
How to become a robopsychologist

The initial document: [robopsychology.pdf](https://github.com/nbatfai/Robopsychology/files/169195/robopsychology.pdf)

# Usage
```
nbatfai@orchmach:~/GitHubRepos/Robopsychology$ make
rm -vf robopsychology.pdf robopsychology.epub
removed ‘robopsychology.pdf’
xmllint --xinclude robopsychology.xml --output output.xml
xmllint --relaxng http://docbook.org/xml/5.1CR3/rng/docbookxi.rng output.xml --noout
output.xml validates
rm -f output.xml
dblatex -T native robopsychology.xml -p robopsychology.xls
Build the book set list...
Build the listings...
XSLT stylesheets DocBook - LaTeX 2e (0.3.5-2)
===================================================
Stripping NS from DocBook 5/NG document.
Processing stripped document.
Image 'dblatex' not found
Build robopsychology.pdf
'robopsychology.pdf' successfully built
nbatfai@orchmach:~/GitHubRepos/Robopsychology$ evince robopsychology.pdf
```

