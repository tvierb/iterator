#!/usr/bin/perl

# iterator

use strict;
use warnings;
use Data::Dumper;
use Getopt::Long;
$|=1;

GetOptions(
	'name=s'     => \my $name,
	'weight|w=s' => \my @weights,
	'length=s'   => \my $len,
	'max=s'      => \my $maxvalue,
	'offset=s'   => \my $offset,
);

die("I need values") unless scalar @weights;
$offset //= 0;
$len //= 4;
$maxvalue //= 50;
$name //= "irjenswas";

my $num_weights = scalar @weights;

# Namen und Werte der weights aufteilen und chain initialisieren:
my $chain = [];
my $names = [];
my $values = [];
for (my $i = 0; $i < $num_weights; $i++)
{
	my ($n, $v) = split(/:/, $weights[ $i ]);
	die("broken --weight " . $weights[ $i ] ) unless defined $v;
	push( @$chain, -1 );
	push( @$names, $n );
	push( @$values, $v );
}

if ($len > 1) # nimm auch negative Werte auf:
{
	for (my $i = 0; $i < $num_weights; $i++)
	{
		push( @$names,    $names->[ $i ] );
		push( @$values, - $values->[ $i ] );
	}
}
my $num_values = scalar @$values;
print "weights: " . Dumper( \@weights );

my $len_chain = scalar @$chain;

print "Names : " . Dumper( $names );
print "Values: " . Dumper( $values );
print "chain : " . Dumper( $chain );

#

while(1)
{
	my $glied = 0;
	my $uebertrag = 0;
	do {
		$uebertrag = 0;
		$chain->[ $glied ]++; # darin ist ein Pointer/Index
		if ($chain->[ $glied ] >= $num_values) # > max_index
		{
			$chain->[ $glied ] = 0;
			$glied++;
			if ($glied >= $len_chain)
			{
				die("Uebertrag des Todes");
			}
			$uebertrag = 1;
		}
	} while $uebertrag;
	print join(" ", @$chain) . "\n";
}

