clean-openinst:
	rm -rf OpenInST.popclipext

package-openinst: clean-openinst
	cp -r OpenInST/ OpenInST.popclipext

install-openinst: package-openinst
	open -a /Applications/PopClip.app/ OpenInST.popclipext

clean-phpstorm:
	rm -rf PHPStorm.popclipext

package-phpstorm: clean-phpstorm
	cp -r PHPStorm/ PHPStorm.popclipext

install-phpstorm: package-phpstorm
	open -a /Applications/PopClip.app/ PHPStorm.popclipext

clean-duckduckgo:
	rm -rf DuckDuckGo.popclipext

package-duckduckgo: clean-duckduckgo
	cp -r DuckDuckGo/ DuckDuckGo.popclipext

install-duckduckgo: package-duckduckgo
	open -a /Applications/PopClip.app/ DuckDuckGo.popclipext

clean-copy-plain:
	rm -rf CopyPlain.popclipext

package-copy-plain: clean-copy-plain
	cp -r CopyPlain/ CopyPlain.popclipext

install-copy-plain: package-copy-plain
	open -a /Applications/PopClip.app/ CopyPlain.popclipext
