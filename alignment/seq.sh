ranseq -s 3 > seq1.fasta
cp seq1.fasta seq2.fasta
sed 's/1/2/' seq2.fasta > tmp
mv tmp seq2.fasta
al seq2.fasta seq1.fasta
mutator -s 5 -m 0.1 seq2.fasta > seq3.fasta
head -n 1 seq3.fasta
sed 's/2.*/3/' seq3.fasta > tmp
mv tmp seq3.fasta
al seq3.fasta seq1.fasta
cutSeq -j -r 1-20,41-100 seq1.fasta > seq4.fasta
#+begin_src latex
We rename \ty{seq4.fasta}.
sed 's/1.*/4/' seq4.fasta > tmp
mv tmp seq4.fasta
#+begin_src latex
We align \ty{seq4.fasta} with its mutated homolog
\ty{seq3.fasta}. Alignment gaps are marked with hyphens, `-', which
indicate the absence of an equivalent match in the other sequence. In
this case, we happen to know that the gap is due to a deletion we made
in the query, Rand4. However, since the same pattern would appear if
it was due to an insertion in the subject, Rand3, insertions and
deletions are often not distinguished and instead collectively called
`indels'.
al seq4.fasta seq3.fasta
cutSeq -j -r 1-60,51-60,61-80 seq4.fasta > seq5.fasta
#+begin_src latex
We rename the sequence in \ty{seq5.fasta}.
sed 's/4.*/5/' seq5.fasta > tmp
mv tmp seq5.fasta
#+begin_src latex
In the alignment we see the deletion and the duplication as long gaps.
al seq5.fasta seq3.fasta
