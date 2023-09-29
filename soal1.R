n <- 10       # jumlah bayi lahir dalam sehari
p <- 0.488    # probabilitas bayi lahir adalah laki-laki

# b. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?

prob_3 <- dbinom(3, size=n, prob=p)
prob_3
# keluaran hasil = 0.1286265


# c. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?

# hitung dan jumlahkan probabilitas kelahiran bayi laki-laki kurang dari 3
prob_0 <- dbinom(0, size=n, prob=p)
prob_1 <- dbinom(1, size=n, prob=p)
prob_2 <- dbinom(2, size=n, prob=p)
prob_krg_dr_3 <- prob_0 + prob_1 + prob_2
prob_krg_dr_3
# keluaran hasil = 0.0636442


# d. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?

# kurangi probabilitas total dengan probabilitas kurang dari 3
prob_3_lebih <- 1 - prob_krg_dr_3
prob_3_lebih
# keluaran hasil = 0.9363558


# e. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?

# nilai harapan
ekspektasi <- n * p
ekspektasi
# keluaran hasil = 4.88

# simpangan baku
stan_dev <- sqrt(n * p * (1 - p))
stan_dev
# keluaran hasil = 1.580683


# f. Gambarkan histogram pendistribusian banyak bayi laki-laki.

# hitung probabilitas untuk tiap banyak bayi laki-laki
dist_prob <- dbinom(0:n, size=n, prob=p)

# gambar histogram
hist(0:n, breaks=n+1, freq=FALSE, ylim=c(0,0.3), xlab="Banyak bayi laki-laki", ylab="Probabilitas")
lines(0:n, dist_prob, type="h", lwd=2, col="red")