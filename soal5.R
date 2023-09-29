# a. Berapa probabilitas terjadinya suatu peristiwa acak-
# X kurang dari -2,34 dengan 6 derajat kebebasan?

# hitung nilai t
x <- -2.34
df <- 6
t <- (x - 0) / sqrt(1/df)
t
# keluaran hasil = -5.731806

prob <- pt(t, df = df)
prob
# keluaran hasil = 0.0006121977


# b. Berapa probabilitas terjadinya suatu peristiwa acak-
# X lebih dari 1,34 dengan 6 derajat kebebasan?

# hitung nilai t
x <- 1.34
df <- 6
t <- (x - 0) / sqrt(1/df)
t
# keluaran hasil = 3.282316

prob <- pt(t, df = df, lower.tail = FALSE)
prob
# keluaran hasil = 0.008386984


# c. Berapa probabilitas terjadinya suatu peristiwa acak X kurang-
# dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?

df <- 3

# hitung nilai t kurang dari -1,23
x_krg_dr <- -1.23
t_krg_dr <- (x_krg_dr - 0) / sqrt(1/df)
t_krg_dr
# keluaran hasil = -2.130422

prob_krg_dr <- pt(t_krg_dr, df = df)
prob_krg_dr
# keluaran hasil = 0.06148099

# hitung nilai t lebih dari 1,23
x_lbh_dr <- 1.23
t_lbh_dr <- (x_lbh_dr - 0) / sqrt(1/df)
t_lbh_dr
# keluaran hasil = 2.130422

prob_lbh_dr <- pt(t_lbh_dr, df = df, lower.tail = FALSE)
prob_lbh_dr
# keluaran hasil = 0.06148099

# jumlahkan probabilitas
prob_total <- prob_krg_dr + prob_lbh_dr
prob_total
# keluaran hasil = 0.122962


# d. Berapa probabilitas terjadinya suatu peristiwa acak X berada di-
# antara -0,94 dan 0,94 dengan 14 derajat kebebasan?

df <- 14

# hitung nilai t kurang dari -0,94
x_minus <- -0.94
t_minus <- (x_minus - 0) / sqrt(1/df)
t_minus
# keluaran hasil = -3.517158

prob_minus <- pt(t_minus, df = df)
prob_minus
# keluaran hasil = 0.001708354

# hitung nilai t kurang dari 0,94
x_plus <- 0.94
t_plus <- (x_plus - 0) / sqrt(1/df)
t_plus
# keluaran hasil = 3.517158

prob_plus <- pt(t_plus, df = df)
prob_plus
# keluaran hasil = 0.9982916

# hitung probabilitas
prob_total <- prob_plus - prob_minus
prob_total
# keluaran hasil = 0.9965833


# e. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan-
# 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?

luasan <- 0.0333
df <- 5

t <- qt(luasan, df = df, lower.tail = TRUE)
t
# keluaran hasil = -2.337342


# f. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125-
# satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?

luasan <- 0.125
df <- 25

t <- qt(luasan, df = df, lower.tail = FALSE)
t
# keluaran hasil = 1.177716


# g. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi-
# di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?

df <- 11
luasan <- 0.75

# hitung nilai t
t_positif <- qt(luasan, df)
t_negatif <- -t_positif

t_positif
# keluaran hasil = 0.6974453
t_negatif
# keluaran hasil = -0.6974453


# h. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di-
# bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?

df <- 23
luasan <- 0.0333

# hitung nilai t
t <- qt(luasan, df, lower.tail = FALSE)
t
# keluaran hasil = 1.925642