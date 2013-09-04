#
# Cookbook Name:: web-development
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/Users/" + node["username"] + "/.rbenv" do
  repository "git://github.com/sstephenson/rbenv.git"
  reference "master"
  action :checkout
  user node["username"]
  group "staff"
end

directory "/Users/" + node["username"] + "/.rbenv/plugins" do
  owner node["username"]
  group "staff"
end

git "/Users/" + node["username"] + "/.rbenv/plugins/ruby-build" do
  repository "git://github.com/sstephenson/ruby-build.git"
  reference "master"
  action :checkout
  user node["username"]
  group "staff"
end

bash "Install rbenv" do
  cwd "/Users/" + node["username"] + "/.rbenv/plugins/ruby-build"
  code <<-EOH
    sudo ./install.sh
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ../../../.bash_profile
  EOH

  not_if "which rbenv"
end
