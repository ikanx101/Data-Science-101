# bebersih data minimarket
rm(list=ls())

# set libs
library(readxl)
library(dplyr)
library(tidyr)

bulan = 'apr2020'
nama_file = '20200401 - 20200430.xlsx'

# data penunjang
jam_converter = data.frame(jam = c(1:24),
                           ampm = c(rep('4 malam',7),rep('1 pagi',4),rep('2 siang',3),
                                    rep('3 sore',4),rep('4 malam',6)))

# langkah 1
# ambil nomor transaksi
data_idtrans <- read_excel(nama_file, 
                           col_types = c("text", "text", "numeric", 
                                         "numeric", "text", "numeric", "date", 
                                         "text", "numeric", "text", "numeric", 
                                         "text", "numeric", "numeric", "text", 
                                         "text", "text", "numeric", "text", 
                                         "numeric", "numeric", "numeric", 
                                         "text", "text", "text", "numeric", 
                                         "numeric", "numeric", "text", "numeric"))
# bebersih variabel
colnames(data_idtrans) = janitor::make_clean_names(colnames(data_idtrans))

# data id transaksi final
data_idtrans = 
  data_idtrans %>% 
  filter(!is.na(x7)) %>% 
  select(x1,x7,x12,x16,x24) %>% 
  rename(id_transaksi = x1,
         tanggal = x7,
         id_pelanggan = x12,
         nama_pelanggan = x16,
         alamat = x24) %>% 
  separate(tanggal,into = c('tanggal','waktu'),sep = ' ') %>%
  mutate(id = paste0(bulan,c(1:length(id_transaksi))),
         tanggal = lubridate::date(tanggal),
         waktu = lubridate::hms(waktu),
         jam = waktu$hour,
         hari = lubridate::wday(tanggal,label=T)) %>%
  mutate(hari = as.character(hari),
         hari = case_when(hari == 'Mon' ~ '1 Senin',
                          hari == 'Tue' ~ '2 Selasa',
                          hari == 'Wed' ~ '3 Rabu',
                          hari == 'Thu' ~ '4 Kamis',
                          hari == 'Fri' ~ '5 Jumat',
                          hari == 'Sat' ~ '6 Sabtu',
                          hari == 'Sun' ~ '7 Ahad')) %>%
  merge(jam_converter) %>%
  arrange(id)

# kita ambil data transaksi
data_trans = read_excel(nama_file)
# bebersih variabel
colnames(data_trans) = janitor::make_clean_names(colnames(data_trans))

# data transaksi final
data_trans = 
  data_trans %>% 
  mutate(x1 = as.numeric(x1)) %>%
  filter(!is.na(x1)) %>%
  select(x1,x7,x17,x19,x24,x25,x29) %>% 
  rename(no_barang = x1,
         sku = x7,
         qty = x17,
         unit = x19,
         harga = x24,
         diskon = x25,
         total_harga = x29) %>%
  mutate(qty = as.numeric(qty),
         harga = as.numeric(harga),
         diskon = as.numeric(diskon),
         total_harga = as.numeric(total_harga))

data_trans$id = 1
for(i in 2:length(data_trans$no_barang)){
  data_trans$id[i] = ifelse(data_trans$no_barang[i] == 1,
                            data_trans$id[i-1]+1,
                            data_trans$id[i-1])
}

data_trans$id = paste0(bulan,data_trans$id)

data_all = merge(data_trans,data_idtrans)

write.csv(data_all,'apr 2020.csv')