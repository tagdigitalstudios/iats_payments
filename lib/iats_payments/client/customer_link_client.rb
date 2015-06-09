# To see the available required/available request parameters for each method, see:
# http://home.iatspayments.com/developers/underlying-soap-api
#
# Each parameter is passed as a "message" hash, lower-cased and underscorized (snake-case).

module IatsPayments
  class CustomerLinkClient < Client
    ENDPOINT_URL = "https://www.iatspayments.com/NetGate/CustomerLink.asmx"

    def self.wsdl_endpoint_url
      ENDPOINT_URL + "?WSDL"
    end

    def create_credit_card_customer_code(message, locals={})
      call(:create_credit_card_customer_code, { message: message }.merge(locals))
    end

    def create_acheft_customer_code(message, locals={})
      call(:create_acheft_customer_code, { message: message }.merge(locals))
    end

    def update_credit_card_customer_code(message, locals={})
      call(:update_credit_card_customer_code, { message: message }.merge(locals))
    end

    def update_acheft_customer_code(message, locals={})
      call(:update_acheft_customer_code, { message: message }.merge(locals))
    end

    def delete_customer_code(message, locals={})
      call(:delete_customer_code, { message: message }.merge(locals))
    end

    def get_customer_code_detail(message, locals={})
      call(:get_customer_code_detail, { message: message }.merge(locals))
    end
  end
end
