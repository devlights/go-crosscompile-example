all: \
	_prepare \
	_build_x86 \
	_build_x64 \
	_display

_prepare:
	@mkdir -p bin

_build_x86:
	GOOS=linux GOARCH=386 go build -o bin/helloworld_linux_x86 ./cmd/helloworld/
	GOOS=windows GOARCH=386 go build -o bin/helloworld_windows_x86.exe ./cmd/helloworld/

_build_x64:
	GOOS=linux GOARCH=amd64 go build -o bin/helloworld_linux_x64 ./cmd/helloworld/
	GOOS=windows GOARCH=amd64 go build -o bin/helloworld_windows_x64.exe ./cmd/helloworld/

_display:
	@echo ''
	@cd bin && ls -1 | xargs file -e elf

clean:
	$(RM) -r bin