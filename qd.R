patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("Poor","Improved","Excellent","Poor")
diabetes <- factor(diabetes)
diabetes
status <- factor(status,order=TRUE)
status
patientdata <- data.frame(patientID,age,diabetes,status)
str(patientdata)
summary(patientdata)
g <- "My First List"
h <- c(25,26,18,39)
j <- matrix(1:10,nrow=5)
k <- c("one","two","three")
mylist <- list(title=g,ages=h,j,k)
mylist
mylist[[2]]
mylist[["ages"]]
library(tibble)
mtcars <- as_tibble(mtcars)
mtcars
mydata <- data.frame(age=numeric(0),gender=character(0),weight=numeric(0))
mydata <- edit(mydata)
mydataxt <- "
  age gender weight
  25   m  166
  30   f   115
  18   f   120
"
mydata <- read.table(header=TRUE,text=mydataxt)
mydata
grades <- read.table("E:/R学习/studentgrades.csv",header=TRUE,row.names = "StudentID",sep=",")
grades
str(grades)
grades <- read.table("studentgrades.csv",header=TRUE,row.names = "StudentID",sep=",",colClasses = c("character","character","character","numeric","numeric","numeric"))
grades
str(grades)
#访问数据库管理系统
#ODBC接口
#步骤就是要找到自己下载的odbc的地址我的是C:\Windows\SysWOW64\odbcad32.exe
#前提就是你的mysql要下载odbc的connect，不然上面没有这个东西

library(RODBC)
myconn <- odbcConnect("dn",uid="root",pwd="123456")
sqlTables(myconn)  
pundat <- sqlQuery(myconn,"select * from user1")
close(myconn)

#创建leadership数据框
leadership <- data.frame(
  manager = c(1,2,3,4,5),
  date = c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09"),
  country = c("US","US","UK","UK","UK"),
  gender = c("M","F","F","M","F"),
  age = c(32,45,25,39,99),
  q1 = c(5,3,3,3,2),
  q2 = c(4,5,5,3,2),
  q3 = c(5,2,5,4,1),
  q4 = c(5,5,5,NA,2),
  q5 = c(5,5,2,NA,1)
)
#创建新变量
leadership$total_score  <-  leadership$q1 + leadership$q2 + 
  leadership$q3 + leadership$q4 + leadership$q5

leadership$mean_score <- (leadership$q1 + leadership$q2 + leadership$q3 + 
                            leadership$q4 + leadership$q5)/5
leadership <- transform(leadership,
                        total_score  =  q1 + q2 + q3 + q4 + q5,
                        mean_score = (q1 + q2 + q3 + q4 + q5)/5)

#变量的冲编码
#将一个连续形变量修改为一组类别值
#将误编码的值替换为正确值
#基于一组分数线创建一个表示及格/不及格的变量
#within允许修改数据框 
leadership$age[leadership$age == 99] <- NA 
leadership <- within(leadership,{
  agecat <- NA
  agecat[age > 75]  <- "Elder"
  agecat[age >= 55 & age <= 75] <- "Middle Aged"
  agecat[age < 55]  <- "Young"
})
#调用一个交互式编辑器
fix(leadership)
names(leadership)
#names(leadership)[2] <- "testDate"  修改我的里面的名字

#缺失值 is.na 允许我们检测缺失值是否存在 第6列至第10列
is.na(leadership[,6:10])
#重编码某些值为缺失值
#在分析中排除缺失值
#na.rm 计算之前移除缺失值并使用剩余值进行计算
#na.omit  移除所有含有缺失值的观测值  删除所有含有缺失值的行
leadership
newdata <- na.omit(leadership)
newdata

#日起值
#as.Date转换 
myformat <- "%m/%d/%y"
leadership$date <- as.Date(leadership$date,myformat)
leadership
#sys.Date 返回当前的日期 
#date() 返回当前的日期和时间
Sys.Date()
date()
#format(x,format="output_format")输出指定格式的日期值，提取日期值的某些部分
today <- Sys.Date()
format(today,format="%B %d %Y")
format(today,format="%A")
startdate <- as.Date("2020-02-13")
enddate <- as.Date("2021-01-22")
days <- enddate - startdate
days
#difftime 计算时间间隔 
today <- Sys.Date()
dob <- as.Date("1956-10-12")
difftime(today,dob,units = "weeks")

#日期变量转换为字符型变量
#as.character 日期转换为字符型
strDates <- as.character(dates)
#is.numeric    as.numeric 
#is.character  as.character
#is.vector()   as.vector()
#is.matrix  as.matrix()
#is.factor  as.factor 
#is.logical   as.logical
a <- c(1,2,3)
a
is.numeric(a)
is.vector(a)
a <- as.character(a)
a
is.numeric(a)
is.vector(a)
is.character(a)
#数据排序
#order函数对一个数据框进行排序 升序 
newdata <- leadership[order(leadership$gender,leadership$age),]
newdata
newdata <- leadership[order(leadership$gender,-leadership$age),]
newdata

#数据集的合并
#merge
#直接横向合并两个矩阵或数据框 并且不需要指定与公共索引 cbind函数

#数据框中添加行
#rbind 纵向合并 
#删除A中的多余变量
#B中创建追加的变量并将其值设为NA 

#切分数据集 
newdata <- leadership[,c(6:10)]
newdata

vars <- c("q1","q2","q3","q4","q5")
newdata <- leadership[,vars]
newdata

myvars <- paste("q",1:5,sep="")
newdata <- leadership[myvars]
newdata

#剔除变量
#myvars <- names(leadership) %in% c("q3","q4")
#选人观测值
newdata <- leadership[1:3,]
newdata
newdata <- leadership[leadership$gender == "M" & leadership$age > 30,]
newdata

leadership$date <- as.Date(leadership$date,"%m/%d/%y")
startdate <- as.Date("2009-01-01")
enddate <- as.Date("2009-12-31")
newdate <- leadership[which(leadership$date >= startdate & leadership$date <= enddate),]
newdata

newdata <- subset(leadership,age >= 35 | age < 23,select=c(q1,q2,q3,q4))
newdata <- subset(leadership,gender=="M" & age > 25,select=gender:q4)
mysample <- leadership[sample(1:nrow(leadership),3,replace = FALSE),]
mysample


