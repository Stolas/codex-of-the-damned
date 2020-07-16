.PHONY: po-update po-compile po release

po-update:
	pybabel -v extract --add-comments="TRANSLATORS:" -w 120 -F babel.cfg -k lazy_gettext -o messages.pot codex_of_the_damned
	pybabel -v update -w 120 -i messages.pot -d codex_of_the_damned/translations

po-compile:
	pybabel compile -d codex_of_the_damned/translations

po: po-update po-compile

release: po-compile
	fullrelease
