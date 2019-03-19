# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

----- Terminal -------------------------------------------
  503  cd techpit_job

---7-2----------------------------------------------------------------
  504  bundle install
    Gem::Ext::BuildError: ERROR: Failed to build gem native extension.
    An error occurred while installing rmagick (3.0.0), and Bundler cannot continue.
    Make sure that `gem install rmagick -v '3.0.0' --source 'https://rubygems.org/'` succeeds
    before bundling.

  505  brew uninstall --force imagemagick@6
  506  brew install imagemagick@6
  507  convert --version
  508  bundle exec gem uninstall rmagick
    Could not find gem 'rmagick' in any of the gem sources listed in your Gemfile.
    Run `bundle install` to install missing gems.

  509  brew info imagemagick@6
（  510  PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig bundle install --path vendor/bundle
  511  bundle doctor
    Bundler can't satisfy your Gemfile's dependencies.
    Install missing gems with `bundle install`.

  512  PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig bundle install --path vendor/bundle
  513  bundle doctor
    Unfortunately, an unexpected error occurred, and Bundler cannot continue.

  514  bundle install

---8-1------------------------------------------------------------
  515  rails g model Entry user:references job:references messages:text
  516  rails db:migrate
  517  rails g controller entries create

---9-1------------------------------------------------------------
  518  bundle list

---10-1-----------------------------------------------------------
  519  heroku login
  520  heroku login
  521  heroku login
  522  a
  523  heroku login
  524  brew install postgresql
  525  heroku create techpitjob
  526  bundle install
  527  git add .
  528  git commit -m "initial commit"
  529  git push heroku master
    remote:  !     Warning: Multiple default buildpacks reported the ability to handle this app. The first buildpack in the list below will be used.
    remote:  !     An error occurred while installing ruby-2.3.1
    remote:  !
    remote:  !     This version of Ruby is not available on Heroku-18. The minimum supported version
    remote:  !     of Ruby on the Heroku-18 stack can found at:
    remote:  !
    remote:  !     https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
     ! [remote rejected] master -> master (pre-receive hook declined)
    error: failed to push some refs to 'https://git.heroku.com/techpitjob.git'

  530  bundle install
    Your Ruby version is 2.3.1, but your Gemfile specified 2.3.3

  531  rbenv install -l
  532  rbenv install 2.3.3
  533  ruby --version
  534  rbenv locall 2.3.3
    rbenv: no such command `locall'

  535  rbenv local 2.3.3
  536  ruby --version
  537  bundle install
    rbenv: bundle: command not found
    The `bundle' command exists in these Ruby versions:
      2.3.1
      2.5.1

  538  gem install bundler
  539  bundle install
  540  git add .
  541  git commit -m "initial commit"
  542  git push heroku master
    remote:  !     An error occurred while installing ruby-2.3.1
    remote:  !
    remote:  !     This version of Ruby is not available on Heroku-18. The minimum supported version
    remote:  !     of Ruby on the Heroku-18 stack can found at:
    remote:  !
    remote:  !     https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
     ! [remote rejected] master -> master (pre-receive hook declined)
    error: failed to push some refs to 'https://git.heroku.com/techpitjob.git'

  543  rbenv exec gem install bundler
  544  rvenv rehash
    -bash: rvenv: command not found
  545  rbenv rehash
  546  bundle install
  547  heroku login
  548  history

