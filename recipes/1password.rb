#
# Cookbook Name:: mac
# Recipe:: 1password
#
# Copyright (C) 2013 Seigo Uchida
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Example version "4.0.9"
version = node["mac"]["1password"]["version"]
# Example short version "4"
short_version = version.scan(/^([0-9])\.[0-9]\.[0-9]/).first

remote_file "#{Chef::Config[:file_cache_path]}/1Password-#{version}.zip" do
  source node["mac"]["1password"]["download_uri"]
  action :create_if_missing
end

execute "unzip 1Password to /Applications" do
  command "unzip -o #{Chef::Config[:file_cache_path]}/1Password-#{version}.zip"
  cwd "/Applications"
  not_if { File.directory?("/Applications/1Password #{short_version}.app") }
  group "wheel"
end
