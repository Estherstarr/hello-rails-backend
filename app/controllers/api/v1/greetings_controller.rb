module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        greeting = Greeting.pluck(:salutations).sample
        render json: greeting, status: :ok
      end
    end
  end
end
