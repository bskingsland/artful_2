class VisitsController < ApplicationController
  def index
    @visits = Visit.all

    render("visits/index.html.erb")
  end

  def show
    @visit = Visit.find(params[:id])

    render("visits/show.html.erb")
  end

  def new
    @visit = Visit.new

    render("visits/new.html.erb")
  end

  def create
    @visit = Visit.new

    @visit.space_id = params[:space_id]
    @visit.user_id = params[:user_id]

    save_status = @visit.save

    if save_status == true
      redirect_to("/visits/#{@visit.id}", :notice => "Visit created successfully.")
    else
      render("visits/new.html.erb")
    end
  end

  def edit
    @visit = Visit.find(params[:id])

    render("visits/edit.html.erb")
  end

  def update
    @visit = Visit.find(params[:id])

    @visit.space_id = params[:space_id]
    @visit.user_id = params[:user_id]

    save_status = @visit.save

    if save_status == true
      redirect_to("/visits/#{@visit.id}", :notice => "Visit updated successfully.")
    else
      render("visits/edit.html.erb")
    end
  end

  def destroy
    @visit = Visit.find(params[:id])

    @visit.destroy

    if URI(request.referer).path == "/visits/#{@visit.id}"
      redirect_to("/", :notice => "Visit deleted.")
    else
      redirect_to(:back, :notice => "Visit deleted.")
    end
  end
end
