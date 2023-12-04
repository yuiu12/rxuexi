library(psych) 
fa.parallel(USJudgeRatings[,-1],fa="pc",n.iter=100,show.legend = FALSE,main="Scree plot with parallel analysis") 
abline(h=1)


library(psych) 
pc <- principal(USJudgeRatings[,-1],nfactors = 1) 
pc 


library(psych) 
fa.parallel(Harman23.cor$cov,n.obs=302,fa="pc",n.iter=100,show.legend = FALSE,main="Scree plot with parallel analysis") 
abline(h=1)

library(psych) 
pc <- principal(Harman23.cor$cov,nfactors = 2,rotate="none") 
pc

rc <- principal(Harman23.cor$cov,nfactors = 2,rotate="varimax") 
rc 

library(psych) 
pc <- principal(USJudgeRatings[,-1],nfactors = 1,score=TRUE) 
head(pc$scores) 

cor(USJudgeRatings$CONT,pc$score)

library(psych) 
rc  <- principal(Harman23.cor$cov,nfactors = 2,rotate="varimax") 
round(unclass(rc$weights),2) 

options(digits = 2) 
covariances <- ability.cov$cov 
correlations <- cov2cor(covariances) 
correlations

library(psych) 
covariances <- ability.cov$cov 
correlations <- cov2cor(covariances) 
fa.parallel(correlations,n.obs=112,fa="both",n.iter=100,main="Scree plots parallel analysis") 
abline(h=c(0,1)) 

fa <- fa(correlations,nfactors=2,rotate="none",fm="pa") 
fa 

fa.varimax <- fa(correlations,nfactors=2,rotate="varimax",fm="pa") 
fa.varimax 

fa.promax <- fa(correlations,nfactors=2,rotate="promax",fm="pa") 
fa.promax 

fsm <- function(oblique) {
  if(class(oblique)[2]=="fa" & is.null(oblique$Phi)) {
    warning("Object doesn't look like oblique EFA")
  }else{
    P <- unclass(oblique$loading)
    F <- P %*% oblique$Phi
    colnames(F) <- c("PA1","PA2")
    return(F)
  }
}
fsm(fa.promax)
factor.plot(fa.promax,labels=rownames(fa.promax$loadings))

fa.diagram(fa.promax,simple=FALSE) 

fa.promax$weights

library(xts) 
sales = c(18, 33, 41,  7, 34, 35, 24, 25, 24, 21, 25, 20, 
          22, 31, 40, 29, 25, 21, 22, 54, 31, 25, 26, 35)
date = seq(as.Date("2018/1/1"), as.Date("2019/12/1"), by="month")
sales.xts <- xts(sales,date)

library(ggplot2) 
library(forecast) 
autoplot(sales.xts)
autoplot(sales.xts) + 
  geom_line(color="blue") + 
  scale_x_date(date_breaks = "1 months",date_labels = "%b %y") + 
  labs(x="",y="Scales",title="Customized Time Series Plot") +
   theme_bw() +
  theme(axis.text.x=element_text(angle=90,vjust=0.5,hjust=1),panel.grid.minor.x = element_blank())

library(forecast) 
library(ggplot2) 
theme_set(theme_bw()) 
ylim <- c(min(Nile),max(Nile)) 
autoplot(Nile) + 
  ggtitle("Raw time series") + 
  scale_y_continuous(limits = ylim) 

autoplot(ma(Nile,3)) + 
  ggtitle("Simple Moving Averages (k=3)") + 
  scale_y_continuous(limits = ylim) 

autoplot(ma(Nile,7)) + 
  ggtitle("Simple Moving Averages (k=7)") + 
  scale_y_continuous(limits = ylim) 

autoplot(ma(Nile,15)) + 
  ggtitle("Simple Moving Averages (k=15)") + 
  scale_y_continuous(limits = ylim) 

library(forecast) 
library(ggplot2) 
autoplot(AirPassengers) 
lAirPassengers <- log(AirPassengers) 
autoplot(lAirPassengers,ylab="log(AirPassengers)") 
fit <- stl(lAirPassengers,s.window = "period") 
autoplot(fit) 
fit$time.series 