leadership <- data.frame(
  manager = c(1, 2, 3, 4, 5),
  date    = c("10/24/08", "10/28/08", "10/1/08", "10/12/08", "5/1/09"),
  country = c("US", "US", "UK", "UK", "UK"),
  gender  = c("M", "F", "F", "M", "F"),
  age     = c(32, 45, 25, 39, 99),
  q1      = c(5, 3, 3, 3, 2),
  q2      = c(4, 5, 5, 3, 2),
  q3      = c(5, 2, 5, 4, 1),
  q4      = c(5, 5, 5, NA, 2),
  q5      = c(5, 5, 2, NA, 1)
)
library(dplyr)
leadership <- mutate(leadership,total_score=q1 + q2 + q3 + q4 + q5,mean_score=total_score / 5)
leadership$gender <- recode(leadership$gender,"M" = "male","F" = "female")
leadership <- rename(leadership,ID="manager",sex="gender")
leadership <- arrange(leadership,sex,total_score)
leadership_ratings <- select(leadership,ID,mean_score)
leadership_men_high <- filter(leadership,sex== "male" & total_score > 10)

high_potentials <- filter(leadership,total_score > 10)
high_potentials <- select(high_potentials,ID,country,mean_score)
high_potentials <- arrange(high_potentials,country,mean_score)

high_potentials <- filter(leadership,total_score > 10) %>%
  select(ID,country,mean_score) %>%
  arrange(country,mean_score)

library(sqldf)
newdf <- sqldf("select * from mtcars where carb=1 order by mpg",row.names = TRUE)
newdf
sqldf("select avg(mpg) as avg_mpg,avg(disp) as avg_disp,gear from mtcars where cyl in (4,6) group by gear")

library(ggplot2)
library(mosaicData)
ggplot(data=CPS85,mapping=aes(x=exper,y=wage))



library(ggplot2)
library(mosaicData)
ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point()


CPS85 <- CPS85[CPS85$wage < 40,]
ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point()


ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point(color="cornflowerblue",alpha=.7,size=1.5) + theme_bw()


ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point(color="cornflowerblue",alpha=.7,size=1.5) + geom_smooth(method="lm") + theme_bw()

ggplot(CPS85,mapping=aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) + geom_point(alpha=.7,size=1.5) + geom_smooth(method="lm",se=FALSE,size=1.5) + theme_bw()

ggplot(CPS85,mapping=aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) + geom_point(alpha=.7,size=3) + geom_smooth(method="lm",se=FALSE,size=1.5) + scale_x_continuous(breaks=seq(0,60,10)) + scale_y_continuous(breaks=seq(0,30,5)) + scale_color_manual(values=c("indianred3","cornflowerblue")) + theme_bw()


ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7,size=3) +
  geom_smooth(method = "lm",se=FALSE,size=1.5) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  theme_bw()
  
ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7) +
  geom_smooth(method = "lm",se=FALSE) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  facet_wrap(~sector) + 
  theme_bw()
  

ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7) +
  geom_smooth(method = "lm",se=FALSE) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  facet_wrap(~sector) + 
  labs(title="Relationship between wages and experience",subtitle = "Current Population Survey",x="Years of Experience",y="Hourly Wage",color="Gender",shape="Gender",linetype="Gender") + theme_bw()

ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7) +
  geom_smooth(method = "lm",se=FALSE) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  facet_wrap(~sector) +
  labs(title="Relationship between wages and experience",subtitle = "Current Population Survey",x="Years of Experience",y="Hourly Wage",color="Gender",shape="Gender",linetype="Gender") +theme_minimal()

  
ggplot(CPS85,aes(x=exper,y=wage,color=sex)) + geom_point(alpha=.7,size=1.5) +
  geom_smooth(method = "lm",se=FALSE,size=1) +
  scale_color_manual(values=c("lightblue","midnightblue")) +
  theme_bw()

ggplot(CPS85,aes(x=exper,y=wage)) +
  geom_point(aes(color=sex),alpha=.7,size=1.5) +
  geom_smooth(method = "lm",se=FALSE,size=1) +
  scale_color_manual(values=c("lightblue","midnightblue")) +
  theme_bw()


data(CPS85,package="mosaicData")
CPS85 <- CPS85[CPS85$wage < 40,]
myplot <- ggplot(CPS85,aes(x=exper,y=wage)) + geom_point()
myplot
myplot2 <- myplot + geom_point(size=3,color="blue")
myplot2 
myplot + geom_smooth(method = "lm") + labs(title="Mildly interesting graph")



x <- c(1,2,3,4,5,6,7,8)
mean(x)
sd(x)
n <- length(x)
n
meanx <- sum(x) / n
meanx
css <- sum((x-meanx)^2)
sdx <- sqrt(css / (n-1))
meanx 
sdx

library(ggplot2)
x <- seq(from=-3,to=3,by=0.1)
y = dnorm(x)
data <- data.frame(x=x,y=y)
ggplot(data,aes(x,y)) + geom_line() +
  labs(x="Normal Deviate",y="Density") +
  scale_x_continuous(breaks=seq(-3,3,1))


runif(5)
runif(5)
set.seed(1234)
runif(5)
set.seed(1234)
runif(5)


library(MultiRNG)
options(digits=3)
set.seed(1234)
mean <- c(230.7,146.7,3.6)
sigma <- matrix(c(15360.8, 6721.2, -47.1,
                  6721.2, 4700.9, -16.5,
                  -47.1,  -16.5,   0.3), 
                nrow = 3, ncol = 3)
sigma
mydata <- draw.d.variate.normal(500,3,mean,sigma)
mydata
mydata <- as.data.frame(mydata)
mydata
names(mydata) <- c("y","x1","x2")
dim(mydata)
head(mydata,n=10)

a <- 5
sqrt(a)
b <- c(1.243,5.654,2.99)
round(b)
c <- matrix(runif(12),nrow=3)
c
log(c)
mean(c)


mydata <- matrix(rnorm(30),nrow=6)
mydata
apply(mydata,1,mean)
apply(mydata,2,mean)
apply(mydata,2,mean,trim=0.2)
#数据处理难题的一套解决方案
options(digits = 2)#限定了输出小鼠后数字的位数
Student <- c("John Davis", "Angela Williams", "Bullwinkle Moose",
             "David Jones", "Janice Markhammer", "Cheryl Cushing",
             "Reuven Ytzrhak", "Greg Knox", "Joel England",
             "Mary Rayburn")
Math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(Student, Math, Science, English,
                     stringsAsFactors = FALSE)

z <- scale(roster[,2:4])
z
score <- apply(z,1,mean)
score
roster <- cbind(roster,score)
roster


y <- quantile(roster$score,c(.8,.6,.4,.2))
y

roster$grade <- NA
roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"
roster



name <- strsplit((roster$Student)," ")
name


Firstname <- sapply(name,"[",1)
Lastname <- sapply(name,"[",2)
roster <- cbind(Firstname,Lastname,roster[,-1])
roster

roster[order(Lastname,Firstname),]

