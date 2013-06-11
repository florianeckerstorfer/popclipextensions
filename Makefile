clean:
	rm -rf OpenInST2.popclipext

package: clean
	cp -r OpenInST2/ OpenInST2.popclipext

install: package
	open -a /Applications/PopClip.app/ OpenInST2.popclipext

clean-duckduckgo:
	rm -rf DuckDuckGo.popclipext

package-duckduckgo: clean-duckduckgo
	cp -r DuckDuckGo/ DuckDuckGo.popclipext

install-duckduckgo: package-duckduckgo
	open -a /Applications/PopClip.app/ DuckDuckGo.popclipext
