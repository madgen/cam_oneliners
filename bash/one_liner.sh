#!/bin/bash

# Useful bash scripts in Cambridge
# -----------------

# Curl command that downloads Natsci Math IA papers from 2001 to 2012 into a folder named math_papers in desktop.
mkdir ~/Desktop/math_papers; cd ~/Desktop/math_papers; curl http://www.maths.cam.ac.uk/undergradnst/pastpapers/20[01-12]/PaperNST_IA_[1-2].pdf -o "Math20#1-#2.pdf"

# Ghostscript command to join PDFs. Useful when you have one pdf per lecture, and would rather have one per course
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=all.pdf file1.pdf file2.pdf ...
