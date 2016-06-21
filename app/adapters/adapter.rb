require 'rest-client'
require 'json'
require 'twilio-ruby'

module Adapter

  class TwilioWrapper
    def initialize(user)
      @account_sid = ENV['twilio_sid']
      @auth_token = ENV['twilio_token']
      @user = user
    end

    def client
      Twilio::REST::Client.new @account_sid, @auth_token
    end

    def first_message
      client.account.messages.create(
      from: ENV['twilio_number'],
      to: @user.phone,
      body: body
      )
    end

    private
    def body
      <<-BODY
      How are you feeling, #{@user.name}? Select a condition for which to log your current pain level: #{diagnosis_body}
      BODY
    end

    def diagnosis_body
      @user.diagnoses.map.with_index do |diagnosis, index|
        "#{index + 1}: #{diagnosis.diagnosis}"
      end

    end

  end
end
