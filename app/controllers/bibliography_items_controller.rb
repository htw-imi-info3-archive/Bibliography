class BibliographyItemsController < ApplicationController
  before_action :set_bibliography_item, only: [:show, :edit, :update, :destroy]

  # GET /bibliography_items
  # GET /bibliography_items.json
  def index
    if order = params["sort"]
      @bibliography_items = BibliographyItem.all.order(author: order)
      @next_sort_order = order == "asc" ? "desc" : "asc"
    else
      @bibliography_items = BibliographyItem.all
      @next_sort_order = "asc"
    end
  end

  # GET /bibliography_items/1
  # GET /bibliography_items/1.json
  def show
  end

  # GET /bibliography_items/new
  def new
    @bibliography_item = BibliographyItem.new
  end

  # GET /bibliography_items/1/edit
  def edit
  end

  # POST /bibliography_items
  # POST /bibliography_items.json
  def create
    @bibliography_item = BibliographyItem.new(bibliography_item_params)

    respond_to do |format|
      if @bibliography_item.save
        format.html { redirect_to @bibliography_item, notice: 'Bibliography item was successfully created.' }
        format.json { render :show, status: :created, location: @bibliography_item }
      else
        format.html { render :new }
        format.json { render json: @bibliography_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bibliography_items/1
  # PATCH/PUT /bibliography_items/1.json
  def update
    respond_to do |format|
      if @bibliography_item.update(bibliography_item_params)
        format.html { redirect_to @bibliography_item, notice: 'Bibliography item was successfully updated.' }
        format.json { render :show, status: :ok, location: @bibliography_item }
      else
        format.html { render :edit }
        format.json { render json: @bibliography_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliography_items/1
  # DELETE /bibliography_items/1.json
  def destroy
    @bibliography_item.destroy
    respond_to do |format|
      format.html { redirect_to bibliography_items_url, notice: 'Bibliography item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bibliography_item
      @bibliography_item = BibliographyItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bibliography_item_params
      params.require(:bibliography_item).permit(:titel, :author, :source, :accessed)
    end
end
