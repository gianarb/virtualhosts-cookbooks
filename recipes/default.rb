#
# Cookbook Name:: virtualhosts
# Recipe:: default
#
#app_secrets = Chef::EncryptedDataBagItem.load("secrets", app_name) 

virtuslhosts = node['virtualhosts']
virtuslhosts.each do |virtualhost|
	web_app virtualhost['file_name'] do
	    server_name virtualhost['server_name']
	    docroot virtualhost['docroot']
	    template "#{virtualhost['template']}.conf.erb"
	    log_dir node['apache']['log_dir']
	end
end