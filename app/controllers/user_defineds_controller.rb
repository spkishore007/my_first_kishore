class UserDefinedsController < ApplicationController
  before_action :set_user_defined, only: [:show, :edit, :update, :destroy]

  # GET /user_defineds
  # GET /user_defineds.json
  def index
    @user_defineds = UserDefined.all
  end

  # GET /user_defineds/1
  # GET /user_defineds/1.json
  def show
  end

  # GET /user_defineds/new
  def new
    @user_defined = UserDefined.new
  end

  # GET /user_defineds/1/edit
  def edit
  end

  # POST /user_defineds
  # POST /user_defineds.json
  def create
    @user_defined = UserDefined.new(user_defined_params)

    respond_to do |format|
      if @user_defined.save
        format.html { redirect_to @user_defined, notice: 'User defined was successfully created.' }
        format.json { render :show, status: :created, location: @user_defined }
      else
        format.html { render :new }
        format.json { render json: @user_defined.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_defineds/1
  # PATCH/PUT /user_defineds/1.json
  def update
    respond_to do |format|
      if @user_defined.update(user_defined_params)
        format.html { redirect_to @user_defined, notice: 'User defined was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_defined }
      else
        format.html { render :edit }
        format.json { render json: @user_defined.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_defineds/1
  # DELETE /user_defineds/1.json
  def destroy
    @user_defined.destroy
    respond_to do |format|
      format.html { redirect_to user_defineds_url, notice: 'User defined was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_defined
      @user_defined = UserDefined.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_defined_params
      params.fetch(:user_defined, {})
    end
end
