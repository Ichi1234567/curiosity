#encode utf-8
class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(params[:category])
    if params[:file]
      @category.image = params[:file]
    end
      
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        # format.json { render json: @category, status: :created, location: @category }
        format.json 
        # format.js { render :text => "window.location = '#{category_path(@category)}'"}
      else
        flash[:error] = @category.errors.full_messages.map {|msg| msg}.to_s
        format.html {redirect_to new_category_url }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @category = Category.find(params[:id])


    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { render json: @category }
    end
  end


  # POST /categories/:category_id/picutre
  # def picture
    
  # end
end
