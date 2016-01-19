# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 28;
BEGIN { use_ok('Lingua::PT::Inflect') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my %words = (
  '' => '',

  'mesa' => 'mesas',
  'pai' => 'pais',

  'flor' => 'flores',
  'l�quene' => 'l�quenes',
  'pa�s' => 'pa�ses',
  'ra�z' => 'ra�zes',

  'm�o' => 'm�os',
  'c�o' => 'c�es',
  'le�o' => 'le�es',

  'homem' => 'homens',
  'tom' => 'tons',

  'casal' => 'casais',
  'boi' => 'bois',
  'paul' => 'pauis',

  'anel' => 'an�is',
  'farol' => 'far�is',

  'funil' => 'funis',
  'barril' => 'barris',

  'r�ptil' => 'r�pteis',
  'f�ssil' => 'f�sseis',

  'gas' => 'gases',
  'franc�s' => 'franceses',

  'l�pis' => 'l�pis',
  'pires' => 'pires',
  'p�rex' => 'p�rex',
  'inox' => 'inox',
);

for my $word (keys %words) {
  my $object = Lingua::PT::Inflect->new("$word");
  is($object->sing2plural,$words{$word});
}
