rata2 <- 45
stan_dev <- 5

# a. Fungsi probabilitas dari distribusi Normal P(x1 ≤ x ≤ x2), hitung z-scorenya dan-
# plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).

# buat 100 data acak
set.seed(123)
data <- rnorm(100, mean=45, sd=5)

# buat array, hitung pdf
x <- seq(25, 65, length=100)
pdf <- dnorm(x, mean=rata2, sd=stan_dev)

# hitung nilai z
x1 <- 40
x2 <- 50
z1 <- (x1 - rata2) / stan_dev
z2 <- (x2 - rata2) / stan_dev
prob <- pnorm(z2) - pnorm(z1)
prob
# hasil = 0.6826895

# gambar grafik
plot(x,pdf,pch=20,col="orange")


# b. Gambarkan histogram dari distribusi Normal dengan breaks 50

hist(data, breaks = 50, prob = TRUE, ylim=c(0,0.2))


# c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.

# varian dari 100 data acak
varian <- var(data)
varian
# keluaran hasil = 20.83082