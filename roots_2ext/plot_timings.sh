gnuplot << EOF
#
set terminal postscript eps color enhanced
#
set style line 1 lc rgb "red" lw 5
set style line 2 lt 1 lc rgb "green" lw 5
set style line 3 lc rgb "blue" lw 5
set style line 4 lc rgb "orange" lw 5
#
set output 'sqrtTiming.eps'
#set title "Square Root"
set xlabel "extension degree"
set ylabel "time(sec)"
plot 'sqrtTiming.dat' using 1:3 ls 2 title 'Old' with lines,\
	 'sqrtTiming.dat' using 1:2 ls 1 title 'New' with lines
EOF



############################### pdf output
for f in *.eps 
do
   epstopdf $f
   rm $f
done

