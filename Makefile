local:
	cat general.yml local.yml > _config.yml
	jekyll s

publish:
	cat general.yml github.yml > _config.yml
	cd _site && git add . && git commit -m "update" && git push