library(forecast) 
library(ggplot2) 
library(directlabels) 
ggmonthplot(AirPassengers) + 
  labs(title="Month plot: AirPassengers",x="",y="Passengers (thousands)")

p <- ggseasonplot(AirPassengers) + geom_point() + 
  labs(title="Seasonal plot: AirPassengers",x="",y="Passengers (thousands)") 
direct.label(p) 

library(forecast) 
fit <- ets(nhtemp,model="ANN") 
fit
forecast(fit,1) 
autoplot(forecast(fit,1)) + labs(x="Year",y=expression(paste("Temperature (",degree*F,")",)),title="New Haven Annual Mean Temperatures")
accuracy(fit) 


library(forecast) 
fit <- ets(log(AirPassengers),model="AAA") 
fit 
accuracy(fit) 
pred <- forecast(fit,5) 
pred  
autoplot(pred) + 
  labs(title="Forecast for Air Travel",y="Log(AirPassengers)",x="Time") 
pred$mean <- exp(pred$mean) 
pred$lower <- exp(pred$lower) 
pred$upper <- exp(pred$upper) 
p <- cbind(pred$mean,pred$lower,pred$upper) 
dimnames(p)[[2]] <- c("mean","Lo 80","Lo 95","Hi 80","Hi 95") 
p

library(forecast) 
fit <- ets(JohnsonJohnson) 
fit 
autoplot(forecast(fit)) + 
  labs(x="time", y="Quarterly Earnings (Dollars)",title="Johnson and Johnson Forecasts") 

library(forecast) 
library(tseries) 
autoplot(Nile) 
ndiffs(Nile) 
dNile <- diff(Nile) 
autoplot(dNile) 
adf.test(dNile) 

autoplot(Acf(dNile)) 
autoplot(Pacf(dNile)) 

library(forecast) 
fit <- arima(Nile,order=c(0,1,1)) 
fit  
accuracy(fit) 

library(ggplot2) 
df <- data.frame(resid = as.numeric(fit$residuals)) 
df
ggplot(df,aes(sample=resid)) + 
  stat_qq() + stat_qq_line() + 
  labs(title="Normal Q-Q Plot") 
Box.test(fit$residuals,type="Ljung-Box") 

forecast(fit,3) 
autoplot(forecast(fit,3)) + labs(x="Year",y="Annual Flow") 

library(forecast) 
fit <- auto.arima(sunspots) 
fit 
forecast(fit,3) 
accuracy(fit) 

data(nutrient,package="flexclust") 
head(nutrient,4)

d <- dist(nutrient) 
as.matrix(d)[1:4,1:4] 



data(nutrient, package="flexclust")
row.names(nutrient) <- tolower(row.names(nutrient))
nutrient.scaled <- as.data.frame(scale(nutrient))                                  

d <- dist(nutrient.scaled)                                          
fit.average <- hclust(d, method="average") 

library(ggdendro) 
library(ggplot2)
ggdendrogram(fit.average) + 
  labs(title="Average Linkage Clustering")

library(NbClust) 
library(factoextra) 
nc <- NbClust(nutrient.scaled,distance = "euclidean",min.nc=2,max.nc=15,method="average")
fviz_nbclust(nc) 

clusters <- cutree(fit.average,k=5) 
table(clusters) 
nutrient.scaled$clusters <- clusters 
library(dplyr) 
profiles <- nutrient.scaled %>% 
  group_by(clusters) %>% 
  summarize_all(median) 
profiles %>% round(3) %>% data.frame() 
library(colorhcplot) 
cl <- factor(clusters,levels=c(1:5),labels=paste("cluster",1:5)) 
colorhcplot(fit.average,cl,hang=-1,lab.cex=.8,,lwd=2,main="Average-Linkage Clustering\n5 Cluster Solution")


wssplot <- function(data, nc=15, seed=1234){
  require(ggplot2)
  wss <- numeric(nc)
  for (i in 1:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)
  }
  results <- data.frame(cluster=1:nc, wss=wss)
  ggplot(results, aes(x=cluster,y=wss)) +
    geom_line(color="grey") +
    geom_point(color="steelblue", size=2) +
    theme_bw() +
    labs(x="Number of Clusters",
         y="Within groups sum of squares")
}
data(wine, package="rattle")
library(NbClust)
library(factoextra)
head(wine)
df <- scale(wine[-1]) 
head(df)
wssplot(df) 

