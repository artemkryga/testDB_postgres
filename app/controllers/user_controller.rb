class UserController < ApplicationController

  # skip_before_action :verify_authenticity_token
  require 'faker'

  def index
    render json: User.all.limit(100)
  end

  def create

    users = 10000.times.map { |t|
      {
          username: Faker::Name.name_with_middle,
          password: Faker::Name.last_name,
          email: Faker::Address.mail_box,
          address: Faker::Address.street_name,
          phone: Faker::PhoneNumber.cell_phone,
          hobby: Faker::Job.position,
          gender: Faker::Job.title,
          father: Faker::Name.name_with_middle,
          mother: Faker::Name.name_with_middle,
          description: Faker::Color.color_name,
          coins: Faker::Number.number(digits: 5),
          rating: Faker::Number.number(digits: 4),
          active: Faker::Boolean.boolean,

      }

    }


    puts "save to DB"

    25.times do
      User.insert_all(users)
    end


    render json: {time_result: 'result'}

  end

  def show
    # User.find(params[:id])
    render json: User.find(params[:id])
  end


end