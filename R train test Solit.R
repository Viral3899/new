data("mtcars")
smp_siz=floor(0.75*nrow((mtcars)))



set.seed(123)
train_ind=sample(seq_len(nrow(mtcars)),size = smp_siz)


train=mtcars[train_ind,]
test=mtcars[-train_ind,]
train
test




data(mtcars)
smp_siz=floor(0.75*nrow(mtcars))
set.seed(1234)
training_index=sample(seq_len(nrow(mtcars)),size = smp_siz)
train=mtcars[training_index,]
test=mtcars[-training_index,]









