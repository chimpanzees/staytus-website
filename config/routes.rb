Rails.application.routes.draw do
  get 'demo' => redirect("http://demo.staytus.co", :status => 302)
  get 'repo' => redirect('http://github.com/adamcooke/staytus', :status => 302)
  get 'bug' => redirect('https://github.com/adamcooke/staytus/issues/new?labels=bug', :status => 302)
  get 'blog' => redirect('http://blog.staytus.co', :status => 302)
  get 'donate' => redirect("/", :status => 302)
  root 'pages#home'
end
