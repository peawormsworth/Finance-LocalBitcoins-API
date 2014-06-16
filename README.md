Finance-LocalBitcoins-API
====================

LocalBitcoins public and private API interface

WARNING: THIS CODE IS IN 'PRE-BETA'. DO NOT USE THIS CODE FOR ANYTHING BUT TESTING!

Also available on MetaCPAN: 

     https://metacpan.org/pod/Finance::LocalBitcoins::API

Install using CPAN:

     $ perl -MCPAN -e 'install Finance::LocalBitcoins::API'

Sample Usage:

    my $api  = Finance::LocalBitcoins::API->new(token => $key, secret => $secret, client_id => $client_id);
    my $order = $api->order(currencypair => 'USDCAD', mode => 'bid', amount => '4.5', price => '1000.00');

    if ($order) {
        printf "The LocalBitcoins invoice ID is %s. You can see it here: %s\n", @{$order}{qw(id url)};
    }
    else {
        printf "An error occurred: %s\n", $api->error;
    }


COPYRIGHT AND LICENSE

    Copyright (C) 2014 by Jeff Anderson

see LICENSE for additional licensing information.

