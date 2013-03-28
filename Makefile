THIRD_PARTY_FILES = \
	lib/jshint.js \
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

							
3rdparty.js: $(THIRD_PARTY_FILES)
	#node_modules/.bin/smash $(CM_FILES) | node_modules/.bin/uglifyjs - -c -m -o $@
	rm -f $@
	cat $(THIRD_PARTY_FILES) > $@.cat
	node_modules/.bin/uglifyjs < $@.cat > $@
