#!/bin/bash

    echo -e "<html>\n<body>\n<h1>Directory listing</h1>\n<hr/>\n<pre>" > "index.html"
    ls -d | grep -v "^\./$" | grep -v "index.html" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }' >> "index.html" 
    echo -e "</pre>\n</body>\n</html>" >> "index.html"
