class Api::V1::ResumesController < ApplicationController

  def index
    @resumes = Unirest.get("").body
    render "index.json.jbuilder"
  end

end
