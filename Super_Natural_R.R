install.packages("tidyverse")
library(tidyverse)

#importar data.frame (natural2.csv)
head(natural2)

##insigths Números atômicos

#maior e menor números atomicos 

max(natural2$NumAtoms) 
min(natural2$NumAtoms) 

#filtando o minimo e o maxímo
filter(natural2, NumAtoms >= 144)

filter(natural2, NumAtoms <= 6)

# mostrando os 10 maiores números atômicos 
natural2 %>% top_n(10,NumAtoms)

# gráfico boxplot
boxplot(natural2$NumAtoms)

# media do número atômico
mean(natural2$NumAtoms)

# mediana do número atômico
median(natural2$NumAtoms)

# Histograma Baseado no número atômico
hist(natural2$NumAtoms)

##insigths do TPSA(superficie de contato)

# maior e menor tpsa 
max(natural2$tpsa) #SN0001229
min(natural2$tpsa) #SN0000126

#filtando o minimo e o maxímo
filter(natural2, tpsa <= 0)
filter(natural2, tpsa >= 933)

# mostrar os 10 maiores valores do tpsa
natural2 %>% top_n(10,tpsa)

# gráfico de disperção
boxplot(natural2$tpsa)

# media do tpsa
mean(natural2$tpsa)

# mediana do tpsa
median(natural2$tpsa)

# Histograma Baseado no número atômico
hist(natural2$tpsa)

##insigths do peso das moleculas

#maior e menor peso molecular

max(natural2$MolWt) # SN0000218
min(natural2$MolWt) # SN0002194

#filtando o minimo e o maxímo
filter(natural2, MolWt <= 85)
filter(natural2, MolWt >= 2065.9) 

# mostrando os 10 maiores valores dos pesos
natural2 %>% top_n(10,MolWt)

# gráfico tipo boxplot
boxplot(natural2$MolWt)

# media do peso molecular
mean(natural2$MolWt)

# mediana do peso molecular
median(natural2$MolWt)

# Histograma Baseado no peso molecular
hist(natural2$MolWt)

##insigths do MolLogp

#maior e menor número de Mollogp

max(natural2$MolLogp) # SN0001294
min(natural2$MolLogp) # SN0002161

#filtando o minimo e o maxímo
filter(natural2,MolLogp <= -19)
filter(natural2, MolLogp >= 25)

# mostrando os 10 maiores valores do MolLogp
natural2 %>% top_n(10,MolLogp)

# gráfico de tipo boxplot
boxplot(natural2$MolLogp)

# media do MolLogp
mean(natural2$MolLogp)

# mediana do MolLogp
median(natural2$MolLogp)

# Histograma Baseado MolLogp
hist(natural2$MolLogp)

##insigths do HAcceptors

#maior e menor número de HAcceptors

max(natural2$HAcceptors) # SN0001229
min(natural2$HAcceptors) # SN0000126

#filtando o minimo e o maxímo
filter(natural2,HAcceptors <= 0)
filter(natural2, HAcceptors >= 56)


# mostrando os 10 maiores valores dos pesos
natural2 %>% top_n(10,HAcceptors)

# gráfico do tipo boxplot
boxplot(natural2$HAcceptors)

# media do HAcceptors
mean(natural2$HAcceptors)

# mediana do HAcceptors
median(natural2$HAcceptors)

# Histograma Baseado no HAcceptors
hist(natural2$HAcceptors)

##insigths do HDonors

#maior e menor número de HDonors

max(natural2$HDonors) # SN0001563
min(natural2$HDonors) # SN0000008

#filtando o minimo e o maxímo
filter(natural2,HDonors <= 0)
filter(natural2,HDonors >= 29)

# Arranjando os 10 maiores valores dos pesos
natural2 %>% top_n(10,HDonors)

# gráfico de disperção
boxplot(natural2$HDonors)

# media do HAcceptors
mean(natural2$HDonors)

# mediana do HAcceptors
median(natural2$HDonors)

# Histograma Baseado no HAcceptors
hist(natural2$HDonors)

##insigths do RindCount

#maior e menor número de RindCount

max(natural2$RindCount) # SN0001826
min(natural2$RindCount) # SN0000074

#filtando o minimo e o maxímo
filter(natural2,RindCount <= 0)
filter(natural2,RindCount >= 23)

# mostrando os 10 maiores valores dos pesos
natural2 %>% top_n(10,RindCount)

# gráfico do tipo boxplot
boxplot(natural2$RindCount)

# media do HAcceptors
mean(natural2$RindCount)

# mediana do HAcceptors
median(natural2$RindCount)

# Histograma Baseado no HAcceptors
hist(natural2$RindCount)

##insigths do RotableBonds

#maior e menor número de RotableBonds

max(natural2$RotableBonds) # SN0001294
min(natural2$RotableBonds) # SN0000041

#filtando o minimo e o maxímo
filter(natural2,RotableBonds <= 0)
filter(natural2,RotableBonds >= 83)

# Mostrar os 10 maiores valores 
natural2 %>% top_n(10,RotableBonds)

# gráfico boxplot
boxplot(natural2$RotableBonds)

# media do RotableBonds
mean(natural2$RotableBonds)

