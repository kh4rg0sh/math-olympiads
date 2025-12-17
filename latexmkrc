# Allow shell escape
$pdflatex = 'pdflatex -shell-escape %O %S';

# Tell latexmk about asymptote
add_cus_dep('asy', 'pdf', 0, 'asy2pdf');

sub asy2pdf {
    system("asy $_[0]");
}
