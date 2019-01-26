#!/usr/bin/perl
#
# Learning Perl
# 01 Basic
#

# Turn on warnings and strictness:
use warnings;
use strict;

# Hello, World!
print "Hello, World!\n";

# Storage types:
# - Scalar  $variable
# - Arrays
# - Hash

# Scalars: Strings, Numbers (integers and floats), References, and Filehandles
my $age = 34;
my $weight = 82.6;
my $initial = 'D';
my $name = 'David';
my $name_ref = \$name;

# This won't work: $height is not defined
#my $imc = $weight/($height * $height)

my $greeting = "Hello, $name!\n";
print $greeting;

my ($first, $last) = qw( David Medina );
print "First is '$first'\n";
print "Last is '$last'\n";

# Single quotes (') versus double quotes (")
print 'Name $name\n';
print "Name $name\n";

# chomp: get rid of newline characters
my $varwithnl = "text with newline\n";
chomp($varwithnl);
warn "String is '$varwithnl' \n";

# Concatenation: .
my $fullname = $name . " Medina";
print "Full name: $fullname\n";

# Repetition: x
print (("-" x 80) . "\n");

# Lenght:
my $len = length("-" x 80);
print "The last line was $len characters long\n";

# Substring: substr(STRING_EXPRESSION, OFFSET, LENGTH);
my $text = "Dianne was sleeping when they called";
my $was_text = substr($text, 7, 3);
print "Sub text: '$was_text'\n";
substr($text, -16, 4) = "and";
print "Modified text: '$text'\n";

# Split: split(/PATTERN/, STRING_EXPRESSION, LIMIT);
# Some patterns for regexp:
# \t      tab-separated data
# \s+     whitespace-separated data
# \s*,\s* comma-separated data
my $data = "David\tMedina\t34\tMale";
my ($name, $lastname, $age, $sex) = split(/\t/, $data);
print "'$name', '$lastname', '$age', '$sex'\n";

# Join: join('SEPARATOR STRING', STRING1, STRING2, ...);
$fullname = join(" ", $name, $lastname);
print "Fullname joined: '$fullname'\n";
my $fruits = join(" and ", qw(apples bannanas mangos));
warn "Fruits: '$fruits'\n";

# Multi-Line strings, HERE documents:
$text = <<"ENDOFDOCUMENT";
This is a text with multiple lines.
It won't end until we reach the specific word
we set at the begining.
ENDOFDOCUMENT
warn "The string is: '$text'\n";


