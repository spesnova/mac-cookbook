name             "mac"
maintainer       "Seigo Uchida"
maintainer_email "spesnova@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures mac"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.1.9"
supports         "mac_os_x"

%w{ iterm2 dmg rbenv ruby_build python }.each do |cb|
  depends cb
end
