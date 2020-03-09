#https://www.youtube.com/watch?v=YCrYFIxgN_M

class ChargesController < ApplicationController
  def new
    Stripe.api_key = 'sk_test_Iqe0i5H2GrIZc1HxfHUbT73W00wiX7yoNV'
    @checkout_session = Stripe::Checkout::Session.create({
      success_url: 'https://example.com/success',
      cancel_url: 'https://example.com/cancel',
      payment_method_types: ['card'],
      line_items: [
        {
          name: 'T-shirt',
          description: 'Comfortable cotton t-shirt',
          amount: 1500,
          quantity: 1,
          currency: 'inr'
        }]
    })
  end

  def create
  end
end
