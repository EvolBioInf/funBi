pdflatex hello
ls
evince hello.pdf &
pdflatex hello.tex
for i in {1..100}; do
    echo $i $(($RANDOM % 6 + 1))
done > r.dat
