# frozen_string_literal: true
require_relative 'spec_helper.rb'

step 'On the customer page' do
  GaugeRubyExample::Pages::CustomerPage.visit
end

step 'Search for customer camelo' do
  customer_page.procura_google "camelo"
  sleep(10)
  puts 'Search for customer camelo'
end

step 'The customer camelo is listed' do
    puts 'The customer camelo is listed'
end