feelings <- c("sad","afraid")
for (i in feelings)
  print(
    switch(i,happy="I am glad you are happy",
           afraid = "There is nothing to fear",
           sad = "Cheer up",
           angry = "Calm down now")
  )


mystats <- function(x,parametric=TRUE,print=FALSE){
  if(parametric) {
    center <- mean(x);spread <- sd(x)
  }else{
    center <- median(x);spread <- mad(x)
  }
  if (print & parametric) {
    cat("Mean=",center,"\n","SD=",spread,"\n")
  }else if (print & !parametric){
    cat("Median=",center,"\n","MAD=",spread,"\n")
  }
  result <- list(center=center,spread=spread)
  return(result)
}


cars <- mtcars[1:5,1:4]
cars
t(cars)

library(tidyr)
data_wide <- data.frame(ID = c("AU", "CN", "PRK"),
                        Country = c("Australia", "China", "North Korea"),
                        LExp1990 = c(76.9, 69.3, 69.9),
                        LExp2000 = c(79.6, 72.0, 65.3),
                        LExp2010 = c(82.0, 75.2, 69.6))
data_wide
data_long <- gather(data_wide,key="Variable",value="Life_Exp",c(LExp1990,LExp2000,LExp2010))
data_long

data_wide <- spread(data_long,key=Variable,value=Life_Exp)
data_wide

options(digits = 3)
aggdata <- aggregate(mtcars,by=list(mtcars$cyl,mtcars$gear),FUN=mean,na.rm=TRUE)
aggdata

aggdata <- aggregate(mtcars[-c(2,10)],by=list(Cylinders=mtcars$cyl,Gears=mtcars$gear),FUN=mean,na.rm=TRUE)
aggdata


mtcars %>%
  group_by(cyl, gear) %>%
  summarise_all(list(mean), na.rm = TRUE)

data(Arthritis,package="vcd")
table(Arthritis$Improved)

library(ggplot2)
ggplot(Arthritis,aes(x=Improved)) + geom_bar() +
  labs(title="Simple Bar chart",x="Improvement",y="Frequency")
ggplot(Arthritis,aes(x=Improved)) +geom_bar() +
  labs(title="Horizontal Bar chart",x="Improvement",y="Frequency") + coord_flip()


table(Arthritis$Improved,Arthritis$Treatment)


library(ggplot2)
ggplot(Arthritis,aes(x=Treatment,fill=Improved)) + geom_bar(position = "stack") +
  labs(title="Stacked Bar chart",x="Treatment",y="Frequency")
ggplot(Arthritis,aes(x=Treatment,fill=Improved)) +
  geom_bar(position = "dodge") +
  labs(title="Grouped Bar chart",x="Treatment",y="Frequency")
ggplot(Arthritis,aes(x=Treatment,fill=Improved)) +
  geom_bar(position = "fill") +
  labs(title="Filled Bar chart",x="Treatment",y="Proportion")

states <- data.frame(state.region,state.x77)
library(dplyr)
plotdata <- states %>%
  group_by(state.region) %>%
  summarize(mean = mean(Illiteracy))
plotdata

ggplot(plotdata,aes(x=reorder(state.region,mean),y=mean)) +
  geom_bar(stat="identity") +
  labs(x="Region",y="",title="Mean Illiteracy Rate")



plotdata <- states %>%
  group_by(state.region) %>%
  summarize(n=n(),mean=mean(Illiteracy),se=sd(Illiteracy)/sqrt(n))
plotdata

ggplot(plotdata,aes(x=reorder(state.region,mean),y=mean)) +
  geom_bar(stat="identity",fill="skyblue") +
  geom_errorbar(aes(ymin=mean-se,ymax=mean+se),width=0.2) +
  labs(x="Region",y="",title="with standard error bars")



ggplot(Arthritis,aes(x=Treatment,fill=Improved)) +
  geom_bar(position = "stack",color="black") +
  scale_fill_manual(values=c("red","grey","gold")) +
  labs(title="Stacked Bar chart",x="Treatment",y="Frequency")

ggplot(mpg,aes(x=model)) +
  geom_bar() +
  labs(title="Model names in the mpg dataset",y="Frequency",x="") +
  theme(axis.text.x=element_text(angle = 45,hjust = 1,size=8))
library(ggpie)
ggpie(mpg,class,legend=FALSE,offset=1.3,title="Automobiles by Car Class")


library(ggplot2)
library(dplyr)
library(treemapify)
plotdata <- mpg %>% count(manufacturer)
ggplot(plotdata,aes(fill=manufacturer,area=n,label=manufacturer)) +
  geom_treemap() +
  geom_treemap_text() +
  theme(legend.position = "none")


plotdata <- mpg %>%
  count(manufacturer,drv) 
  plotdata$drv <- factor(plotdata$drv,levels=c("4","f","r"),labels=c("4-wheel","front-wheel","rear"))

ggplot(plotdata,aes(fill=manufacturer,area=n,label=manufacturer,subgroup=drv)) +
  geom_treemap() + geom_treemap_subgroup_border() +geom_treemap_subgroup_text(place="middle",colour="black",alpha=0.5,grow=FALSE) +
  geom_treemap_text(colour="white",place="centre",grow=FALSE)+theme(legend.position = "none")


library(ggplot2)
library(scales)
data(mpg)
cars2008 <- mpg[mpg$year == 2008,]
ggplot(cars2008,aes(x=cty)) +
  geom_histogram() +
  labs(title="Default histogram")
ggplot(cars2008,aes(x=hwy)) +
  geom_histogram(bins=20,color="white",fill="steelblue") +
  labs(title="Colored histogram with 20 bins",x="City Miles Per Gallon",y="Frequency")
ggplot(cars2008,aes(x=hwy,y=..density..)) + geom_histogram(bins=20,color="white",fill="steelblue") +
  scale_y_continuous(labels=scales::percent) +   labs(title="Histogram with percentages",
                                                      y= "Percent",
                                                      x="Highway Miles Per Gallon")

#密度曲线 geom_density
ggplot(cars2008,aes(x=hwy,y=..density..)) +
  geom_histogram(bins=20,color="white",fill="steelblue") +
  scale_y_continuous(labels=scales::percent) +
  geom_density(color="red",size=1) + labs(title="Histogram with density curve",
                                          y="Percent" ,
                                          x="Highway Miles Per Gallon")
library(ggplot2)
data(mpg)
cars2008 <- mpg[mpg$year == 2008,]
ggplot(cars2008,aes(x=cty)) + geom_density() + labs(title="Default kernel density plot")
ggplot(cars2008,aes(x=cty)) + geom_density(fill="red") + labs(title="Default Kernel density plot",x="cty",y="density")


