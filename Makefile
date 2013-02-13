clean:
	rm -rf OpenInST2.popclipext

package: clean
	cp -r OpenInST2/ OpenInST2.popclipext

install: package
	open -a /Applications/PopClip.app/ OpenInST2.popclipext
