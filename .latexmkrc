#!/usr/bin/env perl
#$latex            = 'platex -synctex=1 -halt-on-error';
#$bibtex           = 'pbibtex';
#$dvipdf           = 'dvipdfmx %O -o %D %S';
#$pdf_mode         = 3;
$latex          = 'platex %O -kanji=utf8 -no-guess-input-enc -synctex=1 -interaction=nonstopmode -file-line-error %S';
$dvipdf         = 'dvipdfmx %O -o %D %S';
$bibtex         = 'pbibtex -kanji=utf8 %B';
$biber          = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$makeindex      = 'mendex %O -o %D %S';
$pdf_mode       = 3;
$pdf_update_command = 'open -ga /Applications/Skim.app';
