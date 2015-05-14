class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :destroy]
  before_filter :authenticate_user!

  # GET /invites
  # GET /invites.json
  def index
    @invites = Invite.all
  end

  # GET /invites/1
  # GET /invites/1.json
  def show
  end

  # GET /invites/new
  def new
    @invite = Invite.new
  end

  # GET /invites/1/edit
  def edit
  end

  # POST /invites
  # POST /invites.json
  def create
    @invite = Invite.new(invite_params)

    respond_to do |format|
      if @invite.save
        @server = Server.find_by_id(@invite.server_id)
        format.html { redirect_to server_path(@server), notice: 'Invite to \'' + @server.title + '\' pending.' }
        format.json { render :show, status: :created, location: @invite }
      else
        format.html { redirect_to invite_to_server_url(Server.find_by_id(@invite.server_id)), alert: @invite.errors.full_messages.to_sentence }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invites/1
  # DELETE /invites/1.json
  def destroy
    @invite.destroy
    respond_to do |format|
      format.html { redirect_to invites_url, notice: 'Invite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_params
      params.require(:invite).permit(:to_id, :from_id, :server_id, :message, :read, :active, :accepted)
    end
end
