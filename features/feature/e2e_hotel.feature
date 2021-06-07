Feature: DEKSTOP - e2e Hotel

    Create transaction with non-instant payment for 32 guest and 8 room and
    login using Facebook

    Background: Login with facebook
        Given user successfully login from facebook with email "xxxxx@yahoo.co.id" and password "xxxxx"

    Scenario: Create Transaction Hotel
        Given User go to hotel Page
        Then User successfully go to "hotel" Page
        When User click "tujuan" at hotel Page
            And User click "bali" at hotel Page
            And User choose date "Agt 20-22" at hotel Page
            And User choose "8" "room" at hotel Page
            And User choose "32" "guest" at hotel Page
            And User click "selesai tamu & kamar menu" at hotel Page
            And User click "cari hotel" at hotel Page
        Then User successfully "see result hotel" at hotel Page
        When User click "filter harga" at hotel Page
            And User fill "Rp. 1.300.000" "minimum price" at hotel Page
            And User fill "Rp. 1.600.000" "maximum price" at hotel Page
        Then User successfully "filter harga" at hotel Page
        When User click "filter area" at hotel Page
            And User click "seminyak area" at hotel Page
        Then User successfully "filter area" at hotel Page
        When User click "filter bintang hotel" at hotel Page
            And User click "4 Bintang" at hotel Page
        Then User successfully "filter bintang hotel" at hotel Page
        When User click "filter lainnya" at hotel Page
            And User click "parkir fasilitas lainnya" at hotel Page
            And User click "wifi fasilitas lainnya" at hotel Page
            And User click "terapkan fasilitas lainnya" at hotel Page
        Then User successfully "filter fasilitas lainnya" at hotel Page
        When User click "selected hotel" at hotel Page
        Then User successfully go to "hotel detail" Page
        When User click "cek ketersediaan" at hotel Page
        When User click "pesan sekarang" at hotel Page
        Then User successfully go to checkout hotel Page
        When User choose title "tuan" in detail pemesanan at checkout hotel Page
            And User fill "nama" "rifki nurgraha" in detail pemesanan at checkout hotel Page
            And User fill "nomor telepon" "8128282828" in detail pemesanan at checkout hotel Page
            And User click "lanjutkan ke pembayaran" at checkout hotel Page
        Then User successfully go to transaction Page
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
