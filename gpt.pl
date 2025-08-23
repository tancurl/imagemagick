#!/usr/bin/env perl

use strict;
use warnings;
use Text::Pygments;
use Image::Magick;

my ($input, $theme, $language, $output) = @ARGV;

# Read the input file
open my $fh, '<', $input or die "Cannot open file: $!";
my @lines = <$fh>;
close $fh;

# Number the lines
my @numbered_lines = map { sprintf("%4d  %s", $.++, $_) } @lines;

# Highlight the code
my $pygments = Text::Pygments->new();
my $highlighted = $pygments->highlight(
    source => join("", @numbered_lines),
    lexer  => $language,
    options => { style => $theme, bgcolor => 'base03' }
);

# Create an image from the highlighted text
my $image = Image::Magick->new();
$image->Read("pango:@-", $highlighted);
$image->Set(background => '#121314');
$image->Set(pointsize => 18);
$image->Write($output);
