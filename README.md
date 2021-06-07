# Description
This framework is a Page Object Model (POM) framework for selenium automation with ruby `Cucumber` in `Capybara`.

## Module
* selenium webdriver
* rspec
* cucumber
* capybara
* site prism

## Supports
* Allure reports
* Failed Screenshots

## Setup
* Clone this repository
* Navigate to the cloned folder
* Install ruby assume using macOS by `brew install ruby`
* Install bundler using `gem install bundler`
* Install the dependencies by `bundle install` if need permission use `sudo chmod -R  777 /Users/nakama/.bundle/cache/compact_index/`
* Install chrome assume using macOS by `brew install chromedriver` if catalina OS get permission by use `xattr -d com.apple.quarantine chromedriver` and `spctl --add --label 'Approved' chromedriver`
* Install allure assume using macOS by `brew install allure`

## To Run the tests
For a simple run of all the feature files in normal mode, try
```
cucumber
```

## To open allure results
```
allure serve reports/allure
```

## Reports
For better illustration on the testcases, allure reports has been integrated. Allure reports can also be integrated with jenkins to get a dashboard view. Apart from allure, cucumber's default reporting such as html, pretty, progress, rerun files has been added to the `reports/` folder.

## Cheatset Capybara
```
https://kapeli.com/cheat_sheets/Capybara.docset/Contents/Resources/Documents/index
https://gist.github.com/zhengjia/428105
```
```
https://www.rubydoc.info/github/jnicklas/capybara/
```