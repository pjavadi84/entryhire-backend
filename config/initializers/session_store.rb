if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_entryhire", domain: "THENAMEOFYOURDOMAIN"
else
    Rails.application.config.session_store :cookie_store, key: "_entryhire"
end