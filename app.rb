require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <form action='/square/results'>
    <label for='user_number'>Enter a number</label>
    <input id='user_number' name='number' placeholder='What number do you want to take the square of?'>
    <button>Calculate square</button>
  </form>

  "
end

get("/square/new") do
  "
  <form action='/square/results'>
    <label for='user_number'>Enter a number</label>
    <input id='user_number' name='number' placeholder='What number do you want to take the square of?'>
    <button>Calculate square</button>
  </form>

  "
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