set.seed(1234)
nc <- NbClust(df, min.nc=2, max.nc=15, method="kmeans")
fviz_nbclust(nc)

set.seed(1234)
fit.km <- kmeans(df, 3, nstart=24)

fit.km$centers
aggregate(wine[-1], by=list(cluster=fit.km$cluster), mean)

# Listing 16.5 Cluster profile plots
library(ggplot2)
library(tidyr)
means <- as.data.frame(fit.km$centers)                            
means$cluster <- 1:nrow(means)                                    

plotdata <- gather(means, key="variable", value="value", -cluster)  

ggplot(plotdata,                                                  
       aes(x=variable,
           y=value,
           fill=variable,
           group=cluster)) +
  geom_bar(stat="identity") +
  geom_hline(yintercept=0) +
  facet_wrap(~cluster) +
  theme_bw() +
  theme(axis.text.x=element_text(angle=90, vjust=0),
        legend.position="none") +
  labs(x="", y="Standardized scores",
       title = "Mean Cluster Profiles")


library(factoextra) 
fviz_cluster(fit.km,data=df) 

ct.km <- table(wine$Type,fit.km$cluster) 
ct.km
library(flexclust) 
randIndex(ct.km) 

library(cluster) 
set.seed(1234) 
fit.pam <- pam(wine[-1],k=3,stand=TRUE) 
fit.pam$medoids 

ct.pam <- table(wine$Type,fit.pam$clustering)
ct.pam
randIndex(ct.pam) 

library(fMultivar) 
library(ggplot2) 
set.seed(1234) 
df <- rnorm2d(1000,rho=.5) 
df <- as.data.frame(df) 
ggplot(df,aes(x=V1,y=V2)) + 
  geom_point(alpha=.3) + theme_minimal() + 
  labs(title="Bivariate Normal Distribution with rho=0.5") 


wssplot(df) 
library(NbClust) 
library(factoextra) 
nc <- NbClust(df,min.nc = 2,max.nc = 15,method="kmeans") 
fviz_nbclust(nc) 

library(ggplot2) 
fit <- kmeans(df,2) 
df$cluster <- factor(fit$cluster) 
ggplot(data=df,aes(x=V1,y=V2,color=cluster,shape=cluster)) + 
  theme_minimal() + 
  geom_point(alpha=.5) + 
  ggtitle("Clustering of Bivariate Normal Data")

library(clusterability)
dipdist <- clusterabilitytest(df[-3], test="dip")
dipdist


CCC = nc$All.index[, 4]
k <- length(CCC)
plotdata <- data.frame(CCC = CCC, k = seq_len(k))
ggplot(plotdata, aes(x=k, y=CCC)) +
  geom_point() + geom_line() +
  theme_minimal() +
  scale_x_continuous(breaks=seq_len(k)) +
  labs(x="Number of Clusters")

loc <- "http://mp.ituring.com.cn/files/RiA3/datasets"
ds <- "breast-cancer-wisconsin/breast-cancer-wisconsin.data" 
url <- paste(loc,ds,sep="/") 
breast <- read.table(url,sep=",",header=FALSE,na.strings = "?")
names(breast) <- c("ID", "clumpThickness", "sizeUniformity",
                   "shapeUniformity", "maginalAdhesion", 
                   "singleEpithelialCellSize", "bareNuclei", 
                   "blandChromatin", "normalNucleoli", "mitosis", 
                   "class")
df <- breast[-1] 
df$class <- factor(df$class,levels=c(2,4),labels=c("benign","malignant")) 
df <- na.omit(df) 
set.seed(1234) 
index <- sample(nrow(df),0.7*nrow(df)) 
train <- df[index,]
test <- df[-index,]
table(train$class)
table(test$class)

fit.logit <- glm(class~.,data=train,family=binomial()) 
summary(fit.logit) 
prob <- predict(fit.logit,test,type="response") 
logit.pred <- factor(prob > .5,levels=c(FALSE,TRUE),labels=c("benign","malignant"))
logit.perf <- table(test$class,logit.pred,dnn=c("Actual","Predicted")) 
logit.perf 

