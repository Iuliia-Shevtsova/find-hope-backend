before_action :set_organization, except: [:index, :show]
  before_action :set_organization_review, only: [:show, :update, :destroy]

  # GET /organizations/:organization_id/reviews  else  /reviews
  def index
    if (params[:organization_id])
        set_organization
        json_response(@organization.reviews)
    else
        @reviews = Review.all
        json_response(@reviews)
    end
  end

  # GET /organizations/:organization_id/reviews/:id  else  /reviews/:id
  def show
    if (params[:organization_id])
        set_organization
        set_organization_review
        json_response(@review)
    else
        set_review
        json_response(@review)
    end 
  end

  # POST /organizations/:organization_id/reviews
  def create
    @organization.reviews.create!(review_params)
    json_response(@organization, :created)
  end

  # PUT /organizations/:organization_id/reviews/:id
  def update
    # set_review
    @review.update(review_params)
    head :no_content
  end

  # DELETE /organizations/:organization_id/reviews/:id
  def destroy
    # set_review
    @review.destroy
    head :no_content
  end

  private

  def review_params
    params.permit(:title, :description, :score, :date, :organization_id)
  end

  def set_organization
    @organization = Organization.find(params[:organization_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_organization_review
    @review = @organization.reviews.find_by!(id: params[:id]) if @organization
  end