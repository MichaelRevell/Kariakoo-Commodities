class PriceHistoriesController < ApplicationController
  # GET /price_histories
  # GET /price_histories.json
  def index
    @price_histories = PriceHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @price_histories }
    end
  end

  # GET /price_histories/1
  # GET /price_histories/1.json
  def show
    @price_history = PriceHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @price_history }
    end
  end

  # GET /price_histories/new
  # GET /price_histories/new.json
  def new
    @price_history = PriceHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @price_history }
    end
  end

  # GET /price_histories/1/edit
  def edit
    @price_history = PriceHistory.find(params[:id])
  end

  # POST /price_histories
  # POST /price_histories.json
  def create
    @price_history = PriceHistory.new(params[:price_history])

    respond_to do |format|
      if @price_history.save
        format.html { redirect_to @price_history, notice: 'Price history was successfully created.' }
        format.json { render json: @price_history, status: :created, location: @price_history }
      else
        format.html { render action: "new" }
        format.json { render json: @price_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /price_histories/1
  # PUT /price_histories/1.json
  def update
    @price_history = PriceHistory.find(params[:id])

    respond_to do |format|
      if @price_history.update_attributes(params[:price_history])
        format.html { redirect_to @price_history, notice: 'Price history was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @price_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_histories/1
  # DELETE /price_histories/1.json
  def destroy
    @price_history = PriceHistory.find(params[:id])
    @price_history.destroy

    respond_to do |format|
      format.html { redirect_to price_histories_url }
      format.json { head :ok }
    end
  end
end
