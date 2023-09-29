t <- 20           # waktu 20 tahun
lambda <- 1.8     # jumlah kematian karena kanker tulang dalam t

# b. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah-
# itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.

prob_4 <- dpois(4, lambda=lambda)
prob_4
# keluaran hasil = 0.07230173

# probabilitas cukup rendah, namun untuk menentukan biasa atau tidak, itu harus melibatkan faktor lain


# c. Berapa peluang paling banyak 4 kematian akibat kanker tulang?

# hitung dan jumlahkan probabilitas kematian akibat kanker tulang paling banyak 4
prob_0 <- dpois(0, lambda=lambda)
prob_1 <- dpois(1, lambda=lambda)
prob_2 <- dpois(2, lambda=lambda)
prob_3 <- dpois(3, lambda=lambda)
prob_maks_4 <- prob_0 + prob_1 + prob_2 + prob_3 + prob_4
prob_maks_4
# keluaran hasil = 0.9635933


# d. Berapa peluang lebih dari 4 kematian akibat kanker tulang?

# kurangi probabilitas total dengan probabilitas paling banyak 4
prob_lbh_dr_4 <- 1 - prob_maks_4
prob_lbh_dr_4
# keluaran hasil = 0.03640666


# e. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar-
# deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

# nilai harapan
ekspektasi <- lambda
ekspektasi
# keluaran hasil = 1.8

# simpangan baku
stan_dev <- sqrt(lambda)
stan_dev
# keluaran hasil = 1.341641


# f. Gambarkan histogram pendistribusian banyak banyak-
# kematian akibat kanker tulang untuk pekerja pabrik ban.

# buat vektor untuk sumbu x
sb_x <- seq(0, 10, by=1)

# hitung probabilitas untuk tiap kematian
dist_prob <- dpois(sb_x, lambda=lambda)

# gambar histogram
hist(sb_x, breaks=11, freq=FALSE, ylim=c(0,0.35), xlab="Banyak kematian", ylab="Probabilitas")
lines(sb_x, dist_prob, type="h", lwd=2, col="blue")


# g. Gunakan simulasi untuk memeriksa hasil sebelumnya.

set.seed(123)
jml_sim <- 100

# hitung probabilitas hasil simulasi
hasil_sim <- mean(rpois(jml_sim, lambda) > 4)
hasil_sim
# keluaran hasil = 0.02