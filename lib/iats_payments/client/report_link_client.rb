# To see the available required/available request parameters for each method, see:
# http://home.iatspayments.com/developer-info/underlying-soap-api
#
# Each parameter is passed as a "message" hash, lower-cased and underscorized (snake-case).

module IatsPayments
  class ReportLinkClient < Client
    ENDPOINT_URL = "https://www.iatspayments.com/NetGate/ReportLink.asmx"

    def self.wsdl_endpoint_url
      ENDPOINT_URL + "?WSDL"
    end

    def get_cc_journal_csv(message, locals={})
      call(:get_cc_journal_csv, { message: message }.merge(locals))
    end

    def get_credit_card_journal_csv(message, locals={})
      call(:get_credit_card_journal_csv, { message: message }.merge(locals))
    end

    def get_credit_card_journal(message, locals={})
      call(:get_credit_card_journal, { message: message }.merge(locals))
    end

    def get_credit_card_reject_csv(message, locals={})
      call(:get_credit_card_reject_csv, { message: message }.merge(locals))
    end

    def get_credit_card_reject(message, locals={})
      call(:get_credit_card_reject, { message: message }.merge(locals))
    end

    def get_ach_journal_csv(message, locals={})
      call(:get_ach_journal_csv, { message: message }.merge(locals))
    end

    def get_acheft_journal_csv(message, locals={})
      call(:get_acheft_journal_csv, { message: message }.merge(locals))
    end

    def get_acheft_journal(message, locals={})
      call(:get_acheft_journal, { message: message }.merge(locals))
    end

    def get_acheft_reject_csv(message, locals={})
      call(:get_acheft_reject_csv, { message: message }.merge(locals))
    end

    def get_acheft_reject(message, locals={})
      call(:get_acheft_reject, { message: message }.merge(locals))
    end

    def get_acheft_return_csv(message, locals={})
      call(:get_acheft_return_csv, { message: message }.merge(locals))
    end

    def get_acheft_return(message, locals={})
      call(:get_acheft_return, { message: message }.merge(locals))
    end

    def get_cc_payment_box_journal_csv(message, locals={})
      call(:get_cc_payment_box_journal_csv, { message: message }.merge(locals))
    end

    def get_cc_payment_box_journal_csvv2(message, locals={})
      call(:get_cc_payment_box_journal_csvv2, { message: message }.merge(locals))
    end

    def get_credit_card_payment_box_journal_csv(message, locals={})
      call(:get_credit_card_payment_box_journal_csv, { message: message }.merge(locals))
    end

    def get_credit_card_payment_box_journal_csvv2(message, locals={})
      call(:get_credit_card_payment_box_journal_csvv2, { message: message }.merge(locals))
    end

    def get_credit_card_payment_box_reject_csv(message, locals={})
      call(:get_credit_card_payment_box_reject_csv, { message: message }.merge(locals))
    end

    def get_credit_card_payment_box_reject_csvv2(message, locals={})
      call(:get_credit_card_payment_box_reject_csvv2, { message: message }.merge(locals))
    end

    def get_acheft_payment_box_journal_csv(message, locals={})
      call(:get_acheft_payment_box_journal_csv, { message: message }.merge(locals))
    end

    def get_acheft_payment_box_journal_csvv2(message, locals={})
      call(:get_acheft_payment_box_journal_csvv2, { message: message }.merge(locals))
    end

    def get_acheft_payment_box_journal_csvv3(message, locals={})
      call(:get_acheft_payment_box_journal_csvv3, { message: message }.merge(locals))
    end

    def get_acheft_payment_box_reject_csvv2(message, locals={})
      call(:get_acheft_payment_box_reject_csvv2, { message: message }.merge(locals))
    end

    def get_acheft_payment_box_reject_csv(message, locals={})
      call(:get_acheft_payment_box_reject_csv, { message: message }.merge(locals))
    end

    def get_acheft_payment_box_return_csvv1(message, locals={})
      call(:get_acheft_payment_box_return_csvv1, { message: message }.merge(locals))
    end

    def get_credit_card_bank_reconciliation_report_csv(message, locals={})
      call(:get_credit_card_bank_reconciliation_report_csv, { message: message }.merge(locals))
    end

    def get_acheft_bank_reconciliation_report_csv(message, locals={})
      call(:get_acheft_bank_reconciliation_report_csv, { message: message }.merge(locals))
    end

  end
end
