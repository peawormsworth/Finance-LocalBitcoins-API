package Finance::LocalBitcoins::API::Request::Pagination;
use base qw(Finance::LocalBitcoins::API::Request);
use strict;

use constant REQUEST_TYPE => 'GET';
use constant IS_PRIVATE   => 1;
use constant READY        => 1;

sub url              { my $self = shift; $self->get_set(@_)  }
sub request_content  { my $self = shift; $self->get_set(@_) }
sub request_type     { REQUEST_TYPE }
sub is_private       { IS_PRIVATE   }
sub is_ready_to_send { defined shift->url }

sub init {
    my $self = shift;
    my %args = @_;
    if (exists $args{url}) {
        my $uri = URI->new($args{url});
        my $url = URI->new(sprintf '%s://%s%s', $uri->scheme, $uri->host, $uri->path);
        #warn "Setting URL to: " . $url->as_string;
        $self->url($url->as_string);
        #warn Data::Dumper->Dump([{$uri->query_form}],['query_content']);
        # sort the query form...
        $self->request_content({$uri->query_form});
        #my %query_form = $uri->query_form;
        #my @query_form = map(($_ => $query_form{$_}), sort keys %query_form);
        #warn Data::Dumper->Dump([\@query_form],['sorted query form']);
        #$self->request_content({@query_form});
    }
    return $self->SUPER::init(%args);
}


1;

__END__

