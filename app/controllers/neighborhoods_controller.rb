class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
    @location_hash = Gmaps4rails.build_markers(@neighborhoods.where.not(:location_latitude => nil)) do |neighborhood, marker|
      marker.lat neighborhood.location_latitude
      marker.lng neighborhood.location_longitude
      marker.infowindow "<h5><a href='/neighborhoods/#{neighborhood.id}'>#{neighborhood.name}</a></h5><small>#{neighborhood.location_formatted_address}</small>"
    end

    render("neighborhoods/index.html.erb")
  end

  def show
    @venue = Venue.new
    @neighborhood = Neighborhood.find(params[:id])

    render("neighborhoods/show.html.erb")
  end

  def new
    @neighborhood = Neighborhood.new

    render("neighborhoods/new.html.erb")
  end

  def create
    @neighborhood = Neighborhood.new

    @neighborhood.name = params[:name]
    @neighborhood.location = params[:location]

    save_status = @neighborhood.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/neighborhoods/new", "/create_neighborhood"
        redirect_to("/neighborhoods")
      else
        redirect_back(:fallback_location => "/", :notice => "Neighborhood created successfully.")
      end
    else
      render("neighborhoods/new.html.erb")
    end
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])

    render("neighborhoods/edit.html.erb")
  end

  def update
    @neighborhood = Neighborhood.find(params[:id])

    @neighborhood.name = params[:name]
    @neighborhood.location = params[:location]

    save_status = @neighborhood.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/neighborhoods/#{@neighborhood.id}/edit", "/update_neighborhood"
        redirect_to("/neighborhoods/#{@neighborhood.id}", :notice => "Neighborhood updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Neighborhood updated successfully.")
      end
    else
      render("neighborhoods/edit.html.erb")
    end
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])

    @neighborhood.destroy

    if URI(request.referer).path == "/neighborhoods/#{@neighborhood.id}"
      redirect_to("/", :notice => "Neighborhood deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Neighborhood deleted.")
    end
  end
end
