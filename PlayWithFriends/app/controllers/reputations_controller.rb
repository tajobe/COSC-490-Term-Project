class ReputationsController < ApplicationController
  before_action :set_reputation, only: [:show, :edit, :update]

  # GET /reputations
  # GET /reputations.json
  def index
    @from = Reputation.where(from_id: current_user.id)
    @to = Reputation.where(to_id: current_user.id)
  end

  # GET /reputations/1
  # GET /reputations/1.json
  def show
  end

  # GET /reputations/new
  def new
    @reputation = Reputation.new
  end

  # GET /reputations/1/edit
  def edit
  end

  # POST /reputations
  # POST /reputations.json
  def create
    @reputation = Reputation.new(reputation_params)

    respond_to do |format|
      if @reputation.save
        format.html { redirect_to reputations_url, notice: 'Reputation was successfully created.' }
        format.json { render :show, status: :created, location: @reputation }
      else
        @server_owner = User.find_by_email(Server.find_by_id(@reputation.server_id).owner).id
        format.html { redirect_to rate_url(Invite.find_by(server_id: @reputation.server_id, to_id: @server_owner, from_id: @reputation.to_id == @server_owner ? @reputation.from_id : @reputation.to_id)), alert: @reputation.errors.full_messages.to_sentence }
        format.json { render json: @reputation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reputations/1
  # PATCH/PUT /reputations/1.json
  def update
    respond_to do |format|
      if @reputation.update(reputation_params)
        format.html { redirect_to reputations_url, notice: 'Reputation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reputation }
      else
        format.html { render :edit }
        format.json { render json: @reputation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reputation
      @reputation = Reputation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reputation_params
      params.require(:reputation).permit(:to_id, :from_id, :server_id, :rating, :message)
    end
end
