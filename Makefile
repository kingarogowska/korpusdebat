build:
	rm -r _build
	jb build .
copy:
	rm -r docs
	mkdir docs
	touch docs/.nojekyll
	cp -r _build/html/* docs
git_add:
	git add .
	git status
update: build copy git_add
