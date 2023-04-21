
all: public/main.js static-files

static-files: public/spectre.min.css public/spectre-exp.min.css public/github.css

public/main.js: main.ts
	esbuild $^ --platform=browser --bundle --sourcemap --metafile=./dist/meta.json --tree-shaking=true --outfile=$@

public/spectre.min.css: node_modules/spectre.css/dist/spectre.min.css
	cp $^ $@

public/spectre-exp.min.css: node_modules/spectre.css/dist/spectre-exp.min.css
	cp $^ $@

public/github.css: node_modules/highlight.js/styles/github.css
	cp $^ $@
