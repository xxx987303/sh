#! /bin/bash

cat <<EOF

1. Open https://www.kaplans.se/sv/minasidor/kopta
2. In Firefox do: File -> Save page as...
3. Select format "Files"
4. Save to "SNAPSHOT.html" or whatever you like
5. Extract the relevant info from page dump (replace the file), like this:
grep -E "^(POCHETTE|SCARF|Aficionado|Köpt|Bought|Betalt|Paid:|Auktionsnr|Item no)" ~/Downloads/SNAPSHOT.html |sed -e 's/^.*<//' -e 's/>//'

EOF
