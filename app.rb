require "active_support/all"
require "sinatra"
require "sinatra/reloader"


get("/") do
  "
  

  "
  erb(:square_new)

end

get("/square/new") do
  "

  "
  erb(:square_new)
end

get("/square/results") do
  @num = params.fetch("number").to_i
  @results = @num * @num
  @results = @results.to_f
  

  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @num = params.fetch("number").to_i
  @results = Math.sqrt(@num)
  @results = @results.to_f

  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @rate = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @principal = params.fetch("user_pv").to_f

  @periods = @years * 12

  def calculate_monthly_payment(principal, rate, periods)
    monthly_rate = rate / 12.0 / 100.0 # Convert annual rate to monthly and percentage to decimal
    numerator = principal * monthly_rate
    denominator = 1 - (1 + monthly_rate) ** -periods
    monthly_payment = numerator / denominator
    monthly_payment.round(2) # rounding to two decimal places
  end

  @payment =calculate_monthly_payment(@principal, @rate, @periods)

  @formatted_apr = format("%.4f%%", @rate)
  @formatted_principal = format("$%.2f", @principal)
  @formatted_payment = format("$%.2f", @payment)





  erb(:payment_results)
end

get("/random/new") do
  "Code"
end
