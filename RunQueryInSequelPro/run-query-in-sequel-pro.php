<?php

/**
 * Run Query in Sequel Pro Popclip Extension
 *
 * (c) 2014 Florian Eckerstorfer <florian@eckerstorfer.co>
 * https://florian.ec
 */

// AppleScript to run query in Sequel Pro
$applescript = <<<END
do shell script "echo \"{popclip text}\" | pbcopy"
tell application "Sequel Pro"
    activate
end tell
tell application "System Events"
    tell process "Sequel Pro"
        keystroke "5" using {command down}
        delay 0.1
        keystroke (ASCII character 31) using {command down}
        keystroke "v" using {command down}
        keystroke "r" using {command down}
    end tell
end tell
END;

// escape backslashes and double quotes
function applescript_safe($string) {
    $string=str_replace("\\", "\\\\", $string);
    $string=str_replace("\"", "\\\"", $string);
    return $string;
}

function force_string($str) {
    return is_string($str)?$str:'';
}

// get the required fields
$popclip_text=force_string("\n\n".getenv('POPCLIP_TEXT'));

// Fill in applescript template fields.
$applescript=str_replace("{popclip text}", applescript_safe($popclip_text), $applescript);

// Call script
$escapedscript=escapeshellarg($applescript);
$result=`echo $escapedscript | osascript -`;
