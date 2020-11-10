all: \
	_prepare \
	_build_x86 \
	_build_x64 \
	_display

_prepare:
	mkdir -p bin

_build_x86:
	GOOS=linux GOARCH=386 go build -o bin/helloworld_x86 ./cmd/helloworld/

_build_x64:
	GOOS=linux GOARCH=amd64 go build -o bin/helloworld_x64 ./cmd/helloworld/

_display:
	cd bin && ls -1 | xargs file -e elf

clean:
	$(RM) -r bin