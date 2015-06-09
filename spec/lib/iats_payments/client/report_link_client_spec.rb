require 'spec_helper'

RSpec.describe IatsPayments::ReportLinkClient do
  subject(:report_link_client) { IatsPayments::ReportLinkClient.new(true) }

  it { is_expected.to respond_to :get_cc_journal_csv }
  it { is_expected.to respond_to :get_credit_card_journal_csv }
  it { is_expected.to respond_to :get_credit_card_journal }
  it { is_expected.to respond_to :get_credit_card_reject_csv }
  it { is_expected.to respond_to :get_credit_card_reject }
  it { is_expected.to respond_to :get_ach_journal_csv }
  it { is_expected.to respond_to :get_acheft_journal_csv }
  it { is_expected.to respond_to :get_acheft_journal }
  it { is_expected.to respond_to :get_acheft_reject_csv }
  it { is_expected.to respond_to :get_acheft_reject }
  it { is_expected.to respond_to :get_acheft_return_csv }
  it { is_expected.to respond_to :get_acheft_return }
  it { is_expected.to respond_to :get_cc_payment_box_journal_csv }
  it { is_expected.to respond_to :get_cc_payment_box_journal_csvv2 }
  it { is_expected.to respond_to :get_credit_card_payment_box_journal_csv }
  it { is_expected.to respond_to :get_credit_card_payment_box_journal_csvv2 }
  it { is_expected.to respond_to :get_credit_card_payment_box_reject_csv }
  it { is_expected.to respond_to :get_credit_card_payment_box_reject_csvv2 }
  it { is_expected.to respond_to :get_acheft_payment_box_journal_csv }
  it { is_expected.to respond_to :get_acheft_payment_box_journal_csvv2 }
  it { is_expected.to respond_to :get_acheft_payment_box_journal_csvv3 }
  it { is_expected.to respond_to :get_acheft_payment_box_reject_csvv2 }
  it { is_expected.to respond_to :get_acheft_payment_box_reject_csv }
  it { is_expected.to respond_to :get_acheft_payment_box_return_csvv1 }
  it { is_expected.to respond_to :get_credit_card_bank_reconciliation_report_csv }
  it { is_expected.to respond_to :get_acheft_bank_reconciliation_report_csv }
end
