package Finance::LocalBitcoins::API::Request::Paid;
use base qw(Finance::LocalBitcoins::API::Request);
use strict;

use constant URL          => 'https://localbitcoins.com/api/contact_mark_as_paid/%s/';
use constant ATTRIBUTES   => qw(contact_id);

sub contact_id       { my $self = shift; $self->get_set(@_) }
sub url              { sprintf URL, shift->contact_id       }
sub is_ready_to_send { defined shift->contact_id            }
sub attributes       { ATTRIBUTES                           }

1;

__END__

