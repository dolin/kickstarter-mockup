class ContributionsController < ApplicationController

  def index
    @contributions = Contribution.all
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contributions }
    end
  end


  def new
    @contribution = Contribution.new
    @projects = Project.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contribution }
    end
  end

  def create
    @contribution = Contribution.new
    #hard coding user in for contribution since I have not built current_user method
    @contribution.user_id = 1
    @contribution.project_id = params[:contribution][:project].to_i
    @contribution.amount = params[:contribution][:amount]

    respond_to do |format|
      if @contribution.save
        format.html { redirect_to projects_url, notice: 'contribution was successfully created.' }
        format.json { render json: @contribution, status: :created, location: @contribution }
      else
        format.html { render action: "new" }
        format.json { render json: @contribution.errors, status: :unprocessable_entity }
      end
    end
  end

end