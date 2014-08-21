GIT_URL:=https://github.com/pornel/pngquant.git
SOURCE:=src

all: $(SOURCE) build

$(SOURCE):
	git clone $(GIT_URL) $(SOURCE)

build:
	cd $(SOURCE) && ./configure && $(MAKE)

install:
	install -o root -g root $(SOURCE)/pngquant /usr/local/bin

.PHONY: build
