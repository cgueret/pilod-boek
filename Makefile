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
.PHONY: all ${LOW_RES_IMG}

all: book-docx

${LOW_RES_IMG}: ./imgs/%: ; mkdir -p ./imgs; convert imgs-hires/$* -resize 60% ./imgs/$*

book-docx: ${LOW_RES_IMG}
	pandoc -o test.docx how_to_link_data.md 
