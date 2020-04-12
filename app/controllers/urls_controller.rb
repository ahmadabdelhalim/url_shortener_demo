class UrlsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @url = UrlShortener::ShortenedUrl.new
  end

  def show
    @url = UrlShortener::ShortenedUrl.find(params[:id])
  end

  def create
    @url = UrlShortener::ShortenedUrl.new(shortened_url_params)
    if @url.save
      redirect_to url_path(@url)
    else
      render 'new'
    end
  end

  def shortened_link_redirect
    @url = UrlShortener::ShortenedUrl.find_link(shortened_link: params[:shortened_link])
    unless @url&.full_link.nil?
      redirect_to @url.full_link
    else
      redirect_to root_path
    end
  end

  private

  def shortened_url_params
    params.require(:shortened_url).permit(:full_link)
  end 
end
