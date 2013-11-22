#
# Cookbook Name:: mac
# Recipe:: ruby
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

include_recipe "rbenv::user"
#rbenv_ruby "2.0.0-p247" do
#  user node["current_user"]
#  root_path node["mac"]["rbenv"]["root_path"]
#  action :install
#end
#
#rbenv_global "2.0.0-p247" do
#  user node["current_user"]
#  root_path node["mac"]["rbenv"]["root_path"]
#end
