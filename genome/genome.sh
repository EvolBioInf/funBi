datasets download genome accession GCA_000027325.1 \
           --include genome,gff3 \
           --dehydrated
unzip ncbi_dataset.zip
datasets rehydrate --directory .
mv ncbi_dataset/data/*/*.fna mg.fna
mv ncbi_dataset/data/*/*.gff mg.gff
less mg.fna
cres mg.fna
less mg.gff
awk '$3 == "gene"' mg.gff | less
awk '$3 == "gene"' mg.gff | wc -l
awk '$3 == "gene"' mg.gff |
    cut -f 4,5,7 > genes.txt
less genes.txt
awk '$3=="+"' genes.txt | wc -l
awk '$3=="-"' genes.txt | wc -l
awk -f drawGenes.awk genes.txt |
    awk '{printf "%f\t%d\n", $1/1000, $2}' > genes.dat
plotLine -Y "-5:5" -x "Position (kb)" -u y genes.dat
pdflatex genome.tex
evince genome.pdf &
