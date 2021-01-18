class CategoriesController < ApplicationController
  before_action :set_category, only: %i[update destroy]

  # GET /categories
  def index

    if (params[:organization_id])
      set_organization
      json_response(@organization.categories)
    else
      @categories = Category.all
      json_response(@categories)
    end
  end
 
  # POST /categories
  def create
    @category = Category.create!(category_params)
    json_response(@category, :created)
  end
 
  # GET /organizations/:organization_id/categories/:id  else  /categories/:id
  def show
    if (params[:organization_id])
      set_organization
      set_organization_category
      json_response(@category)
    else
      set_category
      json_response(@category)
    end 
  end

  # PUT /categories/:id
  def update
    @category.update(category_params)
    head :no_content
  end

  # DELETE /categories/:id
  def destroy
    @category.destroy
    head :no_content
  end

  private

  def category_params
    # whitelist params
    params.permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def set_organization
    @organization = Organization.find(params[:organization_id])
  end

  def set_organization_category
    @category = @organization.categories.find_by!(id: params[:id]) if @organization
  end



  

  # before_action :set_organization
  # before_action :set_organization_category, only: [:show, :update, :destroy]

  # # GET /organizations/:organization_id/categories
  # def index
  #   json_response(@organization.categories)
  # end

  # # GET /organizations/:organization_id/categories/:id
  # def show
  #   json_response(@category)
  # end

  # # POST /organizations/:organization_id/categories
  # def create
  #   @organization.categories.create!(category_params)
  #   json_response(@organization, :created)
  # end

  # # PUT /organizations/:organization_id/categories/:id
  # def update
  #   @category.update(category_params)
  #   head :no_content
  # end

  # # DELETE /organizations/:organization_id/categories/:id
  # def destroy
  #   @category.destroy
  #   head :no_content
  # end

  # private

  # def category_params
  #   params.permit(:name, :done)
  # end

  # def set_organization
  #   @organization = Organization.find(params[:organization_id])
  # end

  # def set_organization_category
  #   @category = @organization.categories.find_by!(id: params[:id]) if @organization
  # end

end
