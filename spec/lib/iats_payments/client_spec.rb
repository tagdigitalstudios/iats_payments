require 'spec_helper'

RSpec.describe IatsPayments::Client do
  subject(:iats_client) { IatsPayments::Client.new(true) }
  let(:soap_client) { double("soap_client", :call => response, :operations => [:bar, :baz]) }
  let(:response) { double("response", body: { foo_v1_response: { foo_v1_result: { iatsresponse: { foo: 'bar' } } } } )}
  before do
    allow(iats_client).to receive(:soap_client) { soap_client }
  end

  describe "#call" do
    subject { iats_client.call(:foo) }
    specify { expect(iats_client).to receive(:soap_client) { soap_client }; subject }
    it { is_expected.to eql({ foo: 'bar' }) }
  end

  describe "#methods" do
    subject(:methods) { iats_client.methods }
    specify { expect(soap_client).to receive(:operations) { [:bar, :baz] }; methods }
  end

  describe "#agent_code" do
    subject(:agent_code) { iats_client.agent_code }
    context "when in test_mode" do
      let(:iats_client) { IatsPayments::Client.new(true) }
      it { is_expected.to eql 'TEST88' }
    end
    context "when not in test_mode" do
      let(:iats_client) { IatsPayments::Client.new(false) }
      it { is_expected.to be_nil }
      it "should return nil by default" do
        expect(iats_client.agent_code).to be_nil
      end
      it "should return whatever it is set to" do
        iats_client.agent_code = 'FOO'
        expect(iats_client.agent_code).to eql 'FOO'
      end
    end
  end

  describe "#password" do
    let(:iats_client) { IatsPayments::Client.new(false) }
    subject(:password) { iats_client.password }
    context "when in test_mode" do
      let(:iats_client) { IatsPayments::Client.new(true) }
      it { is_expected.to eql 'TEST88' }
    end
    context "when not in test_mode" do
      let(:iats_client) { IatsPayments::Client.new(false) }
      it { is_expected.to be_nil }
      it "iats_client return whatever it is set to" do
        iats_client.password = 'FOO'
        expect(password).to eql 'FOO'
      end
    end
  end

end
