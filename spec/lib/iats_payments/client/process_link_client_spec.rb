require 'spec_helper'

RSpec.describe IatsPayments::ProcessLinkClient do
  subject(:process_link_client) { IatsPayments::ProcessLinkClient.new(true) }

  it { is_expected.to respond_to :create_customer_code_and_process_credit_card }
  it { is_expected.to respond_to :create_customer_code_and_process_credit_card }
  it { is_expected.to respond_to :process_credit_card_with_customer_code }
  it { is_expected.to respond_to :process_credit_card }
  it { is_expected.to respond_to :create_customer_code_and_process_acheft }
  it { is_expected.to respond_to :process_acheft_with_customer_code }
  it { is_expected.to respond_to :process_acheft }
  it { is_expected.to respond_to :process_credit_card_refund_with_transaction_id }
  it { is_expected.to respond_to :process_acheft_refund_with_transaction_id }
  it { is_expected.to respond_to :process_credit_card_batch }
  it { is_expected.to respond_to :process_acheft_charge_batch }
  it { is_expected.to respond_to :process_acheft_refund_batch }
  it { is_expected.to respond_to :get_batch_process_result_file }end
