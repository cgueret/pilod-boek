# See http://musescore.org/sites/musescore.org/files/Makefile.txt
IMGS := add-dbpedia.png \
	add-isidore.png \
	create-task.png \
	feeds.png \
	generate-links.png \
	linker-sindice.png \
	linking-specification.png \
	login-screen.png \
	member-space.png \
	properties-loaded.png \
	ready.png \
	rules-editor.png \
	send-to-sparql.png \
	workspace.png 
LOW_RES_IMG := $(addprefix ./out/imgs/,${IMGS})
BUILDID=$(shell date +%Y%m%d)
.PHONY: all ${LOW_RES_IMG}

all: books

${LOW_RES_IMG}: out/imgs/%:
	mkdir -p ./out/imgs; convert imgs-hires/$* -resize 35% ./out/imgs/$*

books: ${LOW_RES_IMG}
	cp how-to-link-data.md ./out/how-to-link-data_${BUILDID}.md
	cd out && pandoc -S -s -o how-to-link-data_${BUILDID}.docx how-to-link-data_${BUILDID}.md && cd ..
	cd out && pandoc -S -s -o how-to-link-data_${BUILDID}.odt how-to-link-data_${BUILDID}.md && cd ..
	cd out && pandoc -S -s -o how-to-link-data_${BUILDID}.epub how-to-link-data_${BUILDID}.md && cd ..
	cd out && pandoc -S -s --self-contained -t html5 -o how-to-link-data_${BUILDID}.html how-to-link-data_${BUILDID}.md && cd ..
	cp how-to-publish-open-data.md ./out/how-to-publish-open-data_${BUILDID}.md
	cp imgs-hires/resources-content-negotiation.png ./out/imgs
	cd out && pandoc -S -s -o how-to-publish-open-data_${BUILDID}.docx how-to-publish-open-data_${BUILDID}.md && cd ..
	cd out && pandoc -S -s -o how-to-publish-open-data_${BUILDID}.odt how-to-publish-open-data_${BUILDID}.md && cd ..
	cd out && pandoc -S -s -o how-to-publish-open-data_${BUILDID}.epub how-to-publish-open-data_${BUILDID}.md && cd ..
	cd out && pandoc -S -s --self-contained -t html5 -o how-to-publish-open-data_${BUILDID}.html how-to-publish-open-data_${BUILDID}.md && cd .. 
	