library(rpart) 
dtree <- rpart(class ~.,data=train,method="class",parms=list(split="information")) 
dtree$cptable 
plotcp(dtree) 
dtree.pruned <- prune(dtree,cp=.01705) 
library(rattle) 
fancyRpartPlot(dtree.pruned,sub="Classification Tree") 
dtree.pred <- predict(dtree.pruned,test,type="class") 
dtree.perf <- table(test$class,dtree.pred,dnn=c("Actual","Predicted")) 
dtree.perf

library(partykit) 
fit.ctree <- ctree(class~.,data=train) 
plot(fit.ctree,main="Conditional Inference Tree",gp=gpar(fontsize=8)) 
ctree.pred <- predict(fit.ctree,test,type="response") 
ctree.perf <- table(test$class,ctree.pred,dnn=c("Actual","Predicted")) 
ctree.perf


library(randomForest) 
set.seed(1234) 
fit.forest <- randomForest(class~.,data=train,importance=TRUE) 
fit.forest 
randomForest::importance(fit.forest,type=2)
forest.pred <- predict(fit.forest,test) 
forest.perf <- table(test$class,forest.pred,dnn=c("Actual","Predicted")) 
forest.perf 

library(e1071) 
set.seed(1234) 
fit.svm <- svm(class~.,data=train) 
fit.svm 
svm.pred <- predict(fit.svm,test) 
svm.perf <- table(test$class,svm.pred,dnn=c("Actual","Predicted")) 
svm.perf 

set.seed(1234) 
tuned <- tune.svm(class~.,data=train,gamma=10^(-6:1),cost=10^(-10:10)) 
tuned 
fit.svm <- svm(class~.,data=train,gamma=.01,cost=1) 
svm.pred <- predict(fit.svm,na.omit(test)) 
svm.perf <- table(na.omit(test)$class,svm.pred,dnn=c("Actual","Predicted")) 
svm.perf 

performance <- function(table, n=2){
  if(!all(dim(table) == c(2,2)))
    stop("Must be a 2 x 2 table")
  tn = table[1,1]
  fp = table[1,2]
  fn = table[2,1]
  tp = table[2,2]
  sensitivity = tp/(tp+fn)
  specificity = tn/(tn+fp)
  ppp = tp/(tp+fp)
  npp = tn/(tn+fn)
  hitrate = (tp+tn)/(tp+tn+fp+fn)
  result <- paste("Sensitivity = ", round(sensitivity, n) ,
                  "\nSpecificity = ", round(specificity, n),
                  "\nPositive Predictive Value = ", round(ppp, n),
                  "\nNegative Predictive Value = ", round(npp, n),
                  "\nAccuracy = ", round(hitrate, n), "\n", sep="")
  cat(result)
}
performance(logit.perf) 
performance(dtree.perf) 
performance(ctree.perf) 
performance(forest.perf) 
performance(svm.perf) 

library(DALEX) 
alex <- data.frame(
  clumpThickness = 6,
  sizeUniformity = 1,
  shapeUniformity = 1, 
  maginalAdhesion = 1,
  singleEpithelialCellSize = 3,
  bareNuclei = 9,
  blandChromatin = 7,
  normalNucleoli = 3,
  mitosis = 3
)
predict(fit.forest,alex,type="prob") 
set.seed(1234) 
explainer_rf_malignant <- explain(fit.forest,data=train,y=train$class == "malignant",predict_function = function(m,x) predict(m,x,type="prob")[,2])
rf_pparts <- predict_parts(explainer = explainer_rf_malignant,new_observation = alex,type="break_down") 
plot(rf_pparts) 

set.seed(1234) 
rf_pparts = predict_parts(explainer = explainer_rf_malignant,new_observation = alex,type="shap") 
plot(rf_pparts) 

#加载数据集
data(sleep,package="VIM") 
#列出没有缺失值的行
sleep[complete.cases(sleep),] 
#列出有一个或多个缺失值的行
sleep[!complete.cases(sleep),]
sum(is.na(sleep$Dream)) 
mean(is.na(sleep$Dream)) 
mean(!complete.cases(sleep)) 

