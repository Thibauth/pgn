all: doc/index.html

pgn.html: pgn.md
	cmark --smart pgn.md > pgn.html

doc/index.html: pgn.html template.html
	python build.py > doc/index.html

clean:
	rm -f pgn.html doc/index.html
