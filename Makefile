DESTDIR = /var/www/html/crablemedicalwriting.com
BUILDDIR = ./_site

.PHONY: build

build: Gemfile
	bundle exec jekyll build --destination $(BUILDDIR)
	sudo rsync -avh --delete $(BUILDDIR)/ $(DESTDIR)/
	sudo chown -R www-data:web $(DESTDIR)