bw.nrd0(cars2008$cty)
ggplot(cars2008,aes(x=cty)) +
  geom_density(fill="red",bw=.5) +
  labs(title="Kernel density plot with bw=0.5",x="City Miles Per Gallon")




data(mpg,package="ggplot2")
cars2008 <- mpg[mpg$year == 2008 & mpg$cyl != 5,]
cars2008$Cylinders <- factor(cars2008$cyl)
ggplot(cars2008,aes(x=cty,color=Cylinders,linetype=Cylinders)) +
  geom_density(size=1) + labs(title="Fuel Efficiecy by Number of Cylinders",x="city Miles per Gallon")
ggplot(cars2008,aes(x=cty,fill=Cylinders)) + geom_density(alpha=.4) + labs(title="Default Kernel density plot",x="cty",y="density")

library(ggplot2)
cars <- mpg[mpg$cyl != 5,]
cars$Cylinders <- factor(cars$cyl)
cars$Year <- factor(cars$year)
ggplot(cars,aes(x=Cylinders,y=cty)) +
  geom_boxplot() +
  labs(x="Number of Cylinders",y="Miles Per Gallon",title="Car Mileage Data")

ggplot(cars,aes(x=Cylinders,y=cty,fill=Year)) +
  geom_boxplot() +
  labs(x="Number of Cylinders",y="Miles Per Gallon",title="City Mileage by # Cylinders and Year") +
  scale_fill_manual(values=c("gold","green"))

library(ggplot2)
cars <- mpg[mpg$cyl != 5,]
cars$Cylinders <- factor(cars$cyl)
ggplot(cars,aes(x=Cylinders,y=cty)) +
  geom_boxplot(width=0.2,fill="green") +
  geom_violin(fill="gold",alpha=0.3) +
  labs(x="Number of Cylinders",y="City Miles Per Gallon",title="Violin Plots of Miles Per Gallon")

library(ggplot2)
library(dplyr)
plotdata <- mpg %>%
  filter(year == "2008") %>%
  group_by(model) %>%
  summarize(meanHwy=mean(hwy))
plotdata

ggplot(plotdata,aes(x=meanHwy,y=model)) +
  geom_point() +
  labs(x="Miles Per Gallon",y="",title="Gas Mileage for Car Models")

ggplot(plotdata,aes(x=meanHwy,y=reorder(model,meanHwy))) +
  geom_point() +
  labs(x="Miles Per Gallon",y="",title="Gas Mileage for Car Models")

myvars <- c("mpg","hp","wt")
head(mtcars[myvars])



myvars <- c("mpg","hp","wt")
summary(mtcars[myvars])

mystats <- function(x,na.omit=FALSE) {
  if (na.omit)
    #数据是否包含na的值
    x <- x[! is.na(x)]
  m <- mean(x)
  n <- length(x)
  s <- sd(x)
  skew <- sum((x-m)^3/s^3)/n
  kurt <- sum((x-m)^4/s^4)/n - 3
  return(c(n=n,mean=m,stdev=s,skew=skew,kurtosis=kurt))
}
myvars <- c("mpg","hp","wt")
sapply(mtcars[myvars],mystats)

library(Hmisc)
myvars <- c("mpg","hp","wt")
describe(mtcars[myvars])

library(pastecs)
myvars <- c("mpg","hp","wt")
stat.desc(mtcars[myvars])



library(psych)
myvars <- c("mpg","hp","wt")
describe(mtcars[myvars])


datats <- function(x)sapply(x,mystats)
myvars <- c("mpg","hp","wt")
by(mtcars[myvars],mtcars$am,datats)

dstats <- function(x)sapply(x,mystats,na.omit=TRUE)
myvars <- c("mpg","hp","wt")
by(mtcars[myvars],list(Transmission=mtcars$am,Engine=mtcars$vs),FUN=dstats)

install.packages("carData")
library(dplyr)
library(carData)
Salaries %>%
  summarize(med = median(salary), 
            min = min(salary), 
            max = max(salary))

Salaries %>%
  group_by(rank, sex) %>%
  summarize(n = length(salary),
            med = median(salary), 
            min = min(salary), 
            max = max(salary))

Salaries %>%
  group_by(rank, sex) %>%
  select(yrs.service, yrs.since.phd) %>%
  summarize_all(mean)

mytable <- with(Arthritis,table(Improved))
mytable


prop.table(mytable)
prop.table(mytable) * 100

mytable <- xtabs(~Treatment + Improved,data=Arthritis)
mytable
margin.table(mytable,1)
prop.table(mytable,1)

addmargins(mytable)
addmargins(prop.table(mytable))

library(gmodels)
CrossTable(Arthritis$Treatment,Arthritis$Improved)

mytable <- xtabs(~ Treatment + Sex +Improved,data=Arthritis)
mytable
ftable(mytable)
margin.table(mytable,1)
margin.table(mytable,2)
margin.table(mytable,3)
margin.table(mytable,c(1,3))
ftable(prop.table(mytable,c(1,2)))
ftable(addmargins(prop.table(mytable,c(1,2)),3))

library(vcd)
mytable <- xtabs(~Treatment+Improved,data=Arthritis)
chisq.test(mytable)
mytable <- xtabs(~Improved+Sex,data=Arthritis)
chisq.test(mytable)

mytable <- xtabs(~Treatment+Improved,data=Arthritis)
fisher.test(mytable)

mytable <- xtabs(~Treatment+Improved+Sex,data=Arthritis)
mantelhaen.test(mytable)

library(vcd)
mytable <- xtabs(~Treatment+Improved,data=Arthritis)
assocstats(mytable)

states <- state.x77[,1:6]
cov(states)
cor(states)

x <- states[,c("Population","Income","Illiteracy","HS Grad")]
y <- states[,c("Life Exp","Murder")]
cor(x,y)

library(ggm)
colnames(states)
pcor(c(1,5,2,3,6),cov(states))

cor.test(states[,3],states[,5])

library(psych)
corr.test(states,use="complete")


library(MASS)
t.test(Prob ~ So,data=UScrime)


library(MASS)
sapply(UScrime[c("U1","U2")],function(x)(c(mean=mean(x),sd=sd(x))))
with(UScrime,t.test(U1,U2,paired=TRUE))

with(UScrime,by(Prob,So,median))
wilcox.test(Prob ~ So,data=UScrime)

sapply(UScrime[c("U1","U2")],median)
with(UScrime,wilcox.test(U1,U2,paired=TRUE))


states <- data.frame(state.region,state.x77)
kruskal.test(Illiteracy ~ state.region,data=states)



