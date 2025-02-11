#Codigo para problema 2

#tabla de frecuencias

mis_dades$cyl

#frecuencia absoluta
ni <- table(mis_dades$cyl)

barplot(ni)

#frecuencia relativa
fi <- ni/length(mis_dades$cyl)

pie(fi)

#frecuencia acumulada
Ni <- cumsum(ni)

#frecuencia relativa acumulada
Fi <- Ni/length(mis_dades$cyl)

cbind(ni, fi, Ni, Fi)


#tabla de frecuencias para continuas

x <- mis_dades$mpg
y <- cut(x,10)

#frecuencia absoluta
ni <- table(y)
#frecuencia relativa
fi <- ni/length(y)
#frecuencia acumulada
Ni <- cumsum(ni)
#frecuencia relativa acumulada
Fi <- Ni/length(y)

cbind(ni, fi, Ni, Fi)

#histograma
hist(x)
hist(x, breaks=10)
#respuesta correcta del ejercicio
hist(mis_dades$mpg)