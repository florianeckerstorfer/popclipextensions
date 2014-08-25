#!/bin/bash
osascript -e "tell application \"PHPStorm\" to activate"
open pstorm://${POPCLIP_TEXT/file:\/\/localhost/""}
