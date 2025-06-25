-- Read tab URLs from clipboard (newline-separated)
set rawURLs to the clipboard
set tabURLs to paragraphs of rawURLs

-- Clean and validate URLs
set cleanedTabURLs to {}
repeat with u in tabURLs
	set trimmedURL to u as string
	if trimmedURL is not "" and trimmedURL starts with "http" then
		set end of cleanedTabURLs to trimmedURL
	end if
end repeat

-- If there are valid URLs, open them in Safari
if (count of cleanedTabURLs) > 0 then
	tell application "Safari"
		activate
		set newWindow to make new document
		set URL of front document to item 1 of cleanedTabURLs
		
		repeat with i from 2 to count of cleanedTabURLs
			tell window 1 to make new tab with properties {URL:(item i of cleanedTabURLs)}
		end repeat
	end tell
else
	display dialog "No valid URLs found in clipboard. Make sure you’ve copied your Arc tabs." buttons {"OK"} default button "OK"
end if