source("http://mp.ituring.com.cn/files/RiA3/rfiles/wmc.R")
states <- data.frame(state.region,state.x77)
wmc(Illiteracy ~ state.region,data=states,method="holm")

fit <- lm(weight ~ height,data=women)
summary(fit)
women$weight
fitted(fit)
residuals(fit)
plot(women$height,women$weight,xlab="Height (in inches)",ylab="Weight (in pounds)")
abline(fit)

fit2 <- lm(weight ~ height + I(height ^2),data=women)
summary(fit2)
plot(women$height,women$weight,xlab="Height (in inches)",ylab="Weight (in lbs)")
lines(women$height,fitted(fit2))

states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
cor(states)
library(car)
scatterplotMatrix(states,smooth=FALSE,main="Scatter Plot Matrix")

states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
summary(fit)


fit <- lm(mpg ~ hp + wt + hp:wt,data=mtcars)
summary(fit)

library(effects)
plot(effect("hp:wt",fit,, list(wt=c(2.2,3.2,4.2))),lines=c(1,2,3),multiline=TRUE)



states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
confint(fit)

fit <- lm(weight ~ height,data=women)
par(mfrow=c(2,2))
plot(fit)
par(mfrow=c(1,1))


library(car) 
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
qqPlot(fit,labels=row.names(states),id=list(method="identify"),simulate=TRUE,main="Q-Q Plot")

states["Nevada",]
fitted(fit)["Nevada"]
residuals(fit)["Nevada"]
rstudent(fit)["Nevada"]

durbinWatsonTest(fit)

library(car)
crPlots(fit)


library(car)
ncvTest(fit)
spreadLevelPlot(fit)


library(car)
vif(fit)
vif(fit) > 10 

library(car)
outlierTest(fit)


hat.plot<-function(fit){
  
  p<-length(coefficients(fit))
  
  n<-length(fitted(fit))
  
  plot(hatvalues(fit),main="Index Plot of Hat Values")
  
  abline(h=c(2,3)*p/n,col="red",lty=2)
  
  identify(1:n,hatvalues(fit),names(hatvalues(fit)))
  
}
hat.plot(fit)


cutoff <- 4/(nrow(states)-length(fit$coefficients)-2)
plot(fit,which=4,cook.levels = cutoff)
abline(h=cutoff,lty=2,col="red")

library(car) 
avPlots(fit,ask=FALSE,id=list(method="identify"))

library(car)
influencePlot(fit,id="noteworthy->TRUE",main="Influence Plot",sub="Circle size is proportional to Cook's distance")

library(car)
summary(powerTransform(states$Murder))

library(car)
boxTidwell(Murder ~ Population + Illiteracy,data=states)


states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit1 <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
fit2 <- lm(Murder ~ Population + Illiteracy,data=states)
anova(fit2,fit1)


fit1 <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states) 
fit2 <- lm(Murder ~ Population + Illiteracy,data=states)
AIC(fit1,fit2)

states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states) 
step(fit,direction = "backward")


library(leaps)
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
leaps  <- regsubsets(Murder ~ Population + Illiteracy + Income + Frost,data=states,nbest=4)
subssTable <- function(obj,scale){
  x <- summary(leaps)
  m <- cbind(round(x[[scale]],3),x$which[,-1])
  colnames(m)[1] <- scale
  m[order(m[,1]),]
}
subssTable(leaps,scale="adjr2")

shrinkage <- function(fit, k=10, seed=1){
  require(bootstrap)
  
  theta.fit <- function(x,y){lsfit(x,y)}                     
  theta.predict <- function(fit,x){cbind(1,x)%*%fit$coef}     
  
  x <- fit$model[,2:ncol(fit$model)]                         
  y <- fit$model[,1] 
  
  set.seed(seed)
  results <- crossval(x, y, theta.fit, theta.predict, ngroup=k)  
  r2    <- cor(y, fit$fitted.values)^2                         
  r2cv  <- cor(y, results$cv.fit)^2
  cat("Original R-square =", r2, "\n")
  cat(k, "Fold Cross-Validated R-square =", r2cv, "\n")
}
library(bootstrap)
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit <- lm(Murder ~ Population + Income + Illiteracy + Frost,data=states)
shrinkage(fit)


fit2 <- lm(Murder ~ Population + Illiteracy,data=states) 
shrinkage(fit2)

states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
zstates <- as.data.frame(scale(states))
zfit <- lm(Murder ~ Population + Income + Illiteracy + Frost,data=zstates) 
coef(zfit)

relweights <- function(fit,...){
  R <- cor(fit$model)
  nvar <- ncol(R)
  rxx <- R[2:nvar, 2:nvar]
  rxy <- R[2:nvar, 1]
  svd <- eigen(rxx)
  evec <- svd$vectors
  ev <- svd$values
  delta <- diag(sqrt(ev))
  lambda <- evec %*% delta %*% t(evec)
  lambdasq <- lambda ^ 2
  beta <- solve(lambda) %*% rxy
  rsquare <- colSums(beta ^ 2)
  rawwgt <- lambdasq %*% beta ^ 2
  import <- (rawwgt / rsquare) * 100
  import <- as.data.frame(import)
  row.names(import) <- names(fit$model[2:nvar])
  names(import) <- "Weights"
  import <- import[order(import),1, drop=FALSE]
  dotchart(import$Weights, labels=row.names(import),
           xlab="% of R-Square", pch=19,
           main="Relative Importance of Predictor Variables",
           sub=paste("Total R-Square=", round(rsquare, digits=3)),
           ...)
  return(import)
}
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
relweights(fit,col="blue")

library(dplyr)
data(cholesterol,package="multcomp")
plotdata <- cholesterol %>% 
  group_by(trt) %>%
  summarize(n=n(),mean=mean(response),sd=sd(response),ci=qt(0.975,df = n - 1) * sd / sqrt(n))
plotdata

fit <- aov(response ~ trt,data=cholesterol)
summary(fit)

library(ggplot2)
ggplot(plotdata,aes(x=trt,y=mean,group=1)) +
  geom_point(size=3,color="red") +
  geom_line(linetype="dashed",color="darkgrey") +
  geom_errorbar(aes(ymin=mean - ci,ymax=mean + ci),width=.1) +
  theme_bw() +
  labs(x="Treatment",y="Response",title="Mean Plot with 95% Confidence Interval")

pairwise <- TukeyHSD(fit) 
pairwise
plotdata <- as.data.frame(pairwise[[1]])
plotdata$conditions <- row.names(plotdata)
library(ggplot2)
ggplot(data=plotdata,aes(x=conditions,y=diff)) +
  geom_point(size=3,color="red") + 
  geom_errorbar(aes(ymin=lwr,ymax=upr,width=.2)) +
  geom_hline(yintercept=0,color="red",linetype="dashed") + 
  labs(y="Difference in mean levels",x="",title="95% family-wise confidence level") + 
  theme_bw() + coord_flip()
