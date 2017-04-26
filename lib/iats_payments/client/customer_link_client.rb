# To see the available required/available request parameters for each method, see:
# http://home.iatspayments.com/developer-info/underlying-soap-api
#
# Each parameter is passed as a "message" hash, lower-cased and underscorized (snake-case).

module IatsPayments
  class CustomerLinkClient < Client
    ENDPOINT_URL = "https://www.iatspayments.com/NetGate/CustomerLink.asmx"

    def self.wsdl_endpoint_url
      ENDPOINT_URL + "?WSDL"
    end

    # |------------------------------------------------------------------------------------------|
    # | Parameter              | Notes/Options                                     | Char. Limit |
    # | ==========================================================================================
    # | agentCode              |                                                   | 10          |
    # | password               |                                                   | 10          |
    # | customerIPAddress      | This is the IP address of the donor’s computer.   | N/A         |
    # |                        | Please send to fully utilise the Fraud tools      |             |
    # |                        | available from iATS. IPv4 only.                   |             |
    # | customerCode           | You can provide the Token (Customer code); if     | 40          |
    # |                        | none is present, the iATS system will             |             |
    # |                        | automatically assign one.                         |             |
    # | firstName              | Optional but highly recommended                   | 100         |
    # | lastName               | Optional but highly recommended                   | 100         |
    # | companyName            |                                                   | 100         |
    # | address                | Optional but highly recommended                   | 100         |
    # | city                   | Optional but highly recommended                   | 40          |
    # | state                  | State or province (NA only). Optional but         | 40          |
    # |                        | highly recommended                                |             |
    # | zipCode                | Optional but highly recommended                   | 40          |
    # | phone                  |                                                   | 40          |
    # | fax                    |                                                   | 40          |
    # | alternatePhone         |Mobile                                             | 40          |
    # | email                  |                                                   | 100         |
    # | comment                |                                                   | 100         |
    # | recurring              | Boolean: true (1)/false (0).                      | N/A         |
    # |                        | Required field – Use True if iATS will hold       |             |
    # |                        | schedule, False if you will.                      |             |
    # | amount                 | Prevent the use of commas (,) within the dollar   | N/A         |
    # |                        | amount fields if possible. iATS reads a comma     |             |
    # |                        | as a period in this field to compensate for       |             |
    # |                        | different countries use of the comma within       |             |
    # |                        | currency. For example: $1,000                     |             |
    # | beginDate              | Value=”dateTime”; ISO 8601 format.                | N/A         |
    # |                        | e.g. 2008-10-31T15:07:38.6875000                  |             |
    # |                        | ("yyyy-MM-dd'T'HH:mm:ss.fffffffZ")                |             |
    # |                        | Required, but if recurring status is set to false,|             |
    # |                        | use any generic values. iATS will override with   |             |
    # |                        | default placeholder data.                         |             |
    # | endDate                | Value=”dateTime”; ISO 8601 format.                | N/A         |
    # |                        | e.g. 2008-10-31T15:07:38.6875000                  |             |
    # |                        | ("yyyy-MM-dd'T'HH:mm:ss.fffffffZ")                |             |
    # |                        | Required, but if recurring status is set to false,|             |
    # |                        | use any generic values. iATS will override with   |             |
    # |                        | default placeholder data.                         |             |
    # | scheduleType           | Options: Weekly, Monthly, Quarterly, Annually     |  N/A        |
    # | scheduleDate           | Options: Monthly: 1~28,29,30 or 31;               |  N/A        |
    # |                        | Weekly: 1~7 (where Sunday = 1 and Saturday = 7)   |             |
    # |                        | Quarterly or Annually: empty string               |             |
    # | creditCardCustomerName | Donor’s name on credit card. If left empty, we    | 30          |
    # |                        | will use firstName + lastName, and cut at 30      |             |
    # |                        | characters.                                       |             |
    # | creditCardNum          |                                                   | 32 digits   |
    # | creditCardExpiry       | “MM/YY”                                           | 10          |
    # | mop                    | NA: VISA, MC, AMX, DSC                            | N/A         |
    # |                        | UK: VISA, MC, AMX, MAESTR                         |             |
    # | title                  |                                                   |             |
    # | country                |                                                   |             |
    # | item1                  |                                                   |             |
    # | item2                  |                                                   |             |
    # | item3                  |                                                   |             |
    # | item4                  |                                                   |             |
    # | item5                  |                                                   |             |
    # | item6                  |                                                   |             |
    # |------------------------|---------------------------------------------------|-------------|
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
