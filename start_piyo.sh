sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y build-essential git libssl-dev libreadline-dev zlib1g-dev npm && echo "install build-essential and ..."
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv && echo "git clone rbenv"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc && echo "source success"

mkdir -p "$(rbenv root)"/plugins && echo "mkdir success"
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build && echo "git clone ruby-build"
rbenv install 3.1.3 && echo "install ruby"
rbenv global 3.1.3 && echo "set ruby 3.1.3"

sudo npm install n -g && echo "install npm"
sudo n stable && echo "n stable"
sudo apt-get purge nodejs npm && echo "purge nodejs and npm"
sudo apt-get autoremove && echo "autoremove success"

sudo npm install yarn -g && echo "npm install yarn"

gem install -v 7.0.4 rails && echo "gem install rails 7.0.4"

git clone https://github.com/s191049/piyo.git && echo "git clone piyo"
cd piyo
bundle install && echo "bundle install"
rails yarn:install && echo "rails yarn:install"
rails db:migrate:reset && echo "db:migrate:reset"