install.packages("multcomp")
library(multcomp)
tuk <- glht(fit,linfct=mcp(trt="Tukey"))
summary(tuk)

labels1 <- cld(tuk,level=.05)$mcletters$Letters
labels2 <- paste(names(labels1),"\n",labels1)
ggplot(data=fit$model,aes(x=trt,y=response)) +
  scale_x_discrete(breaks=names(labels1),labels=labels2) +
  geom_boxplot(fill="lightgrey") +
  theme_bw() + 
  labs(x="Treatment",title="Distribution of Response Scores by Treatment",subtitle = "Groups without overlapping letters differ significantly (p < .05)")

library(car)
fit <- aov(response ~ trt,data=cholesterol)
qqPlot(fit,simulate = TRUE,main="Q-Q Plot")


bartlett.test(response ~ trt,data=cholesterol)

library(car) 
outlierTest(fit) 

library(multcomp)
library(dplyr)
litter %>% 
  group_by(dose) %>% 
  summarise(n=n(),mean=mean(gesttime),sd=sd(gesttime))
fit <- aov(weight ~ gesttime + dose,data=litter)
summary(fit)

library(effects)
effect("dose",fit)

library(multcomp)
contrast <- rbind("no drug vs. drug" = c(3,-1,-1,-1))
summary(glht(fit,linfct=mcp(dose=contrast)))

library(multcomp)
fit2 <- aov(weight ~ gesttime*dose,data=litter)
summary(fit2)

pred <- predict(fit) 
library(ggplot2)
ggplot(data=cbind(litter,pred),aes(gesttime,weight)) + geom_point() +
  facet_wrap(~ dose,nrow=1) + geom_line(aes(y=pred)) +
  labs(title="ANCOVA for weight by gesttime and dose") +
   theme_bw() + 
  theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none")

library(dplyr)
data(ToothGrowth)
ToothGrowth$dose <- factor(ToothGrowth$dose) 
stats <- ToothGrowth %>% 
  group_by(supp,dose) %>% 
  summarise(n=n(),mean=mean(len),sd=sd(len),ci=qt(0.975,df = n - 1) * sd / sqrt(n)) 
stats
fit <- aov(len ~ supp*dose,data=ToothGrowth) 
summary(fit) 


library(ggplot2)
pd <- position_dodge(0.2)
ggplot(data=stats,aes(x=dose,y=mean,group=supp,color=supp,linetype=supp)) +
  geom_point(size=2,position = pd) + 
  geom_line(position = pd) + 
  geom_errorbar(aes(ymin=mean - ci,ymax=mean + ci),width=.1,position = pd) + 
  theme_bw() + 
  scale_color_manual(values=c("blue","red")) + 
  labs(x="Dose",y="Mean Length",title="Mean Plot with 95% Confidence Interval")

data(CO2)
CO2$conc <- factor(CO2$conc)
w1b1 <- subset(CO2, Treatment=='chilled')
fit <- aov(uptake ~ (conc*Type) + Error(Plant/(conc)), w1b1)
summary(fit)

library(dplyr)
stats <- CO2 %>%
  group_by(conc,Type) %>%
  summarise(mean_conc=mean(uptake))
library(ggplot2)
ggplot(data=stats,aes(x=conc,y=mean_conc,group=Type,color=Type,linetype=Type)) + geom_point(size=2) + geom_line(size=1) + theme_bw() + theme(legend.position = "top") + labs(x="Concentration",y="Mean Uptake",title="Interaction Plot for Plant Type and Concentration")


data(UScereal,package="MASS")
shelf <- factor(UScereal$shelf) 
shelf <- factor(shelf) 
y <- cbind(UScereal$calories,UScereal$fat,UScereal$sugars)
colnames(y) <- c("calories","fat","sugars")
aggregate(y,by=list(shelf=shelf),FUN=mean) 
cov(y) 
fit <- manova(y ~ shelf) 
summary(fit) 
summary.aov(fit) 

center <- colMeans(y)
n <- nrow(y)
p <- ncol(y)
cov <- cov(y)
d <- mahalanobis(y,center,cov)
coord <- qqplot(qchisq(ppoints(n),df=p),
                d, main="QQ Plot Assessing Multivariate Normality",
                ylab="Mahalanobis D2")
abline(a=0,b=1)
identify(coord$x, coord$y, labels=row.names(UScereal))
library(mvoutlier)
outliers <- aq.plot(y)
outliers

library(rrcov)
Wilks.test(y,shelf,method="mcd") 

library(multcomp)
levels(cholesterol$trt) 

fit.aov <- aov(response ~ trt,data=cholesterol)
summary(fit.aov)

fit.lm <- lm(response ~ trt,data=cholesterol) 
summary(fit.lm) 

contrasts(cholesterol$trt)

library(pwr)
pwr.t.test(d=.8,sig.level = .05,power=.9,type="two.sample",alternative = "two.sided")

pwr.t.test(n=20,d=.5,sig.level = .01,type="two.sample",alternative = "two.sided")

pwr.anova.test(k=5,f=.25,sig.level = .05,power=.8)


pwr.r.test(r=.25,sig.level = .05,power=.90,alternative="greater")

pwr.f2.test(u=3,f2=0.0769,sig.level = 0.05,power=0.90) 

pwr.2p.test(h=ES.h(.65,.6),sig.level = .05,power=.9,alternative = "greater") 

prob <- matrix(c(.42,.28,.03,.07,.10,.10),byrow=TRUE,nrow=3) 
ES.w2(prob) 

pwr.chisq.test(w=.1853,df=2,sig.level = .05,power=.9) 

pwr.anova.test(k=5,n=25,sig.level = 0.05,f=c(.10,.25,.40)) 

library(pwr) 
es <- seq(.1,.5,.01)
nes <- length(es) 
samsize <- NULL 
for (i in 1:nes){
  result <- pwr.anova.test(k=5,f=es[i],sig.level = .05,power=.9) 
  samsize[i] <- ceiling(result$n) 
}
plotdata <- data.frame(es,samsize) 
library(ggplot2) 
ggplot(plotdata,aes(x=samsize,y=es)) + 
  geom_line(color="red",size=1) + 
  theme_bw() + 
  labs(title="One Way ANOVA (5 groups)",subtitle = "Power = 0.90,Alpha=0.05",x="Sample Size (per group)",y="Effect size")

