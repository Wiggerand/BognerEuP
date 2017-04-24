class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:show, :edit, :update, :destroy]
  # GET /customers
  # GET /customers.json
  
  def index
    if params[:search]
        if !(/(\S+)-(\S+)/.match(params[:search]))                  #Wenn es keine Suche nach Kennzeichen "-" gab
          @customers = Customer.where(lastname: params[:search])    #suche nach dem lastname von Customer
        else
          @car = Car.find_by(registration: params[:search])         #sonst suche nach der registration von cars
           if @car.blank?    
                   redirect_to root_path, alert: "Keine Übereinstimmung von 
   #{params[:search]} gefunden. Eingabe überprüfen."                               #wenn es leer ist, macht er nichts    
          else
           
              @customers = Customer.where(id: @car.customer_id)     #sonst zeig den customer zu der car regisstration an
           end
        end
    else
      @customers = Customer.all                                     #wenn es keine eingabe über die Suche gab, zeig alle customer an
    end
  end
  # GET /customers/1
  # GET /customers/1.json

  def show
    
  end
  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save

         # CustomerMailer.customer_email(@customer).deliver_later

        format.html { redirect_to @customer, notice: 'Neuer Kunde wurde erfolgreich angelegt.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Kundendaten wurden erfolgreich geändert.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Kundendaten wurden erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  def customermail
    @customers = Customer.where(privacypolicy: true)    #Zeigt nur die Kunden in der Tabelle an, wo die DSE wahr ist!!!
  end

  def sendmail
     @customers = Customer.where(privacypolicy: true)
     @customers.each do |cu|
     CustomerMailer.sendmail(cu).deliver_later
    end
  end
 


  private

    # Use callbacks to share common setup or constraints between actions.
  def set_customer
      @customer = Customer.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def customer_params
      params.require(:customer).permit(:dear, :firstname, :lastname, :street, :city, :plz, :tel, :email, :privacypolicy)
  end
end
