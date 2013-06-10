# Virtuahosts Cookbooks
Recipe for manage vhosts Apache with Chef

#### Chef > v11
```ruby
chef.add_recipe "virtualhosts"
    chef.json = {
        :virtualhosts => [
        	{
        		"file_name" => "public-singring",
        		"server_name" => "api-dev.local",
        		"docroot" => "/var/www/SRAPI2/public",
        		"template" => "app"
        	},
        	{
        		"file_name" => "private-singring",
        		"server_name" => "private-dev.local",
        		"docroot" => "/var/www/SRAPI2/private",
        		"template" => "app"
        	}
        ]
    }
```

Template file is into templates/app.conf.erb, if you change "template" key and create new file you can add another template 