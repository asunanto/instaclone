class ChargesController < ApplicationController
    def new
    end
    def create
        @movie = Movie.find(session[:movie_id])
        @amount = @movie.price_in_cents
        
        customer = Stripe::Customer.create(
            :email => params[:stripeEmail],
            :source => params[:stripeToken]
        )

        charge = Stripe::Charge.create(
            :customer => customer.id,
            :amount => @amount,
            :description => @movie.title,
            :currency => 'aud'
        )

        flash[:notice] = "Thanks for the payment of A$#{@movie.price}"
        redirect_to movies_path

        rescue Stripe::CardError => e
            flash[:error] = e.message
            redirect_to new_charge_path

    end
end
