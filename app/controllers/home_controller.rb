# encoding: utf-8
class HomeController < ApplicationController
 
	# 
  # Tela inicial do site
  # 
  # 
  def index
    Teste.new({:name=>"teste"}).save
    render json: {:teste=>Teste.find_one.name}
  end





 
end
