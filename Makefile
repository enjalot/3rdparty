THIRD_PARTY_FILES = \
	lib/jshint.js \
	../CodeMirror/lib/codemirror.js \
	../CodeMirror/mode/javascript/javascript.js \
	../CodeMirror/mode/coffeescript/coffeescript.js \
	../CodeMirror/mode/css/css.js \
	../CodeMirror/mode/xml/xml.js \
	../CodeMirror/mode/htmlmixed/htmlmixed.js \
	../CodeMirror/mode/clike/clike.js \
	../CodeMirror/keymap/vim.js \
	../CodeMirror/keymap/emacs.js \
	../CodeMirror/addon/lint/lint.js \
	../CodeMirror/addon/lint/javascript-lint.js \
	../CodeMirror/addon/lint/json-lint.js \
	../CodeMirror/addon/search/searchcursor.js \
	../CodeMirror/addon/search/search.js \
	../CodeMirror/addon/dialog/dialog.js \
	../CodeMirror/addon/runmode/runmode.js

THIRD_PARTY_CSS = \
  ../CodeMirror/lib/codemirror.css \
  ../CodeMirror/theme/night.css \
  ../CodeMirror/theme/vibrant-ink.css \
  ../CodeMirror/theme/ambiance.css \
  ../CodeMirror/theme/elegant.css \
  ../CodeMirror/addon/dialog/dialog.css \
  ../CodeMirror/addon/lint/lint.css \

all: js css
js: 3rdparty.js
css: 3rdparty.css

3rdparty.js: $(THIRD_PARTY_FILES)
	#node_modules/.bin/smash $(CM_FILES) | node_modules/.bin/uglifyjs - -c -m -o $@
	rm -f $@
	cat $(THIRD_PARTY_FILES) > $@.cat
	node_modules/.bin/uglifyjs < $@.cat > $@

3rdparty.css: $(THIRD_PARTY_CSS)
	rm -f $@
	cat $(THIRD_PARTY_CSS) > $@

