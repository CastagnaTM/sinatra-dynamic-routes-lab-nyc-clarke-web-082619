require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    name.reverse!
  end

  get '/square/:number' do
    num = params[:number].to_i
   "#{num**2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    str = ''
    number.times do
      str += params[:phrase]
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + '.'
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if op == "add"
      result = num1 + num2
    elsif op == "subtract"
      result = num1 - num2
    elsif op == "multiply"
      result = num1 * num2
    elsif op == "divide"
      result = num1 / num2
    end
    result.to_s
  end

end