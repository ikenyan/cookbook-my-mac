#
# Cookbook Name:: mac-dmg
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "TotalFinder" do
  volumes_dir "TotalFinder"
  source "http://downloads-1.binaryage.com/TotalFinder-1.4.18.dmg"
  type "pkg"
end

dmg_package "Google Chrome" do
  dmg_name "googlechrome"
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg"
  action :install
end

dmg_package "Firefox" do
  volumes_dir "Firefox"
  source "http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/23.0.1/mac/ja-JP-mac/Firefox%2023.0.1.dmg"
  action :install
end

dmg_package "GoogleJapaneseInput" do
  source "https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg"
  type "pkg"
  package_id "com.google.pkg.GoogleJapaneseInput"
  action :install
end

dmg_package "KeyRemap4MacBook" do
  volumes_dir "KeyRemap4MacBook-8.3.0"
  source "https://pqrs.org/macosx/keyremap4macbook/files/KeyRemap4MacBook-8.3.0.dmg"
  type "pkg"
  package_id "org.pqrs.driver.KeyRemap4MacBook"
  action :install
end

dmg_package "ClipMenu" do
  volumes_dir "ClipMenu"
  source "https://dl.dropboxusercontent.com/u/1140644/clipmenu/ClipMenu_0.4.3.dmg"
  action :install
end

dmg_package "Dropbox" do
  volumes_dir "Dropbox Installer"
  source "http://www.dropbox.com/download?plat=mac"
  checksum "b4ea620ca22b0517b75753283ceb82326aca8bc3c86212fbf725de6446a96a13"
  action :install
end

dmg_package "Emacs" do
  volumes_dir "Emacs Installer"
  source "http://bandwidth.porkrind.org/emacs-builds/Emacs-24.3-universal-10.6.8.dmg"
  action :install
end

bash "Download 1Password" do
  user node["user"]["name"]
  group "staff"
  cwd "/Applications"
  code <<-EOC
    curl -O https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.21.zip
    unzip 1Password-3.8.21.zip
    mv 1Password.app /Applications/1Password.app
    rm 1Password-3.8.21.zip
  EOC
  creates "/Applications/1Password.app"
end

bash "Download Transmit" do
  user node["user"]["name"]
  group "staff"
  cwd "/Applications"  
  code <<-EOC
    curl -O http://www.panic.com/transmit/d/Transmit%204.4.1.zip
    unzip Transmit%204.4.1.zip
    mv Transmit.app /Applications/Transmit.app
    rm Transmit%204.4.1.zip
  EOC
  creates "/Applications/Transmit.app"
end

bash "Download Stay" do
  user node["user"]["name"]
  group "staff"
  cwd "/Applications"  
  code <<-EOC
    curl -O http://cordlessdog.com/stay/versions/Stay%201.2.2.zip
    unzip Stay%201.2.2.zip
    mv Stay.app /Applications/Stay.app
    rm Stay%201.2.2.zip
  EOC
  creates "/Applications/Stay.app"
end

bash "Download TextMate" do
  user node["user"]["name"]
  group "staff"
  cwd "/Applications"  
  code <<-EOC
    curl -O http://archive.textmate.org/TextMate_1.5.11_r1635.zip
    unzip TextMate_1.5.11_r1635.zip
    mv TextMate.app /Applications/TextMate.app
    rm TextMate_1.5.11_r1635.zip
  EOC
  creates "/Applications/TextMate.app"
end

bash "Download Tower" do
  user node["user"]["name"]
  group "staff"
  cwd "/Applications"  
  code <<-EOC
    curl -O https://macapps.fournova.com/tower1-1060/download -o Tower.zip
    unzip Tower.zip
    mv Tower.app /Applications/Tower.app
    rm Tower.zip
  EOC
  creates "/Applications/Tower.app"
end
