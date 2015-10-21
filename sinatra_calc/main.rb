require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/' do
  erb :home
end

get '/about_us' do
  erb :about_us
end

get '/faqs' do
  erb :faqs
end

get'/death_clock' do
  @today  = Date.today
  @result = @today.day + 3.day

  erb :death_clock
end


get '/squareroot' do
  @first_number = params[:first_number].to_f

  @result = Math.sqrt(@first_number)


  erb :squareroot
end



get '/age' do
  if params[:dob]
    @today = Date.today
    @dob = Date.parse(params[:dob])

    #@result = @today.year - @dob.year

    @result = case
    when @dob > @today
      "That date is in the future, so not much use for calculating age from..."
    else
      age = @today.year - @dob.year - ((@today.month > @dob.month || (@today.month == @dob.month && @today.day >= @dob.day)) ? 0 : 1)

      case age
      when 0
        "Not even one-year-old yet"
      when 1..99
        "If that was your birthday, you would be #{age} year#{'s' if age > 1} old now."
      else
        "If that was your birthday, you would be #{age} years old now. And looking pretty good on it!"
      end
    end
  end
  erb :age
end


get '/basic_calculator' do
  @first_number = params[:first_number].to_f
  @second_number = params[:second_number].to_f
  @operator = params[:operator]

  @result = case @operator
  when '+'
    @first_number + @second_number
  when '-'
    @first_number - @second_number
  when '*'
    @first_number * @second_number
  when '/'
    @first_number / @second_number
  when 'power'
    @first_number ** @second_number
  end

  erb :result
end