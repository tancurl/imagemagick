#!/usr/bin/env perl

use warnings;
use strict;

sub logger {
    my $subname = (split(":", (caller(0))[3]))[-1];
    my ($package, $filename, $line) = caller(0);
    print(caller(0), "\n");
    my $message = "[subname: $subname] [package: $package] [filename: $filename] [line: $line] ".$_[0];
    my $level = $_[1];
    my $current_date = strftime("%Y-%m-%d %H:%M:%S", localtime);
    if ($level eq 1) {
        print("$message\n");
    } elsif ($level eq 2) {
        print(STDERR "$message\n");
    } elsif ($level eq 3) {
        print(STDERR "$message\n");
        return;
    }
}

my $workdir = "/home/jenkins/rel_030400_3678_202508201452";
my @tmp_workdir = split("/", $workdir);
my $count_workdir = @tmp_workdir;

print("$count_workdir\n");

use Scalar::Util qw(looks_like_number);
use POSIX qw(strftime);  # current time

my $str_var = "hello";

if (looks_like_number($count_workdir)) {
    print "$count_workdir is a number.\n";
}

if ($count_workdir == 4) {
    logger("$count_workdir is a number.", 3);
}

if (!looks_like_number($str_var)) {
    print "$str_var is not a number.\n";
}


