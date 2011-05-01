class WalletsController < ApplicationController
  # GET /wallets
  # GET /wallets.xml
  def index
    @wallets = Wallet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wallets }
    end
  end

  # GET /wallets/1
  # GET /wallets/1.xml
  def show
    @wallet = Wallet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wallet }
    end
  end

  # GET /wallets/new
  # GET /wallets/new.xml
  def new
    @wallet = Wallet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wallet }
    end
  end

  # GET /wallets/1/edit
  def edit
    @wallet = Wallet.find(params[:id])
  end

  # POST /wallets
  # POST /wallets.xml
  def create
    child_id = params[:child_id]
    chore_id = Chore.find(params[:chore_id])
    @wallet = Wallet.new(:chore => chore_id, :child_id => child_id)

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to(@wallet.child, :notice => 'Chore was successfully added to your wallet.') }
        format.xml  { render :xml => @wallet, :status => :created, :location => @wallet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wallet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wallets/1
  # PUT /wallets/1.xml
  def update
    @wallet = Wallet.find(params[:id])

    respond_to do |format|
      if @wallet.update_attributes(params[:wallet])
        format.html { redirect_to(@wallet, :notice => 'Wallet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wallet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wallets/1
  # DELETE /wallets/1.xml
  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy

    respond_to do |format|
      format.html { redirect_to(wallets_url) }
      format.xml  { head :ok }
    end
  end
end
