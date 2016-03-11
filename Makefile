#    How to Become a Robopsychologist
#   Copyright (C) 2016  Dr. Norbert Bátfai, nbatfai@gmail.com
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

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