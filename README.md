Finance-LocalBitcoins-API
====================

LocalBitcoins public and private API interface

WARNING: THIS CODE IS IN 'PRE-BETA'. DO NOT USE THIS CODE FOR ANYTHING BUT TESTING!

Also available on MetaCPAN: 

     https://metacpan.org/pod/Finance::LocalBitcoins::API

Development and archived versions:

     https://github.com/peawormsworth/Finance-LocalBitcoins-API

Sample Usage:

    my $api = Finance::LocalBitcoins::API->new(token => $token);
    my $api->$method(%params);

where:
    $token is your Oauth token
    $method is an LBC api call (contacts(), me(), message())
    %params is a list of required and optional parameter key/value pairs as described in the LBC API docs.

COPYRIGHT AND LICENSE

    Copyright (C) 2014 by Jeff Anderson

see LICENSE for additional licensing information.