library(mice) 
data(sleep,package="VIM") 
md.pattern(sleep,rotate.names = TRUE) 

library("VIM") 
aggr(sleep,prop=FALSE,numbers=TRUE) 


marginplot(sleep[c("Gest","Dream")],pch=20,col=c("darkgray","red","blue")) 

x <- as.data.frame(abs(is.na(sleep))) 
head(sleep,n=5) 
head(x,n=5) 
y <- x[which(apply(x,2,sum)>0)]
cor(y) 

cor(sleep,y,use="pairwise.complete.obs") 

options(digits = 1) 
cor(na.omit(sleep)) 

fit <- lm(Dream ~ Span + Gest,data=na.omit(sleep)) 
summary(fit) 

cor(sleep,use="pairwise.complete.obs") 

library(VIM) 
head(sleep) 
sleep_imp <- kNN(sleep,imp_var=FALSE) 
head(sleep_imp) 

library(missForest) 
set.seed(1234) 
sleep_imp <- missForest(sleep)$ximp 
head(sleep_imp) 

library(mice) 
imp <- mice(data,m) 
fit<- with(imp,analysis) 
pooled <- pool(fit) 
summary(pooled)

library(mice) 
data(sleep,package="VIM") 
imp <- mice(sleep,seed=1234) 
fit <- with(imp,lm(Dream ~ Span + Gest)) 
pooled <- pool(fit) 
summary(pooled)
 
imp$imp$Dream
 

dataset3 <- complete(imp,action=3) 
dataset3

library(ggplot2) 
ggplot(data=mtcars,aes(x=wt,y=mpg)) + 
  geom_point() + labs(title="Fuel efficiency by car weight") 

library(ggplot2) 
ggplot(mtcars,aes(x=wt,y=mpg)) + 
  geom_point() + 
  scale_x_continuous(name="Weight (1000 lbs.)",n.breaks = 10,minor_breaks = NULL,limits = c(1.5,5.5)) + 
  scale_y_continuous(name="Miles per gallon",breaks = seq(10,35,5),minor_breaks = seq(10,35,1),limits = c(10,35)) + 
  labs(title="Fuel efficiency by car weight") 

library(ISLR)
library(ggplot2)
ggplot(Wage, aes(race, fill = education)) +
  geom_bar(position = "fill") +
  labs(title = "Participant Education by Race")


head(Wage[c("major","education")],4)

library(ISLR)
library(ggplot2)
library(scales)
ggplot(Wage, aes(race, fill=education)) +
  geom_bar(position="fill") +
  scale_x_discrete(name = "",                                              
                   limits = c("3. Asian", "1. White", "2. Black"),    
                   labels = c("Asian", "White", "Black")) +
  scale_color_discrete(labels = c("<HS Grad", "HS Grad", "Some College",
                                  "College Grad", "Advanced Degree")) +
  scale_y_continuous(name = "Percent",                                     
                     label = percent_format(accuracy=2),            
                     n.breaks=10) +                                 
  labs(title="Participant Education by Race")

library(ggplot2) 
p <- ggplot(mtcars,aes(x=wt,y=mpg,color=disp)) + 
  geom_point(shape=19,size=3) + 
  scale_x_continuous(name="Weight (1000 lbs.)",n.breaks = 10,minor_breaks = NULL,limits = c(1.5,5.5)) +
  scale_y_continuous(name="Miles per gallon",breaks = seq(10,35,5),minor_breaks = seq(10,35,1),limits = c(10,35)) 
p + ggtitle("A. Default color gradient") 
p + scale_color_gradient(low="grey",high="black") + ggtitle("B. Greyscale gradient") 

p + scale_color_gradient(low="red", high="blue") +
  ggtitle("C. Red-blue color gradient")

p + scale_color_steps(low="red", high="blue") +
  ggtitle("D. Red-blue binned color Gradient")

p + scale_color_steps2(low="red", mid="white", high="blue",
                       midpoint=median(mtcars$disp)) +
  ggtitle("E. Red-white-blue binned gradient")

p + scale_color_viridis_c(direction = -1) +
  ggtitle("F. Viridis color gradient")

