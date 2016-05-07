RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Product' do
    visible false
  end

  config.model 'Delivery' do
    visible false
  end

  config.model 'User' do
    visible false
  end

  config.model 'Order' do
    list do
      field :done
      field :phone
      field :name
      field :product_title
      field :product_code
      field :created_at
    end
    edit do
      field :done
      field :phone
      field :name
      field :product_title
      field :product_code
      field :created_at
    end
  end

  config.model 'Page' do
    list do
      field :title
      field :description
    end
    edit do
      field :title
      field :description, :ck_editor
    end
  end

end
