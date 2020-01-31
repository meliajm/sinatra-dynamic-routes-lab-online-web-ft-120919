require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @rev_name = @name.reverse 
    "#{@rev_name}"
  end

  get "/square/:number" do 
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
    # "#{@phrase} * #{@number}"
    # @number.times { puts  "#{@phrase}"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @string = params.values.join(', ').tr(',', '') #params[:word1]
    "#{@string}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i 
    @number2 = params[:number2].to_i

    if @operation == 'add'
      "#{@number1 + @number2}"
    elsif @operation == 'subtract'
      "#{@number1 - @number2}"
    elsif @operation == 'multiply'
      "#{@number1 * @number2}"
    elsif @operation == 'divide'
      "#{@number1 / @number2}"
    end
  end



end