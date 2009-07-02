class ResourcesController < ApplicationController
  before_filter :load_project, :only => [:create, :destroy]
  
  def create
    @resource = @project.resources.build(params[:resource])
    if @resource.save
      flash[:notice] = "Successfully created resource."
    else
      render :action => 'new'
    end
  end
    
  def destroy
    @resource = @project.resources.find(params[:id])
    @resource.destroy
    
    respond_to do |format|
      format.js { render :nothing => true }
      format.html {
        flash[:notice] = "Successfully destroyed resource."
        redirect_to @project
      } 
      format.xml  { head :ok }
    end
  end

  def sort
    # Handle calls made by offer dragging...
    params[:resource].each_with_index do |id, index|
      Resource.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
  
  private
  def load_project
    @project ||= Project.find(params[:project_id])
  end
  
end
