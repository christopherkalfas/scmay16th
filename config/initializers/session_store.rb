if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_sweat-clause', domain: 'sweat-clause'
  else
    Rails.application.config.session_store :cookie_store, key: '_sweat-clause' 
  end