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
LOW_RES_IMG := $(addprefix ./imgs/,${IMGS})
BUILDID=$(shell date +%Y%m%d)
.PHONY: all ${LOW_RES_IMG}

all: books

${LOW_RES_IMG}: ./imgs/%: ; mkdir -p ./imgs; convert imgs-hires/$* -resize 35% ./imgs/$*

books: ${LOW_RES_IMG}
	pandoc -S -s -o how-to-link-data_${BUILDID}.docx how_to_link_data.md
	pandoc -S -s -o how-to-link-data_${BUILDID}.odt how_to_link_data.md
	pandoc -S -s -o how-to-link-data_${BUILDID}.epub how_to_link_data.md
	pandoc -S -s --self-contained -t html5 -o how-to-link-data_${BUILDID}.html how_to_link_data.md

