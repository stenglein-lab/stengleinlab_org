deploy: build push

.PHONY: clean
clean:
	rm -rf _site/*
	cd $(GH_PAGES_DIR); \
	# git rm -rf *;

push:
	cd $(GH_PAGES_DIR); \
	git add --all; \
	git commit -m "Updated the site."; \
	git push origin master;

# build: 
build: clean
	jekyll build 
	cp -R _site/* $(GH_PAGES_DIR)/;
		
serve: clean
	jekyll serve --watch

GH_PAGES_DIR = ../stenglein-lab.github.io
