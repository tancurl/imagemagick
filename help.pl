my $tmp = <<"EOF";
Image minapulation script -- ImageMagick wrapper

usage: $prompt $command OPTIONS

   • OPTIONS
       -i  --input     input image
       -o  --output    output image

   • example:
       $prompt $command -i input.png -o output.png
EOF


# alpha {{{
my $alpha = <<"EOF";
Image minapulation script -- ImageMagick wrapper

usage: $prompt $command OPTIONS

   • OPTIONS
       -i, --input     input image
       -o, --output    output image
       -c, --color     the color to fade
       -p, --percent   fading percentage

   • example:
       $prompt $command -i input.png -o output.png --color red --percent 100
EOF
# }}}

# append {{{
my $append = <<"EOF";
Image minapulation script -- ImageMagick wrapper

usage: $prompt $command OPTIONS

   • OPTIONS
       -i, --input     input image
       -o, --output    output image
           --vertical  append vertically

   • example:
       $prompt $command -i input.png -o output.png
EOF
# }}}

# blur {{{
my $blur = <<"EOF";

EOF
# }}}

# color {{{
my $color = <<"EOF";

EOF
# }}}

# crop {{{
my $crop = <<"EOF";

EOF
# }}}

# extend {{{
my $extend = <<"EOF";

EOF
# }}}

# gradient {{{
my $gradient = <<"EOF";

EOF
# }}}

# merge {{{
my $merge = <<"EOF";

EOF
# }}}

# negate {{{
my $negate = <<"EOF";

EOF
# }}}

# palette {{{
my $palette = <<"EOF";

EOF
# }}}

# resize {{{
my $resize = <<"EOF";

EOF
# }}}

# round {{{
my $round = <<"EOF";

EOF
# }}}

# shadow {{{
my $shadow = <<"EOF";

EOF
# }}}

# shot {{{
my $shot = <<"EOF";

EOF
# }}}

# src {{{
my $src = <<"EOF";

EOF
# }}}

# string {{{
my $string = <<"EOF";

EOF
# }}}

# title {{{
my $title = <<"EOF";

EOF
# }}}

# trim {{{
my $trim = <<"EOF";

EOF
# }}}
