class OrganizationsController < ApplicationController
#     # before_action :set_organization, only: %i[show update destroy]

#   # GET /organizations
#   def index
#     @organizations = Organization.all
#     json_response(@organizations)
#   end
 
#   # POST /organizations
#   def create
#     @organization = Organization.create!(organization_params)
#     json_response(@organization, :created)
#   end

#   # GET /organizations/:id
#   def show
#     # @category = Category.find(params[:category_id])
#     @organization = Organization.find(params[:id])
#     # @organization = @category.organizations.find(params[:id])
#     json_response(@organization)
#   end

#   # PUT /organizations/:id
#   def update
#     @organization.update(organization_params)
#     head :no_content
#   end

#   # DELETE /organizations/:id
#   def destroy
#     @organization.destroy
#     head :no_content
#   end

#   private

#   def organization_params
#     # whitelist params
#     params.require(:organization).permit(:name, :address, :zipCode, :website, :facebook, :twitter)
#   end

#   def set_organization
#     @organization = Organization.find(params[:id])
#   end

    before_action :set_category, except: [:index, :show]
    before_action :set_category_organization, only: [:show, :update, :destroy]

  # GET /categories/:category_id/organizations  else  /organizations
  def index
    if (params[:category_id])
        set_category
        json_response(@category.organizations)
    else
        @organizations = Organization.all
        json_response(@organizations)
    end
  end

  # GET /categories/:category_id/organizations/:id  else  /organizations/:id
  def show
    if (params[:category_id])
        set_category
        set_category_organization
        json_response(@organization)
    else
        set_organization
        json_response(@organization)
    end
  end

  # POST /categories/:category_id/organizations
  def create
    @category.organizations.create!(organization_params)
    json_response(@category, :created)
  end

  # PUT /categories/:category_id/organizations/:id
  def update
    @organization.update(organization_params)
    head :no_content
  end

  # DELETE /categories/:category_id/organizations/:id
  def destroy
    @organization.destroy
    head :no_content
  end

  private

  def organization_params
    params.permit(:name, :done)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def set_category_organization
    @organization = @category.organizations.find_by!(id: params[:id]) if @category
  end
end
 