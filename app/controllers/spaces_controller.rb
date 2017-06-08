class SpacesController < ApplicationController
  def index
    @spaces = Space.all

    render("spaces/index.html.erb")
  end

  def show
    @space = Space.find(params[:id])

    render("spaces/show.html.erb")
  end

  def new
    @space = Space.new

    render("spaces/new.html.erb")
  end

  def create
    @space = Space.new

    @space.name = params[:name]
    @space.classification = params[:classification]
    @space.url = params[:url]
    @space.photograph = params[:photograph]
    @space.city = params[:city]
    @space.neighborhood = params[:neighborhood]
    @space.visit_status = params[:visit_status]

    save_status = @space.save

    if save_status == true
      redirect_to("/spaces/#{@space.id}", :notice => "Space created successfully.")
    else
      render("spaces/new.html.erb")
    end
  end

  def edit
    @space = Space.find(params[:id])

    render("spaces/edit.html.erb")
  end

  def update
    @space = Space.find(params[:id])

    @space.name = params[:name]
    @space.classification = params[:classification]
    @space.url = params[:url]
    @space.photograph = params[:photograph]
    @space.city = params[:city]
    @space.neighborhood = params[:neighborhood]
    @space.visit_status = params[:visit_status]

    save_status = @space.save

    if save_status == true
      redirect_to("/spaces/#{@space.id}", :notice => "Space updated successfully.")
    else
      render("spaces/edit.html.erb")
    end
  end

  def destroy
    @space = Space.find(params[:id])

    @space.destroy

    if URI(request.referer).path == "/spaces/#{@space.id}"
      redirect_to("/", :notice => "Space deleted.")
    else
      redirect_to(:back, :notice => "Space deleted.")
    end
  end
end
