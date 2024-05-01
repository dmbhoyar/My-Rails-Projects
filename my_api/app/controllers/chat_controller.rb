require "#{Rails.root}/app/services/chat_gpt_service.rb"

class ChatController < ApplicationController
    def generate_response
      prompt = params[:prompt]
      response = ChatGptService.generate_response(prompt)
      render json: { response: response }
    end
  end
  