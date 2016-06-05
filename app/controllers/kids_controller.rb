class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update, :destroy]
  before_action :logged_in

  # GET /kids
  # GET /kids.json
  def index
    @kids = Kid.order(age: :asc, name: :asc).all
  end

  # GET /kids/1
  # GET /kids/1.json
  def show
  end

  # GET /kids/new
  def new
    @kid = Kid.new
  end

  # GET /kids/1/edit
  def edit
  end

  # POST /kids
  # POST /kids.json
  def create
    @kid = Kid.new(kid_params)

    respond_to do |format|
      if @kid.save
        format.html { redirect_to @kid, notice: 'Kid was successfully created.' }
        format.json { render :show, status: :created, location: @kid }
      else
        format.html { render :new }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kids/1
  # PATCH/PUT /kids/1.json
  def update
    respond_to do |format|
      if @kid.update(kid_params)
        format.html { redirect_to @kid, notice: 'Kid was successfully updated.' }
        format.json { render :show, status: :ok, location: @kid }
      else
        format.html { render :edit }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kids/1
  # DELETE /kids/1.json
  def destroy
    @kid.destroy
    respond_to do |format|
      format.html { redirect_to kids_url, notice: 'Kid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def logged_in
      unless user_logged_in?
        redirect_to root_url
      end
    end

    def set_kid
      @kid = Kid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kid_params
      params.require(:kid).permit(:name, :lastf, :lastm, :age, :nmother, :nfather, :address, :phone, :exphone, :celphone, :pay, :alergy, :pick_up)
    end
end
