require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:add_form)
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f

  @sum = @first_num.to_f + @second_num.to_f
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @second_num.to_f - @first_num.to_f
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num.to_f ** @second_num.to_f

  erb(:mult_result)
end

get("/divide") do

  erb(:div_form)
end

get("/wizard_divide") do

  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num.to_f / @second_num.to_f

  erb(:div_result)
end
