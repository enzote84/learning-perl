#!/usr/bin/perl
#
# Learning Perl
# 02 Numbers
#

# Turn on warnings and strictness:
use warnings;
use strict;

# Types of numbers:
my $days_in_week = 7;   # scalar -> integer
my $temperature = 29.6; # scalar -> float

# Types of literals:
my $temp_1 = 3.54e2;        # scientific
my $temp_2 = 27_000_000.0;  # decimal
my $addr_1 = 0123456;       # octal
my $addr_2 = 0x5c2f;        # hexadecimal
my $addr_3 = 0b10011100010; # binary

# Numeric functions:
my $var_1 = abs(-2.6);               # var_1 is 2.5
my $var_2 = int($var_1);             # var_2 is 2
my $var_3 = sprintf("%.0f", $var_1); # var_3 is 3
print "'$var_1', '$var_2', '$var_3'\n";
my $var_4 = 4 ** 2;       # 4 * 4 = 16
my $var_5 = 2 ** 10;      # 1024
my $var_6 = 125 ** (1/3); # 5
print "'$var_4', '$var_5', '$var_6'\n";
my $var_7 = sqrt(121);    # 11
my $var_8 = exp(1);       # e
my $var_9 = log(exp(42));  # 42

# Trigonometry:
my $angle = 45;                     # 45 deg
my $radians = $angle * (3.14/180);  # .785 rad
my $sine_rad = sin($radians);       # 0.707 Correct!
my $sine_deg = sin($angle);         # 0.851 OOPS!

# Numbers to string:
my $mass = 7.3;
my $volume = 4;
warn "mass is '$mass'\n";
warn "volume is '$volume'\n";
my $pi = 3.1415;
my $str = sprintf("%06.2f", $pi);
warn "str is '$str'";
# %  => format
# 0  => fill leading spaces with zero
# 6  => total length, including decimal point
# .2 => put two places after the decimal point
# f  => floating point notation
# hexadecimal "%lx" The letter 'l' (L)
# octal "%lo" indicates the input is
# binary "%lb" an integer, possibly
# decimal integer "%ld" a Long integer.
# decimal float "%f"
# scientific "%e"

# String to numbers:
my $str_1 = '12.34';
my $var_10 = $str_1 + 0;

