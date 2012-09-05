extdir = gcgarcom
sources = $(extdir)/*
extension = gcgarcom.zip

$(extension): $(sources)
	zip -r $@ $(extdir)

clean:
	rm $(extension)

.PHONY: clean
