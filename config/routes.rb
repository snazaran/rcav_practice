Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:num", { :controller => "calculations", :action => "sqrt" })
  get("/square/:num",      { :controller => "calculations", :action => "square"})


  get("/payment/:rate/:nper/:pv", { :controller => "calculations", :action => "pmt"})
end
