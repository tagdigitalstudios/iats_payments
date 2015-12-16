# IatsPayments

This is a basic wrapper around the IATS Payments SOAP services, using the Savon gem as a SOAP client.

## Installation

Add this line to your application's Gemfile:

    gem 'iats_payments'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iats_payments

## Usage

For example, to process a credit card:

```
message = {
  credit_card_num: '4111111111111111',
  credit_card_expiry: '01/25',
  cvv2: '797',
  mop: 'VISA', # VISA, MC, AMX, DSC
  first_name: 'Test',
  last_name: 'User',
  address: '63 Hillard Trail',
  city: 'Toronto',
  state: 'ON',
  zip_code: 'L1E1Y5',
  total: '1'
}
process_link_client = IatsPayments::ProcessLinkClient.new
process_link_client.agent_code = "TEST88"
process_link_client.password = "TEST88"
process_link_client.process_credit_card(message)
```

See the customer_link_client, process_link_client, and report_link_client for available methods. To see the available required/available request parameters for each method, see: http://home.iatspayments.com/developers/underlying-soap-api

Each parameter is passed as a "message" hash, lower-cased and underscorized (snake-case). Savon takes care of matching up the parameters and setting them to the right case. If you need to force a specific parameter, just pass it as a string-indexed hash item rather than as a symbol.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/iats_payments/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
