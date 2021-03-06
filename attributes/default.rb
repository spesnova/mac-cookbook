#
# Author:: Seigo Uchida (<spesnova@gmail.com>)
# Cookbook Name:: mac
# Attributes:: default
#
# Copyright (C) 2013 Seigo Uchida (<spesnova@gmail.com>)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# iTerm2
override["iterm2"]["plist_cookbook"] = "mac"

# Better Touch Tool
default["mac"]["bettertouchtool"]["download_uri"] = "http://boastr.net/releases/BetterTouchTool.zip"

# HipChat
default["mac"]["hipchat"]["version"] = "2.3"
default["mac"]["hipchat"]["download_uri"] = "http://downloads.hipchat.com.s3.amazonaws.com/osx/HipChat-#{node['mac']['hipchat']['version']}.zip"

# 1Password
default["mac"]["1password"]["version"] = "4.0.9"
default["mac"]["1password"]["download_uri"] = "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-#{node['mac']['1password']['version']}.zip"

# Kobito
default["mac"]["kobito"]["version"] = "1.8.4"
default["mac"]["kobito"]["download_uri"] = "http://kobito.qiita.com/download/Kobito_v#{node['mac']['kobito']['version']}.zip"

# Dropbox Encore
default["mac"]["dropbox_encore"]["version"] = "1.0"
default["mac"]["dropbox_encore"]["download_uri"] = "http://www.joyofmacs.com/downloads/DropboxEncore#{node['mac']['dropbox_encore']['version']}.dmg"

# Cyberduck
default["mac"]["cyberduck"]["version"] = "4.4.3"
default["mac"]["cyberduck"]["download_uri"] = "https://update.cyberduck.io/Cyberduck-#{node['mac']['cyberduck']['version']}.zip"

# Homebrew
default["mac"]["homebrew"]["formulas"] = []

# VirtualBox
default["mac"]["virtualbox"]["download_uri"] = "http://download.virtualbox.org/virtualbox/4.3.4/VirtualBox-4.3.4-91027-OSX.dmg"

# Vagrant
default["mac"]["vagrant"]["version"] = "1.3.5"
default["mac"]["vagrant"]["download_uri"] = "http://hc-vagrant-files.s3.amazonaws.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/Vagrant-1.3.5.dmg"

# Evernote
default["mac"]["evernote"]["download_uri"] = "http://evernote.com/download/get.php?file=EvernoteMac"

# pgAdmin
default["mac"]["pg_admin"]["dmg_package"]  = "pgadmin3"
default["mac"]["pg_admin"]["version"]  = "1.18.1"
default["mac"]["pg_admin"]["download_uri"] = "http://ftp.postgresql.org/pub/pgadmin3/release/v#{node['mac']['pg_admin']['version']}/osx/#{node['mac']['pg_admin']['dmg_package']}-#{node['mac']['pg_admin']['version']}.dmg"

# rbenv
default["rbenv"]["create_profiled"] = false
default["rbenv"]["root_path"] = File.join(ENV["HOME"], ".rbenv")
default["rbenv"]["user_installs"] = [
  {
    "user"   => node["current_user"],
    "rubies" => ["2.0.0-p247"],
    "global" => "2.0.0-p247",
    "gems"   => {
      "2.0.0-p247" => [
        { "name"   => "bundler" }
      ]
    }
  }
]
