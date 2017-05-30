# frozen_string_literal: true
module GaugeRubyExample
  module Pages
    class CustomerPage < BasePage
      set_url "#{ADMIN_URL}"

      element :q_busca_no_google, '#lst-ib'
      element :q_username, '#q_username'
      element :q_submit, '#new_q input[name=commit]'
      element :usernameResult, 'table#index_table_customers tbody tr:nth-child(1) td.col-username'

      def procura_google(valor)
         q_busca_no_google.set valor
   end

      def verify_user_listed(username)
        assert_equal usernameResult.text, username
      end
    end
  end
end
