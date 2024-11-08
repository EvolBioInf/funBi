# Extract TikZ pictures
open {
  print >> file
}
$1 ~ "begin{tikzpicture}" {
  c++
  open = 1
  file = "tikz_" c ".tex"
  print > file
}
$0 ~ "end{tikzpicture}" {
  open = 0
}
