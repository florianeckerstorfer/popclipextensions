clean-openinst2:
	rm -rf OpenInST2.popclipext

package-openinst2: clean-openinst2
	cp -r OpenInST2/ OpenInST2.popclipext

install-openinst2: package-openinst2
	open -a /Applications/PopClip.app/ OpenInST2.popclipext

clean-duckduckgo:
	rm -rf DuckDuckGo.popclipext

package-duckduckgo: clean-duckduckgo
	cp -r DuckDuckGo/ DuckDuckGo.popclipext

install-duckduckgo: package-duckduckgo
	open -a /Applications/PopClip.app/ DuckDuckGo.popclipext