library(pwr) 
r <- seq(.1,.5,.01) 
p <- seq(.4,.9,.1) 
df <- expand.grid(r,p) 
colnames(df) <- c("r","p") 
for (i in 1:nrow(df)) {
  result <- pwr.r.test(r=df$r[i],sig.level = .05,power=df$p[i],alternative = "two.sided")
  df$n[i] <- ceiling(result$n)
}
library(ggplot2)
ggplot(data=df,aes(x=r,y=n,color=factor(p))) + 
  geom_line(size=1) + 
  theme_bw() + 
  labs(title="Sample Size Estimation for Correlation Studies",subtitle = "Sig=0.05 (Two-tailed)",x="Correlation Coefficient (r)",y="Sample Size (n)",color="power") 

data(mtcars) 
ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point() + 
  geom_smooth(method="lm",se=FALSE,color="red") + 
  geom_smooth(method="loess",se=FALSE,color="blue",linetype="dashed") + 
  labs(title="Basic Scatter Plot of MPG vs. Weight",x="Car Weight (lbs/1000)",y="Miles Per Gallon") 

ggplot(mtcars,aes(x=wt,y=mpg,color=factor(cyl),shape=factor(cyl))) + 
  geom_point(size=2) + 
  geom_smooth(method="lm",se=FALSE) + 
  geom_smooth(method="loess",se=FALSE,linetype="dashed") + 
  labs(title="Scatter Plot of MPG vs. Weight",subtitle = "By Number of Cylinders",x="Car Weight (1bs/1000)",y="Miles Per Gallon",color="Number of \nCylinders",shape="Number of \nCylinders") + 
  theme_bw() 

library(GGally) 
ggpairs(mtcars[c("mpg","disp","drat","wt")])

library(GGally) 
diagplots <- function(data,mapping){
  ggplot(data=data,mapping=mapping) + geom_histogram(fill="lightblue",color="black")
}
lowerplots <- function(data,mapping){
  ggplot(data=data,mapping=mapping) + geom_point(color="darkgrey") + geom_smooth(method="lm",color="steelblue",se=FALSE) + geom_smooth(method = "loess",color="red",se=FALSE,linetype="dashed")
}
#根据给定数据估计相关性。如果提供了颜色变量，还将按组计算相关性。
#数据 数据集使用  映射 正在使用的美学
#display_grid 显示网格 如果为TRUE，则显示对齐的面板网格线。如果为FALSE（默认值），则显示薄面板边框。
upperplots <- function(data,mapping) {
  ggally_cor(data=data,mapping=mapping,display_grid = FALSE,size=3.5,color="black")
}
mytheme <- theme(strip.background = element_blank(),
                 panel.grid =  element_blank(),
                 panel.background = element_blank(),
                 panel.border = element_rect(color="grey20",fill=NA))
#columns 哪些列用于绘制图。默认为所有列。
#columnLabels 要显示的标签名称。默认为正在使用的列的名称。
#lower 	设置下部分变量之间的展示方式
#diag 设置对角线处的图形展示
#提供了三个参数，设置的是相关系数的表达方式
ggpairs(mtcars,columns = c("mpg","disp","drat","wt"),columnLabels = c("MPG","Displacement","R Axle Ratio","Weight"),,title="Scatterplot Matrix with Linear and Loess Fits",lower = list(continuous=lowerplots),diag = list(continuous=diagplots),upper = list(continuous=upperplots)) + mytheme

set.seed(1234) 
n <- 10000 
c1 <- matrix(rnorm(n,mean=0,sd=.5),ncol=2) 
c2 <- matrix(rnorm(n,mean=3,sd=2),ncol=2) 
mydata <- rbind(c1,c2) 
mydata <- as.data.frame(mydata) 
names(mydata) <- c("x","y") 
ggplot(mydata,aes(x=x,y=y)) + geom_point() + 
  ggtitle("Scatter Plot with 10,000 observations") 

with(mydata,smoothScatter(x,y,main="Scatter Plot colored by smoothed Densities")) 
ggplot(mydata,aes(x=x,y=y)) + 
  geom_hex(bins=50) + 
  scale_fill_continuous(trans='reverse') + 
  ggtitle("Scattter Plot with 10,000 Observations") 

library(scatterplot3d) 
with(mtcars,scatterplot3d(wt,disp,mpg,main="Basic 3D Scatter Plot")) 

library(scatterplot3d) 
with(mtcars,scatterplot3d(wt,disp,mpg,pch=16,highlight.3d = TRUE,type="h",main="3D Scatter Plot with Vertical Lines")) 

s3d <- with(mtcars,scatterplot3d(wt,disp,mpg,pch=16,highlight.3d = TRUE,type="h",main="3D Scatter Plot with Vertical Lines and Regression Plane"))
fit <- lm(mpg ~ wt+disp,data=mtcars)
s3d$plane3d(fit)

library(rgl) 
with(mtcars,plot3d(wt,disp,mpg,col="red",size=5))

library(car) 
with(mtcars,scatter3d(wt,disp,mpg)) 

ggplot(mtcars,aes(x=wt,y=mpg,size=disp)) + 
  geom_point() + 
  labs(title="Bubble Plot with point size proportional to displacement",x="Weight of Car (1bs/1000)",y="Miles Per Gallon")
 
ggplot(mtcars,aes(x=wt,y=mpg,size=disp,fill=factor(cyl))) + 
  geom_point(alpha=.5,color="black",shape=21) + 
  scale_size_continuous(range=c(1,10)) + 
  labs(title="Auto mileage by weight and horsepower",subtitle = "Motor Trend US magazine (1973-74 models)",x="weight (1000 lbs)",y = "Miles/(US) gallon",size="Engine\ndisplacement",fill="Cylinders") + 
  theme_minimal() 

library(ggplot2) 
tree1 <- subset(Orange,Tree==1) 
ggplot(data=tree1,aes(x=age,y=circumference)) + 
  geom_point(size=2) + 
  labs(title="Orange Tree 1 Growth",x="Age (days)",y="Circumference (mm)") + 
  theme_bw() 
ggplot(data=tree1,aes(x=age,y=circumference)) + 
  geom_point(size=2) + 
  geom_line() + 
  labs(title="Orange Tree 1 Growth",x="Age (days)",y="Circumference (mm)") + 
  theme_bw() 

library(ggplot2) 
ggplot(data=Orange,aes(x=age,y=circumference,linetype=Tree,color=Tree)) + 
  geom_point() + 
  geom_line(size=1) + 
  scale_color_brewer(palette = "Set1") + 
  labs(title="Orange Tree Growth",x='Age (days)',y="Vircumference (mm)") + 
  theme_bw() 

round(cor(mtcars),2)

