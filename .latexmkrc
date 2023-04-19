#!/usr/bin/env perl
$latex            = 'platex -synctex=1 -halt-on-error';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$pdf_mode         = 3;
$pdf_update_command = 'open -ga /Applications/Skim.app';
