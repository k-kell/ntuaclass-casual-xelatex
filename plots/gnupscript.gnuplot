set terminal cairolatex pdf size 10cm,10cm
set output "gplot_example.pdf"
set title 'test'
set xlabel '$\textrm{τεστ} \quad \frac{\textmu}{x}$'
plot sin(x)/x
exit
