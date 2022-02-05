# README #

This README for running this project until generate report 

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