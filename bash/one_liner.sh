#!/bin/bash

# Useful bash scripts in Cambridge
# -----------------

# Use LDAP to look at info on Cambridge students (not sure but I guess only works in Cambridge network)
# Usage: replace <CRSId> with a valid CRSId
ldapsearch -x -LLL -H ldaps://ldap.lookup.cam.ac.uk -b "ou=people, o=University of Cambridge,dc=cam,dc=ac,dc=uk" uid=<CRSId>

# Curl command that downloads Natsci Math IA papers from 2001 to 2012 into a folder named math_papers in desktop.
mkdir ~/Desktop/math_papers; cd ~/Desktop/math_papers; curl http://www.maths.cam.ac.uk/undergradnst/pastpapers/20[01-12]/PaperNST_IA_[1-2].pdf -o "Math20#1-#2.pdf"

# Ghostscript command to join PDFs. Useful when you have one pdf per lecture, and would rather have one per course
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=all.pdf file1.pdf file2.pdf ...

# Python script installed on Mac OS X Tiger and onwards by default to join pdfs.
# Credit: http://gotofritz.net/blog/howto/joining-pdf-files-in-os-x-from-the-command-line/
"/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o OUTPUT.pdf INPUT1.pdf INPUT2.pdf /PATH/TO/A/WHOLE/DIR/*.pdf
