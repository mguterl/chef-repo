
# Deprecated by rvm
wget 'http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz' -O /tmp/rubygems.tgz
cd /tmp/rubygems*
ruby setup.rb
gem update --system
cd .. && rm -rf /tmp/rubygems*