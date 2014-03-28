# encoding: utf-8
class OrdersController < ApplicationController
  	#before_filter :authenticate_user!, :except => [:privacy, :terms]
  webtopay :confirm_order, :use_webtopay

  def use_webtopay 
      wp_extras = {
        callbackurl: 'http://stilius.leshopo.lt',
        cancelurl: 'http://stilius.leshopo.lt',
        accepturl: 'http://stilius.leshopo.lt',
        orderid: 20
      }

    @payment = WebToPay::Payment(payment_params.merge(wp_extras))
    redirect_to @payment.url
  end
end