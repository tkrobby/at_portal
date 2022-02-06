# README #

This README for running this project until generate report 

### Please install before run automation project ### 

Linux/MacOS
Install RVM: visit url https://rvm.io/rvm/install
Install Ruby: visit url https://rvm.io/rubies/installing

Instalasi Web Driver chromedriver for browser Chrome and geckodriver for Mozilla Firefox

Instalasi Gem
```
gem install cucumber
gem install gherkin
gem install selenium-webdriver
gem install report_builder
gem install rspec
```

For makesure gem already install in your mechine
```
gem list
```

### Run project ###

Get clone from this repo

Open cmd/terminal

Runing testing commands:
```
cd "the_repo_folder_path"
cucumber
```

Runing testing with specific taggin with commands:
```
cd "the_repo_folder_path"
cucumber -t @smoketesting
```

Runing testing commands and generate report:
```
cucumber -f pretty --expand -f json -o report.json
ruby report_builder.rb
```