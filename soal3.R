x <- 3      # variabel acak
v <- 10     # derajat kebebasan dari x

# b. Histogram dari distribusi Chi-Square dengan 500 data acak.

# buat 500 data acak
set.seed(123)
data <- rchisq(n = 500, df = v)

# gambar histogram
hist(data, breaks = 20, prob = TRUE, ylim=c(0,0.15))
curve(dchisq(x, df = v), add = TRUE, col = "purple", lwd = 2)

# c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.

# rata-rata dari 100 data acak
rata2 <- mean(rchisq(100, v))
rata2
# keluaran hasil = 9.750329

# varian dari 100 data acak
varian <- var(rchisq(100, v))
varian
# keluaran hasil = 26.05937