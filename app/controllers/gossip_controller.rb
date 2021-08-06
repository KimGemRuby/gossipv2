class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    @date = @gossip.created_at.to_date
  end

  def new
    @gossip = Gossip.create
    
  end
  
end
