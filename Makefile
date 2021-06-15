TARGET=report.pdf
SOURCE=report.md

$(TARGET): $(SOURCE)
	pandoc --citeproc -o $(TARGET) $(SOURCE)

watch:
	echo $(SOURCE) | entr make $(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: clean watch
