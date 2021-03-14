Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origin "http://localhost:3000"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end

    # for front end domain that your production React or Angular app will be on 
    # allow do
    #     origin "http://localhost:3000"
    #     resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    # end
end