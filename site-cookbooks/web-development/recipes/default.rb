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
    source ../../../.bash_profile
  EOH

  not_if "which rbenv"
end


bash "Download JsTestDriver" do
  cwd "/Users/" + node["username"] + "/java"
  code <<-EOC
    curl -O https://js-test-driver.googlecode.com/files/JsTestDriver-1.3.5.jar
    echo 'export JSTESTDRIVER_HOME="$HOME/java"' >> ../.bash_profile
  EOC
  creates "JsTestDriver-1.3.5.jar"
end

gem_package "jstdutil" do
  action :install
end
