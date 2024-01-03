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
  

  erb(:square_results)
end

get("/square_root/new") do
  "Code"
end

get("/random/new") do
  "Code"
end

get("payment/new") do
  "Code"
end