library(ISLR)
library(ggplot2)
p <- ggplot(Wage, aes(race, fill=education)) +
  geom_bar(position="fill") +
  scale_y_continuous("Percent", label=scales::percent_format(accuracy=2),
                     n.breaks=10) +
  scale_x_discrete("",
                   limits=c("3. Asian", "1. White", "2. Black"),
                   labels=c("Asian", "White", "Black"))

p + ggtitle("A. Default colors")

p + scale_fill_brewer(palette="Set2") +
  ggtitle("B. ColorBrewer Set2 palette")

p + scale_fill_viridis_d() +
  ggtitle("C. Viridis color scheme")

p + scale_fill_manual(values=c("gold4", "orange2", "deepskyblue3", 
                               "brown2", "yellowgreen")) +
  ggtitle("D. Manual color selection")

library(ggplot2) 
p <- ggplot(data=mtcars,aes(x=wt,y=mpg)) + 
geom_point() + 
  labs(x="Weight (1000 lbs.)",y="Miles per gallon") 
p + theme_grey()+ labs(title="theme_grey") 
p + theme_bw() + labs(title="theme_bw")
p + theme_minimal() + labs(title="theme_minimal") 
p + theme_classic() + labs(title="theme_classic") 

findfont <- function(x) {
  suppressMessages(require(showtext)) 
  suppressMessages(require(dplyr))
  filter(font_files(),grepl(x,family,ignore.case = TRUE)) %>% 
    select(path,file,family,face) 
}
findfont("comic") 

font_add("comic",regular="E:/R学习/comic.ttf",bold="E:/R学习/comicbd.ttf",italic="E:/R学习/comici.ttf")

font_add_google("Schoolbell","bell")


library(ggplot2)
library(showtext)
font_add("comic", regular = "comic.ttf",                 
         bold = "comicbd.ttf", italic="comici.ttf")
font_add("Caveat", regular = "Caveat-Regular.ttf",
         bold = "caveat-bold.ttf")

font_add_google("Schoolbell", "bell")                    
font_add_google("Gochi Hand", "gochi")

showtext_auto()                                          
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(title = "Fuel Efficiency by Car Weight",
       subtitle = "Motor Trend Magazine 1973",
       caption = "source: mtcars dataset",
       x = "Weight (1000 lbs)",
       y = "Miles per gallon") +
  
  theme(plot.title    = element_text(family = "bell", size=14),   #4
        plot.subtitle = element_text(family = "gochi"),
        plot.caption  = element_text(family = "caveat", size=15),
        axis.title    = element_text(family = "comic"),
        axis.text     = element_text(family = "comic", 
                                     face="italic", size=8))

library(ggplot2) 
ggplot(mtcars,aes(wt,mpg,color=factor(cyl))) + 
  geom_point(size=3) + 
  scale_color_discrete(name="Cylinders") + 
  labs(title="Fuel Efficiency for 32 Automobiles",x="Weight (1000 lbs)",y="Miles per gallon") + 
  theme(legend.position = c(.95,.95),legend.justification = c(1,1),legend.background = element_rect(fill="lightgrey",color="white",size=1),legend.key = element_blank(),legend.direction = "horizontal")


library(ggplot2) 
mtcars$am <- factor(mtcars$am,labels=c("Automatic","Manual")) 
ggplot(mtcars,aes(disp,mpg)) + geom_point(aes(color=factor(cyl)),size=2) + 
  geom_smooth(method="lm",formula=y ~ x + I(x^2),linetype="dotted",se=FALSE) + 
  scale_color_discrete("Number of cylinders ") + 
  facet_wrap(~am,ncol=2) + 
  labs(title="Mileage,transmission type, and number of cylinders",x="Engine displacement (cu. in.)",y="Miles per gallon") + 
  theme_bw() + 
  theme(strip.background = element_rect(fill="white"),
        panel.grid.major = element_line(color="lightgrey"),
        panel.grid.minor = element_line(color="lightgrey",linetype="dashed"),
        axis.ticks = element_blank(),
        legend.position = "top",
        legend.key=element_blank()) 