# mediana do RotableBonds
median(natural2$RotableBonds)

# Histograma Baseado no RotableBonds
hist(natural2$RotableBonds)

##fazendo gráficos de disperção mudando somente o (x) sem repetir os mesmos 
##gráficos com as cordenadas invertidas

#gráficos de dispersão com (x) tpsa

ggplot(data=natural2) + geom_point(mapping = aes(x=tpsa, y=HDonors))

ggplot(data=natural2) + geom_point(mapping = aes(x=tpsa, y=HAcceptors))

ggplot(data=natural2) + geom_point(mapping = aes(x=tpsa, y=RotableBonds))

ggplot(data=natural2) + geom_point(mapping = aes(x=tpsa, y=NumAtoms))

ggplot(data=natural2) + geom_point(mapping = aes(x=tpsa, y=MolWt))

ggplot(data=natural2) + geom_point(mapping = aes(x=tpsa, y= RindCount))

ggplot(data=natural2) + geom_point(mapping = aes(x=tpsa, y= MolLogp))

# gráficos de dispersão com (x) NumAtoms sem repetir

ggplot(data=natural2) + geom_point(mapping = aes(x=NumAtoms, y=MolWt))

ggplot(data=natural2) + geom_point(mapping = aes(x=NumAtoms, y=HAcceptors))

ggplot(data=natural2) + geom_point(mapping = aes(x=NumAtoms, y=RindCount))

ggplot(data=natural2) + geom_point(mapping = aes(x=NumAtoms, y=MolLogp))

ggplot(data=natural2) + geom_point(mapping = aes(x=NumAtoms, y=RotableBonds))

ggplot(data=natural2) + geom_point(mapping = aes(x=NumAtoms, y=HDonors))

# gráfico de dispesão com (x) RindCount sem repetir

ggplot(data=natural2) + geom_point(mapping = aes(x=RindCount, y=HDonors))

ggplot(data=natural2) + geom_point(mapping = aes(x=RindCount, y=MolWt))

ggplot(data=natural2) + geom_point(mapping = aes(x=RindCount, y=HAcceptors))

ggplot(data=natural2) + geom_point(mapping = aes(x=RindCount, y=RotableBonds))

ggplot(data=natural2) + geom_point(mapping = aes(x=RindCount, y=MolLogp))

##gráfico de dispesão com (x) MolLogp sem repetir

ggplot(data=natural2) + geom_point(mapping = aes(x=MolLogp, y=HAcceptors))

ggplot(data=natural2) + geom_point(mapping = aes(x=MolLogp, y=MolWt))

ggplot(data=natural2) + geom_point(mapping = aes(x=MolLogp, y=HDonors))

ggplot(data=natural2) + geom_point(mapping = aes(x=MolLogp, y=RotableBonds))

##gráfico de dispesão com (x) HAcceptors sem repetir

ggplot(data=natural2) + geom_point(mapping = aes(x=HAcceptors, y=MolWt))

ggplot(data=natural2) + geom_point(mapping = aes(x=HAcceptors, y=HDonors))

ggplot(data=natural2) + geom_point(mapping = aes(x=HAcceptors, y=RotableBonds))

##gráfico de dispesão com (x) MolWt sem repetir

ggplot(data=natural2) + geom_point(mapping = aes(x=MolWt, y=HDonors))

ggplot(data=natural2) + geom_point(mapping = aes(x=MolWt, y=RotableBonds))

##gráfico de dispesão com (x) RotableBonds sem repetir

ggplot(data=natural2) + geom_point(mapping = aes(x=RotableBonds, y=HDonors))


# Gráficos de dispersão com X(NumAtoms) e linha de tendência

ggplot(data = natural2) + 
  geom_point(mapping = aes(x = NumAtoms,y = HDonors)) +
  geom_smooth(mapping = aes(x = NumAtoms,y = HDonors),se = FALSE)

ggplot(data = natural2) + 
  geom_point(mapping = aes(x = NumAtoms,y = HAcceptors)) +
  geom_smooth(mapping = aes(x = NumAtoms,y = HAcceptors),se = FALSE)

ggplot(data = natural2) + 
  geom_point(mapping = aes(x = NumAtoms,y = MolLogp)) +
  geom_smooth(mapping = aes(x = NumAtoms,y = MolLogp),se = FALSE)

ggplot(data = natural2) + 
  geom_point(mapping = aes(x = NumAtoms,y = MolWt)) +
  geom_smooth(mapping = aes(x = NumAtoms,y = MolWt),se = FALSE)

ggplot(data = natural2) + 
  geom_point(mapping = aes(x = NumAtoms,y = RindCount)) +
  geom_smooth(mapping = aes(x = NumAtoms,y = RindCount),se = FALSE)

ggplot(data = natural2) + 
  geom_point(mapping = aes(x = NumAtoms,y = RotableBonds)) +
  geom_smooth(mapping = aes(x = NumAtoms,y = RotableBonds),se = FALSE)

ggplot(data = natural2) + 
  geom_point(mapping = aes(x = NumAtoms,y = tpsa)) +
  geom_smooth(mapping = aes(x = NumAtoms,y = tpsa),se = FALSE)



