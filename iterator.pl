#!/usr/bin/perl

# iterator
# ./iterator.pl -w IkeaTL:8.73 -w LochTL:9 -w MiniTL:6.1 -w IkeaEL:25 -w LochEL:23.25

use strict;
use warnings;
use Data::Dumper;
use Getopt::Long;
use Math::Round;

$|=1;

GetOptions(
	'name=s'     => \my $name,
	'weight|w=s' => \my @weights,
	'length=s'   => \my $len,
	'max=s'      => \my $maxvalue,
	'offset=s'   => \my $offset,
	'precision=s'=> \my $precision,
	'search=s'   => \my $search_value, # search best method to get this weight
	'verbose'    => \my $is_verbose,
);

die("I need values") unless scalar @weights;
$offset //= 0;
$len //= 4;
$maxvalue //= 50;
$name //= "irjenswas";
$precision //= 2;
$precision = 10**$precision;

my $num_weights = scalar @weights;

# Namen und Werte der weights aufteilen und chain initialisieren:
my $names = [];
my $values = [];
for (my $i = 0; $i < $num_weights; $i++)
{
	my ($n, $v) = split(/:/, $weights[ $i ]);
	die("broken --weight " . $weights[ $i ] ) unless defined $v;
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

# init the chain (list of indices on weights):
my $chain = [];
for (my $i = 1; $i <= $len; $i++)
{
	push( @$chain, -1 );
}
my $len_chain = scalar @$chain;

my $num_values = scalar @$values;

if ($is_verbose)
{
	print "weights: " . Dumper( \@weights );
	print "Names : " . Dumper( $names );
	print "Values: " . Dumper( $values );
	print "chain : " . Dumper( $chain );
}

#
my %results = ();
while(1)
{
	my $glied = 0;
	my $uebertrag = 0;
	# Generiere neuen Zustand der Kette:
	do {
		$uebertrag = 0;
		$chain->[ $glied ]++; # darin ist ein Pointer/Index
		if ($chain->[ $glied ] >= $num_values) # > max_index
		{
			$chain->[ $glied ] = 0;
			$glied++;
			if ($glied >= $len_chain)
			{
				print "Fallen beyond the numbers!\n" if $is_verbose;
				goto RESULTS
			}
			$uebertrag = 1;
		}
	} while $uebertrag;

	# Berechne Gesamtwert der Kette deren Laenge isch daraus ergibt, ob da -1 auftritt oder das Ende erreicht wird):
	my $sum = 0;
	my @calculation = (); # oder als array?
	my $sum_was_below_zero = 0;
	for (my $column = 0; $column < $len_chain; $column++)
	{
		last if $chain->[ $column ] == -1;
		$sum += $values->[ $chain->[ $column ] ];
		$sum_was_below_zero = 1 if $sum < 0;
		my $factor = $values->[ $chain->[ $column ] ] > 0 ? "+" : "-";
		push( @calculation, $factor );
		push( @calculation, $names->[ $chain->[ $column ] ] );
	}
	# print $sum . " = " . join(" ", @calculation) . "\n";
	if (! $sum_was_below_zero)
	{
		$sum = round( $precision * $sum ) / $precision;
		if (($sum > 0) && (! defined $results{ $sum }))
		{
			shift @calculation;
			$results{ $sum } = join( " ", @calculation );
		}
	}
	# print join(" ", @$chain) . "\n";
}

RESULTS:

my $best_diff = 10*10;
my $best_value = 0;
my $best_calculation = "none";
print "Kleingewichte von $name abmessen:\n";

foreach my $v (sort { $a <=> $b } keys %results)
{
	unless (defined( $search_value ))
	{
		print "$v = " . $results{$v} . "\n";
		next;
	}

	if ( abs($v - $search_value) < $best_diff )
	{
		$best_diff = abs($v - $search_value);
		$best_value = $v;
		$best_calculation = $results{$v};
	}
}

if (defined $search_value)
{
	print "Bester Treffer fuer Suche nach $search_value mit max. $len Behaeltern:\n\n";
	print "$best_value = $best_calculation\n"; }

