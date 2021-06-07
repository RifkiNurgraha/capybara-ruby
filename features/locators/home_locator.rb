module Locators
    class HomeLocator < SitePrism::Page
        # button
        element :loginButton, '#app > div > div > div.left-side > div.header-v3 > div.header-bottom-layer > div > div.header-right-side > a:nth-child(3)'
        element :hotelIconButton, '#productWidget > div.product-list-container > div.product-list-content > div.product-box.active > span'
        element :flightIconButton, '#productWidget > div.product-list-container > div.product-list-content > div:nth-child(1) > span'
        element :trainIconButton, '#productWidget > div.product-list-container > div.product-list-content > a:nth-child(4) > span'
        element :accountButton, '[class="account-label"]'
        element :keluarButton, '#app > div > div > div.left-side > div.header-v3 > div.header-bottom-layer > div > div.header-right-side > div > div > div.account-link-list > div > span'
        element :keluarYaButton, '#modal-root > div > div > div > div > div.logout-button > div.logout-yes'
        element :keluarNoButton, '#modal-root > div > div > div > div > div.logout-button > div.logout-no'
        element :okHistoryButton, '#filter-area > div > div.filter-top > div > div.history-pointer > button'
        element :exitPopUpButton, '#ab-iam-89d9861d5777cd9e45af6252c3b6376d > div.ab-in-app-message.ab-background.ab-modal-interactions.graphic.ab-clickable.ab-modal.ab-centered > button'
        # label
        element :popUpLabel, '#ab-iam-cb5c3b43d8a58f1cbe05e1932e4a5c57 > div.ab-in-app-message.ab-background.ab-modal-interactions.graphic.ab-clickable.ab-modal.ab-centered > div.ab-image-area > img'
    end
end