all:	clean validate_xmllint robopsychology.pdf
epub:	clean validate_xmllint robopsychology.epub

robopsychology.pdf: robopsychology.xml robopsychology.xls
	dblatex -T native robopsychology.xml -p robopsychology.xls

robopsychology.epub: robopsychology.xml
	dbtoepub -o robopsychology.epub robopsychology.xml


.PHONY: validate_jing
validate_jing:
	@if [ ! -e jing.jar ]; then \
		wget https://jing-trang.googlecode.com/files/jing-20091111.zip; \
		unzip jing-20091111.zip > /dev/null; \
		mv jing-20091111/bin/jing.jar jing.jar; \
		rm -rf jing-20091111*; \
	fi

	xmllint --xinclude robopsychology.xml --output output.xml
	java -jar jing.jar -c http://docbook.org/xml/5.1CR3/rng/docbookxi.rnc output.xml
	@rm -f output.xml


.PHONY: validate_xmllint
validate_xmllint:
	xmllint --xinclude robopsychology.xml --output output.xml
	xmllint --relaxng http://docbook.org/xml/5.1CR3/rng/docbookxi.rng output.xml --noout
	rm -f output.xml


.PHONY: clean
clean:
	rm -vf robopsychology.pdf robopsychology.epub