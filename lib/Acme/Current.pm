package Acme::Current;
use strict;

use vars qw($VERSION);

use vars qw($YEAR $MONTH $DAY);

my @now = gmtime;
$YEAR = $now[5] + 1900;
$MONTH = $now[4] + 1;
$DAY = $now[3];

$VERSION = 20380119; # epoch max {grin}

1;

__END__

=head1 NAME

Acme::Current - Determine current year, month, day (GMT)

=head1 SYNOPSIS

  use Acme::Current;
  printf "It's now %04d/%02d/%02d.\n",
    $Acme::Current::YEAR,
    $Acme::Current::MONTH,
    $Acme::Current::DAY;
  if ($Acme::Current::MONTH == 12 and $Acme::Current::DAY == 25) {
    print "Merry Christmas!\n";
  }

=head1 DESCRIPTION

C<Acme::Current> gives you all the power of those myriad of date/time
modules without all that complexity, as long as all you want is the
current date (GMT-based).

=head1 EXPORT

Nothing.  You need to use C<$Acme::Current::YEAR> to get the year,
and so on.

=head1 BUGS

None known.  A bug in previous versions that required frequent
updating of the module seems to have been fixed.

=head1 SEE ALSO

C<Date::Manip>, and a hundred other date and time modules.

See L<http://perltraining.stonehenge.com> for all your Perl training
needs.

=head1 AUTHOR

Randal L. Schwartz, E<lt>merlyn@stonehenge.comE<gt>,
L<http://www.stonehenge.com/merlyn/>.

Based on an idea from a conversation with Joshua Hoblitt.

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Randal L. Schwartz, Stonehenge Consulting Services, Inc.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
