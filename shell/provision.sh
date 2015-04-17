echo "Beginning provision"

echo "  Updating package information"
apt-add-repository -y ppa:brightbox/ruby-ng >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1

echo "  Installing build tools"
apt-get -y install build-essential >/dev/null 2>&1

echo "  Installing Ruby 2.2"
apt-get -y install ruby2.2 >/dev/null 2>&1
apt-get -y install ruby2.2-dev >/dev/null 2>&1
update-alternatives --set ruby /usr/bin/ruby2.2>/dev/null 2>&1
update-alternatives --set gem /usr/bin/gem2.2 >/dev/null 2>&1

echo "  Installing Bundler"
gem install bundler -N >/dev/null 2>&1

echo "  Installing Rake"
gem install rake -N >/dev/null 2>&1

echo "  Installing git"
apt-get -y install git >/dev/null 2>&1

echo "  Installing Nokogiri dependencies"
apt-get -y install libxml2 >/dev/null 2>&1
apt-get -y install libxml2-dev >/dev/null 2>&1
apt-get -y install libxslt1-dev >/dev/null 2>&1

echo "  Installing SQLite"
apt-get -y install libsqlite3-dev >/dev/null 2>&1

echo "Done!"
