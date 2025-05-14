{
  start = $1
  end = $2
  strand = $3
  if (strand == "+")
    y = 1
  else
    y = -1
  printf "%d\t%d\n", start, 0
  printf "%d\t%d\n", start, y
  printf "%d\t%d\n", end, y
  printf "%d\t%d\n", end, 0
}
END {
  printf "1\t0\n"
}
