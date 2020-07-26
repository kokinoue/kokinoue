class Api::V1::ContactController < ApplicationController
  def create
    if params[:contact].values.include?('')
      render json: { error: true }, status: :unprocessable_entity
    else
      notifier = Slack::Notifier.new Rails.application.credentials.webhook,
                                     channel: '#kokinoue',
                                     username: 'notifier'
      text = <<~TEXT
        name: #{params[:contact][:name]}
        email: #{params[:contact][:email]}
        title: #{params[:contact][:title]}
        message: #{params[:contact][:message]}
      TEXT
      notifier.ping text
      render json: { success: true }, status: :created
    end
  end
end
