class PaymentController < ApplicationController
  def payment
      KannelRails.send_message("+9779849026704", "Dear customer your payment has successfully done. Thanks!")
  end
end
