# encoding: utf-8
class OrdersController < ApplicationController
  webtopay :use_webtopay, :confirm_order

  # Buy
  def use_webtopay 
      wp_extras = {
        callbackurl: confirm_order_url,
        cancelurl: confirm_order_url,
        accepturl: confirm_order_url,
        orderid: 20
      }

    @payment = WebToPay::Payment(payment_params.merge(wp_extras))
    redirect_to @payment.url
  end

  # Confirm
  def confirm_order
    # do some ordering stuff here...
    render text: "ok" # response with value "ok" is necessary
  end
  
  # Home
  def home 
  end

end