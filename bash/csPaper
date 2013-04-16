#Bash script to open in evince (Substitute for pdf reader of choice) the specified past paper.
#For instance, to open y2001p5q6, execute paper 1 5 6.
#Works with 201(0|1) as well - paper 10 4 2
#Considerably faster than faffing about on the CL website

LEN=${#1}
if [ $LEN = "2" ]; then PDF=y20$1p$2q$3.pdf; else PDF=y200$1p$2q$3.pdf;fi
wget -q http://www.cl.cam.ac.uk/teaching/exams/pastpapers/$PDF && mv $PDF /tmp && nohup 1>&2 evince /tmp/$PDF 2>/dev/null&
