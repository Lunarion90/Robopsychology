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

## Previous other experiments

Samu (Nahshon)
http://arxiv.org/abs/1511.02889,
https://github.com/nbatfai/nahshon

---

SamuLife
https://github.com/nbatfai/SamuLife,
https://youtu.be/b60m__3I-UM

SamuMovie
https://github.com/nbatfai/SamuMovie,
https://youtu.be/XOPORbI1hz4

SamuStroop
https://github.com/nbatfai/SamuStroop,
https://youtu.be/6elIla_bIrw,
https://youtu.be/VujHHeYuzIk

SamuBrain
https://github.com/nbatfai/SamuBrain

SamuCopy
https://github.com/nbatfai/SamuCopy

---

SamuTicker
https://github.com/nbatfai/SamuTicker

SamuVocab
https://github.com/nbatfai/SamuVocab

--- 

SamuCam
https://github.com/nbatfai/SamuCam

![samucam1-nandi4](https://cloud.githubusercontent.com/assets/3148120/14001514/91fbb354-f146-11e5-9a0a-5d551bee494a.png)

![samucam1-nandi7](https://cloud.githubusercontent.com/assets/3148120/14001569/e5268d56-f146-11e5-9f6b-f4fbf6c007e2.png)

Robopsychology One
https://github.com/nbatfai/Robopsychology

--- 

SamuTuring
https://github.com/nbatfai/SamuTuring