library(ggplot2) 
ggplot(data=mtcars,aes(x=wt,y=mpg)) + 
  geom_point(color="steelblue") + 
  geom_text(label=row.names(mtcars)) + 
  labs(title="Fuel efficiency by car weight",x="Weight (1000 lbs)",y="Miles per gallon") 


library(ggplot2) 
library(ggrepel) 
ggplot(mtcars,aes(x=wt,y=mpg)) + 
  geom_point(color="steelblue") + 
  geom_hline(yintercept = median(mtcars$mpg),linetype="dashed",color="steelblue") + 
  geom_label(x=5.2,y=20.5,label="median MPG",color="white",fill="steelblue",size=3) + 
  geom_text_repel(label=row.names(mtcars),size=3) + 
  labs(title="Fuel efficiency by car weight",x="Weight (1000 lbs)",y="Miles per gallon") 

library(ggplot2) 
library(dplyr) 
library(ISLR) 
plotdata <- Wage %>%                                  
  group_by(race) %>%
  summarize(n = n()) %>%
  mutate(pct = n / sum(n),
         lbls = scales::percent(pct),
         race = factor(race, labels = c("White", "Black", 
                                        "Asian", "Other")))
plotdata

ggplot(data=plotdata, aes(x=race, y=pct)) +
  geom_bar(stat = "identity", fill="steelblue") +     
  geom_text(aes(label = lbls),                    
            vjust = -0.5, 
            size = 3) +
  labs(title = "Participants by Race",
       x = "", 
       y="Percent") +
  theme_minimal()

library(ggplot2)
library(dplyr)
library(ISLR)

plotdata <- Wage %>%                                
  group_by(race, education) %>%
  summarize(n = n()) %>% 
  mutate(pct = n/sum(n),
         lbl = scales::percent(pct))

ggplot(plotdata, aes(x=race, y=pct, fill=education)) +
  geom_bar(stat = "identity", 
           position="fill", 
           color="lightgrey") +
  scale_y_continuous("Percent",                                 
                     label=scales::percent_format(accuracy=2),
                     n.breaks=10) +
  scale_x_discrete("",                                            
                   limits=c("3. Asian", "1. White", "2. Black"),
                   labels=c("Asian", "White", "Black")) +
  geom_text(aes(label = lbl),                                   
            size=3, 
            position = position_stack(vjust = 0.5)) +
  labs(title="Participant Education by Race",
       fill = "Education") +
  theme_minimal() +                                                
  theme(panel.grid.major.x=element_blank())

library(ggplot2) 
library(patchwork) 
p1 <- ggplot(mtcars,aes(disp,mpg)) + 
  geom_point() + 
  labs(x="Engine displacement",y="Miles per gallon") 
p2 <- ggplot(mtcars,aes(factor(cyl),mpg)) + 
  geom_boxplot() + 
  labs(x="Number of cylinders",y="Miles per gallon") 

p3 <- ggplot(mtcars,aes(mpg)) + 
  geom_histogram(bins=8,fill="darkgrey",color="white") + 
  labs(x="Miles per gallon",y="Frequency") 
(p1 | p2) / p3 + plot_annotation(title="Fuel Efficiency Data") &
  theme_minimal() + 
  theme(axis.title = element_text(size=8),axis.text=element_text(size=8)) 

library(ggplot2) 
library(dplyr) 
library(plotly) 
mtcars$cyl <- factor(mtcars$cyl) 
mtcars$name <- row.names(mtcars) 
p <- ggplot(mtcars,aes(x=disp,y=mpg,color=cyl)) + 
  geom_point() 
ggplotly(p) 

library(ggplot2) 
library(plotly) 
mtcars$cyl <- factor(mtcars$cyl) 
mtcars$name <- row.names(mtcars) 
p <- ggplot(mtcars,aes(x=disp,y=mpg,color=cyl,text=paste(name,"\n","mpg:",mpg,"\n","disp:",disp,"\n","cyl:",cyl,"\n","gear:",gear))) + 
  geom_point() 
ggplotly(p,tooltip = c("text"))

x <- c(1,2,3,4,5,6,7,8) 
class(x) 
print(x) 
attr(x,"dim") <- c(2,4) 
print(x) 
class(x) 
attributes(x)

