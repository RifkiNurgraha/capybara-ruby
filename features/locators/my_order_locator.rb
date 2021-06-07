module Locators
    class MyOrderLocator < SitePrism::Page
        # label
        element :cardOrderLabel, '#app > div > div.container > div > div.col-xs-9 > div > div > div > div.infinite-scroll > div:nth-child(1)'
    end
end