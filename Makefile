sass:
	sass --watch --sourcemap=none src/static/stylesheets/app.scss:static/stylesheets/app.css
prefix:
	autoprefixer -b 'last 2 versions' static/stylesheets/app.css
# post to blog section
blog:
	hugo new blog/$(var).md
	vim content/blog/$(var).md
blog-img:
	hugo new blog/$(var).md
	vim content/blog/$(var).md
	mkdir static/images/blog/$(var)
	open -a Finder.app static/images/blog/$(var)
# post to wok section
work:
	hugo new work/$(var).md
	vim content/work/$(var).md
