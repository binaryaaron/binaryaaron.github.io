
watch:
	cp _config_local.yml _config.yml
	bundler exec jekyll serve --watch
	cp _config_live.yml _config.yml

deploy:
	cp _config_live.yml _config.yml
	bundler exec jekyll build
	cp -r _site/* ~/git/binaryaaron.github.io/

clean:
	rm -rf _site/
	cp _config_live.yml _config.yml
