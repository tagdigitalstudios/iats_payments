# ProcessLink
#
# ProcessLink are our services for processing either credit card or ACH/EFT
# (direct debit) transactions. You can either transact using clear text or
# using the token created using CustomerLink.
#
# Refunds and large batch transactions can also be managed through the
# ProcessLink API.

# To see the available required/available request parameters for each method, see:
# http://home.iatspayments.com/developer-info/underlying-soap-api
#
# Each parameter is passed as a "message" hash, lower-cased and underscorized (snake-case).

module IatsPayments
  class ProcessLinkClient < Client
    ENDPOINT_URL = "https://www.iatspayments.com/NetGate/ProcessLink.asmx"

    def self.wsdl_endpoint_url
      ENDPOINT_URL + "?WSDL"
    end

    def create_customer_code_and_process_credit_card(message, locals = {})
      call(:create_customer_code_and_process_credit_card, { message: message }.merge(locals))
    end

    def process_credit_card_with_customer_code(message, locals = {})
      call(:process_credit_card_with_customer_code, { message: message }.merge(locals))
    end

    def process_credit_card(message, locals = {})
      call(:process_credit_card, { message: message }.merge(locals))
    end

    def create_customer_code_and_process_acheft(message, locals = {})
      call(:create_customer_code_and_process_acheft, { message: message }.merge(locals))
    end

    def process_acheft_with_customer_code(message, locals = {})
      call(:process_acheft_with_customer_code, { message: message }.merge(locals))
    end

    def process_acheft(message, locals = {})
      call(:process_acheft, { message: message }.merge(locals))
    end

    def process_credit_card_refund_with_transaction_id(message, locals = {})
      call(:process_credit_card_refund_with_transaction_id, { message: message }.merge(locals))
    end

    def process_acheft_refund_with_transaction_id(message, locals = {})
      call(:process_acheft_refund_with_transaction_id, { message: message }.merge(locals))
    end

    def process_credit_card_batch(message, locals = {})
      call(:process_credit_card_batch, { message: message }.merge(locals))
    end

    def process_acheft_charge_batch(message, locals = {})
      call(:process_acheft_charge_batch, { message: message }.merge(locals))
    end

    def process_acheft_refund_batch(message, locals = {})
      call(:process_acheft_refund_batch, { message: message }.merge(locals))
    end

    def get_batch_process_result_file(message, locals = {})
      call(:get_batch_process_result_file, { message: message }.merge(locals))
    end
  end
end
