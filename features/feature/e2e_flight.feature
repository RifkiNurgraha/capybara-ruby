Feature: DEKSTOP - e2e Flight

    Create transaction with virtual account for domestic round trip with 2 transit and 
    login with email

    Background: Login with Facebook
        Given user successfully login from facebook with email "xxxxx@yahoo.co.id" and password "xxxxx"
        
    Scenario: Create Transaction Flight
        Given User go to flight Page
        Then User successfully go to flight Page
        When User choose from "jakarta" at flight Page
            And User choose to "surabaya" at flight Page
            And User choose date of departure "Agt 20" at flight Page
            And User choose date of return "Agt 22" at flight Page
            And User click "cari penerbangan" at flight Page
        Then User successfully "see result flight" at flight Page
        When User click "1 transit" at flight Page
            And User click berangkat "00:00 - 06:00" at flight Page
            And User click berangkat "06:00 - 12:00" at flight Page
            And User click maskapai "Batik Air" at flight Page
        Then User successfully "filter airline departure" at flight Page
        When User click "selected flight departure" at flight Page
            And User click pulang "00:00 - 06:00" at flight Page
            And User click pulang "06:00 - 12:00" at flight Page
            And User click maskapai "Batik Air" at flight Page
        Then User successfully "filter airline return" at flight Page
        When User click "selected flight return" at flight Page
        Then User successfully go to checkout flight Page
        When User choose title "nyonya" in detail pemesanan at checkout flight Page
            And User fill "nama" "rifki nurgraha" in detail pemesanan at checkout flight Page
            And User fill "nomor telepon" "8128282828" in detail pemesanan at checkout flight Page
            And User click "sama dengan pemesan" at checkout flight Page
            And User fill "kewarganegaraan" "indonesia" in detail pemesanan at checkout flight Page
            And User click "lanjutkan ke pembayaran" at checkout flight Page
        When User click "mandiri virtual account" at transaction Page
        Then User successfully go to "mandiri virtual account" transaction Page
        When User click "lanjutkan mandiri virtual account" at transaction Page
        Then User successfully go to "finish order mandiri virtual account" transaction Page
        When User click "saya sudah membayar" at transaction Page
        Then User successfully go to my order Page
        When User go to home Page
            And User click "profil" at home Page
            And User click "keluar" at home Page
        Then User successfully "logout" at home Page