library(corrgram) 
corrgram(mtcars,order=TRUE,lower.panel = panel.shade,upper.panel = panel.pie,text.panel = panel.txt,main="Corrgram of mtcars intercorrelations") 

library(corrgram) 
corrgram(mtcars,order=TRUE,lower.panel=panel.ellipse,upper.panel = panel.pts,text.panel = panel.txt,diag.panel = panel.minmax,main="Corrgram of mtcars data using scatter plots and ellipses") 


corrgram(mtcars,order=TRUE,lower.panel = panel.shade,upper.panel = panel.cor,main="Corrgram of mtcars data using shading and coefficients") 


library(corrgram) 
cols <- colorRampPalette(c("darkgoldenrod4","burlywood1","darkkhaki","darkgreen")) 
corrgram(mtcars,order=TRUE,col.regions = cols,lower.panel = panel.shade,upper.panel = panel.conf,text.panel = panel.txt,main="A Corrgram (or Horse) of a Different Color") 


ftable(Titanic) 

library(coin) 
score <- c(40,57,45,55,58,57,64,55,62,65) 
treatment <- factor(c(rep("A",5),rep("B",5))) 
mydata <- data.frame(treatment,score) 
t.test(score ~ treatment,data=mydata,var.equal=TRUE) 
oneway_test(score~treatment,data=mydata,distribution="exact") 


library(MASS) 
UScrime$So <- factor(UScrime$So) 
wilcox_test(Prob ~ So,data=UScrime,distribution="exact")

library(multcomp) 
set.seed(1234) 
oneway_test(response ~ trt,data=cholesterol,distribution=approximate(nresample=9999)) 

library(coin) 
library(vcd) 
Arthritis <- transform(Arthritis,Improved=as.factor(as.numeric(Improved))) 
set.seed(1234) 
chisq_test(Treatment~Improved,data=Arthritis,distribution=approximate(nresample=9999))

states <- as.data.frame(state.x77) 
set.seed(1234) 
spearman_test(Illiteracy ~ Murder,data=states,distribution=approximate(B=9999)) 

library(coin) 
library(MASS) 
wilcoxsign_test(U1~U2,data=UScrime,distribution="exact")

library(lmPerm) 
set.seed(1234) 
fit <- lmp(weight~height,data=women,perm="Prob") 
summary(fit) 

library(lmPerm) 
set.seed(1234) 
fit <- lmp(weight~height + I(height ^ 2),data=women,perm="Prob") 
summary(fit) 

library(lmPerm) 
set.seed(1234) 
states <- as.data.frame(state.x77) 
fit <- lmp(Murder ~ Population + Illiteracy+Income+Frost,data=states,perm="Prob") 
summary(fit) 

library(lmPerm) 
library(multcomp) 
set.seed(1234) 
fit <- aovp(response ~ trt,data=cholesterol,perm="Prob") 
anova(fit) 

library(lmPerm) 
set.seed(1234) 
fit <- aovp(weight ~ gesttime + dose,data=litter,perm="Prob") 
anova(fit) 


library(lmPerm) 
set.seed(1234) 
fit <- aovp(len~supp*dose,data=ToothGrowth,perm="Prob") 
anova(fit) 


rsq <- function(formula,data,indices) {
  d <- data[indices,]
  fit <- lm(formula,data=d) 
  return(summary(fit)$r.square) 
}
library(boot) 
set.seed(1234) 
results <- boot(data=mtcars,statistic=rsq,R=1000,formula=mpg~wt+disp)
print(results) 
plot(results)


boot.ci(results,type=c("perc","bca")) 


bs <- function(formula,data,indices){
  d <- data[indices,] 
  fit <- lm(formula,data=d) 
  return(coef(fit)) 
}
library(boot) 
set.seed(1234) 
results <- boot(data=mtcars,statistic=bs,R=1000,formula=mpg~wt+disp) 
print(results) 

plot(results,index=2) 

boot.ci(results,type="bca",index=2) 
boot.ci(results,type="bca",index=3) 

data(Affairs,package="AER")
summary(Affairs)
table(Affairs$affairs)


Affairs$ynaffair <- ifelse(Affairs$affairs > 0,1,0)
Affairs$ynaffair <- factor(Affairs$ynaffair,levels=c(0,1),labels=c("No","Yes"))
table(Affairs$ynaffair)

fit.full <- glm(ynaffair ~ gender +age + yearsmarried + children + religiousness + education + occupation + rating,data=Affairs,family=binomial())
summary(fit.full)

fit.reduced <- glm(ynaffair ~ age + yearsmarried + religiousness + rating,data=Affairs,family=binomial())
summary(fit.reduced)


anova(fit.reduced,fit.full,test="Chisq")


coef(fit.reduced) 

exp(coef(fit.reduced))

testdata <- data.frame(rating=c(1,2,3,4,5),age=mean(Affairs$age),yearsmarried=mean(Affairs$yearsmarried),religiousness=mean(Affairs$religiousness)) 
testdata 

testdata$prob <- predict(fit.reduced,newdata=testdata,type="response") 
testdata$prob
testdata

testdata <- data.frame(rating=mean(Affairs$rating),age=seq(17,57,10),yearsmarried=mean(Affairs$yearsmarried),religiousness=mean(Affairs$religiousness))
testdata

testdata$prob <- predict(fit.reduced,newdata=testdata,type="response") 
testdata

deviance(fit.reduced) / df.residual(fit.reduced) 

fit <- glm(ynaffair ~ age + yearsmarried + religiousness + rating,family=binomial(),data=Affairs) 
fit.od <- glm(ynaffair ~ age + yearsmarried + religiousness + rating,family = quasibinomial(),data=Affairs) 
pchisq(summary(fit.od)$dispersion * fit$df.residual,fit$df.residual,lower=F)


data(epilepsy,package="robustbase")
names(epilepsy)
summary(epilepsy[6:9])

library(ggplot2) 
ggplot(epilepsy,aes(x=Ysum)) + 
  geom_histogram(color="black",fill="white") + 
  labs(title="Distribution of seizures",x="Seizure Count",y="Frequency") + 
  theme_bw() 
ggplot(epilepsy,aes(x=Trt,y=Ysum)) + 
  geom_boxplot() + 
  labs(title="Group comparisons",x="",y="") + 
  theme_bw()

fit <- glm(Ysum ~ Base + Age +Trt,data=epilepsy,family=poisson())
summary(fit) 


coef(fit) 

exp(coef(fit))

deviance(fit) / df.residual(fit)

library(qcc)
qcc.overdispersion.test(epilepsy$Ysum, type="poisson")

fit.od <- glm(Ysum ~ Base + Age + Trt, data=epilepsy,
              family=quasipoisson())
summary(fit.od)

