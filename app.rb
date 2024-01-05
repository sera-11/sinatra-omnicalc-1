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

get("/random/new") do
  "Code"
end

get("/payment/new") do
  "Code"
end
