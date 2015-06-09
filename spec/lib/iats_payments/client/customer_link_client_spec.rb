require 'spec_helper'

RSpec.describe IatsPayments::CustomerLinkClient do
  subject(:customer_link_client) { IatsPayments::CustomerLinkClient.new(true) }

  it { is_expected.to respond_to :create_credit_card_customer_code }
  it { is_expected.to respond_to :create_acheft_customer_code }
  it { is_expected.to respond_to :update_credit_card_customer_code }
  it { is_expected.to respond_to :update_acheft_customer_code }
  it { is_expected.to respond_to :delete_customer_code }
  it { is_expected.to respond_to :get_customer_code_detail }
end
