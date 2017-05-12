class ResumesController < ApplicationController

  def index
    
    render "index.html.erb"
  end 

  def show
    @resume_id = params[:id]
    render "show.html.erb"
  end 

end
