usage :
	@grep '^[^#[:space:]].*:' Makefile

install :
	npm install

watch_html :
	npx @marp-team/marp-cli -w

build_html :
	npx @marp-team/marp-cli

build_pdf :
	npx @marp-team/marp-cli --pdf

build_pp :
	npx @marp-team/marp-cli --pptx

build_all :
	make build_html && make build_pdf && make build_pp

clean :
	rm dist/*.{html,pdf,pptx}
