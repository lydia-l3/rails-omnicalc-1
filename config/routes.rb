Rails.application.routes.draw do
  get("/", {:controller => "omni", :action => "apple" })
  
  get("/square/new", {:controller => "omni", :action => "banana" })

  get("/square/results/", {:controller => "omni", :action => "clementine" })

  get("/square_root/new/", {:controller => "omni", :action => "dragonfruit" })

  get("/square_root/results/", {:controller => "omni", :action => "eggplant" })

  get("/payment/new/", {:controller => "omni", :action => "fruit" })

  get("/payment/results/", {:controller => "omni", :action => "grape" })

  get("/random/new/", {:controller => "omni", :action => "happy" })

  get("/random/results/", {:controller => "omni", :action => "igloo" })
end
