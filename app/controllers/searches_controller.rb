class SearchesController < ApplicationController
  def new
  end

  def create
    render nothing: true
  end

private

def search_params
  params.require(:search).permit(:q, :authenticity_token, :action, :commit)
end

end
