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
default["mac"]["bettertouchtool_download_uri"] = "http://boastr.net/releases/BetterTouchTool.zip"

# Google Japanese Input
default["mac"]["google_japanese_input_checksum"] = "174f0b831ead4955e2fef06fe401e065f3074b60640cd5f34a80b148b1b45ad1"
