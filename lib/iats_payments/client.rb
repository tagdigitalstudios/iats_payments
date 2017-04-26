module IatsPayments
  class Client
    attr_accessor :agent_code, :password, :test_mode

    def self.wsdl_endpoint_url
    end

    def initialize(test_mode=false)
      self.test_mode = test_mode
    end

    def agent_code
      return 'TEST88' if test_mode == true
      @agent_code
    end

    def call(operation_name, locals = {}, &block)
      locals[:message][:agent_code] = agent_code if locals[:message] && locals[:message][:agent_code].blank?
      locals[:message][:password] = password if locals[:message] && locals[:message][:password].blank?
      response = soap_client.call(operation_name, locals, &block)
      if response.body["#{operation_name}v1_response".to_sym].present?
        response.body["#{operation_name}v1_response".to_sym]["#{operation_name}v1_result".to_sym][:iatsresponse]
      else
        response.body["#{operation_name}_v1_response".to_sym]["#{operation_name}_v1_result".to_sym][:iatsresponse]
      end
    end

    def methods
      soap_client.operations
    end

    def password
      return 'TEST88' if test_mode == true
      @password
    end

    private
      def soap_client
        @soap_client ||= Savon.client(wsdl: self.class.wsdl_endpoint_url)
      end
  end
end
