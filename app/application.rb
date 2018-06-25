class Application
    
    def call(env)
     resp = Rack::Response.new
     req = Rack::Request.new(env)
     
     if req.path.match(/items/)
       search_term = req.params["item"]
       if Item.all.include?(search_term)
        item = Items.all.select { |item| item == search.term }
        resp.write "#{item.price}"
        elsif
        resp.status = 400
        resp.write "Item not found"
      end 
      
    else 
      resp.write "Route not found"
      resp.status = 404
    end
    
    resp.finish
  end
end