module Telephony
  class Base < ActiveRecord::Base
    establish_connection "telephony_#{Rails.env}".to_sym

    self.abstract_class = true
  end
end