attr(x,"dimnames") <- list(c("A1","A2"),c("B1","B2","B3","B4")) 
print(x) 
attr(x,"dim") <- NULL 
class(x) 
print(x) 


set.seed(1234) 
fit <- kmeans(iris[1:4],3) 
names(fit) 
unclass(fit) 

sapply(fit,class)

x <- c(20,30,40) 
x[3] 
x[c(2,3)] 
x <- c(A=20,B=30,C=40) 
x[c(2,3)] 
x[c("B","C")] 
fit[c(2,7)]
fit$centers 
fit[[2]][1,]
set.seed(1234) 
fit <- kmeans(iris[1:4],3) 
means <- fit$center
means <- as.data.frame(means) 
means$cluster <- row.names(means) 
library(tidyr) 
plotdata <- gather(means,key="variable",value="value",-cluster) 
names(plotdata) <- c("Cluster","Measurement","Centimeters") 
head(plotdata) 
library(ggplot2) 
ggplot(plotdata,aes(x=Measurement,y=Centimeters,group=Cluster)) + 
  geom_point(size=3,aes(shape=Cluster,color=Cluster)) + 
  geom_line(size=1,aes(color=Cluster)) + 
  labs(title="Mean Profiles for iris Cluster") + theme_minimal() 

mymethod <- function(x, ...) UseMethod("mymethod")    
mymethod.a <- function(x) print("Using A")
mymethod.b <- function(x) print("Using B")
mymethod.default <- function(x) print("Using Default")

x <- 1:5
y <- 6:10
z <- 10:15
class(x) <- "a"             
class(y) <- "b"

mymethod(x)                 
mymethod(y)
mymethod(z)

class(z) <- c("a", "b")     
mymethod(z)
class(z) <- c("c", "a", "b")
mymethod(z)

set.seed(1234)
mymatrix <- matrix(rnorm(10000000), ncol=10)
accum <- function(x){
  sums <- numeric(ncol(x))
  for (i in 1:ncol(x)){
    for(j in 1:nrow(x)){
      sums[i] <- sums[i] + x[j,i]
    }
  }
}
system.time(accum(mymatrix))   # using loops
system.time(colSums(mymatrix)) # using vectorization

set.seed(1234)
k <- 100000
x <- rnorm(k)

y <- 0
system.time(for (i in 1:length(x)) y[i] <- x[i]^2)

y <- numeric(k)
system.time(for (i in 1:k) y[i] <- x[i]^2)

y <- numeric(k)
system.time(y <- x^2)


library(foreach) 
library(doParallel) 
registerDoParallel(cores = detectCores()) 
eig <- function(n,p) {
  x <- matrix(rnorm(100000),ncol=100) 
  r <- cor(x) 
  eigen(r)$value 
}
n <- 1000000 
p <- 100 
k <- 500 
system.time(
  x <- foreach(i=1:k, .combine=rbind) %do% eig(n,p) 
)
system.time(
  x <- foreach(i=1:k, .combine = rbind) %dopar% eig(n,p) 
)


args(mad)
debug(mad) 
mad(1:10) 


f <- function(x, y){
  z <- x + y
  g(z)
}
g <- function(x){
  z <- round(x)
  h(z)
}

h <- function(x){
  set.seed(1234)
  z <- rnorm(x)
  print(z)
}
options(error=recover)

f(2,3)
f(2, -3) # enters debugging mode at this point

lm(weight ~ height,data=women) 

install.packages("rmarkdown") 

installed.packages("tinytex") 
tinytex::install_tinytex() 

install.packages("broom")
install.packages("kableExtra") 

library(rmarkdown) 
render("E:/R学习/women.Rmd")


install.packages("knitr")
install.packages("multcomp") 
install.packages("tidyquant")


if(!require(remotes)) install.packages("remotes")
remotes::install_github("rkabacoff/edatools")
library(edatools) 
help(contents) 
df_info <- contents(happiness) 
df_info 
plot(df_info) 

install.packages(c("devtools","usethis","roxygen2"),depend=TRUE)
install.packages("tinytex") 
tinytex::install_tinytex()
library(usethis) 
create_package("edatools") 
