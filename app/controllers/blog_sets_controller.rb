class BlogSetsController < ApplicationController
  # GET /blog_sets
  # GET /blog_sets.xml
  def index
    @blog_sets = BlogSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blog_sets }
    end
  end

  # GET /blog_sets/1
  # GET /blog_sets/1.xml
  def show
    @blog_set = BlogSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blog_set }
    end
  end

  # GET /blog_sets/new
  # GET /blog_sets/new.xml
  def new
    @blog_set = BlogSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blog_set }
    end
  end

  # GET /blog_sets/1/edit
  def edit
    @blog_set = BlogSet.find(params[:id])
  end

  # POST /blog_sets
  # POST /blog_sets.xml
  def create
    @blog_set = BlogSet.new(params[:blog_set])

    respond_to do |format|
      if @blog_set.save
        flash[:notice] = 'BlogSet was successfully created.'
        format.html { redirect_to(@blog_set) }
        format.xml  { render :xml => @blog_set, :status => :created, :location => @blog_set }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blog_sets/1
  # PUT /blog_sets/1.xml
  def update
    @blog_set = BlogSet.find(params[:id])

    respond_to do |format|
      if @blog_set.update_attributes(params[:blog_set])
        flash[:notice] = 'BlogSet was successfully updated.'
        format.html { redirect_to(@blog_set) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_sets/1
  # DELETE /blog_sets/1.xml
  def destroy
    @blog_set = BlogSet.find(params[:id])
    @blog_set.destroy

    respond_to do |format|
      format.html { redirect_to(blog_sets_url) }
      format.xml  { head :ok }
    end
  end
end
