module Locators
    class TransactionLocator < SitePrism::Page
        # button
        element :bcaVirtualAccountButton, '#app > div > div.main-wrap > div > div.container > div:nth-child(2) > div.col-xs-8 > div > div:nth-child(2) > div:nth-child(3) > div > a:nth-child(3) > div > div > span'
        element :mandiriVirtualAccountButton, '#app > div > div.main-wrap > div > div.container > div:nth-child(2) > div.col-xs-8 > div > div:nth-child(2) > div:nth-child(3) > div > a:nth-child(4) > div > div > span'
        element :lanjutkanVirtualAccountButton, '#app > div > div.main-wrap > div > div.container > div:nth-child(2) > div.col-xs-8 > div > div > div.action-wrap > div.payment-button-next-step > button'
        element :sayaSudahMembayarButton, '#app > div > div.main-wrap > div > div.container > div:nth-child(2) > div.col-xs-8 > div > div > div > div.row > div:nth-child(2) > button'
        element :keMyOrderButton, '#modal-root > div > div > div > div.modal-wrapper > div.modal-footer > div > button'
        # label
        element :totalPembayaranLabel, '#price-tooltip-container > p.row2-value > span'
        element :cardBankInformationLabel, '#app > div > div.main-wrap > div > div.container > div:nth-child(2) > div.col-xs-8 > div > div > div > div.card.bank-account-information'
        element :paymentListLabel, '#app > div > div.main-wrap > div > div.container > div:nth-child(1) > div > h2'
        element :VirtualAccountLabel, '#app > div > div.main-wrap > div > div.container > div:nth-child(1) > div > h2'
        element :totalHargaLabel, '#price-tooltip-container > p.row2-value'
    end
end