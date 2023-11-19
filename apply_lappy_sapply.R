# apply,lapply, sapply

# 1. apply(X, MARGIN, FUN, ..., simplify = TRUE)
# ... X is a matrix
# ... Margin =1; rows; =2 columns
# ... Fun, function you imposed

rm(list=ls())

l1=c(4,9,16)
l2<-c(25,36,49)
matrix1<-cbind(l1,l2)
matrix1

matrix_apply1<-apply(matrix1,1,sum)
matrix_apply1 # this is <=> rowSums(matrix1)

apply(matrix1,2,sum) # this is <=> colSums(matrix1)


matrix1
apply(matrix1,1,sqrt) # 当向量值为1的时候，每一列的运算结果变成新的一行，即第一列的运算结果变为第一行，
                      # 第二列的运算结果变为第二行，以此类推直到最后一列的运算结果变为最后一行

apply(matrix1,2,sqrt) # 当向量值为2的时候，每一列的运算结果变成新的一列，即第一列的运算结果显示为新矩阵的第一列，
                      # 以此类推直到最后一列的运算结果变为最后一列。

# 自定义函数和apply函数的结合

myfunction<-function(x){
      result<-1+2+sqrt(x)
      return(result)
}

apply(matrix1,1,function(x) myfunction(x))
apply(matrix1,1,function(x){1+2+sqrt(x)})
apply(matrix1,1,function(x) 1+2+sqrt(x))
apply(matrix1,2,function(x) 1+2+sqrt(x))


# lapply到底是怎样一种表现形式呢，它特殊在哪里呢？
# lapply的特殊之处在于，它的输出形式为列表（list），并且每一个运算结果（数值）都是一个单独的列表。

lapply(matrix1,function(x) sqrt(x))

x<-c(1,2,3)
y<-c(3,2,1)
plot(x,y)
