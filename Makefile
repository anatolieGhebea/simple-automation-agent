
build_linux:
	@echo "Building for Linux"
	GOOS=linux GOARCH=amd64 go build -o ./dist/linux/$(V)/sa_agent
	cd dist/linux/$(V) && mkdir logs && mkdir config && cd config && pwd && cp ../../../../config/config.json.sample . 
	tar -czf ./dist/linux/$(V).tar.gz -C ./dist/linux $(V)
	rm -rf ./dist/linux/$(V)