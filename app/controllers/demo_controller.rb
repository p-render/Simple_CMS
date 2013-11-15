class DemoController < ApplicationController
  def index
    render('index')
     #redirect_to(:action => 'other_hello')
  end
  
  def hello
   #render('hello')
   @array = [1,2,3,4,5]
   @id = params[:id].to_i
   @page = params[:page].to_i
   # redirect_to("http://www.google.com")
  end
  
  def other_hello
    render(:text => 'Hello Everyone')
  end
end
