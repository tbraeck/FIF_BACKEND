class ProductAcceptedsController < ApplicationController
  before_action :set_product_accepted, only: %i[ show edit update destroy ]

  # GET /product_accepteds or /product_accepteds.json
  def index
    @product_accepteds = ProductAccepted.all
  end

  # GET /product_accepteds/1 or /product_accepteds/1.json
  def show
  end

  # GET /product_accepteds/new
  def new
    @product_accepted = ProductAccepted.new
  end

  # GET /product_accepteds/1/edit
  def edit
  end

  # POST /product_accepteds or /product_accepteds.json
  def create
    @product_accepted = ProductAccepted.new(product_accepted_params)

    respond_to do |format|
      if @product_accepted.save
        format.html { redirect_to @product_accepted, notice: "Product accepted was successfully created." }
        format.json { render :show, status: :created, location: @product_accepted }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_accepted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_accepteds/1 or /product_accepteds/1.json
  def update
    respond_to do |format|
      if @product_accepted.update(product_accepted_params)
        format.html { redirect_to @product_accepted, notice: "Product accepted was successfully updated." }
        format.json { render :show, status: :ok, location: @product_accepted }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_accepted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_accepteds/1 or /product_accepteds/1.json
  def destroy
    @product_accepted.destroy!

    respond_to do |format|
      format.html { redirect_to product_accepteds_path, status: :see_other, notice: "Product accepted was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_accepted
      @product_accepted = ProductAccepted.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_accepted_params
      params.fetch(:product_accepted, {})
    end
end
