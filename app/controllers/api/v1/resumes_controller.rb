class Api::V1::ResumesController < ApplicationController

  def index
    @resumes = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/resumes").body
    render "index.json.jbuilder"
  end

  def show
    resume_id = params[:id]
    @resume = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/resumes/#{resume_id}").body
    render "show.json.jbuilder"
  end

end
