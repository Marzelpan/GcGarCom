CHROME = /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
EXTKEY = ../gcgarcom.pem
DEPLOYMENTDIR = jjs:~/webseiten/gcgarcom/

extdir = gcgarcom
sources = $(extdir)/*
extension = gcgarcom.crx
updatefeed = updates.xml

$(extension): $(sources)
	$(CHROME) --pack-extension=$(extdir) --pack-extension-key=$(EXTKEY)

clean:
	rm $(extension)

deploy: $(extension)
	scp $(extension) $(updatefeed) $(DEPLOYMENTDIR)

.PHONY: clean deploy
