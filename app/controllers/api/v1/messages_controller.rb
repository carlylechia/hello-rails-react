module Api
  module V1
    class MessagesController < ApplicationController
      def index
        @greetings = Message.all
        @random_message = @greetings.order('RANDOM()').first

        render json: MessageSerializer.new(@random_message)
      end

      # def show
      # end

      def create
        @message = Message.new(message_params)

        if @message.save
          render json: MessageSerializer.new(@message).serialized_json
        else
          render json: { error: message.errors.messages }, status: 422
        end
      end

      private

      def message_params
        params.require(:message).permit(:name, :text)
      end
    end
  end
end
