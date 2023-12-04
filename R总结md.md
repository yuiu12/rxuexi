# R语言实战

## R语言入门

免费的编程软件，window、MacOS和Linux系统的版本。

### R介绍

<img src="file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87%E7%BC%96%E8%BE%91_20231128113508.jpg" title="典型的数据分析步骤" alt="" style="zoom:50%;">

#### 为何使用R

统计计算和绘图而生的语言和环境，开源的数据分析解决方案，由一个庞大且活跃的全球性研究性社区维护。

有以下值得推荐的特性:

1. 多数商业统计软件价格不菲，投入成本多。而R是免费的。

2. R是一个功能全面的统计研究平台，提供了各式各样的数据分析技术。几乎所有类型的数据分析工作都可以在R中完成

3. R包括了在其他软件中尚不可用的全新统计程序。新的方法更新速度是以周来计算的。

4. R拥有顶尖水准的制图功能。

5. R是一个可进行交互式数据分析和探索的强大平台，核心设计是典型的数据分析步骤这张图的分析方法。

6. 从多个数据原获取并将数据转化为可用的形式，一般可能会有很大的难度。R可以轻松地从各种类型的数据源导入数据。它同样可以将数据输出并写入到这些系统中。R可以从网页、社交媒体网站和各种类别的在线数据服务中获取数据

7. R可以让简单且直接的方式编写新的统计方法，易于扩展，并为快速实现新方法提供一种自然流畅的编程语言

8. R可以被集成到其他语言编写的应用程序中。
   
   

#### R的获取和安装

#### R的使用

##### 一个R会话示例

```r
age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
#均值mean
mean(weight)
#[1] 7.06
#标准差sd
sd(weight)
#[1] 2.077498
#月龄和体重的相关度
cor(age,weight)
[1] 0.9075655
#plot图形的形式显示月龄和体重的关系
plot(age,weight)
```

<img src="file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/96109b2f-4181-4967-8c50-b57231f826f9.png" title="" alt="" style="zoom:25%;">

##### 使用RStudio

##### 获取帮忙

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87%E7%BC%96%E8%BE%91_20231128120852.jpg)

##### 工作区

getwd  查看当前工作目录

setwd 设定当前工作目录

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87%E7%BC%96%E8%BE%91_20231128121109.jpg)

##### 1-2 用于管理R工作区的命令用法示例

```r
#/路径专用，\是转义字符
#dir.create()创建新目录
setwd("")
options()
options(digits=3)
```

#### 包

##### 安装包

install.package("")来安装包

update.pckages()更新已安装的包

#### 将输出用作输入:结果的复用

分析的输出结果可轻松保存，并作为进一步分析的输入使用。

```r
#执行一个简单的线性回归，通过车身重量(wt)预测每加仑汽油行驶的英里数(mpg)
lm(mpg~wt,data=mtcars)
#结果：
'''
Call:
lm(formula = mpg ~ wt, data = mtcars)

Coefficients:
(Intercept)           wt  
      37.29        -5.34  
'''
```

```
#执行回归函数
#lm()是R语言中经常用到的函数，用来拟合回归模型。它是拟合线性模型最基本的函数。
lmfit <- lm(mpg~wt,data=mtcars)
summary(lmfit)#显示分析结果的统计概要
plot(lmfit)#生成回归诊断图形
cook <- cooks.distance(lmfit)#计算和保存影响度量统计量
#predict(lmfit,mynewdata)
plot(cook)
```

#### 处理大型数据集

##### 示例实践

- [x]  打开帮助文档首页，查询其中的"Introduction to R"

- [x] 安装vcd包(可视化类别数据的包)

- [x] 列出此包可用的函数和数据集

- [x] 载入这个包并阅读数据集Arthritis的描述

- [x] 显示数据集Arthritis的内容

- [x] 运行数据集Arthritis自带的示例。
  
  

```r
help.start()
install.packages("vcd")
help(package="vcd")
library(vcd)
help(Arthritis)
Arthritis
example(Arthritis)
```

### 

### 创建数据集

#### 

#### 数据结构

##### 

##### 向量

存储数值型、字符型或逻辑型数据的一维数组

- [x] R的索引是从1开始的，而不是0

##### 矩阵

二维数组，只是每个元素都拥有相同的模式。函数matrix创建矩阵

myymatrix <- 

matrix(vector,nrow=number_of_rows,ncol=number_of_columns,

      byrow=logical_value,dimnames=list(char_vector_rownames,char_vector_colnames )

nrow和ncol指定行和列的维数,dimnames包含了可选的、以字符型向量表示的行名和列名。byrow表示矩阵应当按行填充(TRUE)还是按列填充(FALSE)

```r
y <- matrix(1:20,nrow=5,ncol=4)
y
'''
     [,1] [,2] [,3] [,4]
[1,]    1    6   11   16
[2,]    2    7   12   17
[3,]    3    8   13   18
[4,]    4    9   14   19
[5,]    5   10   15   20

'''
```

```r
 cells <- c(1,26,24,68)
 rnames <- c("R1","R2")
 cnames <- c("C1","C2")
 mymatrix <- matrix(cells,nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))
 mymatrix
 mymatrix <- matrix(cells,nrow=2,ncol=2,byrow=FALSE,dimnames=list(rnames,cnames))
 mymatrix
```

```r
x <- matrix(1:10,nrow=2)
x
x[2,]
x[,2]
x[1,4]
x[1,c(4,5)]
```

##### 数组

维度大于2.数组可通过array创建

myarray <- array(vector,dimensions,dimnames)

dimensions是一个数值型向量，给出了各个维度下标的最大值

dimnames是可选的、各维度名称标签的列表

```r
dim1 <- c("A1","A2")
dim2 <- c("B1","B2","B3")
dim3 <- c("C1","C2","C3","C4")
z <- array(1:24,c(2,3,4),dimnames=list(dim1,dim2,dim3))
z
'''
, , C1

   B1 B2 B3
A1  1  3  5
A2  2  4  6

, , C2

   B1 B2 B3
A1  7  9 11
A2  8 10 12

, , C3

   B1 B2 B3
A1 13 15 17
A2 14 16 18

, , C4

   B1 B2 B3
A1 19 21 23
A2 20 22 24

'''
```

##### 数据框

mydata <- data.frame(coll,col2,col3,....)

```r
patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <-c("Poor","Improved","Excellent","Poor")
patientdata <- data.frame(patientID,age,diabetes,status)
patientdata
'''
  patientID age diabetes
1         1  25    Type1
2         2  34    Type2
3         3  28    Type1
4         4  52    Type1
     status
1      Poor
2  Improved
3 Excellent
4      Poor

'''
```

```r
patientdata[1:2]
patientdata[c("diabetes","status")]
patientdata$age
```

$是选取一个给定数据框的某个特定变量。

```
table(patientdata$diabetes,patientdata$status)
```

###### 1.使用函数with()

```
#summary(mtcars$mpg)
#plot(mtcars$mpg,mtcars$disp)
#plot(mtcars$mpg,mtcars$wt)
with(mtcars,{
   summary(mpg)
   plot(mpg,disp)
   plot(mpg,wt)
})
```

```r
with(mtcars,{
  stats <- summary(mpg)
  stats
})
stats
#错误: 找不到对象'stats'

```

```r
with(mtcars,{
nokeepstats <- summary(mpg)
keepstats <<- summary(mpg)
})
nokeepstats
#错误: 找不到对象'nokeepstats'
keepstats
'''
   Min. 1st Qu.  Median    Mean 
   10.4    15.4    19.2    20.1 
3rd Qu.    Max. 
   22.8    33.9 
'''
```

###### 2.示例标识符

rowname选项指定标识符 

patientdata <- data.frame(patientID,age,diabetes,status,row.names=patientID)

##### 因子

名义变量是没有顺序之分的分类变量。Diabetes(Type1,Type2)是名义变量的一例。

顺序变量表示一种顺序关系，而非数量关系。

连续型变量可以呈现为某个范围内的任意值，并同时表示了顺序和数量。

分类变量(名义变量)和有序的分类变量在R中称为因子。非常重要，决定了数据的分析方式以及如何进行视觉呈现。

函数factor()以一个整数向量的形式存储类别值，整数取值范围[1....k]

顺序变量，需要为函数factor指定参数ordered=TRUE

```r
patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("Poor","Improved","Excellent","Poor")
diabetes <- factor(diabetes)
diabetes
'''
[1] Type1 Type2 Type1 Type1
Levels: Type1 Type2
'''
status <- factor(status,order=TRUE)
status
'''
[1] Poor      Improved  Excellent Poor     
Levels: Excellent < Improved < Poor
'''
patientdata <- data.frame(patientID,age,diabetes,status)
str(patientdata)#某个对象的信息
'''
'data.frame':    4 obs. of  4 variables:
 $ patientID: num  1 2 3 4
 $ age      : num  25 34 28 52
 $ diabetes : Factor w/ 2 levels "Type1","Type2": 1 2 1 1
 $ status   : Ord.factor w/ 3 levels "Excellent"<"Improved"<..: 3 2 1 3
'''
summary(patientdata)
'''
   patientID         age        diabetes
 Min.   :1.00   Min.   :25.0   Type1:3  
 1st Qu.:1.75   1st Qu.:27.2   Type2:1  
 Median :2.50   Median :31.0            
 Mean   :2.50   Mean   :34.8            
 3rd Qu.:3.25   3rd Qu.:38.5            
 Max.   :4.00   Max.   :52.0            
       status 
 Excellent:1  
 Improved :1  
 Poor     :2  

'''
```

##### 列表

list创建列表

```r
g <- "My First List"
h <- c(25,26,18,39)
j <- matrix(1:10,nrow=5)
k <- c("one","two","three")
mylist <- list(title=g,ages=h,j,k)
mylist
'''
$title
[1] "My First List"

$ages
[1] 25 26 18 39

[[3]]
     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10

[[4]]
[1] "one"   "two"   "three"
'''
> mylist[[2]]
[1] 25 26 18 39
> mylist[["ages"]]
[1] 25 26 18 39
```

##### tibble数据框

tibble包里的函数tibble()或as_tibble()来创建tibble数据框,install.packages("tibble")安装tibble包.

```r
library(tibble)
mtcars <- as_tibble(mtcars)
mtcars
'''
# A tibble: 32 × 11
  mpg   cyl  disp    hp  drat    wt  qsec
   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
 1  21       6  160    110  3.9   2.62  16.5
 2  21       6  160    110  3.9   2.88  17.0
 3  22.8     4  108     93  3.85  2.32  18.6
 4  21.4     6  258    110  3.08  3.22  19.4
 5  18.7     8  360    175  3.15  3.44  17.0
 6  18.1     6  225    105  2.76  3.46  20.2
 7  14.3     8  360    245  3.21  3.57  15.8
 8  24.4     4  147.    62  3.69  3.19  20  
 9  22.8     4  141.    95  3.92  3.15  22.9
10  19.2     6  168.   123  3.92  3.44  18.3
# ℹ 22 more rows
# ℹ 4 more variables: vs <dbl>, am <dbl>,
#   gear <dbl>, carb <dbl>
# ℹ Use `print(n = ...)` to see more rows
'''
tibble不会将字符变量转换为因子。read.table()、data.frame()和as.data,frame将字符型数据转换为因子。这些函数中添加字符串AsFactors=FALSE取消这个默认操作。
tibble数据框不支持行名。tibble数据框中可以使用函数rownames_to_column()将数据框中的行名转换为变量

```

#### 数据的输入

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20231129115145.jpg)

##### 使用键盘输入数据

R的函数edit()会自动调用一个允许手动输入数据的文本编辑器.

1. 创建一个空数据框(或矩阵),其中变量名和变量的模式需与理想中的最终数据集一致;

2. 针对这个数据对象调用文本编辑器，输入数据，并将结果保存回此数据对象中
   
   ```r
    mydata <- data.frame(age=numeric(0),gender=character(0),weight=numeric(0))
   mydata <- edit(mydata)
   ```

```r
mydataxt <- "
  age gender weight
  25   m  166
  30   f   115
  18   f   120
"
mydata <- read.table(header=TRUE,text=mydataxt)
mydata
```

##### 从带分隔符的文本文件导入数据

read.table()从带分隔符的文本文件中导入数据。

read.table(file,options)

file是一个带分隔符的ASCII文本文件，options是控制如何处理数据的选项

<img title="" src="file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20231129120455.jpg" alt="" style="zoom:33%;" data-align="inline">

studentgrades.csv的文本文件为例

```r
grades <- read.table("E:/R学习/studentgrades.csv",header=TRUE,row.names = "StudentID",sep=",")
grades
'''
   First          Last Math Science
11   Bob         Smith   90      80
12  Jane         Weary   75      NA
10   Dan Thornton, III   65      75
40  Mary       O'Leary   90      95
   Social.Studies
11             67
12             80
10             70
40             92
'''
str(grades)
'''
'data.frame':    4 obs. of  5 variables:
 $ First         : chr  "Bob" "Jane" "Dan" "Mary"
 $ Last          : chr  "Smith" "Weary" "Thornton, III" "O'Leary"
 $ Math          : int  90 75 65 90
 $ Science       : int  80 NA 75 95
 $ Social.Studies: int  67 80 70 92
'''
```

```r
grades <- read.table("studentgrades.csv",header=TRUE,row.names = "StudentID",sep=",",colClasses = c("character","character","character","numeric","numeric","numeric"))
grades
'''
    First          Last Math Science
011   Bob         Smith   90      80
012  Jane         Weary   75      NA
010   Dan Thornton, III   65      75
040  Mary       O'Leary   90      95
    Social.Studies
011             67
012             80
010             70
040             92
'''
> str(grades)
'data.frame':    4 obs. of  5 variables:
 $ First         : chr  "Bob" "Jane" "Dan" "Mary"
 $ Last          : chr  "Smith" "Weary" "Thornton, III" "O'Leary"
 $ Math          : num  90 75 65 90
 $ Science       : num  80 NA 75 95
 $ Social.Studies: num  67 80 70 92
```

read.csssv()和read.delim().导入二维文本文件的，是对函数read.table()的简单封装，提供了一些参数的默认值。

##### 导入excel数据

readxl包直接导入excel工作表。

readxl包可以用来读取.xls和.xlsx版本的excel文件.函数read_excel()可以将工作表一对一地导入到tibble数据框中。

library(readxl)

##### 导入json数据

参阅jsonlite包的帮助文档

##### 从网页抓取数据

参阅rvest包可以简化从网页提取数据的过程

##### 导入SPSS数据

haven包和函数read.spss导入到R中。

install.packages("haven")

```r
labelled_vars <- names(mydataframe)[sapply(mydataframe,is.labelled)]
for(vars in labelled_vars){
    mydataframe[[vars]] = as_factor(mydataframe[[vars]])
}
```

##### 导入SAS数据

haven包的函数read_sas导入SAS数据集

library(haven)

mydataframe <- read_sas("mydata.sas7bdat")

##### 导入Stata数据

library(haven)

mydataframe <- read_dta("mydata.dta")

##### 访问数据库管理系统

###### ODBC接口

install.packages("RODBC")

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20231129122844.jpg)

```r
#访问数据库管理系统
#ODBC接口
#步骤就是要找到自己下载的odbc的地址我的是C:\Windows\SysWOW64\odbcad32.exe
#前提就是你的mysql要下载odbc的connect，不然上面没有这个东西

library(RODBC)
myconn <- odbcConnect("dn",uid="root",pwd="123456")
sqlTables(myconn)  
pundat <- sqlQuery(myconn,"select * from user1")
close(myconn)
```

###### DBI相关包

##### 通过Stat/Transfer导入数据

#### 数据集的标注

##### 变量标签

##### 值标签

#### 处理数据对象的实用函数

<img src="file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20231129130552.jpg" title="" alt="" style="zoom:50%;">

### 基本数据管理

#### 一个示例

```r
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


```

#### 创建新变量

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/11.jpg)

```r
leadership$total_score  <-  leadership$q1 + leadership$q2 + 
  leadership$q3 + leadership$q4 + leadership$q5

leadership$mean_score <- (leadership$q1 + leadership$q2 + leadership$q3 + 
                            leadership$q4 + leadership$q5)/5
leadership <- transform(leadership,
                        total_score  =  q1 + q2 + q3 + q4 + q5,
                        mean_score = (q1 + q2 + q3 + q4 + q5)/5)
```

#### 变量的重编码

- [ ] 将一个连续型变量修改为一组类别值

- [ ] 将误编码的值替换为正确值

- [ ] 基于一组分数线创建一个表示及格/不及格的变量
  
  

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/13.jpg)

```r
#leadership$age[leadership$age == 99] <- NA
#leadership$agecat[leadership$age > 75] <- 'Elder'
#leadership$agecat[leadership$age >= 55 & leadership$age <= 75] <- #"Middle Aged"
#leadership$agecat[leadership$age < 55] <- "Young"
leadership <- within(leadership,{
                      agecat <- NA
                      agecat[age > 75]  <- "Elder"
                      agecat[age >= 55 & age <= 75] <- "Middle Aged"
                      agecat[age < 55]  <- "Young"
})
```

#### 变量的重命名

```r
fix(leadership)#交互式编辑器
> names(leadership)
 [1] "manager"     "testDate"    "country"    
 [4] "gender"      "age"         "q1"         
 [7] "q2"          "q3"          "q4"         
[10] "q5"          "total_score" "mean_score" 
> leadership
  manager testDate country gender age q1 q2 q3
1       1 10/24/08      US      M  32  5  4  5
2       2 10/28/08      US      F  45  3  5  2
3       3  10/1/08      UK      F  25  3  5  5
4       4 10/12/08      UK      M  39  3  3  4
5       5   5/1/09      UK      F  NA  2  2  1
  q4 q5 total_score mean_score agecat
1  5  5          24        4.8  Young
2  5  5          20        4.0  Young
3  5  2          20        4.0  Young
4 NA NA          NA         NA  Young
5  2  1           8        1.6   <NA>t"  

```

#### 缺失值

is.na可以检测缺失值

```r
> is.na(leadership[,6:10])
     q1    q2    q3    q4    q5
1 FALSE FALSE FALSE FALSE FALSE
2 FALSE FALSE FALSE FALSE FALSE
3 FALSE FALSE FALSE FALSE FALSE
4 FALSE FALSE FALSE  TRUE  TRUE
5 FALSE FALSE FALSE FALSE FALSE
```

##### 重编码某些值为缺失值

##### 在分析中排除缺失值

na.omit移除所有含有缺失值的观测值。

```r
> leadership
  manager testDate country gender age q1 q2 q3
1       1 10/24/08      US      M  32  5  4  5
2       2 10/28/08      US      F  45  3  5  2
3       3  10/1/08      UK      F  25  3  5  5
4       4 10/12/08      UK      M  39  3  3  4
5       5   5/1/09      UK      F  NA  2  2  1
  q4 q5 total_score mean_score agecat
1  5  5          24        4.8  Young
2  5  5          20        4.0  Young
3  5  2          20        4.0  Young
4 NA NA          NA         NA  Young
5  2  1           8        1.6   <NA>
```

```r
> newdata <- na.omit(leadership)
> newdata
  manager testDate country gender age q1 q2 q3
1       1 10/24/08      US      M  32  5  4  5
2       2 10/28/08      US      F  45  3  5  2
3       3  10/1/08      UK      F  25  3  5  5
  q4 q5 total_score mean_score agecat
1  5  5          24        4.8  Young
2  5  5          20        4.0  Young
3  5  2          20        4.0  Young
```

#### 日期值

as.Date执行数值形式存储的日期变量从而转换

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/14.jpg)

Sys.Date()可以返回当天的日期

date返回当前的日期和时

```r
> Sys.Date()
[1] "2023-11-29"
> date()
[1] "Wed Nov 29 13:40:54 2023"
```

format(x,format="output_format")输出指定格式的日期值

```r
> today <- Sys.Date()
> format(today,format="%B %d %Y")
[1] "十一月 29 2023"
> format(today,format="%A")
[1] "星期三"
```

format可以接受一个参数并按某种格式输出结果

```r
startdate <- as.Date("2020-02-13")
> enddate <- as.Date("2021-01-22")
> days <- enddate - startdate
> days
Time difference of 344 days
```

difftime()计算时间间隔

```r
> today <- Sys.Date()
> dob <- as.Date("1956-10-12")
> difftime(today,dob,units = "weeks")
Time difference of 3503 weeks
```

##### 将日期变量转换为字符型变量

as.character将日期变量转换为字符型变量

#### 类型转换

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/15.jpg)

```r
> a <- c(1,2,3)
> a
[1] 1 2 3
> is.numeric(a)
[1] TRUE
> is.vector(a)
[1] TRUE
> a <- as.character(a)
> a
[1] "1" "2" "3"
> is.numeric(a)
[1] FALSE
> is.vector(a)
[1] TRUE
> is.character(a)
[1] TRUE
```

#### 数据排序

order对一个数据框进行排序   升序默认

#### 数据集的合并

##### 数据框中添加列

横向合并两个数据框(数据集),merge函数

cbind是直接横向合并两个矩阵或数据框，并且不需要指定一个公共索引。

##### 在数据框中添加行

rbind纵向合并两个数据集

#### 切分数据集

##### 选取变量

##### 剔除变量

##### 选入观测值

```r
newdata <- leadership[1:3,]
newdata <- leadership[leadership$gender == "M" & leadership$age > 30,]
newdata
'''
  manager testDate country gender age q1 q2 q3
1       1 10/24/08      US      M  32  5  4  5
4       4 10/12/08      UK      M  39  3  3  4
  q4 q5 total_score mean_score agecat
1  5  5          24        4.8  Young
4 NA NA          NA         NA  Young
'''
leadership$date <- as.Date(leadership$date,"%m/%d/%y")
startdate <- as.Date("2009-01-01")
enddate <- as.Date("2009-12-31")
newdate <- leadership[which(leadership$date >= startdate & leadership$date <= enddate),]
newdata
```

##### subset()函数

```r
newdata <- subset(leadership,age >= 35 | age < 23,select=c(q1,q2,q3,q4))
newdata <- subset(leadership,gender=="M" & age > 25,select=gender:q4)

```

##### 随机抽样

```r
> mysample <- leadership[sample(1:nrow(leadership),3,replace = FALSE),]
> mysample
  manager       date country gender age q1 q2
3       3 2008-10-01      UK      F  25  3  5
1       1 2008-10-24      US      M  32  5  4
2       2 2008-10-28      US      F  45  3  5
  q3 q4 q5 total_score mean_score agecat
3  5  5  2          20        4.0  Young
1  5  5  5          24        4.8  Young
2  2  5  5          20        4.0  Young
```

#### 使用dplyr包操作数据框

##### 基本的dplyr函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/16.jpg)

install.packages("dplyr")

```r
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

```

mutate创建总分和平均分

dataframe <- mutate(dataframe,newvar1=expression,newvar2=expression,...)

recode()修改变量gender的值

vector <- recode(vector,oldvalue1=newvalue2,oldvalue2=newvalue2,...)

rename更改变量名

dataframe  <- rename(dataframe,newname1="oldname1",newname2="oldname2",...)

arrange对数据进行排序

select 选取或剔除变量。

filter用于选择数据框中满足指定的一组条件的观测值或行

##### 使用管道操作符对语句进行串接

dplyr允许我们以紧凑的格式来编写代码。magrittr包提供的管道运算符

```r
#high_potentials <- filter(leadership,total_score > 10)
#high_potentials <- select(high_potentials,ID,country,mean_score)
#high_potentials <- arrange(high_potentials,country,mean_score)
high_potentials <- filter(leadership,total_score > 10) %>%
  select(ID,country,mean_score) %>%
  arrange(country,mean_score)
```

#### 使用sql语句操作数据框

install.packages("sqldf")

```r
> newdf <- sqldf("select * from mtcars where carb=1 order by mpg",row.names = TRUE)
> newdf
    mpg cyl  disp  hp drat   wt qsec vs am
6  18.1   6 225.0 105 2.76 3.46 20.2  1  0
4  21.4   6 258.0 110 3.08 3.21 19.4  1  0
21 21.5   4 120.1  97 3.70 2.46 20.0  1  0
3  22.8   4 108.0  93 3.85 2.32 18.6  1  1
26 27.3   4  79.0  66 4.08 1.94 18.9  1  1
18 32.4   4  78.7  66 4.08 2.20 19.5  1  1
20 33.9   4  71.1  65 4.22 1.83 19.9  1  1
   gear carb
6     3    1
4     3    1
21    3    1
3     4    1
26    4    1
18    4    1
20    4    1
```

```r
> sqldf("select avg(mpg) as avg_mpg,avg(disp) as avg_disp,gear from mtcars where cyl in (4,6) group by gear")
  avg_mpg avg_disp gear
1    20.3      201    3
2    24.5      123    4
3    25.4      120    5
```

### 图形初阶

install.packages(c("mosaicData","ggplot2")))

#### 使用ggplot2包创建图形

##### 函数ggplot2

```r
library(ggplot2)
library(mosaicData)
ggplot(data=CPS85,mapping=aes(x=exper,y=wage))


```

##### geom_函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/17.jpg)

```r
library(ggplot2)
library(mosaicData)
ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point()
```

<img src="file:///E:/R%E5%AD%A6%E4%B9%A0/1.png" title="" alt="" style="zoom:33%;">

```

CPS85 <- CPS85[CPS85$wage < 40,]
ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point()
```

<img src="file:///E:/R%E5%AD%A6%E4%B9%A0/2.png" title="" alt="" style="zoom:33%;">

```r
ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point(color="cornflowerblue",alpha=.7,size=1.5) + theme_bw()
```

<img src="file:///E:/R%E5%AD%A6%E4%B9%A0/3.png" title="" alt="" style="zoom:33%;">

geom_smooth添加这条线

```r
ggplot(data=CPS85,mapping=aes(x=exper,y=wage)) + geom_point(color="cornflowerblue",alpha=.7,size=1.5) + geom_smooth(method="lm") + theme_bw()
```

<img src="file:///E:/R%E5%AD%A6%E4%B9%A0/4.png" title="" alt="" style="zoom:33%;">

##### 分组

```r
ggplot(CPS85,mapping=aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) + geom_point(alpha=.7,size=1.5) + geom_smooth(method="lm",se=FALSE,size=1.5) + theme_bw()
```

<img src="file:///E:/R%E5%AD%A6%E4%B9%A0/5.png" title="" alt="" style="zoom:33%;">

##### 标尺

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/18.jpg)

```r
ggplot(CPS85,mapping=aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) + geom_point(alpha=.7,size=3) + geom_smooth(method="lm",se=FALSE,size=1.5) + scale_x_continuous(breaks=seq(0,60,10)) + scale_y_continuous(breaks=seq(0,30,5)) + scale_color_manual(values=c("indianred3","cornflowerblue")) + theme_bw()
```

<img src="file:///E:/R%E5%AD%A6%E4%B9%A0/6.png" title="" alt="" style="zoom:33%;">

install.packages("scales")

```r
ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7,size=3) +
  geom_smooth(method = "lm",se=FALSE,size=1.5) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  theme_bw()
```

<img title="" src="file:///E:/R%E5%AD%A6%E4%B9%A0/7.png" alt="" style="zoom:50%;">

##### 刻面

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/19.jpg)

```r
ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7) +
  geom_smooth(method = "lm",se=FALSE) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  facet_wrap(~sector) + 
  theme_bw()

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/8.png)

##### 标签

```r
ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7) +
  geom_smooth(method = "lm",se=FALSE) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  facet_wrap(~sector) + 
  theme_bw()

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/9.png)

##### 主题

```r
ggplot(CPS85,aes(x=exper,y=wage,color=sex,shape=sex,linetype=sex)) +
  geom_point(alpha=.7) +
  geom_smooth(method = "lm",se=FALSE) +
  scale_x_continuous(breaks=seq(0,60,10)) +
  scale_y_continuous(breaks=seq(0,30,5),label=scales::dollar) +
  scale_color_manual(values=c("indianred3","cornflowerblue")) +
  facet_wrap(~sector) +
  labs(title="Relationship between wages and experience",subtitle = "Current Population Survey",x="Years of Experience",y="Hourly Wage",color="Gender",shape="Gender",linetype="Gender") +theme_minimal()

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/10.png)

#### ggplot2包的详细信息

##### 放置数据和映射选项

```r
ggplot(CPS85,aes(x=exper,y=wage,color=sex)) + geom_point(alpha=.7,size=1.5) +
  geom_smooth(method = "lm",se=FALSE,size=1) +
  scale_color_manual(values=c("lightblue","midnightblue")) +
  theme_bw()

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/11.png)

```r
ggplot(CPS85,aes(x=exper,y=wage)) +
  geom_point(aes(color=sex),alpha=.7,size=1.5) +
  geom_smooth(method = "lm",se=FALSE,size=1) +
  scale_color_manual(values=c("lightblue","midnightblue")) +
  theme_bw()
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/12.png)

##### 将图形作为对象使用

```r
data(CPS85,package="mosaicData")
CPS85 <- CPS85[CPS85$wage < 40,]
myplot <- ggplot(CPS85,aes(x=exper,y=wage)) + geom_point()
myplot
myplot2 <- myplot + geom_point(size=3,color="blue")
myplot2 
myplot + geom_smooth(method = "lm") + labs(title="Mildly interesting graph")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/13.png)

##### 保存图形

ggsave保存图形

##### 常见错误

### 高级数据管理

#### 一个数据处理难题

#### 数值处理函数和字符处理函数

##### 数学函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/20.jpg)

##### 统计函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/21.jpg)

```r
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
```

scale对矩阵或数据框的指定列进行均值为0、标准差为1的标准化

##### 概率函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/22.jpg)

```r
library(ggplot2)
x <- seq(from=-3,to=3,by=0.1)
y = dnorm(x)
data <- data.frame(x=x,y=y)
ggplot(data,aes(x,y)) + geom_line() +
  labs(x="Normal Deviate",y="Density") +
  scale_x_continuous(breaks=seq(-3,3,1))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/14.png)

###### 设定随机数种子

set.seed()显式指定这个种子

runif生成0到1区间上服从均匀分布的伪随机数

```r
> runif(5)
[1] 0.6047 0.4164 0.0827 0.2783 0.1489
> runif(5)
[1] 0.749 0.996 0.298 0.790 0.415
> set.seed(1234)
> runif(5)
[1] 0.114 0.622 0.609 0.623 0.861
> set.seed(1234)
> runif(5)
[1] 0.114 0.622 0.609 0.623 0.861
```

###### 生成多元正太数据

MultiRNG包中的draw.d.variate.normal函数可以让这个问题变得容易

draw.d.variate.normal(n,nvar,mean,sigma)

nvar变量数，mean均值向量 ，sigma是方差-协方差矩阵

```r
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
'''
       y    x1   x2
1   81.1 122.6 3.69
2  265.1 110.4 3.49
3  365.1 235.3 2.67
4  -60.0  14.9 4.72
5  283.9 244.8 3.88
6  293.4 163.9 2.66
7  159.5  51.5 4.03
8  163.0 137.7 3.77
9  160.7 131.0 3.59
10 120.4  97.7 4.11
'''
```

##### 字符处理函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/23.jpg)

##### 其他实用函数

 ![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/24.jpg)

\n新行   \t制表符  \为单引号   \b退格   

##### 将函数应用与矩阵和数据框

```r
 a <- 5
> sqrt(a)
[1] 2.24
> b <- c(1.243,5.654,2.99)
> round(b)
[1] 1 6 3
> c <- matrix(runif(12),nrow=3)
> c
       [,1]  [,2]  [,3]  [,4]
[1,] 0.9636 0.216 0.289 0.913
[2,] 0.2068 0.240 0.804 0.353
[3,] 0.0862 0.197 0.378 0.931
> log(c)
        [,1]  [,2]   [,3]    [,4]
[1,] -0.0371 -1.53 -1.241 -0.0912
[2,] -1.5762 -1.43 -0.218 -1.0402
[3,] -2.4511 -1.62 -0.972 -0.0710
> mean(c)
[1] 0.465
```

```r
 mydata <- matrix(rnorm(30),nrow=6)
> mydata
       [,1]   [,2]   [,3]   [,4]   [,5]
[1,]  0.459  1.203  1.234  0.591 -0.281
[2,] -1.261  0.769 -1.891 -0.435  0.812
[3,] -0.527  0.238 -0.223 -0.251 -0.208
[4,] -0.557 -1.415  0.768 -0.926  1.451
[5,] -0.374  2.934  0.388  1.087  0.841
[6,] -0.604  0.935  0.609 -1.944 -0.866
 > apply(mydata,1,mean)
[1]  0.641 -0.401 -0.194 -0.136  0.975 -0.374
> apply(mydata,2,mean)
[1] -0.478  0.777  0.148 -0.313  0.292
> apply(mydata,2,mean,trim=0.2)
[1] -0.516  0.786  0.386 -0.255  0.291
```

##### 数据处理难题的一套解决方案

```r
options(digits = 2)
Student <- c("John Davis", "Angela Williams", "Bullwinkle Moose",
             "David Jones", "Janice Markhammer", "Cheryl Cushing",
             "Reuven Ytzrhak", "Greg Knox", "Joel England",
             "Mary Rayburn")
Math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(Student,Math,Science,English,stringsAsFactors = FALSE)

#scale(x, center = TRUE, scale = TRUE) 
# x 是样本数据 (r语言中定义为 数字矩阵)
# center  中心化(这里指的是减去样本数据x的平均值)
# scale   标准化 (这里指的是除以样本数据x的方差或者均方根)

z <- scale(roster[,2:4])

#apply(X, MARGIN, FUN, ...)
#X:数组、矩阵、数据框
#MARGIN: 按行计算或按按列计算，1表示按行，2表示按列
#FUN: 自定义的调用函数
#apply函数可以对矩阵、数据框、数组(二维、多维)，按行或列进行循环计算，对子元素进行迭代，并把子元素以参数传递的形式给自定义的FUN函数中，并以返回计算结果。
score <- apply(z,1,mean)

#根据列进行合并，即叠加所有列，m列的矩阵与n列的矩阵cbind()最后变成m+n列，合并前提：cbind(a, c)中矩阵a、c的行数必需相符

roster <- cbind(roster,score)
y <- quantile(score,c(.8,.6,.4,.2))
roster$grade <- NA
roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"
'''
strsplit(x, split, fixed = F, perl = F, useBytes = F)    
x-字符串格式向量，函数依次对向量的每个元素进行拆分。
split-为拆分位置的字串向量，即在哪个字串处开始拆分；该参数默认是正则表达式匹配。
fixed = T-表示是用普通文本匹配或者正则表达式的精确匹配。
perl-其设置和perl的版本有关，表示可以使用perl语言里面的正则表达式。如果正则表达式过长，则可以考虑使用perl的正则来提高运算速度。
useBytes-是否逐字节进行匹配，默认为FALSE，表示是按字符匹配而不是按字节进行匹配。
'''
name <- strsplit((roster$Student)," ")
#sapply（）函数将列表，向量或数据帧作为输入，并以向量或矩阵形式输出。
Lastname <- sapply(name,"[",2)
Firstname <- sapply(name,"[",1)
roster <- cbind(Firstname,Lastname,roster[,-1])
roster <- roster[order(Lastname,Firstname),]
roster
'''
    Firstname   Lastname Math Science English
6      Cheryl    Cushing  512      85      28
1        John      Davis  502      95      25
9        Joel    England  573      89      27
4       David      Jones  358      82      15
8        Greg       Knox  625      95      30
5      Janice Markhammer  495      75      20
3  Bullwinkle      Moose  412      80      18
10       Mary    Rayburn  522      86      18
2      Angela   Williams  600      99      22
7      Reuven    Ytzrhak  410      80      15
   score grade
6   0.35     C
1   0.56     B
9   0.70     B
4  -1.16     F
8   1.34     A
5  -0.63     D
3  -0.86     D
10 -0.18     C
2   0.92     A
7  -1.05     F
'''
```

```r
options(digits=2)
roster
'''
  Firstname   Lastname Math Science English
6      Cheryl    Cushing  512      85      28
1        John      Davis  502      95      25
9        Joel    England  573      89      27
4       David      Jones  358      82      15
8        Greg       Knox  625      95      30
5      Janice Markhammer  495      75      20
3  Bullwinkle      Moose  412      80      18
10       Mary    Rayburn  522      86      18
2      Angela   Williams  600      99      22
7      Reuven    Ytzrhak  410      80      15
   score grade
6   0.35     C
1   0.56     B
9   0.70     B
4  -1.16     F
8   1.34     A
5  -0.63     D
3  -0.86     D
10 -0.18     C
2   0.92     A
7  -1.05     F
'''
```

```
z <- scale(roster[,2:4])
z
'''
 Math Science English
 [1,]  0.013   1.078   0.587
 [2,]  1.143   1.591   0.037
 [3,] -1.026  -0.847  -0.697
 [4,] -1.649  -0.590  -1.247
 [5,] -0.068  -1.489  -0.330
 [6,]  0.128  -0.205   1.137
 [7,] -1.049  -0.847  -1.247
 [8,]  1.432   1.078   1.504
 [9,]  0.832   0.308   0.954
[10,]  0.243  -0.077  -0.697
attr(,"scaled:center")
   Math Science English 
    501      87      22 
attr(,"scaled:scale")
   Math Science English 
   86.7     7.8     5.5 
'''
```

mean计算隔行的均值以获得综合得分，函数cbind将其添加到花名册中

```
score <- apply(z,1,mean)
roster <- cbind(roster,score)
roster
'''
> score <- apply(z,1,mean)
> score
 [1]  0.56  0.92 -0.86 -1.16 -0.63  0.35 -1.05
 [8]  1.34  0.70 -0.18
> roster <- cbind(roster,score)
> roster
             Student Math Science English
1         John Davis  502      95      25
2    Angela Williams  600      99      22
3   Bullwinkle Moose  412      80      18
4        David Jones  358      82      15
5  Janice Markhammer  495      75      20
6     Cheryl Cushing  512      85      28
7     Reuven Ytzrhak  410      80      15
8          Greg Knox  625      95      30
9       Joel England  573      89      27
10      Mary Rayburn  522      86      18
   score
1   0.56
2   0.92
3  -0.86
4  -1.16
5  -0.63
6   0.35
7  -1.05
8   1.34
9   0.70
10 -0.18
'''
```

quantile给出了学生综合得分的百分位数

```r
> y <- quantile(roster$score,c(.8,.6,.4,.2))
> y
  80%   60%   40%   20% 
 0.74  0.44 -0.36 -0.89 
```

```
roster$grade <- NA
roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"
roster
'''
             Student Math Science English
1         John Davis  502      95      25
2    Angela Williams  600      99      22
3   Bullwinkle Moose  412      80      18
4        David Jones  358      82      15
5  Janice Markhammer  495      75      20
6     Cheryl Cushing  512      85      28
7     Reuven Ytzrhak  410      80      15
8          Greg Knox  625      95      30
9       Joel England  573      89      27
10      Mary Rayburn  522      86      18
   score grade
1   0.56     B
2   0.92     A
3  -0.86     D
4  -1.16     F
5  -0.63     D
6   0.35     C
7  -1.05     F
8   1.34     A
9   0.70     B
10 -0.18     C
'''
```

strsplit以空格为界吧学生姓名拆分为姓氏和名字

```r
 name <- strsplit((roster$Student)," ")
> name
[[1]]
[1] "John"  "Davis"

[[2]]
[1] "Angela"   "Williams"

[[3]]
[1] "Bullwinkle" "Moose"     

[[4]]
[1] "David" "Jones"

[[5]]
[1] "Janice"     "Markhammer"

[[6]]
[1] "Cheryl"  "Cushing"

[[7]]
[1] "Reuven"  "Ytzrhak"

[[8]]
[1] "Greg" "Knox"

[[9]]
[1] "Joel"    "England"

[[10]]
[1] "Mary"    "Rayburn"

```

```r
sapply提取列表中每个成分的第一个元素，放入一个储存名字的向量Firstname，并提取每个成分的第2个元素，放入一个储存姓氏的向量Lastname。
> Firstname <- sapply(name,"[",1)
> Lastname <- sapply(name,"[",2)
> roster <- cbind(Firstname,Lastname,roster[,-1])
> roster
    Firstname   Lastname Math Science English
1        John      Davis  502      95      25
2      Angela   Williams  600      99      22
3  Bullwinkle      Moose  412      80      18
4       David      Jones  358      82      15
5      Janice Markhammer  495      75      20
6      Cheryl    Cushing  512      85      28
7      Reuven    Ytzrhak  410      80      15
8        Greg       Knox  625      95      30
9        Joel    England  573      89      27
10       Mary    Rayburn  522      86      18
   score grade
1   0.56     B
2   0.92     A
3  -0.86     D
4  -1.16     F
5  -0.63     D
6   0.35     C
7  -1.05     F
8   1.34     A
9   0.70     B
10 -0.18     C
```

```r
order进行排序
 roster[order(Lastname,Firstname),]
    Firstname   Lastname Math Science English
6      Cheryl    Cushing  512      85      28
1        John      Davis  502      95      25
9        Joel    England  573      89      27
4       David      Jones  358      82      15
8        Greg       Knox  625      95      30
5      Janice Markhammer  495      75      20
3  Bullwinkle      Moose  412      80      18
10       Mary    Rayburn  522      86      18
2      Angela   Williams  600      99      22
7      Reuven    Ytzrhak  410      80      15
   score grade
6   0.35     C
1   0.56     B
9   0.70     B
4  -1.16     F
8   1.34     A
5  -0.63     D
3  -0.86     D
10 -0.18     C
2   0.92     A
7  -1.05     F
```

#### 控制流

##### 重复和循环

###### For结构

for (var in seq) statement

###### While结构

while(cond) statement

##### 条件执行

###### If-else结构

if (cond)  statement 

if (cond) statement else statement2

###### ifelse结构

ifelse(cond,statement1,statement2)

###### switch结构

switch(expr,...)

```r
 feelings <- c("sad","afraid")
> for (i in feelings)
+   print(
+     switch(i,happy="I am glad you are happy",
+            afraid = "There is nothing to fear",
+            sad = "Cheer up",
+            angry = "Calm down now")
+   )
[1] "Cheer up"
[1] "There is nothing to fear"
```

#### 用户自定义函数

myfunction <- function(arg1,arg2,....) {  

statements

return(object) 

}

```r
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

```

#### 数据重塑

##### 转置

```
cars <- mtcars[1:5,1:4]
> cars
# A tibble: 5 × 4
    mpg   cyl  disp    hp
  <dbl> <dbl> <dbl> <dbl>
1  21       6   160   110
2  21       6   160   110
3  22.8     4   108    93
4  21.4     6   258   110
5  18.7     8   360   175
> t(cars)
     [,1] [,2] [,3] [,4] [,5]
mpg    21   21   23   21   19
cyl     6    6    4    6    8
disp  160  160  108  258  360
hp    110  110   93  110  175
```

##### 将宽表数据集格式转换为长表数据格式

tidyr将数据框从一种格式轻松转化为另一种格式的函数

gather()将宽表格式数据框转化为长表格式数据框

gather(widedata,key,value,variable list)

key指定变量列的名称

value指定值列的名称

variable list 指定要堆叠的变量

```r
library(tidyr)
> data_wide <- data.frame(ID = c("AU", "CN", "PRK"),
+                         Country = c("Australia", "China", "North Korea"),
+                         LExp1990 = c(76.9, 69.3, 69.9),
+                         LExp2000 = c(79.6, 72.0, 65.3),
+                         LExp2010 = c(82.0, 75.2, 69.6))
> data_wide
   ID     Country LExp1990 LExp2000 LExp2010
1  AU   Australia       77       80       82
2  CN       China       69       72       75
3 PRK North Korea       70       65       70
> data_long <- gather(data_wide,key="Variable",value="Life_Exp",c(LExp1990,LExp2000,LExp2010))
> data_long
   ID     Country Variable Life_Exp
1  AU   Australia LExp1990       77
2  CN       China LExp1990       69
3 PRK North Korea LExp1990       70
4  AU   Australia LExp2000       80
5  CN       China LExp2000       72
6 PRK North Korea LExp2000       65
7  AU   Australia LExp2010       82
8  CN       China LExp2010       75
9 PRK North Korea LExp2010       70
```

spread将长表格式数据狂转换为宽表格式数据框

spread(longdata,key,value)

key是包含变量名的列

value是包含变量值的列

```r
data_wide <- spread(data_long,key=Variable,value=Life_Exp)
> data_wide
   ID     Country LExp1990 LExp2000 LExp2010
1  AU   Australia       77       80       82
2  CN       China       69       72       75
3 PRK North Korea       70       65       70
> 
```

#### 数据汇总

使用一个或多个by变量和一个预先定义号的函数来折叠collapse

aggregate()

```
options(digits = 3)
> aggdata <- aggregate(mtcars,by=list(mtcars$cyl,mtcars$gear),FUN=mean,na.rm=TRUE)
> aggdata
  Group.1 Group.2  mpg cyl disp  hp drat   wt
1       4       3 21.5   4  120  97 3.70 2.46
2       6       3 19.8   6  242 108 2.92 3.34
3       8       3 15.1   8  358 194 3.12 4.10
4       4       4 26.9   4  103  76 4.11 2.38
5       6       4 19.8   6  164 116 3.91 3.09
6       4       5 28.2   4  108 102 4.10 1.83
7       6       5 19.7   6  145 175 3.62 2.77
8       8       5 15.4   8  326 300 3.88 3.37
  qsec  vs   am gear carb
1 20.0 1.0 0.00    3 1.00
2 19.8 1.0 0.00    3 1.00
3 17.1 0.0 0.00    3 3.08
4 19.6 1.0 0.75    4 1.50
5 17.7 0.5 0.50    4 4.00
6 16.8 0.5 1.00    5 2.00
7 15.5 0.0 1.00    5 6.00
8 14.6 0.0 1.00    5 6.00
```

```
aggdata <- aggregate(mtcars[-c(2,10)],by=list(Cylinders=mtcars$cyl,Gears=mtcars$gear),FUN=mean,na.rm=TRUE)
Warning messages:
1: In formals(fun) : argument is not a function
2: In formals(fun) : argument is not a function
> aggdata
  Cylinders Gears  mpg disp  hp drat   wt qsec
1         4     3 21.5  120  97 3.70 2.46 20.0
2         6     3 19.8  242 108 2.92 3.34 19.8
3         8     3 15.1  358 194 3.12 4.10 17.1
4         4     4 26.9  103  76 4.11 2.38 19.6
5         6     4 19.8  164 116 3.91 3.09 17.7
6         4     5 28.2  108 102 4.10 1.83 16.8
7         6     5 19.7  145 175 3.62 2.77 15.5
8         8     5 15.4  326 300 3.88 3.37 14.6
   vs   am carb
1 1.0 0.00 1.00
2 1.0 0.00 1.00
3 0.0 0.00 3.08
4 1.0 0.75 1.50
5 0.5 0.50 4.00
6 0.5 1.00 2.00
7 0.0 1.00 6.00
8 0.0 1.00 6.00
```

```

```

## 基本方法

### 基本图形

#### 条形图

ggplot2包

ggplot(data,aes(x=catvar) + geom_bar()

install.packages("vcd")

资料在vcd的Arthritis数据框中

##### 简单的条形图

```r
> data(Arthritis,package="vcd")
> table(Arthritis$Improved)

  None   Some Marked 
    42     14     28 
```

```r

library(ggplot2)
ggplot(Arthritis,aes(x=Improved)) + geom_bar() +
  labs(title="Simple Bar chart",x="Improvement",y="Frequency")
ggplot(Arthritis,aes(x=Improved)) +geom_bar() +
  labs(title="Horizontal Bar chart",x="Improvement",y="Frequency") + coord_flip()
```

##### 堆积、分组和填充条形图

```r
table(Arthritis$Improved,Arthritis$Treatment)

         Placebo Treated
  None        29      13
  Some         7       7
  Marked       7      21
```

```r
library(ggplot2)
#"fill"则是在"stack"的基础上进行了标准化；参数 fill 用于设置填充色。
ggplot(Arthritis,aes(x=Treatment,fill=Improved)) + geom_bar(position = "stack") + labs(title="Stacked Bar chart",x="Treatment",y="Frequency")
#dodge“（分散开）
ggplot(Arthritis,aes(x=Treatment,fill=Improved)) + geom_bar(position = "dodge") + labs(title="Grouped Bar chart",x="Treatment",y="Frequency")
#"fill"(按比例堆积)；
ggplot(Arthritis,aes(x=Treatment,fill=Improved)) + geom_bar(position = "fill") + labs(title="Filled Bar chart",x="Treatment",y="Frequency")

```

##### 均值条形图

资料是state.x77具有各个州的文盲率，state.region具每个州所属的地区名

```r
states <- data.frame(state.region,state.x77)
library(dplyr)
plotdata <- states %>%
  group_by(state.region) %>%
  summarize(mean = mean(Illiteracy))
plotdata
'''
# A tibble: 4 × 2
  state.region   mean
  <fct>         <dbl>
1 Northeast      1   
2 South          1.74
3 North Central  0.7 
4 West           1.02
'''
ggplot(plotdata,aes(x=reorder(state.region,mean),y=mean)) +
  geom_bar(stat="identity") +
  labs(x="Region",y="",title="Mean Illiteracy Rate")

```

```r
plotdata <- states %>%
+   group_by(state.region) %>%
+   summarize(n=n(),mean=mean(Illiteracy),se=sd(Illiteracy)/sqrt(n))
> plotdata
# A tibble: 4 × 4
  state.region      n  mean     se
  <fct>         <int> <dbl>  <dbl>
1 Northeast         9  1    0.0928
2 South            16  1.74 0.138 
3 North Central    12  0.7  0.0408
4 West             13  1.02 0.169 
ggplot(plotdata,aes(x=reorder(state.region,mean),y=mean)) +
  geom_bar(stat="identity",fill="skyblue") +
  geom_errorbar(aes(ymin=mean-se,ymax=mean+se),width=0.2) +
  labs(x="Region",y="",title="with standard error bars")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/15.png)

##### 条形图的微调

###### 条形图的颜色

geom_bar中选项fill="color"指定区域颜色color="color"边框的颜色

```r
ggplot(Arthritis,aes(x=Treatment,fill=Improved)) +
  geom_bar(position = "stack",color="black") +
  scale_fill_manual(values=c("red","grey","gold")) +
  labs(title="Stacked Bar chart",x="Treatment",y="Frequency")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/16.png)

###### 条形图的标签

```r
ggplot(mpg,aes(x=model)) +
  geom_bar() +
  labs(title="Model names in the mpg dataset",y="Frequency",x="") +
  theme(axis.text.x=element_text(angle = 45,hjust = 1,size=8))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/17.png)

#### 饼图

pie创建饼图

if(!require(remotes)) install.packages("remotes")

remotes::install.github("rkabacoff/ggpie")

ggpie(data,x,by,offset,percent,legend,title)

x是绘制的分类变量

by是可选的第2个分类变量，设置之后会生成吃变量的各个水平的饼图

offset扇形标签到饼图中心的距离。0.5标签位于扇形的中心，值大于1.0是标签在扇形外面

percent是逻辑性变量 FALSE不会输出百分比

legend逻辑性变量  FALSE  省略图例

```r
library(ggpie)
ggpie(mpg,class,legend=FALSE,offset=1.3,title="Automobiles by Car Class")
```

 ![](file:///E:/R%E5%AD%A6%E4%B9%A0/18.png)

#### 树形图

treemapify包

install.packages("treemapify")

```
library(ggplot2)
library(dplyr)
library(treemapify)
plotdata <- mpg %>% count(manufacturer)
#legend.position=none是删除图例
ggplot(plotdata,aes(fill=manufacturer,area=n,label=manufacturer)) +
  geom_treemap() +
  geom_treemap_text() +
  theme(legend.position = "none")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/19.png)

```r
plotdata <- mpg %>%
  count(manufacturer,drv) 
  plotdata$drv <- factor(plotdata$drv,levels=c("4","f","r"),labels=c("4-wheel","front-wheel","rear"))
ggplot(plotdata,aes(fill=manufacturer,area=n,label=manufacturer,subgroup=drv)) +
  geom_treemap() + geom_treemap_subgroup_border() +geom_treemap_subgroup_text(place="middle",colour="black",alpha=0.5,grow=FALSE) +
  geom_treemap_text(colour="white",place="centre",grow=FALSE)+theme(legend.position = "none")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/20.png)

#### 直方图

ggplot(data,aes(x=contvar)) + geom_histogram()

```r
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/21.png)

#### 核密度图

ggplot(data,aes(x=contvar)) + geom_density()

```r
library(ggplot2)
data(mpg)
cars2008 <- mpg[mpg$year == 2008,]
ggplot(cars2008,aes(x=cty)) + geom_density() + labs(title="Default kernel density plot")
ggplot(cars2008,aes(x=cty)) + geom_density(fill="red") + labs(title="Default Kernel density plot",x="cty",y="density")


bw.nrd0(cars2008$cty)
[1] 1.408399
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/22.png)

```r
bw是较小的带宽
ggplot(cars2008,aes(x=cty)) +
  geom_density(fill="red",bw=.5) +
  labs(title="Kernel density plot with bw=0.5",x="City Miles Per Gallon")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/23.png)

```r
data(mpg,package="ggplot2")
cars2008 <- mpg[mpg$year == 2008 & mpg$cyl != 5,]
cars2008$Cylinders <- factor(cars2008$cyl)
ggplot(cars2008,aes(x=cty,color=Cylinders,linetype=Cylinders)) +
  geom_density(size=1) + labs(title="Fuel Efficiecy by Number of Cylinders",x="city Miles per Gallon")
ggplot(cars2008,aes(x=cty,fill=Cylinders)) + geom_density(alpha=.4) + labs(title="Default Kernel density plot",x="cty",y="density")


```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/24.png)

#### 箱线图

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/25.jpg)

##### 使用并列箱线图进行跨足比较

```r

library(ggplot2)
cars <- mpg[mpg$cyl != 5,]
cars$Cylinders <- factor(cars$cyl)
cars$Year <- factor(cars$year)
ggplot(cars,aes(x=Cylinders,y=cty)) +
  geom_boxplot() +
  labs(x="Number of Cylinders",y="Miles Per Gallon",title="Car Mileage Data")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/25.png)

##### 小提琴图

```r
library(ggplot2)
cars <- mpg[mpg$cyl != 5,]
cars$Cylinders <- factor(cars$cyl)
ggplot(cars,aes(x=Cylinders,y=cty)) +
  geom_boxplot(width=0.2,fill="green") +
  geom_violin(fill="gold",alpha=0.3) +
  labs(x="Number of Cylinders",y="City Miles Per Gallon",title="Violin Plots of Miles Per Gallon")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/26.png)

#### 点图

ggplot(data,aes(x=contvar,y=catvar)) +geom_point

```r
library(ggplot2)
> library(dplyr)
> plotdata <- mpg %>%
+   filter(year == "2008") %>%
+   group_by(model) %>%
+   summarize(meanHwy=mean(hwy))
> plotdata
# A tibble: 38 × 2
   model              meanHwy
   <chr>                <dbl>
 1 4runner 4wd           18.5
 2 a4                    29.3
 3 a4 quattro            26.2
 4 a6 quattro            24  
 5 altima                29  
 6 c1500 suburban 2wd    18  
 7 camry                 30  
 8 camry solara          29.7
 9 caravan 2wd           22.2
10 civic                 33.8
# ℹ 28 more rows
# ℹ Use `print(n = ...)` to see more rows
```

```r
ggplot(plotdata,aes(x=meanHwy,y=model)) +
  geom_point() +
  labs(x="Miles Per Gallon",y="",title="Gas Mileage for Car Models")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/27.png)

```
ggplot(plotdata,aes(x=meanHwy,y=reorder(model,meanHwy))) +
  geom_point() +
  labs(x="Miles Per Gallon",y="",title="Gas Mileage for Car Models")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/28.png)

### 基本统计分析

#### 描述性统计分析

```r
 myvars <- c("mpg","hp","wt")
> head(mtcars[myvars])
                   mpg  hp    wt
Mazda RX4         21.0 110 2.620
Mazda RX4 Wag     21.0 110 2.875
Datsun 710        22.8  93 2.320
Hornet 4 Drive    21.4 110 3.215
Hornet Sportabout 18.7 175 3.440
Valiant           18.1 105 3.460
```

##### 方法云集

summary获取描述性统计量

```r
myvars <- c("mpg","hp","wt")
> summary(mtcars[myvars])
      mpg              hp              wt       
 Min.   :10.40   Min.   : 52.0   Min.   :1.513  
 1st Qu.:15.43   1st Qu.: 96.5   1st Qu.:2.581  
 Median :19.20   Median :123.0   Median :3.325  
 Mean   :20.09   Mean   :146.7   Mean   :3.217  
 3rd Qu.:22.80   3rd Qu.:180.0   3rd Qu.:3.610  
 Max.   :33.90   Max.   :335.0   Max.   :5.424 
```

（apply函数用于矩阵，sapply数据框）计算所选择的任意描述性统计量

```r
mystats <- function(x,na.omit=FALSE) {
+   if (na.omit)
+     #数据是否包含na的值
+     x <- x[! is.na(x)]
+   m <- mean(x)
+   n <- length(x)
+   s <- sd(x)
+   skew <- sum((x-m)^3/s^3)/n
+   kurt <- sum((x-m)^4/s^4)/n - 3
+   return(c(n=n,mean=m,stdev=s,skew=skew,kurtosis=kurt))
+ }
> myvars <- c("mpg","hp","wt")
> sapply(mtcars[myvars],mystats)
               mpg          hp          wt
n        32.000000  32.0000000 32.00000000
mean     20.090625 146.6875000  3.21725000
stdev     6.026948  68.5628685  0.97845744
skew      0.610655   0.7260237  0.42314646
kurtosis -0.372766  -0.1355511 -0.02271075
```

##### 更多方法

hmisc的describe函数可返回变量和观测值的数量、缺失值和唯一值的数目、均值、分位数，5个最大值和5个最小值

```r
library(Hmisc)
myvars <- c("mpg","hp","wt")
describe(mtcars[myvars])
'''
mtcars[myvars] 

 3  Variables      32  Observations
------------------------------------------------------------------------------------------------------
mpg 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75 
      32        0       25    0.999    20.09    6.796    12.00    14.34    15.43    19.20    22.80 
     .90      .95 
   30.09    31.30 

lowest : 10.4 13.3 14.3 14.7 15  , highest: 26   27.3 30.4 32.4 33.9
------------------------------------------------------------------------------------------------------
hp 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75 
      32        0       22    0.997    146.7    77.04    63.65    66.00    96.50   123.00   180.00 
     .90      .95 
  243.50   253.55 

lowest :  52  62  65  66  91, highest: 215 230 245 264 335
------------------------------------------------------------------------------------------------------
wt 
       n  missing distinct     Info     Mean      Gmd      .05      .10      .25      .50      .75 
      32        0       29    0.999    3.217    1.089    1.736    1.956    2.581    3.325    3.610 
     .90      .95 
   4.048    5.293 

lowest : 1.513 1.615 1.835 1.935 2.14 , highest: 3.845 4.07  5.25  5.345 5.424
------------------------------------------------------------------------------------------------------
'''
```

pastecs包的stat.desc()的函数计算种类繁多的描述性统计量

stat.desc(x,basic=TRUE,desc=TRUE,norm=FALSE,p=0.95)

basic默认的化计算所有值、空值、缺失值的数量、以及最小值、最大值、值域还有总和

desc默认计算中位数、均值、均值的标准误、平均数置信度为95%的置信区间、方差、标准差以及变异系数。

norm不是默认     返回正太分布统计量

```r
library(pastecs)
myvars <- c("mpg","hp","wt")
stat.desc(mtcars[myvars])
                     mpg           hp          wt
nbr.val       32.0000000   32.0000000  32.0000000
nbr.null       0.0000000    0.0000000   0.0000000
nbr.na         0.0000000    0.0000000   0.0000000
min           10.4000000   52.0000000   1.5130000
max           33.9000000  335.0000000   5.4240000
range         23.5000000  283.0000000   3.9110000
sum          642.9000000 4694.0000000 102.9520000
median        19.2000000  123.0000000   3.3250000
mean          20.0906250  146.6875000   3.2172500
SE.mean        1.0654240   12.1203173   0.1729685
CI.mean.0.95   2.1729465   24.7195501   0.3527715
var           36.3241028 4700.8669355   0.9573790
std.dev        6.0269481   68.5628685   0.9784574
coef.var       0.2999881    0.4674077   0.3041285
```

psych有一个describe函数计算观测值的非缺失值的数量、平均数、标准差、中位数、截尾均值、绝对中位差、最小值、最大值、值域、偏度、峰度和均值的标准误

```r
library(psych)
myvars <- c("mpg","hp","wt")
describe(mtcars[myvars])
 vars  n   mean    sd median trimmed   mad   min    max  range skew kurtosis    se
mpg    1 32  20.09  6.03  19.20   19.70  5.41 10.40  33.90  23.50 0.61    -0.37  1.07
hp     2 32 146.69 68.56 123.00  141.19 77.10 52.00 335.00 283.00 0.73    -0.14 12.12
wt     3 32   3.22  0.98   3.33    3.15  0.77  1.51   5.42   3.91 0.42    -0.02  0.17
```

##### 分组计算描述性统计量

by计算分组统计量

```r
datats <- function(x)sapply(x,mystats)
> myvars <- c("mpg","hp","wt")
> by(mtcars[myvars],mtcars$am,datats)
mtcars$am: 0
                 mpg           hp         wt
n        19.00000000  19.00000000 19.0000000
mean     17.14736842 160.26315789  3.7688947
stdev     3.83396639  53.90819573  0.7774001
skew      0.01395038  -0.01422519  0.9759294
kurtosis -0.80317826  -1.20969733  0.1415676
---------------------------------------------------------------------------- 
mtcars$am: 1
                 mpg          hp         wt
n        13.00000000  13.0000000 13.0000000
mean     24.39230769 126.8461538  2.4110000
stdev     6.16650381  84.0623243  0.6169816
skew      0.05256118   1.3598859  0.2103128
kurtosis -1.45535200   0.5634635 -1.1737358
```

```r
dstats <- function(x)sapply(x,mystats,na.omit=TRUE)
> myvars <- c("mpg","hp","wt")
> by(mtcars[myvars],list(Transmission=mtcars$am,Engine=mtcars$vs),FUN=dstats)
Transmission: 0
Engine: 0
                mpg          hp         wt
n        12.0000000  12.0000000 12.0000000
mean     15.0500000 194.1666667  4.1040833
stdev     2.7743959  33.3598379  0.7683069
skew     -0.2843325   0.2785849  0.8542070
kurtosis -0.9635443  -1.4385375 -1.1433587
---------------------------------------------------------------------------- 
Transmission: 1
Engine: 0
                mpg          hp          wt
n         6.0000000   6.0000000  6.00000000
mean     19.7500000 180.8333333  2.85750000
stdev     4.0088652  98.8158219  0.48672117
skew      0.2050011   0.4842372  0.01270294
kurtosis -1.5266040  -1.7270981 -1.40961807
---------------------------------------------------------------------------- 
Transmission: 0
Engine: 1
                mpg          hp         wt
n         7.0000000   7.0000000  7.0000000
mean     20.7428571 102.1428571  3.1942857
stdev     2.4710707  20.9318622  0.3477598
skew      0.1014749  -0.7248459 -1.1532766
kurtosis -1.7480372  -0.7805708 -0.1170979
---------------------------------------------------------------------------- 
Transmission: 1
Engine: 1
                mpg         hp         wt
n         7.0000000  7.0000000  7.0000000
mean     28.3714286 80.5714286  2.0282857
stdev     4.7577005 24.1444068  0.4400840
skew     -0.3474537  0.2609545  0.4009511
kurtosis -1.7290639 -1.9077611 -1.3677833
```

##### 使用dplyr进行交互式汇总数据

carData包的Salaries包含美国一所大学在2008年至2009年之间教授9个月的薪水

```
library(carData)
> Salaries %>%
+   summarize(med = median(salary), 
+             min = min(salary), 
+             max = max(salary))
     med   min    max
1 107300 57800 231545
> 
> Salaries %>%
+   group_by(rank, sex) %>%
+   summarize(n = length(salary),
+             med = median(salary), 
+             min = min(salary), 
+             max = max(salary))
`summarise()` has grouped output by 'rank'. You can override using the `.groups` argument.
# A tibble: 6 × 6
# Groups:   rank [3]
  rank      sex        n     med   min    max
  <fct>     <fct>  <int>   <dbl> <int>  <int>
1 AsstProf  Female    11  77000  63100  97032
2 AsstProf  Male      56  80182  63900  95079
3 AssocProf Female    10  90556. 62884 109650
4 AssocProf Male      54  95626. 70000 126431
5 Prof      Female    18 120258. 90450 161101
6 Prof      Male     248 123996  57800 231545
> 
> Salaries %>%
+   group_by(rank, sex) %>%
+   select(yrs.service, yrs.since.phd) %>%
+   summarize_all(mean)
Adding missing grouping variables: `rank`, `sex`
# A tibble: 6 × 4
# Groups:   rank [3]
  rank      sex    yrs.service yrs.since.phd
  <fct>     <fct>        <dbl>         <dbl>
1 AsstProf  Female        2.55          5.64
2 AsstProf  Male          2.34          5   
3 AssocProf Female       11.5          15.5 
4 AssocProf Male         12.0          15.4 
5 Prof      Female       17.1          23.7 
6 Prof      Male         23.2          28.6 
```

#### 频数表和列联表

##### 生成频数表

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/26.jpg)

###### 一维列联表

table函数生成简单的频数统计表

```
mytable <- with(Arthritis,table(Improved))
> mytable
Improved
  None   Some Marked 
    42     14     28 
prop.table频数转换为比例值
 prop.table(mytable)
Improved
     None      Some    Marked 
0.5000000 0.1666667 0.3333333 
```

###### 二维列联表

xtabs函数使用公式风格的输入创建列联表

```r
mytable <- xtabs(~Treatment + Improved,data=Arthritis)
> mytable
         Improved
Treatment None Some Marked
  Placebo   29    7      7
  Treated   13    7     21
```

margin.table()和prop.table生成边际频数和比例

```r
margin.table(mytable,1)
Treatment
Placebo Treated 
     43      41 
> prop.table(mytable,1)
         Improved
Treatment      None      Some    Marked
  Placebo 0.6744186 0.1627907 0.1627907
  Treated 0.3170732 0.1707317 0.5121951
```

addmargins这些表格添加边际和

```r
addmargins(mytable)
         Improved
Treatment None Some Marked Sum
  Placebo   29    7      7  43
  Treated   13    7     21  41
  Sum       42   14     28  84
> addmargins(prop.table(mytable))
         Improved
Treatment       None       Some     Marked        Sum
  Placebo 0.34523810 0.08333333 0.08333333 0.51190476
  Treated 0.15476190 0.08333333 0.25000000 0.48809524
  Sum     0.50000000 0.16666667 0.33333333 1.00000000
```

table函数默认忽略缺失值，频数统计中将NA设为一个有效的类别，useNA="Ifany"

###### gmodels包的CrossTable函数。

```
library(gmodels)
> CrossTable(Arthritis$Treatment,Arthritis$Improved)


   Cell Contents
|-------------------------|
|                       N |
| Chi-square contribution |
|           N / Row Total |
|           N / Col Total |
|         N / Table Total |
|-------------------------|


Total Observations in Table:  84 


                    | Arthritis$Improved 
Arthritis$Treatment |      None |      Some |    Marked | Row Total | 
--------------------|-----------|-----------|-----------|-----------|
            Placebo |        29 |         7 |         7 |        43 | 
                    |     2.616 |     0.004 |     3.752 |           | 
                    |     0.674 |     0.163 |     0.163 |     0.512 | 
                    |     0.690 |     0.500 |     0.250 |           | 
                    |     0.345 |     0.083 |     0.083 |           | 
--------------------|-----------|-----------|-----------|-----------|
            Treated |        13 |         7 |        21 |        41 | 
                    |     2.744 |     0.004 |     3.935 |           | 
                    |     0.317 |     0.171 |     0.512 |     0.488 | 
                    |     0.310 |     0.500 |     0.750 |           | 
                    |     0.155 |     0.083 |     0.250 |           | 
--------------------|-----------|-----------|-----------|-----------|
       Column Total |        42 |        14 |        28 |        84 | 
                    |     0.500 |     0.167 |     0.333 |           | 
--------------------|-----------|-----------|-----------|-----------|
```

###### 多维列联表

```r
 mytable <- xtabs(~ Treatment + Sex +Improved,data=Arthritis)
> mytable
, , Improved = None

         Sex
Treatment Female Male
  Placebo     19   10
  Treated      6    7

, , Improved = Some

         Sex
Treatment Female Male
  Placebo      7    0
  Treated      5    2

, , Improved = Marked

         Sex
Treatment Female Male
  Placebo      6    1
  Treated     16    5 

> ftable(mytable)
                 Improved None Some Marked
Treatment Sex                             
Placebo   Female            19    7      6
          Male              10    0      1
Treated   Female             6    5     16
          Male               7    2      5
> margin.table(mytable,1)
Treatment
Placebo Treated 
     43      41 
> margin.table(mytable,2)
Sex
Female   Male 
    59     25 
> margin.table(mytable,3)
Improved
  None   Some Marked 
    42     14     28 
> margin.table(mytable,c(1,3))
         Improved
Treatment None Some Marked
  Placebo   29    7      7
  Treated   13    7     21
> ftable(prop.table(mytable,c(1,2)))
                 Improved       None       Some     Marked
Treatment Sex                                             
Placebo   Female          0.59375000 0.21875000 0.18750000
          Male            0.90909091 0.00000000 0.09090909
Treated   Female          0.22222222 0.18518519 0.59259259
          Male            0.50000000 0.14285714 0.35714286
> ftable(addmargins(prop.table(mytable,c(1,2)),3))
                 Improved       None       Some     Marked        Sum
Treatment Sex                                                        
Placebo   Female          0.59375000 0.21875000 0.18750000 1.00000000
          Male            0.90909091 0.00000000 0.09090909 1.00000000
Treated   Female          0.22222222 0.18518519 0.59259259 1.00000000
          Male            0.50000000 0.14285714 0.35714286 1.00000000
```

##### 独立性检验

###### 卡方独立检验

```r
library(vcd)
> mytable <- xtabs(~Treatment+Improved,data=Arthritis)
> chisq.test(mytable)

    Pearson's Chi-squared test

data:  mytable
X-squared = 13.055, df = 2, p-value = 0.001463

> mytable <- xtabs(~Improved+Sex,data=Arthritis)
> chisq.test(mytable)

    Pearson's Chi-squared test

data:  mytable
X-squared = 4.8407, df = 2, p-value = 0.08889

Warning message:
In chisq.test(mytable) : Chi-squared近似算法有可能不准
```

###### Fisher精确检验

fisher.test函数进行fisher精确检验。

边界固定的列联表中行和列是相互独立的

```
mytable <- xtabs(~Treatment+Improved,data=Arthritis)
> fisher.test(mytable)

    Fisher's Exact Test for Count Data

data:  mytable
p-value = 0.001393
alternative hypothesis: two.sided
```

###### Cochran-Mantel-Haenszel检验

mantelhaen.test函数进行Cochran-Mantel-Haenszel卡方检验

两个名义变量在第3个变量的每一层中都是条件独立的。

```r
mytable <- xtabs(~Treatment+Improved+Sex,data=Arthritis)
> mantelhaen.test(mytable)

    Cochran-Mantel-Haenszel test

data:  mytable
Cochran-Mantel-Haenszel M^2 = 14.632, df = 2, p-value = 0.0006647
```

##### 相关性度量

```r
library(vcd)
> mytable <- xtabs(~Treatment+Improved,data=Arthritis)
> assocstats(mytable)
                    X^2 df  P(> X^2)
Likelihood Ratio 13.530  2 0.0011536
Pearson          13.055  2 0.0014626

Phi-Coefficient   : NA 
Contingency Coeff.: 0.367 
Cramer's V        : 0.394 
```

#### 相关分析

##### 相关的类型

###### Pearson、Spearman和Kendall相关系数

Pearson积差相关系数衡量了两个定量变量之间的线性相关程序。

Spearman等级相关系数衡量分级序变量之间的相关程度。

Kebdall's Tau 相关系数也是一种非参数等级相关的度量

cor可以计算这三个相关系数，cov计算协方差。

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/27.jpg)

```r
states <- state.x77[,1:6]
> cov(states)
              Population      Income   Illiteracy     Life Exp      Murder      HS Grad
Population 19931683.7588 571229.7796  292.8679592 -407.8424612 5663.523714 -3551.509551
Income       571229.7796 377573.3061 -163.7020408  280.6631837 -521.894286  3076.768980
Illiteracy      292.8680   -163.7020    0.3715306   -0.4815122    1.581776    -3.235469
Life Exp       -407.8425    280.6632   -0.4815122    1.8020204   -3.869480     6.312685
Murder         5663.5237   -521.8943    1.5817755   -3.8694804   13.627465   -14.549616
HS Grad       -3551.5096   3076.7690   -3.2354694    6.3126849  -14.549616    65.237894
> cor(states)
            Population     Income Illiteracy    Life Exp     Murder     HS Grad
Population  1.00000000  0.2082276  0.1076224 -0.06805195  0.3436428 -0.09848975
Income      0.20822756  1.0000000 -0.4370752  0.34025534 -0.2300776  0.61993232
Illiteracy  0.10762237 -0.4370752  1.0000000 -0.58847793  0.7029752 -0.65718861
Life Exp   -0.06805195  0.3402553 -0.5884779  1.00000000 -0.7808458  0.58221620
Murder      0.34364275 -0.2300776  0.7029752 -0.78084575  1.0000000 -0.48797102
HS Grad    -0.09848975  0.6199323 -0.6571886  0.58221620 -0.4879710  1.00000000
```

```r
 x <- states[,c("Population","Income","Illiteracy","HS Grad")]
> y <- states[,c("Life Exp","Murder")]
> cor(x,y)
              Life Exp     Murder
Population -0.06805195  0.3436428
Income      0.34025534 -0.2300776
Illiteracy -0.58847793  0.7029752
HS Grad     0.58221620 -0.4879710
```

###### 偏相关

其他一个或多个定量变量的影响进行控制的条件下，分析两个定量变量之间的相互关系。

ggm包的pcor()函数计算篇相关系数.

```
library(ggm)
> colnames(states)
[1] "Population" "Income"     "Illiteracy" "Life Exp"   "Murder"     "HS Grad"   
> pcor(c(1,5,2,3,6),cov(states))
[1] 0.3462724
```

###### 其他类型的相关

polycor包的hetcor函数计算一种混合的相关矩阵。

##### 相关性的显著性检验

cor.test()函数对单个Pearson、Spearman和Kendall相关系数进行检验

cor.test(x,y,alternative=,method=)

alternative指定进行双侧检验或单侧检验(two.side    less     greater)

method指定计算的相关类型(pearson   Kendall   spearman)

研究的假设为总体相关系数小于0，alternative="less"

研究的假设为总体的相关系数大于0，alternative="greater"

```r
cor.test(states[,3],states[,5])

    Pearson's product-moment correlation

data:  states[, 3] and states[, 5]
t = 6.8479, df = 48, p-value = 1.258e-08
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.5279280 0.8207295
sample estimates:
      cor 
0.7029752 

```

psych包的corr.test()函数可以一次做更多事情

```r
library(psych)
> corr.test(states,use="complete")
Call:corr.test(x = states, use = "complete")
Correlation matrix 
           Population Income Illiteracy Life Exp Murder HS Grad
Population       1.00   0.21       0.11    -0.07   0.34   -0.10
Income           0.21   1.00      -0.44     0.34  -0.23    0.62
Illiteracy       0.11  -0.44       1.00    -0.59   0.70   -0.66
Life Exp        -0.07   0.34      -0.59     1.00  -0.78    0.58
Murder           0.34  -0.23       0.70    -0.78   1.00   -0.49
HS Grad         -0.10   0.62      -0.66     0.58  -0.49    1.00
Sample Size 
[1] 50
Probability values (Entries above the diagonal are adjusted for multiple tests.) 
           Population Income Illiteracy Life Exp Murder HS Grad
Population       0.00   0.59       1.00      1.0   0.10       1
Income           0.15   0.00       0.01      0.1   0.54       0
Illiteracy       0.46   0.00       0.00      0.0   0.00       0
Life Exp         0.64   0.02       0.00      0.0   0.00       0
Murder           0.01   0.11       0.00      0.0   0.00       0
HS Grad          0.50   0.00       0.00      0.0   0.00       0

 To see confidence intervals of the correlations, print with the short=FALSE option
```

use="pairwise"或"complete"对缺失值执行成对删除或行删除

###### 其他显著性检验

ggm包下的pcor.test()检验在控制一个或多个额外变量是两个变量之间的条件独立性

#### t检验

##### 独立样本的t检验

```
> library(MASS)
> t.test(Prob ~ So,data=UScrime)

Welch Two Sample t-test

data:  Prob by So
t = -3.8954, df = 24.925, p-value = 0.0006506
alternative hypothesis: true difference in means between group 0 and group 1 is not equal to 0
95 percent confidence interval:
 -0.03852569 -0.01187439
sample estimates:
mean in group 0 mean in group 1 
     0.03851265      0.06371269 
```

##### 非独立样本的t检验

```r
library(MASS)
> sapply(UScrime[c("U1","U2")],function(x)(c(mean=mean(x),sd=sd(x))))
           U1       U2
mean 95.46809 33.97872
sd   18.02878  8.44545
> with(UScrime,t.test(U1,U2,paired=TRUE))

    Paired t-test

data:  U1 and U2
t = 32.407, df = 46, p-value < 2.2e-16
alternative hypothesis: true mean difference is not equal to 0
95 percent confidence interval:
 57.67003 65.30870
sample estimates:
mean difference 
       61.48936 

```

##### 多于两组的情况

方差分析ANOVA一套覆盖了许多实验设计和准实验设计的综合方法

#### 组间差异的非参数检验

##### 两组的比较

两组数据独立，WIlcoxon秩和检验（Mann-Whitney检验）来评估观测值是否从相同的概率分布中冲得到的

wilcox.test(y~x,data)

Mann-WhitneyU检验回答监禁率问题

```
with(UScrime,by(Prob,So,median))
So: 0
[1] 0.038201
---------------------------------------------------------------------------- 
So: 1
[1] 0.055552  
wilcox.test(Prob ~ So,data=UScrime)

    Wilcoxon rank sum exact test

data:  Prob by So
W = 81, p-value = 8.488e-05
alternative hypothesis: true location shift is not equal to 0
```

```r
sapply(UScrime[c("U1","U2")],median)
U1 U2 
92 34 
> with(UScrime,wilcox.test(U1,U2,paired=TRUE))

    Wilcoxon signed rank test with continuity correction

data:  U1 and U2
V = 1128, p-value = 2.464e-09
alternative hypothesis: true location shift is not equal to 0

Warning message:
In wilcox.test.default(U1, U2, paired = TRUE) : 无法精確計算带连结的p值
```

##### 多于两组的比较

kruskal-Wallis

```r
states <- data.frame(state.region,state.x77)
> kruskal.test(Illiteracy ~ state.region,data=states)

    Kruskal-Wallis rank sum test

data:  Illiteracy by state.region
Kruskal-Wallis chi-squared = 22.672, df = 3, p-value = 4.726e-05
```

```r
source("http://mp.ituring.com.cn/files/RiA3/rfiles/wmc.R")
> states <- data.frame(state.region,state.x77)
> wmc(Illiteracy ~ state.region,data=states,method="holm")
Descriptive Statistics

           West North Central Northeast    South
n      13.00000      12.00000   9.00000 16.00000
median  0.60000       0.70000   1.10000  1.75000
mad     0.14826       0.14826   0.29652  0.59304

Multiple Comparisons (Wilcoxon Rank Sum Tests)
Probability Adjustment = holm

        Group.1       Group.2    W            p    
1          West North Central 88.0 8.665618e-01    
2          West     Northeast 46.5 8.665618e-01    
3          West         South 39.0 1.788186e-02   *
4 North Central     Northeast 20.5 5.359707e-02   .
5 North Central         South  2.0 8.051509e-05 ***
6     Northeast         South 18.0 1.187644e-02   *
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

## 中级方法

### 回归

#### 回归的多面性

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/28.jpg)

##### OLS回归的适用场景

自变量的加权和来预测连续性因变量，权重是通过数据估计而得的参数

#### oLS回归

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/29.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/30.jpg)

##### 函数lm()拟合回归模型

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/31.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/32.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/33.jpg)

##### 简单线性回归

```
fit <- lm(weight ~ height,data=women)
> summary(fit)

Call:
lm(formula = weight ~ height, data = women)

Residuals:
    Min      1Q  Median      3Q     Max 
-1.7333 -1.1333 -0.3833  0.7417  3.1167 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) -87.51667    5.93694  -14.74 1.71e-09 ***
height        3.45000    0.09114   37.85 1.09e-14 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.525 on 13 degrees of freedom
Multiple R-squared:  0.991,    Adjusted R-squared:  0.9903 
F-statistic:  1433 on 1 and 13 DF,  p-value: 1.091e-14

> women$weight
 [1] 115 117 120 123 126 129 132 135 139 142 146 150 154 159 164
> fitted(fit)
       1        2        3        4        5        6        7        8        9       10       11 
112.5833 116.0333 119.4833 122.9333 126.3833 129.8333 133.2833 136.7333 140.1833 143.6333 147.0833 
      12       13       14       15 
150.5333 153.9833 157.4333 160.8833 
> residuals(fit)
          1           2           3           4           5           6           7           8 
 2.41666667  0.96666667  0.51666667  0.06666667 -0.38333333 -0.83333333 -1.28333333 -1.73333333 
          9          10          11          12          13          14          15 
-1.18333333 -1.63333333 -1.08333333 -0.53333333  0.01666667  1.56666667  3.11666667 
> plot(women$height,women$weight,xlab="Height (in inches)",ylab="Weight (in pounds)")
> abline(fit)
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/29.png)

##### 多项式回归

```
fit2 <- lm(weight ~ height + I(height ^2),data=women)
summary(fit2)
plot(women$height,women$weight,xlab="Height (in inches)",ylab="Weight (in lbs)")
lines(women$height,fitted(fit2))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/30.png)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/34.jpg)

##### 多元线性回归

```r
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
cor(states)
library(car)
#默认在非对角线区域绘制变量之间的散点图，平滑和线性拟合曲线，smooth=FALSE不显示平滑曲线
scatterplotMatrix(states,smooth=FALSE,main="Scatter Plot Matrix")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/31.png)

```
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
> fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
> summary(fit)

Call:
lm(formula = Murder ~ Population + Illiteracy + Income + Frost, 
    data = states)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.7960 -1.6495 -0.0811  1.4815  7.6210 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 1.235e+00  3.866e+00   0.319   0.7510    
Population  2.237e-04  9.052e-05   2.471   0.0173 *  
Illiteracy  4.143e+00  8.744e-01   4.738 2.19e-05 ***
Income      6.442e-05  6.837e-04   0.094   0.9253    
Frost       5.813e-04  1.005e-02   0.058   0.9541    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.535 on 45 degrees of freedom
Multiple R-squared:  0.567,    Adjusted R-squared:  0.5285 
F-statistic: 14.73 on 4 and 45 DF,  p-value: 9.133e-08
```

##### 交互式项的多元线性回归

```r
> fit <- lm(mpg ~ hp + wt + hp:wt,data=mtcars)
> summary(fit)

Call:
lm(formula = mpg ~ hp + wt + hp:wt, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.0632 -1.6491 -0.7362  1.4211  4.5513 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 49.80842    3.60516  13.816 5.01e-14 ***
hp          -0.12010    0.02470  -4.863 4.04e-05 ***
wt          -8.21662    1.26971  -6.471 5.20e-07 ***
hp:wt        0.02785    0.00742   3.753 0.000811 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.153 on 28 degrees of freedom
Multiple R-squared:  0.8848,    Adjusted R-squared:  0.8724 
F-statistic: 71.66 on 3 and 28 DF,  p-value: 2.981e-13
```

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/35.jpg)

plot(effect(term,mod,xlevels),multiline=TRUE)

term模型要绘制的项，mod通过lm()拟合的模型，xlevels是一个列表，指定变量要设定的常量值，

```
library(effects)
plot(effect("hp:wt",fit,, list(wt=c(2.2,3.2,4.2))),lines=c(1,2,3),multiline=TRUE)
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/32.png)

#### 回归模型的诊断

```r
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
> fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
> confint(fit)
                    2.5 %       97.5 %
(Intercept) -6.552191e+00 9.0213182149
Population   4.136397e-05 0.0004059867
Illiteracy   2.381799e+00 5.9038743192
Income      -1.312611e-03 0.0014414600
Frost       -1.966781e-02 0.0208304170
```

##### 标准方法

```r
fit <- lm(weight ~ height,data=women)
par(mfrow=c(2,2))
plot(fit)
par(mfrow=c(1,1))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/33.png)

OLS回归的统计假设

- [ ] 正态性。自变量值固定时，因变量成正态分布，残差值也应该是一个均值为0的正太分布。

- [ ] 独立性。我们从这些图中分辨出因变量值是否相互独立，只能从数据的收集方式来验证。

- [ ] 线性。因变量与自变量线性相关，残差值与预测值就没有任何系统关联。

- [ ] 同方差性。

“残差-杠杆关系图”提供了我们可能关注的单个观测点的信息。

1. 一个观测点是离群点，表明拟合回归模型对其观测效果不佳

2. 一个观测点有很高的杠杆值，表明他是一个异常的自变量值的组合。也就是说，在自变量空间中，他是一个离群点。

3. 一个观测点是强影响点，表明他对模型参数的估计产生的影响过大，非常不成比例。强影响点可以通过cook距离即Cook's D统计量来识别

##### 改进的方法

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/36.jpg)

###### 正太性

ggPlot函数提供了更为精确的正态假设检验方法

```
library(car) 
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
qqPlot(fit,labels=row.names(states),id=list(method="identify"),simulate=TRUE,main="Q-Q Plot")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/34.png)

```
> states["Nevada",]
       Murder Population Illiteracy Income Frost
Nevada   11.5        590        0.5   5149   188
> fitted(fit)["Nevada"]
  Nevada 
3.878958 
> residuals(fit)["Nevada"]
  Nevada 
7.621042 
> rstudent(fit)["Nevada"]
  Nevada 
3.542929 
```

###### 误差的独立性

依据收集数据方式的先验知识。

```r
> durbinWatsonTest(fit)
 lag Autocorrelation D-W Statistic p-value
   1      -0.2006929      2.317691    0.29
 Alternative hypothesis: rho != 0
```

###### 线性

通过成分残差图也称偏残差图，因变量与自变量之间是否呈非线性关系，是否有不同与已设定线性模型的系统偏差

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/37.jpg)

```
library(car)
crPlots(fit)
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/35.png)

###### 同方差性

ncvTest函数生成一个计分检验，零假设为误差方差不变，备择假设为误差方差随着拟合值水平的变化而变换

spreadLevelPlot创建一个添加了最佳拟合曲线的散点图，展示标准化残差绝对值与拟合值的关系

```r
library(car)
> ncvTest(fit)
Non-constant Variance Score Test 
Variance formula: ~ fitted.values 
Chisquare = 1.746514, Df = 1, p = 0.18632
> spreadLevelPlot(fit)

Suggested power transformation:  1.209626 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/36.png)

##### 多重共线性

VIF统计量进行检测。对于任何一个自变量，VIF的平方根表示变量回归参数的置信区间膨胀为与模型无关的自变量的程度。

```r
> library(car)
> vif(fit)
Population Illiteracy     Income      Frost 
  1.245282   2.165848   1.345822   2.082547 
> vif(fit) > 10 
Population Illiteracy     Income      Frost 
     FALSE      FALSE      FALSE      FALSE 
```

#### 异常观测值

##### 离群点

模糊预测效果不佳的观测点。

car一种离群点的统计方法outlierTest()函数求得最大标准化残差绝对值Bonferroni

```r
> library(car)
> outlierTest(fit)
       rstudent unadjusted p-value Bonferroni p
Nevada 3.542929         0.00095088     0.047544
```

##### 高杠杆值点

许多异常的自变量值组合起来的，与因变量值没有关系。

帽子统计量判断。对于一个给定的数据集，帽子均值为p/n,其中p是模型估计的参数数目，n是样本量。

```r
hat.plot<-function(fit){

  p<-length(coefficients(fit))

  n<-length(fitted(fit))

  plot(hatvalues(fit),main="Index Plot of Hat Values")

  abline(h=c(2,3)*p/n,col="red",lty=2)

  identify(1:n,hatvalues(fit),names(hatvalues(fit)))

}
hat.plot(fit)
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/37.png)

##### 强影响点

模型参数估计值的影响一些比例失衡的点。

Cook距离，或称D统计量以及变量添加图

```r
cutoff <- 4/(nrow(states)-length(fit$coefficients)-2)
plot(fit,which=4,cook.levels = cutoff)
abline(h=cutoff,lty=2,col="red")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/38.png)

Cook'sD有助于识别强影响点，并不提供关于这些点如何影响模型的信息。变量添加图弥补了这些缺陷。对于一个因变量和k个自变量。

变量添加图，对于每个自变量X，绘制Xk在其他k-1个自变量上回归的残差值相对与因变量在其他k-1个自变量上回归的残差值的关系图。car的avPlots

```r
library(car) 
avPlots(fit,ask=FALSE,id=list(method="identify"))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/39.png)

car包的influencePlot函数，将离群点、杠杆值和强影响点的信息整合到一副图形中.

```r
library(car)
influencePlot(fit,id="noteworthy->TRUE",main="Influence Plot",sub="Circle size is proportional to Cook's distance")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/40.png)

#### 改进措施

##### 删除观测点

提高数据集对于正态假设的拟合度，而强影响点会干扰结果，通常也会被删除。

删除最大的离群点或者强影响点后，模型需要重新拟合。离群点或强影响点仍然存在，重复以上过程直至获得比较满意的拟合。

##### 变量变换

car包的powerTransform()函数通过的最大似然估计来正态化变量X.

```r
> library(car)
> summary(powerTransform(states$Murder))
bcPower Transformation to Normality 
              Est Power Rounded Pwr Wald Lwr Bnd Wald Upr Bnd
states$Murder    0.6055           1       0.0884       1.1227

Likelihood ratio test that transformation parameter is equal to 0
 (log transformation)
                           LRT df     pval
LR test, lambda = (0) 5.665991  1 0.017297

Likelihood ratio test that no transformation is needed
                           LRT df    pval
LR test, lambda = (1) 2.122763  1 0.14512
```

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/38.jpg)

 car包的boxTidwell函数通过获取自变量幕数的最大似然估计来改善性关系。

```
> library(car)
> boxTidwell(Murder ~ Population + Illiteracy,data=states)
           MLE of lambda Score Statistic (t) Pr(>|t|)
Population       0.86939             -0.3228   0.7483
Illiteracy       1.35812              0.6194   0.5388

iterations =  19 

Score test for null hypothesis that all lambdas = 1:
F = 0.23214, df = 2 and 45, Pr(>F) = 0.7938
```

##### 增删变量

改变模型的变量会影响模型的拟合度。

删除变量在处理多重共线性时是一个非常重要的方法。

删除某个存在多重共线性的变量。

岭回归-多元回归的变体-专门用来处理多重共线问题

##### 尝试其他方法

处理多重共线性的一种方法是拟合一种不同类型的模型。存在离群点和/或强影响点，使用稳健回归模型替代OLS回归。

违背了正态性假设，使用非参数回归模型。存在显著的非线性，尝试非线性回归模型。

违背了误差独立性假设，还能用那些专门研究误差结构的模型，比如时间序列模型或者多层次回归模型。

我们还能转向广泛应用的广义线性模型，适用与许多OLS回归假设不成立的情况

#### 选择最佳的回归模型

##### 模型比较

基础安装中的anova()函数可以比较两个嵌套模型的拟合优度。嵌套模型，它回归方程的项完全包含在另一个模型中。

```r
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
> fit1 <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states)
> fit2 <- lm(Murder ~ Population + Illiteracy,data=states)
> anova(fit2,fit1)
Analysis of Variance Table

Model 1: Murder ~ Population + Illiteracy
Model 2: Murder ~ Population + Illiteracy + Income + Frost
  Res.Df    RSS Df Sum of Sq      F Pr(>F)
1     47 289.25                           
2     45 289.17  2  0.078505 0.0061 0.9939
```

AIC也可以用来比较模型，考虑了模型的统计拟合度以及用来拟合的参数数目。AIC值较小的模型要优先选择，说明模型用较小的参数获取了足够的拟合度。

```r
> fit1 <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states) 
> fit2 <- lm(Murder ~ Population + Illiteracy,data=states)
> AIC(fit1,fit2)
     df      AIC
fit1  6 241.6429
fit2  4 237.6565
```

##### 变量选择

大量候选变量中选择最终的自变量两种流行的方法：逐步回归法和全子集回归

###### 逐步回归

模型会一次添加或者删除一个变量，直到达到某个判停准则为止

向前逐步回归每次添加一个自变量到模型中，直到添加变量不会使模型有所改进为止。

向后逐步回归从模型包含所有自变量开始，一次删除一个变量，直到会降低模型质量为止。

向前向后逐步回归，结合了向前逐步回归和向后逐步回归的方法：变量每次进入一个，但是每一步中，变量都会被重新评估，对模型没有贡献的变量将会被删除；自变量可能会被添加、删除好几次，直到获的最优模型为止。

逐步回归法的实现依据增删变量的准则不同而不同。step函数可以实现逐步回归模型

```r
 states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
> fit <- lm(Murder ~ Population + Illiteracy + Income + Frost,data=states) 
> step(fit,direction = "backward")
Start:  AIC=97.75
Murder ~ Population + Illiteracy + Income + Frost

             Df Sum of Sq    RSS     AIC
- Frost       1     0.021 289.19  95.753
- Income      1     0.057 289.22  95.759
<none>                    289.17  97.749
- Population  1    39.238 328.41 102.111
- Illiteracy  1   144.264 433.43 115.986

Step:  AIC=95.75
Murder ~ Population + Illiteracy + Income

             Df Sum of Sq    RSS     AIC
- Income      1     0.057 289.25  93.763
<none>                    289.19  95.753
- Population  1    43.658 332.85 100.783
- Illiteracy  1   236.196 525.38 123.605

Step:  AIC=93.76
Murder ~ Population + Illiteracy

             Df Sum of Sq    RSS     AIC
<none>                    289.25  93.763
- Population  1    48.517 337.76  99.516
- Illiteracy  1   299.646 588.89 127.311

Call:
lm(formula = Murder ~ Population + Illiteracy, data = states)

Coefficients:
(Intercept)   Population   Illiteracy  
  1.6515497    0.0002242    4.0807366  
```

###### 全子集回归

所有可能的模型都会被检验。分析员可以选择展示所有可能的结果，也可能展示n个不同子集大小的最佳模型。

leaps包的regsubsets()函数实现。R平方、调整R平方或Mallows Cp统计量等准则来选择最佳模型。

R平方的含义是自变量解释因变量的程度；调整R平方与之类似，但考虑了模型的参数数目。R平方总会随着自变量数目的增加而增加。样本量相比，自变量数目很大时，容易导致过拟合。R平方可能会丢失数据的偶然变异信息，而调整R平方则提供了更为真实的总体R平方估计。

```r
> library(leaps)
> states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
> leaps  <- regsubsets(Murder ~ Population + Illiteracy + Income + Frost,data=states,nbest=4)
> subssTable <- function(obj,scale){
+   x <- summary(leaps)
+   m <- cbind(round(x[[scale]],3),x$which[,-1])
+   colnames(m)[1] <- scale
+   m[order(m[,1]),]
+ }
> subssTable(leaps,scale="adjr2")
  adjr2 Population Illiteracy Income Frost
1 0.033          0          0      1     0
1 0.100          1          0      0     0
1 0.276          0          0      0     1
2 0.292          1          0      0     1
3 0.309          1          0      1     1
3 0.476          0          1      1     1
2 0.480          0          1      1     0
2 0.481          0          1      0     1
1 0.484          0          1      0     0
4 0.528          1          1      1     1
3 0.539          1          1      1     0
3 0.539          1          1      0     1
2 0.548          1          1      0     0
```

#### 深层次分析

##### 交叉验证

将一定比例的数据挑选出来作为训练样本，另外的样本做保留样本，先在训练样本上获取回归方程，然后在保留样本上做预测。

bootstrap包的crossval函数实现k重交叉验证。

shrinkage函数对模型的R平方统计量做了k重交叉验证

```r
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
     Original R-square = 0.5669502 
     10 Fold Cross-Validated R-square = 0.3564904 
```

```
fit2 <- lm(Murder ~ Population + Illiteracy,data=states) 
> shrinkage(fit2)
Original R-square = 0.5668327 
10 Fold Cross-Validated R-square = 0.514864 
```

##### 相对重要性

```r
states <- as.data.frame(state.x77[,c("Murder","Population","Illiteracy","Income","Frost")])
> zstates <- as.data.frame(scale(states))
> zfit <- lm(Murder ~ Population + Income + Illiteracy + Frost,data=zstates) 
> coef(zfit)
  (Intercept)    Population        Income    Illiteracy         Frost 
-2.054026e-16  2.705095e-01  1.072372e-02  6.840496e-01  8.185407e-03 
```

```
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
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/41.png)

### 方差分析

#### ANOVA模型拟合

##### aov()函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/39.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/40.jpg)

##### 表达式中各项的顺序

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/41.jpg)

#### 单因素方差分析

```r
library(dplyr)
data(cholesterol,package="multcomp")
plotdata <- cholesterol %>% 
  group_by(trt) %>%
  summarize(n=n(),mean=mean(response),sd=sd(response),ci=qt(0.975,df = n - 1) * sd / sqrt(n))
plotdata

# A tibble: 5 × 5
  trt        n  mean    sd    ci
  <fct>  <int> <dbl> <dbl> <dbl>
1 1time     10  5.78  2.88  2.06
2 2times    10  9.22  3.48  2.49
3 4times    10 12.4   2.92  2.09
4 drugD     10 15.4   3.45  2.47
5 drugE     10 20.9   3.35  2.39 
> fit <- aov(response ~ trt,data=cholesterol)
> summary(fit)
            Df Sum Sq Mean Sq F value   Pr(>F)    
trt          4 1351.4   337.8   32.43 9.82e-13 ***
Residuals   45  468.8    10.4                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

```
library(ggplot2)
ggplot(plotdata,aes(x=trt,y=mean,group=1)) +
  geom_point(size=3,color="red") +
  geom_line(linetype="dashed",color="darkgrey") +
  geom_errorbar(aes(ymin=mean - ci,ymax=mean + ci),width=.1) +
  theme_bw() +
  labs(x="Treatment",y="Response",title="Mean Plot with 95% Confidence Interval")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/42.png)

##### 多重比较

```r
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
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/43.png)

```
library(multcomp)
tuk <- glht(fit,linfct=mcp(trt="Tukey"))
summary(tuk)

     Simultaneous Tests for General Linear Hypotheses

Multiple Comparisons of Means: Tukey Contrasts


Fit: aov(formula = response ~ trt, data = cholesterol)

Linear Hypotheses:
                     Estimate Std. Error t value Pr(>|t|)    
2times - 1time == 0     3.443      1.443   2.385 0.138116    
4times - 1time == 0     6.593      1.443   4.568 0.000339 ***
drugD - 1time == 0      9.579      1.443   6.637  < 1e-04 ***
drugE - 1time == 0     15.166      1.443  10.507  < 1e-04 ***
4times - 2times == 0    3.150      1.443   2.182 0.205069    
drugD - 2times == 0     6.136      1.443   4.251 0.000991 ***
drugE - 2times == 0    11.723      1.443   8.122  < 1e-04 ***
drugD - 4times == 0     2.986      1.443   2.069 0.251211    
drugE - 4times == 0     8.573      1.443   5.939  < 1e-04 ***
drugE - drugD == 0      5.586      1.443   3.870 0.003046 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
(Adjusted p values reported -- single-step method)
```

```r
labels1 <- cld(tuk,level=.05)$mcletters$Letters
labels2 <- paste(names(labels1),"\n",labels1)
ggplot(data=fit$model,aes(x=trt,y=response)) +
  scale_x_discrete(breaks=names(labels1),labels=labels2) +
  geom_boxplot(fill="lightgrey") +
  theme_bw() + 
  labs(x="Treatment",title="Distribution of Response Scores by Treatment",subtitle = "Groups without overlapping letters differ significantly (p < .05)")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/44.png)

##### 评估检验的假设条件

```r
library(car)
fit <- aov(response ~ trt,data=cholesterol)
qqPlot(fit,simulate = TRUE,main="Q-Q Plot")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/45.png)

```r
> bartlett.test(response ~ trt,data=cholesterol)

    Bartlett test of homogeneity of variances

data:  response by trt
Bartlett's K-squared = 0.57975, df = 4, p-value = 0.9653
```

```r
> library(car) 
> outlierTest(fit) 
No Studentized residuals with Bonferroni p < 0.05
Largest |rstudent|:
   rstudent unadjusted p-value Bonferroni p
19 2.251149           0.029422           NA
```

#### 单因素协方差分析

```r
 library(multcomp)
> library(dplyr)
> litter %>% 
+   group_by(dose) %>% 
+   summarise(n=n(),mean=mean(gesttime),sd=sd(gesttime))
# A tibble: 4 × 4
  dose      n  mean    sd
  <fct> <int> <dbl> <dbl>
1 0        20  22.1 0.438
2 5        19  22.2 0.451
3 50       18  21.9 0.404
4 500      17  22.2 0.431
> fit <- aov(weight ~ gesttime + dose,data=litter)
> summary(fit)
            Df Sum Sq Mean Sq F value  Pr(>F)   
gesttime     1  134.3  134.30   8.049 0.00597 **
dose         3  137.1   45.71   2.739 0.04988 * 
Residuals   69 1151.3   16.69                   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

```
library(effects)
lattice theme set by effectsTheme()
See ?effectsTheme for details.
> effect("dose",fit)

 dose effect
dose
       0        5       50      500 
32.35367 28.87672 30.56614 29.33460 
```

```r
> library(multcomp)
> contrast <- rbind("no drug vs. drug" = c(3,-1,-1,-1))
> summary(glht(fit,linfct=mcp(dose=contrast)))

     Simultaneous Tests for General Linear Hypotheses

Multiple Comparisons of Means: User-defined Contrasts


Fit: aov(formula = weight ~ gesttime + dose, data = litter)

Linear Hypotheses:
                      Estimate Std. Error t value Pr(>|t|)  
no drug vs. drug == 0    8.284      3.209   2.581    0.012 *
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
(Adjusted p values reported -- single-step method)
```

##### 评估检验的假设条件

检验回归斜率的同质性

```r
library(multcomp)
> fit2 <- aov(weight ~ gesttime*dose,data=litter)
> summary(fit2)
              Df Sum Sq Mean Sq F value  Pr(>F)   
gesttime       1  134.3  134.30   8.289 0.00537 **
dose           3  137.1   45.71   2.821 0.04556 * 
gesttime:dose  3   81.9   27.29   1.684 0.17889   
Residuals     66 1069.4   16.20                   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

##### 结果的可视化

```r
pred <- predict(fit) 
library(ggplot2)
ggplot(data=cbind(litter,pred),aes(gesttime,weight)) + geom_point() +
  facet_wrap(~ dose,nrow=1) + geom_line(aes(y=pred)) +
  labs(title="ANCOVA for weight by gesttime and dose") +
   theme_bw() + 
  theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/46.png)

#### 双因素方差分析

```r
library(dplyr)
> data(ToothGrowth)
> ToothGrowth$dose <- factor(ToothGrowth$dose) 
> stats <- ToothGrowth %>% 
+   group_by(supp,dose) %>% 
+   summarise(n=n(),mean=mean(len),sd=sd(len),ci=qt(0.975,df = n - 1) * sd / sqrt(n)) 
`summarise()` has grouped output by 'supp'. You can override using the `.groups` argument.
> stats
# A tibble: 6 × 6
# Groups:   supp [2]
  supp  dose      n  mean    sd    ci
  <fct> <fct> <int> <dbl> <dbl> <dbl>
1 OJ    0.5      10 13.2   4.46  3.19
2 OJ    1        10 22.7   3.91  2.80
3 OJ    2        10 26.1   2.66  1.90
4 VC    0.5      10  7.98  2.75  1.96
5 VC    1        10 16.8   2.52  1.80
6 VC    2        10 26.1   4.80  3.43
> fit <- aov(len ~ supp*dose,data=ToothGrowth) 
> summary(fit) 
            Df Sum Sq Mean Sq F value   Pr(>F)    
supp         1  205.4   205.4  15.572 0.000231 ***
dose         2 2426.4  1213.2  92.000  < 2e-16 ***
supp:dose    2  108.3    54.2   4.107 0.021860 *  
Residuals   54  712.1    13.2                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

```r
library(ggplot2)
pd <- position_dodge(0.2)
ggplot(data=stats,aes(x=dose,y=mean,group=supp,color=supp,linetype=supp)) +
  geom_point(size=2,position = pd) + 
  geom_line(position = pd) + 
  geom_errorbar(aes(ymin=mean - ci,ymax=mean + ci),width=.1,position = pd) + 
  theme_bw() + 
  scale_color_manual(values=c("blue","red")) + 
  labs(x="Dose",y="Mean Length",title="Mean Plot with 95% Confidence Interval")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/47.png)

#### 重复测量方差分析

```r
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/48.png)

#### 多元方差分析

```r
data(UScereal,package="MASS")
> shelf <- factor(UScereal$shelf) 
> shelf <- factor(shelf) 
> y <- cbind(UScereal$calories,UScereal$fat,UScereal$sugars)
> colnames(y) <- c("calories","fat","sugars")
> aggregate(y,by=list(shelf=shelf),FUN=mean) 
  shelf calories       fat    sugars
1     1 119.4774 0.6621338  6.295493
2     2 129.8162 1.3413488 12.507670
3     3 180.1466 1.9449071 10.856821
> cov(y) 
           calories       fat     sugars
calories 3895.24210 60.674383 180.380317
fat        60.67438  2.713399   3.995474
sugars    180.38032  3.995474  34.050018
> fit <- manova(y ~ shelf) 
> summary(fit) 
          Df Pillai approx F num Df den Df    Pr(>F)    
shelf      2 0.4021   5.1167      6    122 0.0001015 ***
Residuals 62                                            
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> summary.aov(fit) 
 Response calories :
            Df Sum Sq Mean Sq F value    Pr(>F)    
shelf        2  50435 25217.6  7.8623 0.0009054 ***
Residuals   62 198860  3207.4                      
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

 Response fat :
            Df Sum Sq Mean Sq F value  Pr(>F)  
shelf        2  18.44  9.2199  3.6828 0.03081 *
Residuals   62 155.22  2.5035                  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

 Response sugars :
            Df  Sum Sq Mean Sq F value   Pr(>F)   
shelf        2  381.33 190.667  6.5752 0.002572 **
Residuals   62 1797.87  28.998                    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

##### 评估检验的假设条件

```r
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/49.png)

mvoutlier包的aq.plot检验多元离群点

```r
library(mvoutlier)
载入需要的程辑包：sgeostat
> outliers <- aq.plot(y)
Projection to the first and second robust principal components.
Proportion of total variation (explained variance): 0.9789888
> outliers
$outliers
 [1] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE
[17] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE
[33] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE
[49] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[65] FALSE

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/50.png)

##### 稳健多元方差分析

rrcov包的Wilks.test函数实现。vegan包的adonis函数提供了非参数MANOVA的等同形式

```r
library(rrcov)
Wilks.test(y,shelf,method="mcd") 

    Robust One-way MANOVA (Bartlett Chi2)

data:  x
Wilks' Lambda = 0.42394, Chi2-Value = 21.3635, DF = 4.1315, p-value = 0.0003063
sample estimates:
  calories       fat    sugars
1 118.1432 0.7449005  5.100422
2 126.7149 1.0724502 12.761427
3 160.1003 1.6591192  9.913359
```

#### 回归来做方差分析

```r
> library(multcomp)
> levels(cholesterol$trt) 
[1] "1time"  "2times" "4times" "drugD"  "drugE" 
```

aov函数拟合模型

```r
 fit.aov <- aov(response ~ trt,data=cholesterol)
> summary(fit.aov)
            Df Sum Sq Mean Sq F value   Pr(>F)    
trt          4 1351.4   337.8   32.43 9.82e-13 ***
Residuals   45  468.8    10.4                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
 > fit.lm <- lm(response ~ trt,data=cholesterol) 
> summary(fit.lm) 

Call:
lm(formula = response ~ trt, data = cholesterol)

Residuals:
    Min      1Q  Median      3Q     Max 
-6.5418 -1.9672 -0.0016  1.8901  6.6008 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)    5.782      1.021   5.665 9.78e-07 ***
trt2times      3.443      1.443   2.385   0.0213 *  
trt4times      6.593      1.443   4.568 3.82e-05 ***
trtdrugD       9.579      1.443   6.637 3.53e-08 ***
trtdrugE      15.166      1.443  10.507 1.08e-13 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.227 on 45 degrees of freedom
Multiple R-squared:  0.7425,    Adjusted R-squared:  0.7196 
F-statistic: 32.43 on 4 and 45 DF,  p-value: 9.819e-13

```

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/42.jpg)

```r
 contrasts(cholesterol$trt)
       2times 4times drugD drugE
1time       0      0     0     0
2times      1      0     0     0
4times      0      1     0     0
drugD       0      0     1     0
drugE       0      0     0     1
```

### 功效分析

帮助在给定置信度的情况下，判断检测到给定效应值所需的样本量。反过来，可以帮助我们在给定置信度的情况下，计算在某样本量内能检测到给定效应值的概率。

#### 假设检验速览

#### 用pwr包做功效分析

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/43.jpg)

##### t检验

pwr.t.test(n=,d=,sig.level=,power=,alternative=)

d效应值，标准化的均值之差

sig.level显著性水平

power功效水平

type检验类型  双样本t检验two.sample    单样本t检验one.sample  相依样本t检验paired

alternative 统计检验是双侧检验two.sided 单侧检验 less或greater

```r
> library(pwr)
> pwr.t.test(d=.8,sig.level = .05,power=.9,type="two.sample",alternative = "two.sided")

     Two-sample t test power calculation 

              n = 33.82555
              d = 0.8
      sig.level = 0.05
          power = 0.9
    alternative = two.sided

NOTE: n is number in *each* group
```

```r
 pwr.t.test(n=20,d=.5,sig.level = .01,type="two.sample",alternative = "two.sided")

     Two-sample t test power calculation 

              n = 20
              d = 0.5
      sig.level = 0.01
          power = 0.1439551
    alternative = two.sided

NOTE: n is number in *each* group
```

##### 方差分析

pwr.anova.test对平衡单因素方差分析进行功效分析

pwr.anova.test(k=,n=,f=,sig.level=,power=) 

```r
pwr.anova.test(k=5,f=.25,sig.level = .05,power=.8)

     Balanced one-way analysis of variance power calculation 

              k = 5
              n = 39.1534
              f = 0.25
      sig.level = 0.05
          power = 0.8

NOTE: n is number in each group
```

##### 相关性

pwr.r.test对相关系数检验进行功效分析

pwr.r.test(n=,r=,sig.level=,power=,alternative=)

sig.level显著性水平，power功效水平   alternative指定显著性检验是双侧检验还是单侧检r

```r
pwr.r.test(r=.25,sig.level = .05,power=.90,alternative="greater")

     approximate correlation power calculation (arctangh transformation) 

              n = 133.2803
              r = 0.25
      sig.level = 0.05
          power = 0.9
    alternative = greater
```

##### 线性模型

pwr.f2.test(u=,v=,f2=,sig.level=,power=) 

```r
pwr.f2.test(u=3,f2=0.0769,sig.level = 0.05,power=0.90) 

     Multiple regression power calculation 

              u = 3
              v = 184.2426
             f2 = 0.0769
      sig.level = 0.05
          power = 0.9
```

##### 比例检验

pwr.2p.test(h=,n=,sig.level=,power=) 

```r
pwr.2p.test(h=ES.h(.65,.6),sig.level = .05,power=.9,alternative = "greater") 

     Difference of proportion power calculation for binomial distribution (arcsine transformation) 

              h = 0.1033347
              n = 1604.007
      sig.level = 0.05
          power = 0.9
    alternative = greater

NOTE: same sample sizes
```

##### 卡方检验

pwr.chisq.test函数评估卡方检验的功效、效应值和所需的样本量

pwr.chisq.test(w=,N=,df=,sig.level=,power=) 

```r
prob <- matrix(c(.42,.28,.03,.07,.10,.10),byrow=TRUE,nrow=3) 
#ES.W2计算双因素列联表中备择假设的效应值。
> ES.w2(prob) 
[1] 0.1853198
```

```r
pwr.chisq.test(w=.1853,df=2,sig.level = .05,power=.9) 

     Chi squared power calculation 

              w = 0.1853
              N = 368.5317
             df = 2
      sig.level = 0.05
          power = 0.9

NOTE: N is the number of observations
```

##### 新情况中选择合适的效应值

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/44.jpg)

```r
pwr.anova.test(k=5,n=25,sig.level = 0.05,f=c(.10,.25,.40)) 

     Balanced one-way analysis of variance power calculation 

              k = 5
              n = 25
              f = 0.10, 0.25, 0.40
      sig.level = 0.05
          power = 0.1180955, 0.5738000, 0.9569163

NOTE: n is number in each group
```

```r
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/51.png)

#### 绘制功效分析图

```r
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/52.png)

seq函数生成一系列的效应值r和功效水平p

函数expand.grid函数对这个变量的每个组合生成一个数据框。

for循环遍历数据框的行，根据隔行的相关性和功效水平计算所对应的样本量

#### 其他功效分析包

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/45.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/46.jpg)

### 中级绘图

#### 散点图

```r
data(mtcars) 
ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point() + 
  geom_smooth(method="lm",se=FALSE,color="red") + 
  geom_smooth(method="loess",se=FALSE,color="blue",linetype="dashed") + 
  labs(title="Basic Scatter Plot of MPG vs. Weight",x="Car Weight (lbs/1000)",y="Miles Per Gallon") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/53.png)

```r
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
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/54.png)

##### 散点图矩阵

pairs创建基础的散点图矩阵

car包的scatterplotMatrix创建散点图矩阵

GGally包的ggpairs函数创建ggplot2版本的散点图矩阵。

install.packages("GGally") 

```r
library(GGally) 
ggpairs(mtcars[c("mpg","disp","drat","wt")])
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/55.png)

```

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
#lower     设置下部分变量之间的展示方式
#diag 设置对角线处的图形展示
#提供了三个参数，设置的是相关系数的表达方式
ggpairs(mtcars,columns = c("mpg","disp","drat","wt"),columnLabels = c("MPG","Displacement","R Axle Ratio","Weight"),,title="Scatterplot Matrix with Linear and Loess Fits",lower = list(continuous=lowerplots),diag = list(continuous=diagplots),upper = list(continuous=upperplots)) + mytheme

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/56.png)

##### 高密度散点图

```r
set.seed(1234) 
n <- 10000 
c1 <- matrix(rnorm(n,mean=0,sd=.5),ncol=2) 
c2 <- matrix(rnorm(n,mean=3,sd=2),ncol=2) 
mydata <- rbind(c1,c2) 
mydata <- as.data.frame(mydata) 
names(mydata) <- c("x","y") 
ggplot(mydata,aes(x=x,y=y)) + geom_point() + 
  ggtitle("Scatter Plot with 10,000 observations") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/57.png)

```r
#利用核密度估计生成用颜色密度来表示点分布的散点图
with(mydata,smoothScatter(x,y,main="Scatter Plot colored by smoothed Densities")) 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/58.png)

geom_hex将二元变量的封箱放到六边形单元格中。

```r
ggplot(mydata,aes(x=x,y=y)) + 
  geom_hex(bins=50) + 
  scale_fill_continuous(trans='reverse') + 
  ggtitle("Scattter Plot with 10,000 Observations") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/59.png)

##### 三维散点图

scatterplot3d包的是擦tterplotd函数绘制他们的关系

```r
library(scatterplot3d) 
with(mtcars,scatterplot3d(wt,disp,mpg,main="Basic 3D Scatter Plot"))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/60.png)

```r
library(scatterplot3d) 
with(mtcars,scatterplot3d(wt,disp,mpg,pch=16,highlight.3d = TRUE,type="h",main="3D Scatter Plot with Vertical Lines")) 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/61.png)

```r
s3d <- with(mtcars,scatterplot3d(wt,disp,mpg,pch=16,highlight.3d = TRUE,type="h",main="3D Scatter Plot with Vertical Lines and Regression Plane"))
fit <- lm(mpg ~ wt+disp,data=mtcars)
s3d$plane3d(fit)
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/62.png)

##### 旋转三维散点图

rgl包的plot3d函数创建可交互的三维散图

```r
library(rgl) 
with(mtcars,plot3d(wt,disp,mpg,col="red",size=5))
```

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-12-01%20142118.png)

```r
library(car) 
with(mtcars,scatter3d(wt,disp,mpg)) 
```

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-12-01%20142244.png)

##### 气泡图

```r
ggplot(mtcars,aes(x=wt,y=mpg,size=disp)) + 
  geom_point() + 
  labs(title="Bubble Plot with point size proportional to displacement",x="Weight of Car (1bs/1000)",y="Miles Per Gallon")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/63.png)

```r
ggplot(mtcars,aes(x=wt,y=mpg,size=disp,fill=factor(cyl))) + 
  geom_point(alpha=.5,color="black",shape=21) + 
  scale_size_continuous(range=c(1,10)) + 
  labs(title="Auto mileage by weight and horsepower",subtitle = "Motor Trend US magazine (1973-74 models)",x="weight (1000 lbs)",y = "Miles/(US) gallon",size="Engine\ndisplacement",fill="Cylinders") + 
  theme_minimal() 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/64.png)

#### 折线图

```
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
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/65.png)

```r
library(ggplot2) 
ggplot(data=Orange,aes(x=age,y=circumference,linetype=Tree,color=Tree)) + 
  geom_point() + 
  geom_line(size=1) + 
#旋转调色板
  scale_color_brewer(palette = "Set1") + 
  labs(title="Orange Tree Growth",x='Age (days)',y="Vircumference (mm)") + 
  theme_bw() 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/66.png)

#### 相关图

```r
round(cor(mtcars),2)
       mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
mpg   1.00 -0.85 -0.85 -0.78  0.68 -0.87  0.42  0.66  0.60  0.48 -0.55
cyl  -0.85  1.00  0.90  0.83 -0.70  0.78 -0.59 -0.81 -0.52 -0.49  0.53
disp -0.85  0.90  1.00  0.79 -0.71  0.89 -0.43 -0.71 -0.59 -0.56  0.39
hp   -0.78  0.83  0.79  1.00 -0.45  0.66 -0.71 -0.72 -0.24 -0.13  0.75
drat  0.68 -0.70 -0.71 -0.45  1.00 -0.71  0.09  0.44  0.71  0.70 -0.09
wt   -0.87  0.78  0.89  0.66 -0.71  1.00 -0.17 -0.55 -0.69 -0.58  0.43
qsec  0.42 -0.59 -0.43 -0.71  0.09 -0.17  1.00  0.74 -0.23 -0.21 -0.66
vs    0.66 -0.81 -0.71 -0.72  0.44 -0.55  0.74  1.00  0.17  0.21 -0.57
am    0.60 -0.52 -0.59 -0.24  0.71 -0.69 -0.23  0.17  1.00  0.79  0.06
gear  0.48 -0.49 -0.56 -0.13  0.70 -0.58 -0.21  0.21  0.79  1.00  0.27
carb -0.55  0.53  0.39  0.75 -0.09  0.43 -0.66 -0.57  0.06  0.27  1.00
```

```r
library(corrgram) 
corrgram(mtcars,order=TRUE,lower.panel = panel.shade,upper.panel = panel.pie,text.panel = panel.txt,main="Corrgram of mtcars intercorrelations") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/67.png)

corrgram(x,order=,panel=,text.panel=,diag.panel=,diag.panel=) 

order=TRUE 相关矩阵将使用主成分分析法对变量重排序

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/47.jpg)

```
library(corrgram) 
corrgram(mtcars,order=TRUE,lower.panel=panel.ellipse,upper.panel = panel.pts,text.panel = panel.txt,diag.panel = panel.minmax,main="Corrgram of mtcars data using scatter plots and ellipses") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/68.png)

```r
corrgram(mtcars,order=TRUE,lower.panel = panel.shade,upper.panel = panel.cor,main="Corrgram of mtcars data using shading and coefficients")


```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/69.png)

```r
library(corrgram) 
cols <- colorRampPalette(c("darkgoldenrod4","burlywood1","darkkhaki","darkgreen")) 
corrgram(mtcars,order=TRUE,col.regions = cols,lower.panel = panel.shade,upper.panel = panel.conf,text.panel = panel.txt,main="A Corrgram (or Horse) of a Different Color") 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/70.png)

#### 马赛克图

vcd包的mosaic函数绘制马赛克图

```r
ftable(Titanic) 
                   Survived  No Yes
Class Sex    Age                   
1st   Male   Child            0   5
             Adult          118  57
      Female Child            0   1
             Adult            4 140
2nd   Male   Child            0  11
             Adult          154  14
      Female Child            0  13
             Adult           13  80
3rd   Male   Child           35  13
             Adult          387  75
      Female Child           17  14
             Adult           89  76
Crew  Male   Child            0   0
             Adult          670 192
      Female Child            0   0
             Adult            3  20
```

mosaic(formula,data=) 设定一个数据框或者表格添加选项shade=TRUE将根据拟合模型的Pearson残差值对图形上色，legend=TRUE残差的图例

### 重抽样与自助法

#### 置换检验

随机化检验或重随机化检验

- [ ] 与参数方法类似，计算观测值的t统计量，称为t0 

- [ ] 将10个得分放在一个组中

- [ ] 随机分配5个得分到A处理中，分配5个得分到B处理中

- [ ] 计算并记录新观测值的t统计量

- [ ] 对每一种可能随机分配重复步骤3和步骤4

- [ ] 将252个t统计量按升序排列，基于样本数据的经验分布

- [ ] 如果t0落在经验分布中间95%部分的外面，则在0.05的显著性水平下，拒绝两个处理组的总体均值相等的零假设。
  
  

置换方法和参数方法都计算了相同的t统计量，但置换方法并不是将统计量与理论分布进行比较，而是将其与置换观测值后获得的经验分布进行比较，根据统计量值的极端性判断是否有足够的理由拒绝零假设。

install.packages(c("coin","lmPerm")))

#### coin包做置换检验

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/48.jpg)

function_name(formule,data,distribution=) 

distribution指定经验分布在零假设条件下的形式，exact,asymptotic和approximate 

##### 独立双样本和k样本检验

```r
library(coin) 
> score <- c(40,57,45,55,58,57,64,55,62,65) 
> treatment <- factor(c(rep("A",5),rep("B",5))) 
> mydata <- data.frame(treatment,score) 
> t.test(score ~ treatment,data=mydata,var.equal=TRUE) 

    Two Sample t-test

data:  score by treatment
t = -2.345, df = 8, p-value = 0.04705
alternative hypothesis: true difference in means between group A and group B is not equal to 0
95 percent confidence interval:
 -19.0405455  -0.1594545
sample estimates:
mean in group A mean in group B 
           51.0            60.6 

> oneway_test(score~treatment,data=mydata,distribution="exact")

    Exact Two-Sample Fisher-Pitman Permutation Test

data:  score by treatment (A, B)
Z = -1.9147, p-value = 0.07143
alternative hypothesis: true mu is not equal to 0
```

```r
library(MASS) 
> UScrime$So <- factor(UScrime$So) 
> wilcox_test(Prob ~ So,data=UScrime,distribution="exact")

    Exact Wilcoxon-Mann-Whitney Test

data:  Prob by So (0, 1)
Z = -3.7493, p-value = 8.488e-05
alternative hypothesis: true mu is not equal to 0
```

```r
> library(multcomp) 
> set.seed(1234) 
> oneway_test(response ~ trt,data=cholesterol,distribution=approximate(nresample=9999))

    Approximative K-Sample Fisher-Pitman Permutation Test

data:  response by trt (1time, 2times, 4times, drugD, drugE)
chi-squared = 36.381, p-value < 1e-04
```

##### 列联表中的独立性

chisq_test() 或cmh_test() 置换检验判断双分类变量的独立性

```r
library(coin) 
library(vcd) 
Arthritis <- transform(Arthritis,Improved=as.factor(as.numeric(Improved))) 
set.seed(1234) 
chisq_test(Treatment~Improved,data=Arthritis,distribution=approximate(nresample=9999))

    Approximative Pearson Chi-Squared Test

data:  Treatment by Improved (1, 2, 3)
chi-squared = 13.055, p-value = 0.0018
```

##### 数值变量间的独立性

spearman_test提供了双数值变量的独立性置换检验

```r
 states <- as.data.frame(state.x77) 
> set.seed(1234) 
> spearman_test(Illiteracy ~ Murder,data=states,distribution=approximate(B=9999))

    Approximative Spearman Correlation Test

data:  Illiteracy by Murder
Z = 4.7065, p-value < 1e-04
alternative hypothesis: true rho is not equal to 0

```

##### 双样本和k样本检验

wilcoxsign_test() 函数，多于两组，使用friedman_test函数

```r
> library(coin) 
> library(MASS) 
> wilcoxsign_test(U1~U2,data=UScrime,distribution="exact")

    Exact Wilcoxon-Pratt Signed-Rank Test

data:  y by x (pos, neg) 
     stratified by block
Z = 5.9691, p-value = 1.421e-14
alternative hypothesis: true mu is not equal to 0
```

#### 用lmPerm包做置信检验

##### 简单回归和多项式回归

```r
> library(lmPerm) 
> set.seed(1234) 
> fit <- lmp(weight~height,data=women,perm="Prob") 
[1] "Settings:  unique SS : numeric variables centered"
> summary(fit) 

Call:
lmp(formula = weight ~ height, data = women, perm = "Prob")

Residuals:
    Min      1Q  Median      3Q     Max 
-1.7333 -1.1333 -0.3833  0.7417  3.1167 

Coefficients:
       Estimate Iter Pr(Prob)    
height     3.45 5000   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.525 on 13 degrees of freedom
Multiple R-Squared: 0.991,    Adjusted R-squared: 0.9903 
F-statistic:  1433 on 1 and 13 DF,  p-value: 1.091e-14 
```

```r
 library(lmPerm) 
> set.seed(1234) 
> fit <- lmp(weight~height + I(height ^ 2),data=women,perm="Prob") 
[1] "Settings:  unique SS : numeric variables centered"
> summary(fit) 

Call:
lmp(formula = weight ~ height + I(height^2), data = women, perm = "Prob")

Residuals:
      Min        1Q    Median        3Q       Max 
-0.509405 -0.296105 -0.009405  0.286151  0.597059 

Coefficients:
            Estimate Iter Pr(Prob)    
height      -7.34832 5000   <2e-16 ***
I(height^2)  0.08306 5000   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.3841 on 12 degrees of freedom
Multiple R-Squared: 0.9995,    Adjusted R-squared: 0.9994 
F-statistic: 1.139e+04 on 2 and 12 DF,  p-value: < 2.2e-16 
```

##### 多元回归

```r
 library(lmPerm) 
> set.seed(1234) 
> states <- as.data.frame(state.x77) 
> fit <- lmp(Murder ~ Population + Illiteracy+Income+Frost,data=states,perm="Prob") 
[1] "Settings:  unique SS : numeric variables centered"
> summary(fit) 

Call:
lmp(formula = Murder ~ Population + Illiteracy + Income + Frost, 
    data = states, perm = "Prob")

Residuals:
     Min       1Q   Median       3Q      Max 
-4.79597 -1.64946 -0.08112  1.48150  7.62104 

Coefficients:
            Estimate Iter Pr(Prob)    
Population 2.237e-04   51   1.0000    
Illiteracy 4.143e+00 5000   0.0004 ***
Income     6.442e-05   51   1.0000    
Frost      5.813e-04   51   0.8627    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.535 on 45 degrees of freedom
Multiple R-Squared: 0.567,    Adjusted R-squared: 0.5285 
F-statistic: 14.73 on 4 and 45 DF,  p-value: 9.133e-08 
```

##### 单因素方差分析和协方差分析

```r
library(lmPerm) 
> library(multcomp) 
> set.seed(1234) 
> fit <- aovp(response ~ trt,data=cholesterol,perm="Prob") 
[1] "Settings:  unique SS "
> anova(fit) 
Analysis of Variance Table

Response: response
          Df R Sum Sq R Mean Sq Iter  Pr(Prob)    
trt        4  1351.37    337.84 5000 < 2.2e-16 ***
Residuals 45   468.75     10.42                   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

```r
 library(lmPerm) 
> set.seed(1234) 
> fit <- aovp(weight ~ gesttime + dose,data=litter,perm="Prob") 
[1] "Settings:  unique SS : numeric variables centered"
> anova(fit) 
Analysis of Variance Table

Response: weight
          Df R Sum Sq R Mean Sq Iter Pr(Prob)    
gesttime   1   161.49   161.493 5000   0.0006 ***
dose       3   137.12    45.708 5000   0.0392 *  
Residuals 69  1151.27    16.685                  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

##### 双因素方差分析

```r
 library(lmPerm) 
> set.seed(1234) 
> fit <- aovp(len~supp*dose,data=ToothGrowth,perm="Prob") 
[1] "Settings:  unique SS "
> anova(fit) 
Analysis of Variance Table

Response: len
          Df R Sum Sq R Mean Sq Iter Pr(Prob)    
supp       1   205.35    205.35 5000  < 2e-16 ***
dose       2  2426.43   1213.22 5000  < 2e-16 ***
supp:dose  2   108.32     54.16 3123  0.04195 *  
Residuals 54   712.11     13.19                  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

#### 置换检验点评

生成检验零假设的p值，有助于回答"效应是否存在"这样的问题。不过，置换方法对应获得置信区间和估计测量精度是比较困难的。

#### 自主法

初始样本重复随机替换抽样，生成一个或一系列待检验统计量的经验分布。

#### boot包的自助法

install.packages("boot") 

1. 写一个能返回待研究统计量值的函数。单个统计量，函数应该返回一个数值；如果有一列统计量，函数应该返回应该向量

2. 为生成R中自助法所需的有效统计量重复数，使用boot函数对上面缩写的函数进行处理

3. 使用boot.ci函数获得步骤2生成的统计量的置信区间
   
   

bootobject <- boot(data=,statistic=,R=,....) 

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/49.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/50.jpg)

##### 对单个统计量使用自助法

```r
rsq <- function(formula,data,indices) {
+   d <- data[indices,]
+   fit <- lm(formula,data=d) 
+   return(summary(fit)$r.square) 
+ }
> rsq <- function(formula,data,indices) {
+   d <- data[indices,]
+   fit <- lm(formula,data=d) 
+   return(summary(fit)$r.square) 
+ }
> library(boot) 

载入程辑包：‘boot’

The following object is masked from ‘package:robustbase’:

    salinity

The following object is masked from ‘package:survival’:

    aml

The following object is masked from ‘package:car’:

    logit

> set.seed(1234) 
> results <- boot(data=mtcars,statistic=rsq,R=1000,formula=mpg~wt+disp)
> print(results) 

ORDINARY NONPARAMETRIC BOOTSTRAP


Call:
boot(data = mtcars, statistic = rsq, R = 1000, formula = mpg ~ 
    wt + disp)


Bootstrap Statistics :
     original     bias    std. error
t1* 0.7809306 0.01379126  0.05113904
```

```
plot(results)
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/71.png)

```r
> boot.ci(results,type=c("perc","bca")) 
BOOTSTRAP CONFIDENCE INTERVAL CALCULATIONS
Based on 1000 bootstrap replicates

CALL : 
boot.ci(boot.out = results, type = c("perc", "bca"))

Intervals : 
Level     Percentile            BCa          
95%   ( 0.6753,  0.8835 )   ( 0.6344,  0.8561 )  
Calculations and Intervals on Original Scale
Some BCa intervals may be unstable
```

##### 多个统计量的自助法

```r
 bs <- function(formula,data,indices){
+   d <- data[indices,] 
+   fit <- lm(formula,data=d) 
+   return(coef(fit)) 
+ }
> library(boot) 
> set.seed(1234) 
> results <- boot(data=mtcars,statistic=bs,R=1000,formula=mpg~wt+disp) 
> print(results) 

ORDINARY NONPARAMETRIC BOOTSTRAP


Call:
boot(data = mtcars, statistic = bs, R = 1000, formula = mpg ~ 
    wt + disp)


Bootstrap Statistics :
       original        bias    std. error
t1* 34.96055404  4.715497e-02 2.546106756
t2* -3.35082533 -4.908125e-02 1.154800744
t3* -0.01772474  6.230927e-05 0.008518022
```

```r
plot(results,index=2) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/72.png)

```r
boot.ci(results,type="bca",index=2) 
BOOTSTRAP CONFIDENCE INTERVAL CALCULATIONS
Based on 1000 bootstrap replicates

CALL : 
boot.ci(boot.out = results, type = "bca", index = 2)

Intervals : 
Level       BCa          
95%   (-5.477, -0.937 )  
Calculations and Intervals on Original Scale
> boot.ci(results,type="bca",index=3) 
BOOTSTRAP CONFIDENCE INTERVAL CALCULATIONS
Based on 1000 bootstrap replicates

CALL : 
boot.ci(boot.out = results, type = "bca", index = 3)

Intervals : 
Level       BCa          
95%   (-0.0334, -0.0011 )  
Calculations and Intervals on Original Scale
```

## 高级方法

### 广义线性模型

#### 广义线性模型和glm函数

##### glm函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/51.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/52.jpg)

##### 连用的函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/53.jpg)

##### 模型拟合和回归诊断

#### Logistic回归

```r
 data(Affairs,package="AER")
> summary(Affairs)
    affairs          gender         age         yearsmarried    children  religiousness  
 Min.   : 0.000   female:315   Min.   :17.50   Min.   : 0.125   no :171   Min.   :1.000  
 1st Qu.: 0.000   male  :286   1st Qu.:27.00   1st Qu.: 4.000   yes:430   1st Qu.:2.000  
 Median : 0.000                Median :32.00   Median : 7.000             Median :3.000  
 Mean   : 1.456                Mean   :32.49   Mean   : 8.178             Mean   :3.116  
 3rd Qu.: 0.000                3rd Qu.:37.00   3rd Qu.:15.000             3rd Qu.:4.000  
 Max.   :12.000                Max.   :57.00   Max.   :15.000             Max.   :5.000  
   education       occupation        rating     
 Min.   : 9.00   Min.   :1.000   Min.   :1.000  
 1st Qu.:14.00   1st Qu.:3.000   1st Qu.:3.000  
 Median :16.00   Median :5.000   Median :4.000  
 Mean   :16.17   Mean   :4.195   Mean   :3.932  
 3rd Qu.:18.00   3rd Qu.:6.000   3rd Qu.:5.000  
 Max.   :20.00   Max.   :7.000   Max.   :5.000   
 > table(Affairs$affairs)

  0   1   2   3   7  12 
451  34  17  19  42  38 
```

```r
> Affairs$ynaffair <- ifelse(Affairs$affairs > 0,1,0) 
> Affairs$ynaffair <- factor(Affairs$ynaffair,levels=c(0,1),labels=c("No","Yes"))
> table(Affairs$ynaffair) 

 No Yes 
451 150 
```

```r
fit.full <- glm(ynaffair ~ gender +age + yearsmarried + children + religiousness + education + occupation + rating,data=Affairs,family=binomial())
> summary(fit.full)

Call:
glm(formula = ynaffair ~ gender + age + yearsmarried + children + 
    religiousness + education + occupation + rating, family = binomial(), 
    data = Affairs)

Coefficients:
              Estimate Std. Error z value Pr(>|z|)    
(Intercept)    1.37726    0.88776   1.551 0.120807    
gendermale     0.28029    0.23909   1.172 0.241083    
age           -0.04426    0.01825  -2.425 0.015301 *  
yearsmarried   0.09477    0.03221   2.942 0.003262 ** 
childrenyes    0.39767    0.29151   1.364 0.172508    
religiousness -0.32472    0.08975  -3.618 0.000297 ***
education      0.02105    0.05051   0.417 0.676851    
occupation     0.03092    0.07178   0.431 0.666630    
rating        -0.46845    0.09091  -5.153 2.56e-07 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 675.38  on 600  degrees of freedom
Residual deviance: 609.51  on 592  degrees of freedom
AIC: 627.51

Number of Fisher Scoring iterations: 4
```

```r
fit.reduced <- glm(ynaffair ~ age + yearsmarried + religiousness + rating,data=Affairs,family=binomial())
> summary(fit.reduced)

Call:
glm(formula = ynaffair ~ age + yearsmarried + religiousness + 
    rating, family = binomial(), data = Affairs)

Coefficients:
              Estimate Std. Error z value Pr(>|z|)    
(Intercept)    1.93083    0.61032   3.164 0.001558 ** 
age           -0.03527    0.01736  -2.032 0.042127 *  
yearsmarried   0.10062    0.02921   3.445 0.000571 ***
religiousness -0.32902    0.08945  -3.678 0.000235 ***
rating        -0.46136    0.08884  -5.193 2.06e-07 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 675.38  on 600  degrees of freedom
Residual deviance: 615.36  on 596  degrees of freedom
AIC: 625.36

Number of Fisher Scoring iterations: 4
```

```r
anova(fit.reduced,fit.full,test="Chisq")
Analysis of Deviance Table

Model 1: ynaffair ~ age + yearsmarried + religiousness + rating
Model 2: ynaffair ~ gender + age + yearsmarried + children + religiousness + 
    education + occupation + rating
  Resid. Df Resid. Dev Df Deviance Pr(>Chi)
1       596     615.36                     
2       592     609.51  4   5.8474   0.2108
```

##### 解释模型参数

```r
coef(fit.reduced) 
  (Intercept)           age  yearsmarried religiousness        rating 
   1.93083017   -0.03527112    0.10062274   -0.32902386   -0.46136144 
```

```r
exp(coef(fit.reduced))
  (Intercept)           age  yearsmarried religiousness        rating 
    6.8952321     0.9653437     1.1058594     0.7196258     0.6304248 
```

##### 评估自变量对结果概率的影响

```r
testdata <- data.frame(rating=c(1,2,3,4,5),age=mean(Affairs$age),yearsmarried=mean(Affairs$yearsmarried),religiousness=mean(Affairs$religiousness)) 
> testdata 
  rating      age yearsmarried religiousness
1      1 32.48752     8.177696      3.116473
2      2 32.48752     8.177696      3.116473
3      3 32.48752     8.177696      3.116473
4      4 32.48752     8.177696      3.116473
5      5 32.48752     8.177696      3.116473
```

```r
testdata$prob <- predict(fit.reduced,newdata=testdata,type="response") 
> testdata$prob
[1] 0.5302296 0.4157377 0.3096712 0.2204547 0.1513079
> testdata
  rating      age yearsmarried religiousness      prob
1      1 32.48752     8.177696      3.116473 0.5302296
2      2 32.48752     8.177696      3.116473 0.4157377
3      3 32.48752     8.177696      3.116473 0.3096712
4      4 32.48752     8.177696      3.116473 0.2204547
5      5 32.48752     8.177696      3.116473 0.1513079
```

```r
testdata <- data.frame(rating=mean(Affairs$rating),age=seq(17,57,10),yearsmarried=mean(Affairs$yearsmarried),religiousness=mean(Affairs$religiousness))
> testdata
   rating age yearsmarried religiousness
1 3.93178  17     8.177696      3.116473
2 3.93178  27     8.177696      3.116473
3 3.93178  37     8.177696      3.116473
4 3.93178  47     8.177696      3.116473
5 3.93178  57     8.177696      3.116473
```

```r
testdata$prob <- predict(fit.reduced,newdata=testdata,type="response") 
> testdata
   rating age yearsmarried religiousness      prob
1 3.93178  17     8.177696      3.116473 0.3350834
2 3.93178  27     8.177696      3.116473 0.2615373
3 3.93178  37     8.177696      3.116473 0.1992953
4 3.93178  47     8.177696      3.116473 0.1488796
5 3.93178  57     8.177696      3.116473 0.1094738
```

##### 过度离势

观测到的因变量的方差大于期望的二项分布的方差。过度离势会导致奇异的标准无检验和不精确的显著性检验。

glm函数拟合Logistic回归，需要将二项分布改为准二项分布。

检测过度离势的一种方法是比较二项分布模型的残差与残差自由度。

```
deviance(fit.reduced) / df.residual(fit.reduced) 
[1] 1.03248
```

```r
fit <- glm(ynaffair ~ age + yearsmarried + religiousness + rating,family=binomial(),data=Affairs) 
> fit.od <- glm(ynaffair ~ age + yearsmarried + religiousness + rating,family = quasibinomial(),data=Affairs) 
> pchisq(summary(fit.od)$dispersion * fit$df.residual,fit$df.residual,lower=F)
[1] 0.340122
```

##### 扩展

- [ ] 稳健Logistic回归  robustbase包的glmRob函数可用来拟合稳健的广义线性模型，稳健Logistic回归。拟合Logistic、
  回归模型数据出现离群点和强影响点时，稳健Logistic回归派上用场

- [ ] 多项式Logistic回归 因变量包含两个以上的无序类别，便可使用mlogit包的mlogit函数拟合多项式Logistic回归

- [ ] 序数Logistic回归  因变量是一组有序的类别，便可使用MASS包的polyr函数拟合序数Logistic回归
  
  

#### 泊松回归

```r
data(epilepsy,package="robustbase")
> names(epilepsy)
 [1] "ID"    "Y1"    "Y2"    "Y3"    "Y4"    "Base"  "Age"   "Trt"   "Ysum"  "Age10" "Base4"
> summary(epilepsy[6:9])
      Base             Age               Trt          Ysum       
 Min.   :  6.00   Min.   :18.00   placebo  :28   Min.   :  0.00  
 1st Qu.: 12.00   1st Qu.:23.00   progabide:31   1st Qu.: 11.50  
 Median : 22.00   Median :28.00                  Median : 16.00  
 Mean   : 31.22   Mean   :28.34                  Mean   : 33.05  
 3rd Qu.: 41.00   3rd Qu.:32.00                  3rd Qu.: 36.00  
 Max.   :151.00   Max.   :42.00                  Max.   :302.00  
```

```r
library(ggplot2) 
ggplot(epilepsy,aes(x=Ysum)) + 
  geom_histogram(color="black",fill="white") + 
  labs(title="Distribution of seizures",x="Seizure Count",y="Frequency") + 
  theme_bw() 
ggplot(epilepsy,aes(x=Trt,y=Ysum)) + 
  geom_boxplot() + 
  labs(title="Group comparisons",x="",y="") + 
  theme_bw()

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/73.png)

```r
fit <- glm(Ysum ~ Base + Age +Trt,data=epilepsy,family=poisson())
> summary(fit) 

Call:
glm(formula = Ysum ~ Base + Age + Trt, family = poisson(), data = epilepsy)

Coefficients:
               Estimate Std. Error z value Pr(>|z|)    
(Intercept)   1.9488259  0.1356191  14.370  < 2e-16 ***
Base          0.0226517  0.0005093  44.476  < 2e-16 ***
Age           0.0227401  0.0040240   5.651 1.59e-08 ***
Trtprogabide -0.1527009  0.0478051  -3.194   0.0014 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for poisson family taken to be 1)

    Null deviance: 2122.73  on 58  degrees of freedom
Residual deviance:  559.44  on 55  degrees of freedom
AIC: 850.71

Number of Fisher Scoring iterations: 5
```

##### 解释模型参数

coef()函数获取模型系数，summary函数的输出结果中的Coefficiences表格

```
coef(fit)
 (Intercept)         Base          Age Trtprogabide 
  1.94882593   0.02265r74   0.02274013  -0.15270095 
```

```r
exp(coef(fit))
 (Intercept)         Base          Age Trtprogabide 
   7.0204403    1.0229102    1.0230007    0.8583864 
```

##### 过度离势

- [ ] 遗漏了某个重要的自变量

- [ ] 状态依赖也会造成过度离势。

- [ ] 在纵向数据分中，重复测量的数据由于内在群聚特性可导致过度离势。

qcc提供了应该对泊松模型过度离势的检验方法

```
deviance(fit) / df.residual(fit)
[1] 10.1717
> 
> library(qcc)
> qcc.overdispersion.test(epilepsy$Ysum, type="poisson")

Overdispersion test Obs.Var/Theor.Var Statistic p-value
       poisson data          62.87013  3646.468       0
```

```r
fit.od <- glm(Ysum ~ Base + Age + Trt, data=epilepsy,
+               family=quasipoisson())
> summary(fit.od)

Call:
glm(formula = Ysum ~ Base + Age + Trt, family = quasipoisson(), 
    data = epilepsy)

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)   1.948826   0.465091   4.190 0.000102 ***
Base          0.022652   0.001747  12.969  < 2e-16 ***
Age           0.022740   0.013800   1.648 0.105085    
Trtprogabide -0.152701   0.163943  -0.931 0.355702    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for quasipoisson family taken to be 11.76075)

    Null deviance: 2122.73  on 58  degrees of freedom
Residual deviance:  559.44  on 55  degrees of freedom
AIC: NA

Number of Fisher Scoring iterations: 5
```

### 主成分分析和因子分析

数据降维技巧，大量相关变量转化为一组很少的不相关变量，这些无关变量称为主成分。

探索性因子分析是一系列用来发现一组变量的潜在结构的方法。寻找一组更小的、潜在的或隐藏的结构来解释一观测到的、显式的变量间的关系。

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/54.jpg)

#### R中的主成分分析和因子分析

princomp和factanal函数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/55.jpg)

- [ ] 数据预处理。主成分分析和因子分析都根据观测变量间的相关性来推导结果。用户可以输入原始数据矩阵或者相关系数矩阵到函数principal函数和fa函数。输入初始数据，相关系数矩阵将会被自动计算，在计算前请确保数据中没有缺失值。删除相关性时psych包默认使用成对删除的方式。

- [ ] 选择因子模型。判断是主成分分析还是因子分析更符合我们的研究目标。如果选择因子分析方法，我们还需要选择一种估计因子模型的方法。

- [ ] 判断要选择的主成分/因子数目

- [ ] 选择主成分/因子

- [ ] 旋转主成分/因子

- [ ] 解释结果

- [ ] 计算主成分或因子得分
  
  

#### 主成分分析

PC = a1X1 + a2X2 + ..... + akXk

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/56.jpg)

##### 判断序提取的主成分数

准则判断主成分分析中需要多少个主成分

- 根据先验经验和理论知识判断主成分数

- 根据要解释变量方差的积累值的阈值来判断需要的主成分数

- 检查变量间K*K阶相关系数矩阵的特征值来判断保留的主成分数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/57.jpg)

fa.parallel函数，同时对3种特征值判别准则进行评价。

```r
 library(psych) 
> fa.parallel(USJudgeRatings[,-1],fa="pc",n.iter=100,show.legend = FALSE,main="Scree plot with parallel analysis") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/74.png)

##### 提取主成分

principal函数可以根据原始数据矩阵或者相关系数矩阵做主成分分析

principal(r,nfactors=,rotate=,scores=) 

nfactors设定主成分分数

rotate指定旋转的方法

scores设定是否需要计算主成分得

```r
  library(psych) 
> pc <- principal(USJudgeRatings[,-1],nfactors = 1) 
> pc 
Principal Components Analysis
Call: principal(r = USJudgeRatings[, -1], nfactors = 1)
Standardized loadings (pattern matrix) based upon correlation matrix
      PC1   h2     u2 com
INTG 0.92 0.84 0.1565   1
DMNR 0.91 0.83 0.1663   1
DILG 0.97 0.94 0.0613   1
CFMG 0.96 0.93 0.0720   1
DECI 0.96 0.92 0.0763   1
PREP 0.98 0.97 0.0299   1
FAMI 0.98 0.95 0.0469   1
ORAL 1.00 0.99 0.0091   1
WRIT 0.99 0.98 0.0196   1
PHYS 0.89 0.80 0.2013   1
RTEN 0.99 0.97 0.0275   1

                 PC1
SS loadings    10.13
Proportion Var  0.92

Mean item complexity =  1
Test of the hypothesis that 1 component is sufficient.

The root mean square of the residuals (RMSR) is  0.04 
 with the empirical chi square  6.21  with prob <  1 
Fit based upon off diagonal values = 1 
```

```r
> library(psych) 
> fa.parallel(Harman23.cor$cov,n.obs=302,fa="pc",n.iter=100,show.legend = FALSE,main="Scree plot with parallel analysis") 
Parallel analysis suggests that the number of factors =  NA  and the number of components =  2 
> abline(h=1)
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/75.png)

身高测量指标的主成分分析

```r
 library(psych) 
> pc <- principal(Harman23.cor$cov,nfactors = 2,rotate="none") 
> pc
Principal Components Analysis
Call: principal(r = Harman23.cor$cov, nfactors = 2, rotate = "none")
Standardized loadings (pattern matrix) based upon correlation matrix
                PC1   PC2   h2    u2 com
height         0.86 -0.37 0.88 0.123 1.4
arm.span       0.84 -0.44 0.90 0.097 1.5
forearm        0.81 -0.46 0.87 0.128 1.6
lower.leg      0.84 -0.40 0.86 0.139 1.4
weight         0.76  0.52 0.85 0.150 1.8
bitro.diameter 0.67  0.53 0.74 0.261 1.9
chest.girth    0.62  0.58 0.72 0.283 2.0
chest.width    0.67  0.42 0.62 0.375 1.7

                       PC1  PC2
SS loadings           4.67 1.77
Proportion Var        0.58 0.22
Cumulative Var        0.58 0.81
Proportion Explained  0.73 0.27
Cumulative Proportion 0.73 1.00

Mean item complexity =  1.7
Test of the hypothesis that 2 components are sufficient.

The root mean square of the residuals (RMSR) is  0.05 

Fit based upon off diagonal values = 0.99
```

##### 主成分旋转

一系列将成分载荷阵变得更容易解释的数学方法。

- 使选择的成分保存不相关(正交旋转)

- 变得相关(斜交旋转)

最流行的正交旋转是方差最大化旋转，试图对载荷阵的列进行去噪，使得每个成分只由一组有限的变量来解释。

方差最大化旋转的主成分分析

```r
 rc <- principal(Harman23.cor$cov,nfactors = 2,rotate="varimax") 
> rc 
Principal Components Analysis
Call: principal(r = Harman23.cor$cov, nfactors = 2, rotate = "varimax")
Standardized loadings (pattern matrix) based upon correlation matrix
                RC1  RC2   h2    u2 com
height         0.90 0.25 0.88 0.123 1.2
arm.span       0.93 0.19 0.90 0.097 1.1
forearm        0.92 0.16 0.87 0.128 1.1
lower.leg      0.90 0.22 0.86 0.139 1.1
weight         0.26 0.88 0.85 0.150 1.2
bitro.diameter 0.19 0.84 0.74 0.261 1.1
chest.girth    0.11 0.84 0.72 0.283 1.0
chest.width    0.26 0.75 0.62 0.375 1.2

                       RC1  RC2
SS loadings           3.52 2.92
Proportion Var        0.44 0.37
Cumulative Var        0.44 0.81
Proportion Explained  0.55 0.45
Cumulative Proportion 0.55 1.00

Mean item complexity =  1.1
Test of the hypothesis that 2 components are sufficient.

The root mean square of the residuals (RMSR) is  0.05 

Fit based upon off diagonal values = 0.99
```

##### 获取主成分得分

从原始数据中获取成分得分

```r
> library(psych) 
> pc <- principal(USJudgeRatings[,-1],nfactors = 1,score=TRUE) 
> head(pc$scores) 
                      PC1
AARONSON,L.H.  -0.1857981
ALEXANDER,J.M.  0.7469865
ARMENTANO,A.J.  0.0704772
BERDON,R.I.     1.1358765
BRACKEN,J.J.   -2.1586211
BURNS,E.B.      0.7669406
```

```r
> cor(USJudgeRatings$CONT,pc$score)
              PC1
[1,] -0.008815895
```

获取主成分得分的系数

```r
> library(psych) 
> rc  <- principal(Harman23.cor$cov,nfactors = 2,rotate="varimax") 
> round(unclass(rc$weights),2) 
       RC1   RC2
[1,]  0.28 -0.05
[2,]  0.30 -0.08
[3,]  0.30 -0.09
[4,]  0.28 -0.06
[5,] -0.06  0.33
[6,] -0.08  0.32
[7,] -0.10  0.34
[8,] -0.04  0.27
```

#### 探索性因子分析

发掘隐藏在数据下的一组较少的、更为基本的无法观测的变量，解释一组观测变量的相关性。这些虚拟的、无法观测的变量称作因子。



$$
Xi = a1F1 + a2F2 + .... + apFp+Ui
$$

数据集ability.cov提供了变量的协方差矩阵，我们可用cov2cor函数将其转化为相关系数矩阵。

```r
> options(digits = 2) 
> covariances <- ability.cov$cov 
> correlations <- cov2cor(covariances) 
> correlations
        general picture blocks maze reading vocab
general    1.00    0.47   0.55 0.34    0.58  0.51
picture    0.47    1.00   0.57 0.19    0.26  0.24
blocks     0.55    0.57   1.00 0.45    0.35  0.36
maze       0.34    0.19   0.45 1.00    0.18  0.22
reading    0.58    0.26   0.35 0.18    1.00  0.79
vocab      0.51    0.24   0.36 0.22    0.79  1.00
```

##### 判断需提取的公共因子数

fa.parallel函数判断需提取的因子数

```r
library(psych) 
covariances <- ability.cov$cov 
correlations <- cov2cor(covariances) 
fa.parallel(correlations,n.obs=112,fa="both",n.iter=100,main="Scree plots parallel analysis") 
abline(h=c(0,1)) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/76.png)

##### 提取公共因子

fa(r,nfactors=,n.obs=,rotate=,scores=,fm=) 

nfactors设定提取的因子数

n.obs观测值数目

rotate设定旋转的方法

scores设定是否计算因子得分

fm设定因子化方法

未旋转的主轴迭代因子法

```r
 fa <- fa(correlations,nfactors=2,rotate="none",fm="pa") 
> fa 
Factor Analysis using method =  pa
Call: fa(r = correlations, nfactors = 2, rotate = "none", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
         PA1   PA2   h2    u2 com
general 0.75  0.07 0.57 0.432 1.0
picture 0.52  0.32 0.38 0.623 1.7
blocks  0.75  0.52 0.83 0.166 1.8
maze    0.39  0.22 0.20 0.798 1.6
reading 0.81 -0.51 0.91 0.089 1.7
vocab   0.73 -0.39 0.69 0.313 1.5

                       PA1  PA2
SS loadings           2.75 0.83
Proportion Var        0.46 0.14
Cumulative Var        0.46 0.60
Proportion Explained  0.77 0.23
Cumulative Proportion 0.77 1.00

Mean item complexity =  1.5
Test of the hypothesis that 2 factors are sufficient.

df null model =  15  with the objective function =  2.5
df of  the model are 4  and the objective function was  0.07 

The root mean square of the residuals (RMSR) is  0.03 
The df corrected root mean square of the residuals is  0.06 

Fit based upon off diagonal values = 0.99
Measures of factor score adequacy             
                                                   PA1  PA2
Correlation of (regression) scores with factors   0.96 0.92
Multiple R square of scores with factors          0.93 0.84
Minimum correlation of possible factor scores     0.86 0.68
```

##### 因子旋转

正交旋转提取因子

```r
 fa.varimax <- fa(correlations,nfactors=2,rotate="varimax",fm="pa") 
> fa.varimax 
Factor Analysis using method =  pa
Call: fa(r = correlations, nfactors = 2, rotate = "varimax", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
         PA1  PA2   h2    u2 com
general 0.49 0.57 0.57 0.432 2.0
picture 0.16 0.59 0.38 0.623 1.1
blocks  0.18 0.89 0.83 0.166 1.1
maze    0.13 0.43 0.20 0.798 1.2
reading 0.93 0.20 0.91 0.089 1.1
vocab   0.80 0.23 0.69 0.313 1.2

                       PA1  PA2
SS loadings           1.83 1.75
Proportion Var        0.30 0.29
Cumulative Var        0.30 0.60
Proportion Explained  0.51 0.49
Cumulative Proportion 0.51 1.00

Mean item complexity =  1.3
Test of the hypothesis that 2 factors are sufficient.

df null model =  15  with the objective function =  2.5
df of  the model are 4  and the objective function was  0.07 

The root mean square of the residuals (RMSR) is  0.03 
The df corrected root mean square of the residuals is  0.06 

Fit based upon off diagonal values = 0.99
Measures of factor score adequacy             
                                                   PA1  PA2
Correlation of (regression) scores with factors   0.96 0.92
Multiple R square of scores with factors          0.91 0.85
Minimum correlation of possible factor scores     0.82 0.71
```

斜交旋转提取因子

```r
> fa.promax <- fa(correlations,nfactors=2,rotate="promax",fm="pa") 
载入需要的名字空间：GPArotation
> fa.promax 
Factor Analysis using method =  pa
Call: fa(r = correlations, nfactors = 2, rotate = "promax", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
          PA1   PA2   h2    u2 com
general  0.37  0.48 0.57 0.432 1.9
picture -0.03  0.63 0.38 0.623 1.0
blocks  -0.10  0.97 0.83 0.166 1.0
maze     0.00  0.45 0.20 0.798 1.0
reading  1.00 -0.09 0.91 0.089 1.0
vocab    0.84 -0.01 0.69 0.313 1.0

                       PA1  PA2
SS loadings           1.83 1.75
Proportion Var        0.30 0.29
Cumulative Var        0.30 0.60
Proportion Explained  0.51 0.49
Cumulative Proportion 0.51 1.00

 With factor correlations of 
     PA1  PA2
PA1 1.00 0.55
PA2 0.55 1.00

Mean item complexity =  1.2
Test of the hypothesis that 2 factors are sufficient.

df null model =  15  with the objective function =  2.5
df of  the model are 4  and the objective function was  0.07 

The root mean square of the residuals (RMSR) is  0.03 
The df corrected root mean square of the residuals is  0.06 

Fit based upon off diagonal values = 0.99
Measures of factor score adequacy             
                                                   PA1  PA2
Correlation of (regression) scores with factors   0.97 0.94
Multiple R square of scores with factors          0.93 0.88
Minimum correlation of possible factor scores     0.86 0.77
```

因子结构矩阵

$$
F=P*Phi
$$

F是因子载荷阵，P为因子模式矩阵，Phi为因子关联矩阵。

```r
> fsm <- function(oblique) {
+   if(class(oblique)[2]=="fa" & is.null(oblique$Phi)) {
+     warning("Object doesn't look like oblique EFA")
+   }else{
+     P <- unclass(oblique$loading)
+     F <- P %*% oblique$Phi
+     colnames(F) <- c("PA1","PA2")
+     return(F)
+   }
+ }
> fsm(fa.promax)
         PA1  PA2
general 0.64 0.69
picture 0.32 0.61
blocks  0.43 0.91
maze    0.25 0.45
reading 0.95 0.46
vocab   0.83 0.45
```

使用函数factor.plot()或fa.diagram(),绘制正交结果或者斜交结果的图形。

```r
factor.plot(fa.promax,labels=rownames(fa.promax$loadings))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/77.png)

```r
simple=TRUE仅显示每个因子下最大的载荷
fa.diagram(fa.promax,simple=FALSE) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/78.png)

##### 因子得分

ability.cov数据集,二因子斜交旋转法便可获得用来计算因子得分的权重

```r
fa.promax$weights
          PA1   PA2
general 0.078 0.211
picture 0.020 0.090
blocks  0.037 0.702
maze    0.027 0.035
reading 0.743 0.030
vocab   0.177 0.036
```

##### 其他与探索性因子分析相关的包

FactoMineR不仅提供了主成分分析和因子分析方法，包含潜变量模型。FAiR包使用遗传算法来估计因子分析模型，增强了模型参数估计能力，能够处理不等式的约束条件，GPArotation包提供了许多因子旋转方法。nFactors提供了用来判断因子数目的许多复杂方法。

#### 其他潜变量模型

因子分析只是统计中一种应用广泛的潜变量模型。数据来判断需要提取的因子数以及它们的含义。

CFA是结构方程模型中的一种方法。SEM不仅可以假定潜在因子的数目以及组成，还能假定因子间的影响方式。

ltm用来拟合检验和问卷中个项目的潜变量模型。创建大规模标准化测试。

<img src="file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/58.jpg" title="" alt="" style="zoom:33%;">

### 时间序列

install.packages(c("xts","forecast","tseries","directlabels")

#### R中生成时序对象

library(xts) 

myseries <- xts(data,index) 

生成时间序列对象

```r
library(xts) 
sales = c(18, 33, 41,  7, 34, 35, 24, 25, 24, 21, 25, 20, 
          22, 31, 40, 29, 25, 21, 22, 54, 31, 25, 26, 35)
date = seq(as.Date("2018/1/1"), as.Date("2019/12/1"), by="month")
sales.xts <- xts(sales,date)
```

绘制时间序列

```r
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/79.png)

#### 时序的平滑化和季节项分解

##### 通过简单移动平均进行平滑处理

简单移动平均

```r
library(forecast) 
library(ggplot2) 
theme_set(theme_bw()) 
ylim <- c(min(Nile),max(Nile)) 
autoplot(Nile) + 
  ggtitle("Raw time series") + 
  scale_y_continuous(limits = ylim) 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/80.png)

##### 季节项分解

趋势项、季节项和随机项

趋势项能捕捉到长期变化                 季节项 能捕捉到一年内的周期性变化       随机项能捕捉到那些不能被趋势项或季节项解释的变化

相加模型，通过相乘模型来分解数据。各项之和应等于相应的时序值

$$
Yt = Trendt + Seasonalt + lrregulart 
$$

$$
Yt = Trendt * Seasonalt * lrregulart 
$$

将时序分解为趋势项、季节项和随机项的常用方法是用loess平滑做季节项分解

stl函数实现

stl(ts,s.window=,t.window=) 

ts是将要分解的时序，参数s.window控制季节项变化的速度,t.window控制趋势项变化的速度。s.window="periodic"季节项在各年间都一样。

stl()函数做季节项分解

```r
> library(forecast) 
> library(ggplot2) 
> autoplot(AirPassengers) 
> lAirPassengers <- log(AirPassengers) 
> autoplot(lAirPassengers,ylab="log(AirPassengers)") 
> fit <- stl(lAirPassengers,s.window = "period") 
> autoplot(fit) 
> fit$time.series 
         seasonal trend remainder
Jan 1949   -0.092   4.8  -0.01925
Feb 1949   -0.114   4.8   0.05434
Mar 1949    0.016   4.8   0.03559
Apr 1949   -0.014   4.8   0.04046
May 1949   -0.015   4.8  -0.02459
Jun 1949    0.110   4.8  -0.04268
Jul 1949    0.216   4.8  -0.06012
Aug 1949    0.210   4.8  -0.05586
Sep 1949    0.067   4.8  -0.00083
Oct 1949   -0.070   4.9  -0.00151
Nov 1949   -0.214   4.9   0.00216
Dec 1949   -0.101   4.9   0.00673
Jan 1950   -0.092   4.9  -0.03684
Feb 1950   -0.114   4.9   0.06703
Mar 1950    0.016   4.9   0.03975
Apr 1950   -0.014   4.9   0.01615
May 1950   -0.015   4.9  -0.06983
Jun 1950    0.110   4.9  -0.03125
Jul 1950    0.216   4.9  -0.01824
Aug 1950    0.210   5.0  -0.02823
Sep 1950    0.067   5.0   0.02393
Oct 1950   -0.070   5.0  -0.03106
Nov 1950   -0.214   5.0  -0.06240
Dec 1950   -0.101   5.0   0.01118
Jan 1951   -0.092   5.1   0.01831
Feb 1951   -0.114   5.1   0.05962
Mar 1951    0.016   5.1   0.08589
Apr 1951   -0.014   5.1   0.01385
May 1951   -0.015   5.1   0.05468
Jun 1951    0.110   5.1  -0.04907
Jul 1951    0.216   5.1  -0.05739
Aug 1951    0.210   5.1  -0.06243
Sep 1951    0.067   5.2  -0.01051
Oct 1951   -0.070   5.2  -0.01201
Nov 1951   -0.214   5.2   0.01540
Dec 1951   -0.101   5.2   0.01782
Jan 1952   -0.092   5.2   0.02543
Feb 1952   -0.114   5.2   0.08649
Mar 1952    0.016   5.2   0.01371
Apr 1952   -0.014   5.2  -0.03188
May 1952   -0.015   5.3  -0.03117
Jun 1952    0.110   5.3   0.00779
Jul 1952    0.216   5.3  -0.05647
Aug 1952    0.210   5.3  -0.01257
Sep 1952    0.067   5.3  -0.03079
Oct 1952   -0.070   5.3  -0.00051
Nov 1952   -0.214   5.3   0.02060
Dec 1952   -0.101   5.4   0.01270
Jan 1953   -0.092   5.4  -0.00141
Feb 1953   -0.114   5.4   0.01044
Mar 1953    0.016   5.4   0.05572
Apr 1953   -0.014   5.4   0.07513
May 1953   -0.015   5.4   0.04403
Jun 1953    0.110   5.4  -0.02352
Jul 1953    0.216   5.4  -0.04932
Aug 1953    0.210   5.4  -0.01161
Sep 1953    0.067   5.4  -0.00616
Oct 1953   -0.070   5.4   0.01509
Nov 1953   -0.214   5.4  -0.00081
Dec 1953   -0.101   5.4  -0.00869
Jan 1954   -0.092   5.4  -0.00820
Feb 1954   -0.114   5.4  -0.07535
Mar 1954    0.016   5.4   0.01004
Apr 1954   -0.014   5.4  -0.00370
May 1954   -0.015   5.5   0.01868
Jun 1954    0.110   5.5   0.00259
Jul 1954    0.216   5.5   0.01855
Aug 1954    0.210   5.5  -0.01839
Sep 1954    0.067   5.5  -0.01307
Oct 1954   -0.070   5.5  -0.01171
Nov 1954   -0.214   5.5  -0.00219
Dec 1954   -0.101   5.5  -0.00882
Jan 1955   -0.092   5.6   0.02315
Feb 1955   -0.114   5.6  -0.00755
Mar 1955    0.016   5.6  -0.01643
Apr 1955   -0.014   5.6   0.00616
May 1955   -0.015   5.6  -0.00390
Jun 1955    0.110   5.6   0.01110
Jul 1955    0.216   5.6   0.03473
Aug 1955    0.210   5.7  -0.02031
Sep 1955    0.067   5.7   0.00151
Oct 1955   -0.070   5.7  -0.00403
Nov 1955   -0.214   5.7  -0.01921
Dec 1955   -0.101   5.7   0.01457
Jan 1956   -0.092   5.7   0.01404
Feb 1956   -0.114   5.7  -0.00064
Mar 1956    0.016   5.8  -0.00777
Apr 1956   -0.014   5.8  -0.00104
May 1956   -0.015   5.8   0.00534
Jun 1956    0.110   5.8   0.03388
Jul 1956    0.216   5.8   0.01762
Aug 1956    0.210   5.8  -0.00317
Sep 1956    0.067   5.8  -0.00082
Oct 1956   -0.070   5.8  -0.01990
Nov 1956   -0.214   5.8  -0.00635
Dec 1956   -0.101   5.8  -0.00743
Jan 1957   -0.092   5.8   0.00290
Feb 1957   -0.114   5.9  -0.03149
Mar 1957    0.016   5.9  -0.00488
Apr 1957   -0.014   5.9  -0.00877
May 1957   -0.015   5.9   0.00107
Jun 1957    0.110   5.9   0.04050
Jul 1957    0.216   5.9   0.02228
Aug 1957    0.210   5.9   0.02894
Sep 1957    0.067   5.9   0.02173
Oct 1957   -0.070   5.9   0.00666
Nov 1957   -0.214   5.9   0.02024
Dec 1957   -0.101   5.9   0.00318
Jan 1958   -0.092   5.9   0.00505
Feb 1958   -0.114   5.9  -0.04243
Mar 1958    0.016   5.9  -0.04571
Apr 1958   -0.014   5.9  -0.05875
May 1958   -0.015   5.9  -0.01904
Jun 1958    0.110   5.9   0.03285
Jul 1958    0.216   5.9   0.04311
Aug 1958    0.210   5.9   0.07162
Sep 1958    0.067   5.9  -0.01578
Oct 1958   -0.070   6.0  -0.00384
Nov 1958   -0.214   6.0  -0.01500
Dec 1958   -0.101   6.0  -0.05261
Jan 1959   -0.092   6.0  -0.00382
Feb 1959   -0.114   6.0  -0.04320
Mar 1959    0.016   6.0  -0.01203
Apr 1959   -0.014   6.0  -0.02020
May 1959   -0.015   6.0   0.02651
Jun 1959    0.110   6.0   0.00499
Jul 1959    0.216   6.1   0.03425
Aug 1959    0.210   6.1   0.05066
Sep 1959    0.067   6.1  -0.00588
Oct 1959   -0.070   6.1  -0.00508
Nov 1959   -0.214   6.1   0.01302
Dec 1959   -0.101   6.1   0.00402
Jan 1960   -0.092   6.1   0.01588
Feb 1960   -0.114   6.1  -0.03520
Mar 1960    0.016   6.1  -0.10502
Apr 1960   -0.014   6.1   0.01161
May 1960   -0.015   6.1   0.02740
Jun 1960    0.110   6.2   0.01949
Jul 1960    0.216   6.2   0.05517
Aug 1960    0.210   6.2   0.02715
Sep 1960    0.067   6.2  -0.01587
Oct 1960   -0.070   6.2   0.01605
Nov 1960   -0.214   6.2  -0.01663
Dec 1960   -0.101   6.2  -0.03569
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/81.png)

月度图和季节图

```r
library(forecast) 
library(ggplot2) 
library(directlabels) 
ggmonthplot(AirPassengers) + 
  labs(title="Month plot: AirPassengers",x="",y="Passengers (thousands)")

p <- ggseasonplot(AirPassengers) + geom_point() + 
  labs(title="Seasonal plot: AirPassengers",x="",y="Passengers (thousands)") 
direct.label(p) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/82.png)

#### 指数预测模型

预测时序未来值的最常用模型。

forecast包的ets函数可以拟合指数模型

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/59.jpg)

##### 单指数平滑

现有的时序值的加权平均对未来值做短期预测，权重选择的宗旨是使得距离现在越远的观测值对平均数的影响越小.

单指数平滑模型假设时序中的观测值

$$
Y = level + irregular
$$

单指数平滑

```r
> library(forecast) 
#nhtemp时序拟合单指数模型，A表示误差NN表示时序中不存在趋势项和季节项。
> fit <- ets(nhtemp,model="ANN") 
> fit
ETS(A,N,N) 

Call:
 ets(y = nhtemp, model = "ANN") 

  Smoothing parameters:
    alpha = 0.1819 

  Initial states:
    l = 50.2762 

  sigma:  1.1

 AIC AICc  BIC 
 266  266  272 
#forecast预测时序未来的k步，
> forecast(fit,1) 
     Point Forecast Lo 80 Hi 80 Lo 95 Hi 95
1972             52    50    53    50    54
> autoplot(forecast(fit,1)) + labs(x="Year",y=expression(paste("Temperature (",degree*F,")",)),title="New Haven Annual Mean Temperatures")
> accuracy(fit) 
               ME RMSE MAE  MPE MAPE MASE    ACF1
Training set 0.15  1.1 0.9 0.24  1.7 0.75 -0.0064
```

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/60.jpg)

##### Holt指数平滑和Holt-Winters指数平滑

有水平项和趋势项的时序进行拟合。

$$
Yt = level + slope*t + irregulart
$$

$$
Yt = level + slope*t + st + irregular 
$$

有水平项、趋势项以及季节项的指数平滑模型

```r
> library(forecast) 
> fit <- ets(log(AirPassengers),model="AAA") 
> fit 
ETS(A,A,A) 

Call:
 ets(y = log(AirPassengers), model = "AAA") 

  Smoothing parameters:
    alpha = 0.6975 
    beta  = 0.0031 
    gamma = 1e-04 

  Initial states:
    l = 4.7925 
    b = 0.0111 
    s = -0.1 -0.22 -0.079 0.056 0.2 0.21
           0.11 -0.0081 -0.0059 0.022 -0.11 -0.084

  sigma:  0.038

 AIC AICc  BIC 
-207 -202 -157 
> accuracy(fit) 
                  ME  RMSE   MAE    MPE MAPE MASE  ACF1
Training set -0.0018 0.036 0.028 -0.034 0.51 0.23 0.056
> pred <- forecast(fit,5) 
> pred  
         Point Forecast Lo 80 Hi 80 Lo 95 Hi 95
Jan 1961            6.1   6.1   6.2   6.0   6.2
Feb 1961            6.1   6.0   6.2   6.0   6.2
Mar 1961            6.2   6.2   6.3   6.1   6.3
Apr 1961            6.2   6.1   6.3   6.1   6.3
May 1961            6.2   6.1   6.3   6.1   6.4
> autoplot(pred) + 
+   labs(title="Forecast for Air Travel",y="Log(AirPassengers)",x="Time") 
> pred$mean <- exp(pred$mean) 
> pred$lower <- exp(pred$lower) 
> pred$upper <- exp(pred$upper) 
> p <- cbind(pred$mean,pred$lower,pred$upper) 
> dimnames(p)[[2]] <- c("mean","Lo 80","Lo 95","Hi 80","Hi 95") 
> p
         mean Lo 80 Lo 95 Hi 80 Hi 95
Jan 1961  450   429   418   473   485
Feb 1961  443   417   404   470   485
Mar 1961  511   477   460   548   568
Apr 1961  502   465   446   542   565
May 1961  506   465   445   551   576
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/83.png)

##### ets()函数和自动预测

ets函数可以用来拟合有可乘项的指数模型，加入抑制项，以及进行自动预测。

使用函数ets()进行自动指数预测

```r
> library(forecast) 
> fit <- ets(JohnsonJohnson) 
> fit 
ETS(M,A,A) 

Call:
 ets(y = JohnsonJohnson) 

  Smoothing parameters:
    alpha = 0.2776 
    beta  = 0.0636 
    gamma = 0.5867 

  Initial states:
    l = 0.6276 
    b = 0.0165 
    s = -0.23 0.19 -0.0074 0.045

  sigma:  0.092

 AIC AICc  BIC 
 164  166  186 
> autoplot(forecast(fit)) + 
+   labs(x="time", y="Quarterly Earnings (Dollars)",title="Johnson and Johnson Forecasts") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/84.png)

#### ARIMA预测模型

##### 概念介绍

##### ARMA和ARIMA模型

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/61.jpg)

建立ARIMA模型的步骤

- 确保时序是平稳的

- 找到一个合理的模型

- 拟合模型

- 从统计假设和预测准确度等角度评估模型的拟合效果

- 预测
  
  

###### 验证序列的平稳性

时序的变换以及平稳性评估

```r
> library(forecast) 
> library(tseries) 

    ‘tseries’ version: 0.10-54

    ‘tseries’ is a package for time series analysis and computational finance.

    See ‘library(help="tseries")’ for details.

> autoplot(Nile) 
> ndiffs(Nile) 
[1] 1
> dNile <- diff(Nile) 
> autoplot(dNile) 
> adf.test(dNile) 

    Augmented Dickey-Fuller Test

data:  dNile
Dickey-Fuller = -7, Lag order = 4, p-value = 0.01
alternative hypothesis: stationary
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/85.png)

###### 选择模型

```r
autoplot(Acf(dNile)) 
autoplot(Pacf(dNile)) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/86.png)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/62.jpg)

###### 拟合模型

arima函数拟合一个ARIMA模型arima(ts,order=c(q,d,q))

拟合ARIMA模型

```r
> library(forecast) 
> fit <- arima(Nile,order=c(0,1,1)) 
> fit  

Call:
arima(x = Nile, order = c(0, 1, 1))

Coefficients:
        ma1
      -0.73
s.e.   0.11

sigma^2 estimated as 20600:  log likelihood = -633,  aic = 1269
> accuracy(fit) 
              ME RMSE MAE  MPE MAPE MASE ACF1
Training set -12  143 112 -3.6   13 0.84 0.12
```

###### 模型评估

```r
 library(ggplot2) 
 '''
 stat_qq()是R语言中ggplot2包的一个函数，用于绘制Q-Q图。Q-Q图是一种用于检验数据是否服从正态分布的图形方法。它通过将两个概率分布的相同分位数点的值映射为x和y轴来比较两个分布。如果两个分布比较相似，那么图上的点大致落在y=x直线上；如果这两个分布线性相关，则点大致分布在一条直线上，但不一定在y=x上 。
 '''
 '''
 stat_qq_line()是R语言中ggplot2包的一个函数，用于在Q-Q图上添加一条拟合直线。该函数使用线性回归模型来拟合数据点，并将拟合直线绘制在Q-Q图上。这有助于我们更好地理解数据的分布情况，以及两个分布之间的差异 。
 '''
> df <- data.frame(resid = as.numeric(fit$residuals)) 
> ggplot(df,aes(sample=resid)) + 
+   stat_qq() + stat_qq_line() + 
+   labs(title="Normal Q-Q Plot") 
> Box.test(fit$residuals,type="Ljung-Box") 

    Box-Ljung test

data:  fit$residuals
X-squared = 1, df = 1, p-value = 0.2


```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/87.png)

###### 预测

```r
forecast(fit,3) 
     Point Forecast Lo 80 Hi 80 Lo 95 Hi 95
1971            798   614   982   517  1080
1972            798   608   989   507  1090
1973            798   602   995   498  1099
> autoplot(forecast(fit,3)) + labs(x="Year",y="Annual Flow") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/88.png)

##### ARIMA模型的自动预测

forecast包的ets函数实现最优指数模型的自动选取。

```r
 library(forecast) 
> fit <- auto.arima(sunspots) 
> fit 
Series: sunspots 
ARIMA(2,1,2) 

Coefficients:
       ar1     ar2    ma1    ma2
      1.35  -0.396  -1.77  0.810
s.e.  0.03   0.029   0.02  0.019

sigma^2 = 244:  log likelihood = -11746
AIC=23501   AICc=23501   BIC=23531
> forecast(fit,3) 
         Point Forecast Lo 80 Hi 80 Lo 95 Hi 95
Jan 1984             40    20    60   9.8    71
Feb 1984             41    18    64   6.0    77
Mar 1984             40    15    64   2.2    77
> accuracy(fit) 
                 ME RMSE MAE MPE MAPE MASE   ACF1
Training set -0.027   16  11 NaN  Inf 0.48 -0.011
```

### 聚类分析

数据归约技术，揭示一个数据集中观测值的子集。大量的观测值归约为若干个聚类族。这里的聚类族被定义为若干个观测值组成的群组，群组内观测值的相似度比群间相似度高。

#### 聚类分析的一般步骤

1. 选择合适的变量。选择我们感觉可能对识别和理解数据中不同观测值分组有重要影响的变量。

2. 缩放数据。最常用的方法是将每个变量标准化为均值0和标准差为1的变量。

3. 寻找异常点。outliers包的函数来筛选异常单变量离群点。mvoutlier包中包含了能识别多元变量的离群点的函数。

4. 计算距离。尽管不同的聚类算法差异很大，但是它们通常需要计算被聚类的实体之间的距离。两个观测值之间最常用的距离量度是欧几里得距离，其他可选的量度包括曼哈顿距离、兰氏距离、非对称二元距离、最大距离和闵可夫斯基距离。

5. 选择聚类算法。划分聚类能处理更大的数据量，但是需要事先确定聚类族的数目。一旦选定了层次聚类或划分聚类，必须选择一个特定的聚类算法

6. 获得一种或多种聚类方法。

7. 确定聚类族的数目。

8. 获得最终的聚类解决方案。一旦聚类族的数目确定下来，就可以提取出子群，形成最终的聚类方案。

9. 结果可视化

10. 解读聚类族。

11. 验证结果。

#### 计算距离

度量样本单元间的距离、相异性或相似性。

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/63.jpg)

```r
 data(nutrient,package="flexclust") 
> head(nutrient,4)
             energy protein fat calcium iron
BEEF BRAISED    340      20  28       9  2.6
HAMBURGER       245      21  17       9  2.7
BEEF ROAST      420      15  39       7  2.0
BEEF STEAK      375      19  32       9  2.6
```

dist函数计算矩阵或数据框中所有行之间的距离。格式是dist(x,method=),as.matrix()函数使用标准括号获取距离值。

```r
 d <- dist(nutrient) 
> as.matrix(d)[1:4,1:4] 
             BEEF BRAISED HAMBURGER BEEF ROAST BEEF STEAK
BEEF BRAISED            0        96         81         35
HAMBURGER              96         0        176        131
BEEF ROAST             81       176          0         46
BEEF STEAK             35       131         46          0
```

#### 层次聚类分析

每一次吧两个聚类族聚成一个新的聚类族，直到所有的聚类族聚成唯一的一个聚类族。

1. 定义每个观测值为一个聚类族

2. 计算每个聚类族和其他各聚类族的距离

3. 吧距离最短的两个聚类族合并成一个聚类族，这样聚类族的数目就减少一个

4. 重复步骤2和步骤3，直到所有聚类族合并到包含所有观测值的唯一的一个聚类族为止

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/64.jpg)

单联动聚类方法倾向于发现细长的、雪茄型的聚类族。不相似的观测值分到一个聚类族中，它们和它们中间值很相像。

全联动聚类倾向于发现具有大致相等直径的紧凑型聚类族，异常值很明感。

平均联动两种的折中，对异常值没有那么敏感。把方差小的聚类族聚合。

Ward法倾向于把有少量观测值的聚类族聚合到一起，并且倾向于产生与观测值数目大致相等的聚类族。异常值也是敏感.质心法是一种很受欢迎的方法，因为其中聚类族距离的定义比较简单、易于理解。异常值不是很敏感

层次聚类方法可以用hclust()函数实现，格式是hclust(d,method=)

nutrient数据集的平均联动聚类

```r
data(nutrient, package="flexclust")
row.names(nutrient) <- tolower(row.names(nutrient))
nutrient.scaled <- as.data.frame(scale(nutrient))                                  

d <- dist(nutrient.scaled)                                          
fit.average <- hclust(d, method="average") 
#ggdendrogram是R语言中ggplot2包的一个函数，用于绘制树状图或树形图。它可以将聚类结果可视化为树形图，以便更好地理解数据之间的关系##和结构 。
library(ggdendro) 
library(ggplot2)
ggdendrogram(fit.average) + 
  labs(title="Average Linkage Clustering")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/89.png)

NBClust包提供了众多的判定准则来确定在一个聚类分析里聚类族的最佳数目。NbClust输入包括：需要做聚类操作的矩阵或数据框，聚类是需要用到的距离度量方式9，聚类方法，以及最小聚类族数目和最大聚类族数目。函数返回各个聚类判定准则以及每个聚类判断准则所建议的最佳聚类数。

选择聚类族的数目

```
library(NbClust) 
library(factoextra) 
nc <- NbClust(nutrient.scaled,distance = "euclidean",min.nc=2,max.nc=15,method="average")
fviz_nbclust(nc) 
```

获取最终的聚类方案

```r
> clusters <- cutree(fit.average,k=5) 
> table(clusters) 
clusters
 1  2  3  4  5 
 7 16  1  2  1 
> nutrient.scaled$clusters <- clusters 
> library(dplyr) 
> profiles <- nutrient.scaled %>% 
+   group_by(clusters) %>% 
+   summarize_all(median) 
> profiles %>% round(3) %>% data.frame() 
  clusters energy protein   fat calcium   iron
1        1   1.31    0.00  1.38   -0.45  0.081
2        2  -0.37    0.23 -0.49   -0.40 -0.637
3        3  -0.47    1.65 -0.75   -0.38  2.408
4        4  -1.48   -2.35 -1.11    0.44  2.271
5        5  -0.27    0.71 -0.40    4.14  0.081
> library(colorhcplot) 
> cl <- factor(clusters,levels=c(1:5),labels=paste("cluster",1:5)) 
> colorhcplot(fit.average,cl,hang=-1,lab.cex=.8,,lwd=2,main="Average-Linkage Clustering\n5 Cluster Solution")
> 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/91.png)

#### 划分聚类分析

##### k均值聚类

1. 选择k个质心

2. 把每个观测值分配到离他最近的质心

3. 重新计算质心，每个聚类族中的观测值到该聚类族质心距离的平均值

4. 分配每个观测值到他最近的质心

5. 重复步骤3和步骤4，直到所有的观测值不在被分配或是达到最大的迭代次数

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/65.jpg)

```
 wssplot <- function(data,nc=15,seed=1234) {
+   require(ggplot2) 
+   wss <- numeric(nc) 
+   for (i in 1:nc){
+     set.seed(seed) 
+     wss[i] <- sum(kmeans(data,centers=i)$withinss)
+   }
+   results <- data.frame(cluster=1:nc,wss=wss)
+   ggplot(results,aes(x=cluster,y=wss)) + 
+     geom_point(color="steelblue",size=2) + 
+     geom_line(color="grey") + 
+     theme_bw() + 
+     labs(x="Number of Clusters",y="within groups sum of squares") 
+   
+ }
> 
> data(wine,package="rattle") 
> library(NbClust) 
> library(factoextra) 
> head(wine)
  Type Alcohol Malic Ash Alcalinity Magnesium Phenols Flavanoids Nonflavanoids Proanthocyanins Color
1    1      14   1.7 2.4         16       127     2.8        3.1          0.28             2.3   5.6
2    1      13   1.8 2.1         11       100     2.6        2.8          0.26             1.3   4.4
3    1      13   2.4 2.7         19       101     2.8        3.2          0.30             2.8   5.7
4    1      14   1.9 2.5         17       113     3.8        3.5          0.24             2.2   7.8
5    1      13   2.6 2.9         21       118     2.8        2.7          0.39             1.8   4.3
6    1      14   1.8 2.4         15       112     3.3        3.4          0.34             2.0   6.8
   Hue Dilution Proline
1 1.04      3.9    1065
2 1.05      3.4    1050
3 1.03      3.2    1185
4 0.86      3.4    1480
5 1.04      2.9     735
6 1.05      2.8    1450
> df <- scale(wine[-1])
> head(df) 
     Alcohol  Malic   Ash Alcalinity Magnesium Phenols Flavanoids Nonflavanoids Proanthocyanins Color
[1,]    1.51 -0.561  0.23      -1.17     1.909    0.81       1.03         -0.66            1.22  0.25
[2,]    0.25 -0.498 -0.83      -2.48     0.018    0.57       0.73         -0.82           -0.54 -0.29
[3,]    0.20  0.021  1.11      -0.27     0.088    0.81       1.21         -0.50            2.13  0.27
[4,]    1.69 -0.346  0.49      -0.81     0.928    2.48       1.46         -0.98            1.03  1.18
[5,]    0.29  0.227  1.84       0.45     1.278    0.81       0.66          0.23            0.40 -0.32
[6,]    1.48 -0.516  0.30      -1.29     0.858    1.56       1.36         -0.18            0.66  0.73
       Hue Dilution Proline
[1,]  0.36     1.84   1.010
[2,]  0.40     1.11   0.963
[3,]  0.32     0.79   1.391
[4,] -0.43     1.18   2.328
[5,]  0.36     0.45  -0.038
[6,]  0.40     0.34   2.233
> wssplot(df) 
> set.seed(1234) 
> nc <- NbClust(df,min.nc = 2,max.nc = 15,method="kmeans")
*** : The Hubert index is a graphical method of determining the number of clusters.
                In the plot of Hubert index, we seek a significant knee that corresponds to a 
                significant increase of the value of the measure i.e the significant peak in Hubert
                index second differences plot. 

*** : The D index is a graphical method of determining the number of clusters. 
                In the plot of D index, we seek a significant knee (the significant peak in Dindex
                second differences plot) that corresponds to a significant increase of the value of
                the measure. 

******************************************************************* 
* Among all indices:                                                
* 2 proposed 2 as the best number of clusters 
* 19 proposed 3 as the best number of clusters 
* 1 proposed 14 as the best number of clusters 
* 1 proposed 15 as the best number of clusters 

                   ***** Conclusion *****                            

* According to the majority rule, the best number of clusters is  3 


******************************************************************* 
> fviz_nbclust(nc) 
Error in if (class(best_nc) == "numeric") print(best_nc) else if (class(best_nc) ==  : 
  the condition has length > 1

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/92.png)

聚类概要图

```r
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
```

```
library(factoextra) 
fviz_cluster(fit.km,data=df) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/93.png)

```
ct.km <- table(wine$Type,fit.km$cluster) 
> ct.km

     1  2  3
  1  0 59  0
  2  3  3 65
  3 48  0  0
```

```
library(flexclust) 
载入需要的程辑包：grid
载入需要的程辑包：lattice
载入需要的程辑包：modeltools
载入需要的程辑包：stats4
> randIndex(ct.km) 
ARI 
0.9 
```

##### 围绕中心点

PAM可以使用任意的距离来计算

1. 随机选择k个观测值

2. 计算观测值到各个中心的距离

3. 把每个观测值分配到最近的中心点

4. 计算每个中心点到每个观测值的距离的总和

5. 选择一个该聚类 族中不是中心的观测值，并和中心点互换

6. 重新把每个观测值分配到距它最近的中心点

7. 再次计算总成分

8. 如果总成本比步骤4计算的总成分少，把新的观测值作为中心点

9. 重复步骤5-8直到中心点不在改变

cluster包的函数pam使用围绕中心点的划分方法。

对wine数据集事业 围绕中心点的划分方法

```
 library(cluster) 
> set.seed(1234) 
> fit.pam <- pam(wine[-1],k=3,stand=TRUE) 
> fit.pam$medoids 
     Alcohol Malic Ash Alcalinity Magnesium Phenols Flavanoids Nonflavanoids Proanthocyanins Color
[1,]      13   1.8 2.4         20       100     2.7       2.98          0.26             1.9   5.1
[2,]      12   1.7 2.1         19        80     1.6       2.03          0.37             1.6   3.4
[3,]      13   3.9 2.5         23       102     1.8       0.75          0.43             1.4   7.3
     Hue Dilution Proline
[1,] 1.0      3.5     920
[2,] 1.0      3.2     510
[3,] 0.7      1.6     750
```

```
ct.pam <- table(wine$Type,fit.pam$clustering)
> ct.pam

     1  2  3
  1 59  0  0
  2 16 53  2
  3  0  1 47
> randIndex(ct.pam) 
ARI 
0.7 
```

#### 避免不存在的聚类族

```r
library(fMultivar) 
library(ggplot2) 
set.seed(1234) 
df <- rnorm2d(1000,rho=.5) 
df <- as.data.frame(df) 
ggplot(df,aes(x=V1,y=V2)) + 
  geom_point(alpha=.3) + theme_minimal() + 
  labs(title="Bivariate Normal Distribution with rho=0.5") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/94.png)

```

wssplot(df) 
library(NbClust) 
library(factoextra) 
nc <- NbClust(df,min.nc = 2,max.nc = 15,method="kmeans") 
fviz_nbclust(nc) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/95.png)

```r
library(ggplot2) 
fit <- kmeans(df,2) 
df$cluster <- factor(fit$cluster) 
ggplot(data=df,aes(x=V1,y=V2,color=cluster,shape=cluster)) + 
  theme_minimal() + 
  geom_point(alpha=.5) + 
  ggtitle("Clustering of Bivariate Normal Data"
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/96.png)

```r
library(clusterability)
> dipdist <- clusterabilitytest(df[-3], test="dip")
> dipdist
----------------------
Clusterability Test
----------------------

Data set name: df[-3]
Your data set has 1000 observation(s) and 2 variable(s).
There were no missing values. Your data set is complete.

Data Reduced Using: PCA

-----------------------------------------
Results: Dip Test of Unimodality
-----------------------------------------

Null Hypothesis: number of modes = 1
Alternative Hypothesis: number of modes > 1
p-value: 0.965466449887171 
Dip statistic: 0.0082268749677729 

---------------------
Test Options Used
---------------------

Default values for the optional parameters were used. To learn more about customizing the behavior of the clusterabilitytest, please see the R documentation.
```

```r
CCC = nc$All.index[, 4]
k <- length(CCC)
plotdata <- data.frame(CCC = CCC, k = seq_len(k))
ggplot(plotdata, aes(x=k, y=CCC)) +
  geom_point() + geom_line() +
  theme_minimal() +
  scale_x_continuous(breaks=seq_len(k)) +
  labs(x="Number of Clusters")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/97.png)

### 分类

监督学习基于一组包含自变量和因变量的观测值。全部数据分为一个训练集和一个测试集，训练集用来建立预测模型，测试集用来测试模型的准确度。对训练集和测试集的划分尤其重要，因为任何分类技术都会最大化给定数据的预测效果。用训练集建立模型并测试模型会使的模型的有效性被过分夸大，而用单独的测试集来测试基于训练集得到的模型则可让估计更准确、更切合实际。得到一个有效的预测模型后，我们就可以预测那些只知道自变量的观测值对应的因变量的值了。

pkgs <- c("rpart","rattle","partykit","randomForest","e1071") 

install.packages(pkgs,depend=TRUE) 

#### 数据准备

- ID 

- 肿块厚度

- 细胞大小的均匀性

- 细胞形状的均匀性

- 边际附着力

- 单个上皮细胞大小

- 裸核

- 乏味染色体

- 正常核

- 有丝分裂

- 类别

乳腺癌数据准备

```r
> loc <- "http://mp.ituring.com.cn/files/RiA3/datasets"
> ds <- "breast-cancer-wisconsin/breast-cancer-wisconsin.data" 
> url <- paste(loc,ds,sep="/") 
> breast <- read.table(url,sep=",",header=FALSE,na.strings = "?")
> names(breast) <- c("ID", "clumpThickness", "sizeUniformity",
+                    "shapeUniformity", "maginalAdhesion", 
+                    "singleEpithelialCellSize", "bareNuclei", 
+                    "blandChromatin", "normalNucleoli", "mitosis", 
+                    "class")
> df <- breast[-1] 
> df$class <- factor(df$class,levels=c(2,4),labels=c("benign","malignant")) 
> df <- na.omit(df) 
> set.seed(1234) 
> index <- sample(nrow(df),0.7*nrow(df)) 
> train <- df[index,]
> test <- df[-index,]
> table(train$class)

   benign malignant 
      302       176 
> table(test$class)

   benign malignant 
      142        63 
```

#### Logistic回归

广义线性模型的一种，可根据一组数值变量预测二元数出。

使用glm()进行Logistic回归

```r
> fit.logit <- glm(class~.,data=train,family=binomial()) 
> summary(fit.logit) 

Call:
glm(formula = class ~ ., family = binomial(), data = train)

Coefficients:
                         Estimate Std. Error z value Pr(>|z|)    
(Intercept)              -9.68650    1.29722  -7.467 8.20e-14 ***
clumpThickness            0.48002    0.15244   3.149  0.00164 ** 
sizeUniformity            0.05643    0.29272   0.193  0.84714    
shapeUniformity           0.13180    0.31643   0.417  0.67703    
maginalAdhesion           0.40721    0.14038   2.901  0.00372 ** 
singleEpithelialCellSize -0.03274    0.18095  -0.181  0.85643    
bareNuclei                0.44744    0.11176   4.004 6.24e-05 ***
blandChromatin            0.48257    0.19220   2.511  0.01205 *  
normalNucleoli            0.23550    0.12903   1.825  0.06798 .  
mitosis                   0.66184    0.28785   2.299  0.02149 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 629.040  on 477  degrees of freedom
Residual deviance:  80.054  on 468  degrees of freedom
AIC: 100.05

Number of Fisher Scoring iterations: 8

> prob <- predict(fit.logit,test,type="response") 
> logit.pred <- factor(prob > .5,levels=c(FALSE,TRUE),labels=c("benign","malignant"))
> logit.perf <- table(test$class,logit.pred,dnn=c("Actual","Predicted")) 
> logit.perf 
           Predicted
Actual      benign malignant
  benign       140         2
  malignant      3        60
```

#### 决策树

##### 经典决策树

1. 选定一个最佳自变量将全部观测值氛围两类，实现两类中的纯度最大化。如果自变量连续，则选定一个分割点进行分类，使得两类纯度最大化；如果自变量为分类变量，则对各类别进行合并以获得具有最大纯度的两个类。

2. 将数据分成两类后，对每一个子类别继续执行步骤1

3. 重复步骤1和步骤2，直到子类别中所含的观测值数小于最小观测值数，或者没有分类法能将不纯度下降到一个给定阈值一下。最终集中的子类别即终端节点。根据每一个终端节点中观测值的类别数众数来判别这一终端节点的所属类别。

4. 对观测值进行分类时，将该观测值的属性从根节点输入，然后运行至终端节点，最好将终端节点的因变量的值赋给观测值即可得到观测值所属的类别。
   
   

rpart包的函数rpart可以用来创建策树，函数prune可以用来对决策树进行剪枝。

```r
library(rpart) 
> dtree <- rpart(class ~.,data=train,method="class",parms=list(split="information")) 
> dtree$cptable 
          CP nsplit rel error    xerror       xstd
1 0.77840909      0 1.0000000 1.0000000 0.05991467
2 0.05397727      1 0.2215909 0.2556818 0.03627635
3 0.01000000      3 0.1136364 0.1250000 0.02602958
> plotcp(dtree) 
> dtree.pruned <- prune(dtree,cp=.01705) 
> library(rattle) 
载入需要的程辑包：tibble
载入需要的程辑包：bitops
Rattle: A free graphical interface for data science with R.
XXXX 5.5.1 Copyright (c) 2006-2021 Togaware Pty Ltd.
键入'rattle()'去轻摇、晃动、翻滚你的数据。
> fancyRpartPlot(dtree.pruned,sub="Classification Tree") 
> dtree.pred <- predict(dtree.pruned,test,type="class") 
> dtree.perf <- table(test$class,dtree.pred,dnn=c("Actual","Predicted")) 
> dtree.perf
           Predicted
Actual      benign malignant
  benign       138         4
  malignant      6        57
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/98.png)

##### 条件推断树

1. 对输出变量与每个自变量间的关系计算p值

2. 选取p值最小的自变量

3. 在因变量与被选中的自变量间尝试所有可能的二元分割，并选取最显著的分割

4. 将数据集分成两类，并对每个子类重复上述步骤

5. 重复直至所有分割都不显著或已到达最低节点大小为止。

使用ctree函数创建条件推断树

```r
> library(partykit) 
载入需要的程辑包：grid
载入需要的程辑包：libcoin
载入需要的程辑包：mvtnorm
> fit.ctree <- ctree(class~.,data=train) 
> plot(fit.ctree,main="Conditional Inference Tree",gp=gpar(fontsize=8)) 
> ctree.pred <- predict(fit.ctree,test,type="response") 
> ctree.perf <- table(test$class,ctree.pred,dnn=c("Actual","Predicted")) 
> ctree.perf
           Predicted
Actual      benign malignant
  benign       138         4
  malignant      2        61
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/99.png)

#### 随机森林

算法涉及对观测值和变量进行抽样，从而生成大量决策树。对每个观测值来说，所有决策树依次对其进行分类。所有决策树预测类别中的众多类别即为随机森林所预测的这一观测值的类别。

假设训练集中共有N个观测值，M个变量，随机森林算法

1. 从训练集中随机有放回地抽取N个观测值，生成大量决策树。

2. 在每一个节点随机抽取m<M个变量，将其作为分割该节点的候选变量。每一个节点处的变量树应一致。

3. 完整生成所有决策树，无须剪枝。

4. 终端节点的所属类别由节点对应的众多类别决定。

5. 对应新的观测值，用所有的树对其进行分类，其类别由多数决定原则生成。
   
   

随机森林

```r
 library(randomForest) 
randomForest 4.7-1.1
Type rfNews() to see new features/changes/bug fixes.

载入程辑包：‘randomForest’

The following object is masked from ‘package:rattle’:

    importance

> set.seed(1234) 
> fit.forest <- randomForest(class~.,data=train,importance=TRUE) 
> fit.forest 

Call:
 randomForest(formula = class ~ ., data = train, importance = TRUE) 
               Type of random forest: classification
                     Number of trees: 500
No. of variables tried at each split: 3

        OOB estimate of  error rate: 2.93%
Confusion matrix:
          benign malignant class.error
benign       293         9  0.02980132
malignant      5       171  0.02840909
> randomForest::importance(fit.forest,type=2)
                         MeanDecreaseGini
clumpThickness                   9.794852
sizeUniformity                  58.635963
shapeUniformity                 49.754466
maginalAdhesion                  8.373530
singleEpithelialCellSize        16.814313
bareNuclei                      36.621347
blandChromatin                  25.179804
normalNucleoli                  14.177153
mitosis                          2.015803
> forest.pred <- predict(fit.forest,test) 
> forest.perf <- table(test$class,forest.pred,dnn=c("Actual","Predicted")) 
> forest.perf 
           Predicted
Actual      benign malignant
  benign       140         2
  malignant      3        60
```

#### 支持向量机

一类可用于分类和回归的监督机器学习模型，其流行归功于两个方面:一方面，它们可输出较准确的预测结果；另一方面，模型基于叫优雅的数学理论。

SVM旨在多维空间中找到一个能将全部观测值分成两类的最优平面，这一平面应使两类中距离最近的观测值的间距尽可能大，在间距边界上的点称为支持向量，分割的超平面位于间距的中间。

最优超平面可由一个二次规划问题解的。二次规划问题限制一侧观测值的因变量的值为+1，另一侧的因变量的值为-1，在此基础上最优化间距。若观测值"几乎"可分，则在最优化中加入惩罚项以容许一定误差，从而生成“软”间隔。

$$
(X,Y) -> (X**2,2XY,Y**2) ->(Z1,Z2,Z3)
$$

SVM通过R中kernlab包的ksvm函数和e1071包的svm函数实现。ksvm功能更强大，单svm相对更简单。

支持向量机

```r
> library(e1071) 
> set.seed(1234) 
> fit.svm <- svm(class~.,data=train) 
> fit.svm 

Call:
svm(formula = class ~ ., data = train)


Parameters:
   SVM-Type:  C-classification 
 SVM-Kernel:  radial 
       cost:  1 

Number of Support Vectors:  84

> svm.pred <- predict(fit.svm,test) 
> svm.perf <- table(test$class,svm.pred,dnn=c("Actual","Predicted")) 
> svm.perf 
           Predicted
Actual      benign malignant
  benign       138         4
  malignant      0        63
```

###### 支持向量机调优

svm函数默认通过径向基函数将观测值投射到高维空间。一般来说RBF核是一个比较好的选择，因为它是一种非线性投影，可以应对类别标签与自变量间的非线性关系。

在拟合带RBF核的SVM模型时，SVM模型的两个参数可能影响最终结果：gamma和cost。gamma是和函数的参数，控制分割超平面的形状。gamma越大，通常导致支持向量越多。我们也将gamma看作控制训练集“到达范围”的参数，即gamma越大意味着训练集到达范围越广，而越小则意味着到达范围较窄。gamma必须大于0.

cost参数海表犯错的成本。cost越大意味着模型对误差的惩罚越大，从而将生成一个更复杂的分类边界，对应的训练集中的误差也会更小，但也意味着可能存在过拟合问题，即对新观测值的预测误差可能很大。cost越小表示分类边界越平滑，但可能会导致欠拟合。与gamma一样，cost参数也恒为证。

svm函数默认设置gamma为自变量个数的倒数，cost参数为1。不过gamma与cost参数的不同组合可能生成更有效模型。在建模时。，我们可以尝试变动参数值建立不同的模型，但利用格点搜索法可能更有效。通过tune.svm对每个参数设置一个候选范围，tune.svm函数对每一个参数组合生成一个SVM模型，输出在每一个参数组合上的表现。

```r
> set.seed(1234) 
> tuned <- tune.svm(class~.,data=train,gamma=10^(-6:1),cost=10^(-10:10)) 
> tuned 

Parameter tuning of ‘svm’:

- sampling method: 10-fold cross validation 

- best parameters:
 gamma cost
  0.01    1

- best performance: 0.03355496 

> fit.svm <- svm(class~.,data=train,gamma=.01,cost=1) 
> svm.pred <- predict(fit.svm,na.omit(test)) 
> svm.perf <- table(na.omit(test)$class,svm.pred,dnn=c("Actual","Predicted")) 
> svm.perf 
           Predicted
Actual      benign malignant
  benign       139         3
  malignant      1        62
```

#### 选择预测效果最好的模型

二分类的情况下定义准确度

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/66jpg.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/67.jpg)

评估二分类准确度

```r
> performance <- function(table, n=2){
+   if(!all(dim(table) == c(2,2)))
+     stop("Must be a 2 x 2 table")
+   tn = table[1,1]
+   fp = table[1,2]
+   fn = table[2,1]
+   tp = table[2,2]
+   sensitivity = tp/(tp+fn)
+   specificity = tn/(tn+fp)
+   ppp = tp/(tp+fp)
+   npp = tn/(tn+fn)
+   hitrate = (tp+tn)/(tp+tn+fp+fn)
+   result <- paste("Sensitivity = ", round(sensitivity, n) ,
+                   "\nSpecificity = ", round(specificity, n),
+                   "\nPositive Predictive Value = ", round(ppp, n),
+                   "\nNegative Predictive Value = ", round(npp, n),
+                   "\nAccuracy = ", round(hitrate, n), "\n", sep="")
+   cat(result)
+ }
> performance(logit.perf) 
Sensitivity = 0.95
Specificity = 0.99
Positive Predictive Value = 0.97
Negative Predictive Value = 0.98
Accuracy = 0.98
> performance(dtree.perf) 
Sensitivity = 0.9
Specificity = 0.97
Positive Predictive Value = 0.93
Negative Predictive Value = 0.96
Accuracy = 0.95
> performance(ctree.perf) 
Sensitivity = 0.97
Specificity = 0.97
Positive Predictive Value = 0.94
Negative Predictive Value = 0.99
Accuracy = 0.97
> performance(forest.perf) 
Sensitivity = 0.95
Specificity = 0.99
Positive Predictive Value = 0.97
Negative Predictive Value = 0.98
Accuracy = 0.98
> performance(svm.perf) 
Sensitivity = 0.98
Specificity = 0.98
Positive Predictive Value = 0.95
Negative Predictive Value = 0.99
Accuracy = 0.98
```

#### 理解黑箱预测

分类模型用于真是的工作决策时可能会对人产生重要的影响。

install.packages("DALEX") 

##### 绘制细分图

1. 计算训练集中所有观测值的平均预测均值，得出0.365，将该值称为截距。

2. 对bareNuclei=9的所有观测值计算平均预测均值

3. bareBuclei=9且sizeUniformity=1的所有观测值计算平均预测均值，

4. 对bareNuclei=9且sizeUniformity=1且shapeUniformity=1的所有观测值计算平均预测均值

5. 继续计算，直到包含观测值的所有自变量值。单个观测值的自变量贡献值为模型所有自变量贡献值总和。正贡献增加恶性诊断结果的可能性，负贡献值降低恶性诊断结果可能性。

```r
> library(DALEX) 
Welcome to DALEX (version: 2.4.3).
Find examples and detailed introduction at: http://ema.drwhy.ai/

> alex <- data.frame(
+   clumpThickness = 6,
+   sizeUniformity = 1,
+   shapeUniformity = 1, 
+   maginalAdhesion = 1,
+   singleEpithelialCellSize = 3,
+   bareNuclei = 9,
+   blandChromatin = 7,
+   normalNucleoli = 3,
+   mitosis = 3
+ )
> predict(fit.forest,alex,type="prob") 
  benign malignant
1  0.278     0.722
attr(,"class")
[1] "matrix" "array"  "votes" 
> set.seed(1234) 
> explainer_rf_malignant <- explain(fit.forest,data=train,y=train$class == "malignant",predict_function = function(m,x) predict(m,x,type="prob")[,2])
Preparation of a new explainer is initiated
  -> model label       :  randomForest  (  default  )
  -> data              :  478  rows  10  cols 
  -> target variable   :  478  values 
  -> predict function  :  function(m, x) predict(m, x, type = "prob")[, 2] 
  -> predicted values  :  No value for predict function target column. (  default  )
  -> model_info        :  package randomForest , ver. 4.7.1.1 , task classification (  default  ) 
  -> model_info        :  Model info detected classification task but 'y' is a logical . Converted to numeric.  (  NOTE  )
  -> predicted values  :  numerical, min =  0 , mean =  0.3647782 , max =  1  
  -> residual function :  difference between y and yhat (  default  )
  -> residuals         :  numerical, min =  -0.364 , mean =  0.003422594 , max =  0.416  
  A new explainer has been created!  
> rf_pparts <- predict_parts(explainer = explainer_rf_malignant,new_observation = alex,type="break_down") 
> plot(rf_pparts) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/100.png)

##### 绘制Shapley值图

```r
set.seed(1234) 
rf_pparts = predict_parts(explainer = explainer_rf_malignant,new_observation = alex,type="shap") 
plot(rf_pparts) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/101.png)

#### 深入探究

1. 数据分割将可用数据氛围训练集和测试集

2. 数据预处理选择自变量，进行必要的变换。必须对缺失值进行插值处理，或者剔除缺失值

3. 模型构建现在人们以及研发出了许多候选的预测模型，其中多数模型具有需要调优的超参数。超参数是控制学习过程的模型参数，通过反复实验窜出这些参数。决策树在的复杂度参数、随机森林中分割的候选变量数，以及支持向量机中的参数cost和gamma，都是超参数。不断地调整这些参数的值，最后选择能够生成预测性最好、最稳健的模型的参数值。

4. 模型比较拟合一系列模型后，对它们的表现进行比较，然后选择最终的模型

5. 发布模型最终的模型选定后，对未来进行预测。

### 处理缺失数据的高级方法

install.packages(c("VIM","mice","missForest")) 

#### 处理缺失值的步骤

1. 识别缺失数据

2. 检查导致数据缺失的原因

3. 删除包含缺失值的观测值或用合理的数值代替缺失值

缺失数据的分类

1. 完全随机缺失   若某变量的缺失数据与其他任何观测或为观测变量都无关，则数据为完全随机缺失。

2. 随机缺失  若某变量上的缺失数据与其他观测变量有关，与它自己的未观测值无关，则数据为随机缺失。

3. 非随机缺失  若缺失数据不属于MCAR和MAR，则数据为非随机缺失。

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/68.jpg)

#### 识别缺失值

complete.cases识别矩阵或数据框中没有缺失值的行。

```r
> #加载数据集
> data(sleep,package="VIM") 
> #列出没有缺失值的行
> sleep[complete.cases(sleep),] 
    BodyWgt BrainWgt NonD Dream Sleep  Span  Gest Pred Exp Danger
2     1.000     6.60  6.3  r2.0   8.3   4.5  42.0    3   1      3
5  2547.000  4603.00  2.1   1.8   3.9  69.0 624.0    3   5      4
6    10.550   179.50  9.1   0.7   9.8  27.0 180.0    4   4      4
7     0.023     0.30 15.8   3.9  19.7  19.0  35.0    1   1      1
8   160.000   169.00  5.2   1.0   6.2  30.4 392.0    4   5      4
9     3.300    25.60 10.9   3.6  14.5  28.0  63.0    1   2      1
10   52.160   440.00  8.3   1.4   9.7  50.0 230.0    1   1      1
11    0.425     6.40 11.0   1.5  12.5   7.0 112.0    5   4      4
12  465.000   423.00  3.2   0.7   3.9  30.0 281.0    5   5      5
15    0.075     1.20  6.3   2.1   8.4   3.5  42.0    1   1      1
16    3.000    25.00  8.6   0.0   8.6  50.0  28.0    2   2      2
17    0.785     3.50  6.6   4.1  10.7   6.0  42.0    2   2      2
18    0.200     5.00  9.5   1.2  10.7  10.4 120.0    2   2      2
22   27.660   115.00  3.3   0.5   3.8  20.0 148.0    5   5      5
23    0.120     1.00 11.0   3.4  14.4   3.9  16.0    3   1      2
25   85.000   325.00  4.7   1.5   6.2  41.0 310.0    1   3      1
27    0.101     4.00 10.4   3.4  13.8   9.0  28.0    5   1      3
28    1.040     5.50  7.4   0.8   8.2   7.6  68.0    5   3      4
29  521.000   655.00  2.1   0.8   2.9  46.0 336.0    5   5      5
32    0.005     0.14  7.7   1.4   9.1   2.6  21.5    5   2      4
33    0.010     0.25 17.9   2.0  19.9  24.0  50.0    1   1      1
34   62.000  1320.00  6.1   1.9   8.0 100.0 267.0    1   1      1
37    0.023     0.40 11.9   1.3  13.2   3.2  19.0    4   1      3
38    0.048     0.33 10.8   2.0  12.8   2.0  30.0    4   1      3
39    1.700     6.30 13.8   5.6  19.4   5.0  12.0    2   1      1
40    3.500    10.80 14.3   3.1  17.4   6.5 120.0    2   1      1
42    0.480    15.50 15.2   1.8  17.0  12.0 140.0    2   2      2
43   10.000   115.00 10.0   0.9  10.9  20.2 170.0    4   4      4
44    1.620    11.40 11.9   1.8  13.7  13.0  17.0    2   1      2
45  192.000   180.00  6.5   1.9   8.4  27.0 115.0    4   4      4
46    2.500    12.10  7.5   0.9   8.4  18.0  31.0    5   5      5
48    0.280     1.90 10.6   2.6  13.2   4.7  21.0    3   1      3
49    4.235    50.40  7.4   2.4   9.8   9.8  52.0    1   1      1
50    6.800   179.00  8.4   1.2   9.6  29.0 164.0    2   3      2
51    0.750    12.30  5.7   0.9   6.6   7.0 225.0    2   2      2
52    3.600    21.00  4.9   0.5   5.4   6.0 225.0    3   2      3
54   55.500   175.00  3.2   0.6   3.8  20.0 151.0    5   5      5
57    0.900     2.60 11.0   2.3  13.3   4.5  60.0    2   1      2
58    2.000    12.30  4.9   0.5   5.4   7.5 200.0    3   1      3
59    0.104     2.50 13.2   2.6  15.8   2.3  46.0    3   2      2
60    4.190    58.00  9.7   0.6  10.3  24.0 210.0    4   3      4
61    3.500     3.90 12.8   6.6  19.4   3.0  14.0    2   1      1
> #列出有一个或多个缺失值的行
> sleep[!complete.cases(sleep),]
    BodyWgt BrainWgt NonD Dream Sleep Span Gest Pred Exp Danger
1  6654.000   5712.0   NA    NA   3.3 38.6  645    3   5      3
3     3.385     44.5   NA    NA  12.5 14.0   60    1   1      1
4     0.920      5.7   NA    NA  16.5   NA   25    5   2      3
13    0.550      2.4  7.6   2.7  10.3   NA   NA    2   1      2
14  187.100    419.0   NA    NA   3.1 40.0  365    5   5      5
19    1.410     17.5  4.8   1.3   6.1 34.0   NA    1   2      1
20   60.000     81.0 12.0   6.1  18.1  7.0   NA    1   1      1
21  529.000    680.0   NA   0.3    NA 28.0  400    5   5      5
24  207.000    406.0   NA    NA  12.0 39.3  252    1   4      1
26   36.330    119.5   NA    NA  13.0 16.2   63    1   1      1
30  100.000    157.0   NA    NA  10.8 22.4  100    1   1      1
31   35.000     56.0   NA    NA    NA 16.3   33    3   5      4
35    0.122      3.0  8.2   2.4  10.6   NA   30    2   1      1
36    1.350      8.1  8.4   2.8  11.2   NA   45    3   1      3
41  250.000    490.0   NA   1.0    NA 23.6  440    5   5      5
47    4.288     39.2   NA    NA  12.5 13.7   63    2   2      2
53   14.830     98.2   NA    NA   2.6 17.0  150    5   5      5
55    1.400     12.5   NA    NA  11.0 12.7   90    2   2      2
56    0.060      1.0  8.1   2.2  10.3  3.5   NA    3   1      2
62    4.050     17.0   NA    NA    NA 13.0   38    3   1      1
> sum(is.na(sleep$Dream)) 
[1] 12
> mean(is.na(sleep$Dream)) 
[1] 0.1935484
> mean(!complete.cases(sleep))
[1] 0.3225806
```

#### 探索缺失值模式

##### 缺失值的可视化

mice包的函数md.pattern生成一个以矩阵或数据框形式展示缺失值模式的表格。

```r
library(mice) 

载入程辑包：‘mice’

The following object is masked from ‘package:stats’:

    filter

The following objects are masked from ‘package:base’:

    cbind, rbind

> data(sleep,package="VIM") 
> md.pattern(sleep,rotate.names = TRUE) 
   BodyWgt BrainWgt Pred Exp Danger Sleep Span Gest Dream NonD   
42       1        1    1   1      1     1    1    1     1    1  0
9        1        1    1   1      1     1    1    1     0    0  2
3        1        1    1   1      1     1    1    0     1    1  1
2        1        1    1   1      1     1    0    1     1    1  1
1        1        1    1   1      1     1    0    1     0    0  3
1        1        1    1   1      1     1    0    0     1    1  2
2        1        1    1   1      1     0    1    1     1    0  2
2        1        1    1   1      1     0    1    1     0    0  3
         0        0    0   0      0     4    4    4    12   14 38
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/102.png)

aggr函数逼近绘制每个变量的缺失值数，还绘制每个变量组合的缺失值数。

```r
library("VIM") 
#numbers=FALSE删除了数值型标签。
aggr(sleep,prop=FALSE,numbers=TRUE) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/103.png)

```r
#marginplot函数生成一副散点图，图形边界展示两个变量的缺失信息。
marginplot(sleep[c("Gest","Dream")],pch=20,col=c("darkgray","red","blue")) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/104.png)

##### 相关性探索缺失值

```r
> x <- as.data.frame(abs(is.na(sleep))) 
> head(sleep,n=5) 
   BodyWgt BrainWgt NonD Dream Sleep Span Gest Pred Exp Danger
1 6654.000   5712.0   NA    NA   3.3 38.6  645    3   5      3
2    1.000      6.6  6.3   2.0   8.3  4.5   42    3   1      3
3    3.385     44.5   NA    NA  12.5 14.0   60    1   1      1
4    0.920      5.7   NA    NA  16.5   NA   25    5   2      3
5 2547.000   4603.0  2.1   1.8   3.9 69.0  624    3   5      4
> head(x,n=5) 
  BodyWgt BrainWgt NonD Dream Sleep Span Gest Pred Exp Danger
1       0        0    1     1     0    0    0    0   0      0
2       0        0    0     0     0    0    0    0   0      0
3       0        0    1     1     0    0    0    0   0      0
4       0        0    1     1     0    1    0    0   0      0
5       0        0    0     0     0    0    0    0   0      0  
> y <- x[which(apply(x,2,sum)>0)]
> cor(y) 
             NonD       Dream       Sleep        Span        Gest
NonD   1.00000000  0.90711474  0.48626454  0.01519577 -0.14182716
Dream  0.90711474  1.00000000  0.20370138  0.03752394 -0.12865350
Sleep  0.48626454  0.20370138  1.00000000 -0.06896552 -0.06896552
Span   0.01519577  0.03752394 -0.06896552  1.00000000  0.19827586
Gest  -0.14182716 -0.12865350 -0.06896552  0.19827586  1.00000000   
> cor(sleep,y,use="pairwise.complete.obs") 
                NonD       Dream        Sleep        Span        Gest
BodyWgt   0.22682614  0.22259108  0.001684992 -0.05831706 -0.05396818
BrainWgt  0.17945923  0.16321105  0.007859438 -0.07921370 -0.07332961
NonD              NA          NA           NA -0.04314514 -0.04553485
Dream    -0.18895206          NA -0.188952059  0.11699247  0.22774685
Sleep    -0.08023157 -0.08023157           NA  0.09638044  0.03976464
Span      0.08336361  0.05981377  0.005238852          NA -0.06527277
Gest      0.20239201  0.05140232  0.159701523 -0.17495305          NA
Pred      0.04758438 -0.06834378  0.202462711  0.02313860 -0.20101655
Exp       0.24546836  0.12740768  0.260772984 -0.19291879 -0.19291879
Danger    0.06528387 -0.06724755  0.208883617 -0.06666498 -0.20443928
Warning message:
In cor(sleep, y, use = "pairwise.complete.obs") : 标准差为零
```

#### 理解缺失数据的来由和影响

识别缺失数据的数目、分布和模式有两个目的:(1)分析生成缺失数据的潜在机制;(2)评估缺失数据对回答实质性问题的影响。

#### 合理推断不完整数据

推断方法会根据变量间的数学关系或者逻辑关系来填补或回复缺失值。

#### 删除缺失数据

##### 完整观测值分析(行删除)

函数complete.cases存储没有缺失值的数据框或者矩阵形成的观测值。

newdata <- mydata(complete.cases(mydata,))

函数na.omit

newdata <- na.omit(mydata) 

```r
> options(digits = 1) 
> cor(na.omit(sleep)) 
         BodyWgt BrainWgt NonD Dream Sleep  Span  Gest  Pred  Exp Danger
BodyWgt     1.00     0.96 -0.4 -0.07  -0.3  0.47  0.71  0.10  0.4   0.26
BrainWgt    0.96     1.00 -0.4 -0.07  -0.3  0.63  0.73 -0.02  0.3   0.15
NonD       -0.39    -0.39  1.0  0.52   1.0 -0.37 -0.61 -0.35 -0.6  -0.53
Dream      -0.07    -0.07  0.5  1.00   0.7 -0.27 -0.41 -0.40 -0.5  -0.57
Sleep      -0.34    -0.34  1.0  0.72   1.0 -0.38 -0.61 -0.40 -0.6  -0.60
Span        0.47     0.63 -0.4 -0.27  -0.4  1.00  0.65 -0.17  0.3   0.01
Gest        0.71     0.73 -0.6 -0.41  -0.6  0.65  1.00  0.09  0.6   0.31
Pred        0.10    -0.02 -0.4 -0.40  -0.4 -0.17  0.09  1.00  0.6   0.93
Exp         0.41     0.32 -0.6 -0.50  -0.6  0.32  0.57  0.63  1.0   0.79
Danger      0.26     0.15 -0.5 -0.57  -0.6  0.01  0.31  0.93  0.8   1.00
```

```r
> fit <- lm(Dream ~ Span + Gest,data=na.omit(sleep)) 
> summary(fit) 

Call:
lm(formula = Dream ~ Span + Gest, data = na.omit(sleep))

Residuals:
   Min     1Q Median     3Q    Max 
-2.333 -0.915 -0.221  0.382  4.183 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  2.480122   0.298476    8.31  3.7e-10 ***
Span        -0.000472   0.013130   -0.04    0.971    
Gest        -0.004394   0.002081   -2.11    0.041 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1 on 39 degrees of freedom
Multiple R-squared:  0.167,    Adjusted R-squared:  0.125 
F-statistic: 3.92 on 2 and 39 DF,  p-value: 0.0282

```

##### 可获得的观测值分析(成对删除)

```r
 cor(sleep,use="pairwise.complete.obs") 
         BodyWgt BrainWgt NonD Dream Sleep  Span Gest  Pred  Exp Danger
BodyWgt     1.00     0.93 -0.4  -0.1  -0.3  0.30  0.7  0.06  0.3   0.13
BrainWgt    0.93     1.00 -0.4  -0.1  -0.4  0.51  0.7  0.03  0.4   0.15
NonD       -0.38    -0.37  1.0   0.5   1.0 -0.38 -0.6 -0.32 -0.5  -0.48
Dream      -0.11    -0.11  0.5   1.0   0.7 -0.30 -0.5 -0.45 -0.5  -0.58
Sleep      -0.31    -0.36  1.0   0.7   1.0 -0.41 -0.6 -0.40 -0.6  -0.59
Span        0.30     0.51 -0.4  -0.3  -0.4  1.00  0.6 -0.10  0.4   0.06
Gest        0.65     0.75 -0.6  -0.5  -0.6  0.61  1.0  0.20  0.6   0.38
Pred        0.06     0.03 -0.3  -0.4  -0.4 -0.10  0.2  1.00  0.6   0.92
Exp         0.34     0.37 -0.5  -0.5  -0.6  0.36  0.6  0.62  1.0   0.79
Danger      0.13     0.15 -0.5  -0.6  -0.6  0.06  0.4  0.92  0.8   1.00
```

#### 单一插补

##### 简单插补

某个值来替换变量中的缺失值。

解决“缺失值问题”是不会减少分析过程中可用的样本量。

##### k近邻插补

具有一个或多个缺失值的观测值，找到与其最相似但具有值的观测值，任何利用这些观测值进行插补。/

1. 根据其他9个变量，在数据集中查找与其观测值最邻近的k个观测值

2. 将此k个观测值的Gest进行汇总

3. 将此汇总至替换缺失值

VIM包的函数kNN可用进行近邻插补

1. 最邻近样本是至那些距离目标观测值的Gower距离最小的观测值。Gower距离既可以针对连续型变量计算，又可用针对分类变量计算。

2. 针对每个具有缺失值的观测值，确定5个临近的样本

3. 连续缺失值的汇总至是k个最邻近的中位数。

sleep数据集的k近邻插补

```r
 library(VIM) 
> head(sleep) 
  BodyWgt BrainWgt NonD Dream Sleep Span Gest Pred Exp Danger
1   7e+03     5712   NA    NA     3   39  645    3   5      3
2   1e+00        7    6   2.0     8    4   42    3   1      3
3   3e+00       44   NA    NA    12   14   60    1   1      1
4   9e-01        6   NA    NA    16   NA   25    5   2      3
5   3e+03     4603    2   1.8     4   69  624    3   5      4
6   1e+01      180    9   0.7    10   27  180    4   4      4
> sleep_imp <- kNN(sleep,imp_var=FALSE) 
> head(sleep_imp) 
  BodyWgt BrainWgt NonD Dream Sleep Span Gest Pred Exp Danger
1   7e+03     5712    3   0.8     3   39  645    3   5      3
2   1e+00        7    6   2.0     8    4   42    3   1      3
3   3e+00       44   13   2.4    12   14   60    1   1      1
4   9e-01        6   10   2.4    16    3   25    5   2      3
5   3e+03     4603    2   1.8     4   69  624    3   5      4
6   1e+01      180    9   0.7    10   27  180    4   4      4
```

##### missForest插补

1. 实验均值替代每个连续性变量的缺失值。实验众多替代每个分类变量的缺失值。同时记录缺失值的为止

2. 返回变量X1的缺失数据。创建在此变量上没有缺失值的观测值的训练集。使用此训练集生成随机森林模型，该模型预测X1.

3. 对X2到Xp的所有变量，重复步骤2

4. 重复步骤2和步骤3，直到插补值的变化不超过指定的阈值

```r
> library(missForest) 

载入程辑包：‘missForest’

The following object is masked from ‘package:VIM’:

    nrmse

> set.seed(1234) 
> sleep_imp <- missForest(sleep)$ximp 
> head(sleep_imp) 
  BodyWgt BrainWgt NonD Dream Sleep Span Gest Pred Exp Danger
1   7e+03     5712    3   1.2     3   39  645    3   5      3
2   1e+00        7    6   2.0     8    4   42    3   1      3
3   3e+00       44   11   2.4    12   14   60    1   1      1
4   9e-01        6   12   2.7    16    8   25    5   2      3
5   3e+03     4603    2   1.8     4   69  624    3   5      4
6   1e+01      180    9   0.7    10   27  180    4   4      4
```

#### 多重插补

基于重复模拟的处理缺失值的方法。面对复杂的缺失值问题时，MI是最常选用的方法，从刚包含缺失值的数据集中生成一组完整的数据集。每个模拟数据集中，确实及数据将用蒙特克罗法来填补。

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/69.jpg)

library(mice) 
imp <- mice(data,m) 
fit<- with(imp,analysis) 
pooled <- pool(fit) 
summary(pooled)

imp是一个包含m个插补数据集的列表对象，含义完成插补规程的信息。

analysis是一个表达对下个，设定应用于m个插补数据集的统计分析方法。

fit是一个包含m个单独统计分析结果的列表对象

pooled是一个包含着m个统计分析平均结果的列表随想

```r
> library(mice) 
> data(sleep,package="VIM") 
> imp <- mice(sleep,seed=1234) 

 iter imp variabl
  1   1  NonD  Dream  Sleep  Span  Gest
  1   2  NonD  Dream  Sleep  Span  Gest
  1   3  NonD  Dream  Sleep  Span  Gest
  1   4  NonD  Dream  Sleep  Span  Gest
  1   5  NonD  Dream  Sleep  Span  Gest
  2   1  NonD  Dream  Sleep  Span  Gest
  2   2  NonD  Dream  Sleep  Span  Gest
  2   3  NonD  Dream  Sleep  Span  Gest
  2   4  NonD  Dream  Sleep  Span  Gest
  2   5  NonD  Dream  Sleep  Span  Gest
  3   1  NonD  Dream  Sleep  Span  Gest
  3   2  NonD  Dream  Sleep  Span  Gest
  3   3  NonD  Dream  Sleep  Span  Gest
  3   4  NonD  Dream  Sleep  Span  Gest
  3   5  NonD  Dream  Sleep  Span  Gest
  4   1  NonD  Dream  Sleep  Span  Gest
  4   2  NonD  Dream  Sleep  Span  Gest
  4   3  NonD  Dream  Sleep  Span  Gest
  4   4  NonD  Dream  Sleep  Span  Gest
  4   5  NonD  Dream  Sleep  Span  Gest
  5   1  NonD  Dream  Sleep  Span  Gest
  5   2  NonD  Dream  Sleep  Span  Gest
  5   3  NonD  Dream  Sleep  Span  Gest
  5   4  NonD  Dream  Sleep  Span  Gest
  5   5  NonD  Dream  Sleep  Span  Gest
Warning message:
Number of logged events: 2 
> fit <- with(imp,lm(Dream ~ Span + Gest)) 
> pooled <- pool(fit) 
> summary(pooled)
         term estimate std.error statistic df p.value
1 (Intercept)    2.599     0.247      10.5 52   2e-14
2        Span   -0.005     0.012      -0.4 53   7e-01
3        Gest   -0.004     0.001      -2.7 48   9e-03
```

```r
imp$imp$Dream
     1   2   3   4   5
1  0.5 1.4 0.5 0.5 0.6
3  1.4 1.9 1.8 2.0 1.
4  2.7 3.4 3.1 4.1 2.7
14 0.3 1.0 0.5 0.0 0.0
24 3.6 1.0 1.4 1.2 1.4
26 2.7 0.5 3.9 3.1 1.2
30 2.2 0.6 2.7 2.4 3.4
31 0.9 0.5 0.9 1.4 2.4
47 1.3 3.1 1.8 2.8 3.9
53 1.0 0.5 0.6 0.5 0.5
55 2.6 3.4 2.4 2.0 0.5
62 2.2 3.6 2.6 3.4 2.8
```

```r
> dataset3 <- complete(imp,action=3) 
> dataset3
   BodyWgt BrainWgt NonD Dream Sleep Span Gest Pred Exp Danger
1    7e+03    6e+03    3   0.5     3   39  645    3   5      3
2    1e+00    7e+00    6   2.0     8    4   42    3   1      3
3    3e+00    4e+01   11   1.8    12   14   60    1   1      1
4    9e-01    6e+00   13   3.1    16    2   25    5   2      3
5    3e+03    5e+03    2   1.8     4   69  624    3   5      4
6    1e+01    2e+02    9   0.7    10   27  180    4   4      4
7    2e-02    3e-01   16   3.9    20   19   35    1   1      1
8    2e+02    2e+02    5   1.0     6   30  392    4   5      4
9    3e+00    3e+01   11   3.6    14   28   63    1   2      1
10   5e+01    4e+02    8   1.4    10   50  230    1   1      1
11   4e-01    6e+00   11   1.5    12    7  112    5   4      4
12   5e+02    4e+02    3   0.7     4   30  281    5   5      5
13   6e-01    2e+00    8   2.7    10    4   60    2   1      2
14   2e+02    4e+02    3   0.5     3   40  365    5   5      5
15   7e-02    1e+00    6   2.1     8    4   42    1   1      1
16   3e+00    2e+01    9   0.0     9   50   28    2   2      2
17   8e-01    4e+00    7   4.1    11    6   42    2   2      2
18   2e-01    5e+00   10   1.2    11   10  120    2   2      2
19   1e+00    2e+01    5   1.3     6   34  230    1   2      1
20   6e+01    8e+01   12   6.1    18    7   14    1   1      1
21   5e+02    7e+02   12   0.3    12   28  400    5   5      5
22   3e+01    1e+02    3   0.5     4   20  148    5   5      5
23   1e-01    1e+00   11   3.4    14    4   16    3   1      2
24   2e+02    4e+02   11   1.4    12   39  252    1   4      1
25   8e+01    3e+02    5   1.5     6   41  310    1   3      1
26   4e+01    1e+02   10   3.9    13   16   63    1   1      1
27   1e-01    4e+00   10   3.4    14    9   28    5   1      3
28   1e+00    6e+00    7   0.8     8    8   68    5   3      4
29   5e+02    7e+02    2   0.8     3   46  336    5   5      5
30   1e+02    2e+02    8   2.7    11   22  100    1   1      1
31   4e+01    6e+01    8   0.9     8   16   33    3   5      4
32   5e-03    1e-01    8   1.4     9    3   22    5   2      4
33   1e-02    2e-01   18   2.0    20   24   50    1   1      1
34   6e+01    1e+03    6   1.9     8  100  267    1   1      1
35   1e-01    3e+00    8   2.4    11    4   30    2   1      1
36   1e+00    8e+00    8   2.8    11    5   45    3   1      3
37   2e-02    4e-01   12   1.3    13    3   19    4   1      3
38   5e-02    3e-01   11   2.0    13    2   30    4   1      3
39   2e+00    6e+00   14   5.6    19    5   12    2   1      1
40   4e+00    1e+01   14   3.1    17    6  120    2   1      1
41   2e+02    5e+02   12   1.0    13   24  440    5   5      5
42   5e-01    2e+01   15   1.8    17   12  140    2   2      2
43   1e+01    1e+02   10   0.9    11   20  170    4   4      4
44   2e+00    1e+01   12   1.8    14   13   17    2   1      2
45   2e+02    2e+02    6   1.9     8   27  115    4   4      4
46   2e+00    1e+01    8   0.9     8   18   31    5   5      5
47   4e+00    4e+01   11   1.8    12   14   63    2   2      2
48   3e-01    2e+00   11   2.6    13    5   21    3   1      3
49   4e+00    5e+01    7   2.4    10   10   52    1   1      1
50   7e+00    2e+02    8   1.2    10   29  164    2   3      2
51   8e-01    1e+01    6   0.9     7    7  225    2   2      2
52   4e+00    2e+01    5   0.5     5    6  225    3   2      3
53   1e+01    1e+02    3   0.6     3   17  150    5   5      5
54   6e+01    2e+02    3   0.6     4   20  151    5   5      5
55   1e+00    1e+01    8   2.4    11   13   90    2   2      2
56   6e-02    1e+00    8   2.2    10    4   46    3   1      2
57   9e-01    3e+00   11   2.3    13    4   60    2   1      2
58   2e+00    1e+01    5   0.5     5    8  200    3   1      3
59   1e-01    2e+00   13   2.6    16    2   46    3   2      2
60   4e+00    6e+01   10   0.6    10   24  210    4   3      4
61   4e+00    4e+00   13   6.6    19    3   14    2   1      1
62   4e+00    2e+01    8   2.6    10   13   38    3   1      1
```

#### 处理缺失数据的其他方法

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/70.jpg)

## 技能扩展

### 高级绘图

install.packages(c("ISLR","gapminder","scales","showtext","ggrepel","patchwork","plotly")

#### 修改标尺

控制变量值到特定图形特定的映射。scale_x_continuous创建一个定量性变量的值到x轴为止的映射，函数scale_color_discrete创建一个分类变量的值与一个颜色值的映射。

##### 自定义坐标轴

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/71.jpg)

###### 自定义哦连续型变量的坐标轴

```r
library(ggplot2) 
ggplot(data=mtcars,aes(x=wt,y=mpg)) + 
  geom_point() + labs(title="Fuel efficiency by car weight") 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/105.png)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/72.jpg)

```r

library(ggplot2) 
ggplot(mtcars,aes(x=wt,y=mpg)) + 
  geom_point() + 
  scale_x_continuous(name="Weight (1000 lbs.)",n.breaks = 10,minor_breaks = NULL,limits = c(1.5,5.5)) + 
  scale_y_continuous(name="Miles per gallon",breaks = seq(10,35,5),minor_breaks = seq(10,35,1),limits = c(10,35)) + 
  labs(title="Fuel efficiency by car weight") 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/106.png)

###### 自定义分类变量的坐标轴

```r
library(ISLR)
library(ggplot2)
ggplot(Wage, aes(race, fill = education)) +
  geom_bar(position = "fill") +
  labs(title = "Participant Education by Race")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/107.png)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/73.jpg)

```r
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
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/108.png)

##### 自定义颜色

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/74.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/75.jpg)

###### 连续性调色板

```r
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/109.png)

###### 分类型调色板

```r
library(ISLR)
library(ggplot2)
p <- ggplot(Wage, aes(race, fill=education)) +
  geom_bar(position="fill") +
  scale_y_continuous("Percent", label=scales::percent_format(accuracy=2),
                     n.breaks=10) +
  scale_x_discrete("",
                   limits=c("3. Asian", "1. White", "2. Black"),
                   labels=c("Asian", "Whte", "Black"))

p + ggtitle("A. Default colors")
#scale_fill_brewer 是一个用于设置图形填充颜色的函数，它属于 R 语言中的 ggplot2 包。这个函数使用 Brewer 调色板为数据集中的数值型变量生成颜色。
p + scale_fill_brewer(palette="Set2") +
  ggtitle("B. ColorBrewer Set2 palette")
#scale_fill_viridis_d 是一个用于设置图形填充颜色的函数，它属于 R 语言中的 ggplot2 包。这个函数使用 viridis 调色板为数据集中的数值型变量生成颜色。
p + scale_fill_viridis_d() +
  ggtitle("C. Viridis color scheme")

p + scale_fill_manual(values=c("gold4", "orange2", "deepskyblue3", 
                               "brown2", "yellowgreen")) +
  ggtitle("D. Manual color selection")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/110.png)

#### 修改主题

ggplot2 theme自定义图形的非数据部分。

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/76.jpg)

##### 预置主题

```r
library(ggplot2) 
p <- ggplot(data=mtcars,aes(x=wt,y=mpg)) + 
geom_point() + 
  labs(x="Weight (1000 lbs.)",y="Miles per gallon") 
p + theme_grey()+ labs(title="theme_grey") 
p + theme_bw() + labs(title="theme_bw")
p + theme_minimal() + labs(title="theme_minimal") 
p + theme_classic() + labs(title="theme_classic")
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/111.png)

##### 自定义字体

1. 下载本地和Google字体

2. 将showtext设为图形四级成绩的设备

3. 在函数ggplot2theme指定字体
   
   

font_paths列出字体文件的位，font_files列出字体文件及其属性。

```r
findfont <- function(x) {
  suppressMessages(require(showtext)) 
  suppressMessages(require(dplyr))
  filter(font_files(),grepl(x,family,ignore.case = TRUE)) %>% 
    select(path,file,family,face) 
}
findfont("comic") 
              path        file        family        face
1 C:/Windows/Fonts   comic.ttf Comic Sans MS     Regular
2 C:/Windows/Fonts comicbd.ttf Comic Sans MS        Bold
3 C:/Windows/Fonts  comici.ttf Comic Sans MS      Italic
4 C:/Windows/Fonts  comicz.ttf Comic Sans MS Bold Italic
```

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/77.jpg)

```r
library(ggplot2)
library(showtext)
font_add("comic", regular = "comic.ttf",                 
         bold = "comicbd.ttf", italic="comici.ttf")
font_add("caveat", regular = "Caveat-Regular.ttf",
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
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/112.png)

##### 自定义图例

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/78.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/79.jpg)

```r
library(ggplot2) 
ggplot(mtcars,aes(wt,mpg,color=factor(cyl))) + 
  geom_point(size=3) + 
  scale_color_discrete(name="Cylinders") + 
  labs(title="Fuel Efficiency for 32 Automobiles",x="Weight (1000 lbs)",y="Miles per gallon") + 
  theme(legend.positio = c(.95,.95),legend.justification = c(1,1),legend.background = element_rect(fill="lightgrey",color="white",size=1),legend.key = element_blank(),legend.direction = "horizontal")

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/113.png)

##### 自定义绘图区

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/80.jpg)

```r
library(ggplot2) 
mtcars$am <- factor(mtcars$am,labels=c("Automatic","Manual")) 
ggplot(mtcars,aes(disp,mpg)) + geom_point(aes(color=factor(cyl)),size=2) + 
  geom_smooth(method="lm",formula=y ~ x + I(x^2),linetype="dotted",se=FALSE) + 
  scale_color_discrete("Number of cylinders ") + 
  facet_wrap(~am,ncol=2) + 
  labs(title="Mileage,transmission type, and number of cylinders",x="Engine displacement (cu. in.)",y="Miles per gallon") + 
  theme_bw() + 
#strip.background是一种图像处理技术，用于去除图像中的背景。它可以将图像中的背景色或噪声去除，使得图像中的目标更加突出和清晰。#strip.background通常用于数字图像处理、计算机视觉和机器学习等领域，可以提高图像处理和分析的准确性和效率。
  theme(strip.background = element_rect(fill="white"),
        panel.grid.major = element_line(color="lightgrey"),
        panel.grid.minor = element_line(color="lightgrey",linetype="dashed"),
        axis.ticks = element_blank(),
        legend.position = "top",
        legend.key=element_blank()) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/114.png)

#### 添加标注

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/81.jpg)

##### 给数据点添加标签

```r
library(ggplot2) 
ggplot(data=mtcars,aes(x=wt,y=mpg)) + 
  geom_point(color="steelblue") + 
  geom_text(label=row.names(mtcars)) + 
  labs(title="Fuel efficiency by car weight",x="Weight (1000 lbs)",y="Miles per gallon") 


```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/115.png)

ggrepel实现的带有数据点标签的散点图

```r
library(ggplot2) 
library(ggrepel) 
ggplot(mtcars,aes(x=wt,y=mpg)) + 
  geom_point(color="steelblue") + 
  geom_hline(yintercept = median(mtcars$mpg),linetype="dashed",color="steelblue") + 
  geom_label(x=5.2,y=20.5,label="median MPG",color="white",fill="steelblue",size=3) + 
  geom_text_repel(label=row.names(mtcars),size=3) + 
  labs(title="Fuel efficiency by car weight",x="Weight (1000 lbs)",y="Miles per gallon") 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/116.png)

##### 给条形图添加标签

```r
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
# A tibble: 4 × 4
  race      n    pct lbls 
  <fct> <int>  <dbl> <chr>
1 White  2480 0.827  82.7%
2 Black   293 0.0977 9.8% 
3 Asian   190 0.0633 6.3% 
4 Other    37 0.0123 1.2% 
ggplot(data=plotdata, aes(x=race, y=pct)) +
  geom_bar(stat = "identity", fill="steelblue") +     
  geom_text(aes(label = lbls),                    
            vjust = -0.5, 
            size = 3) +
  labs(title = "Participants by Race",
       x = "", 
       y="Percent") +
  theme_minimal()
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/117.png)堆积条形图中添加百分比标签

```r
library(ggplot2)
library(dplyr)
library(ISLR)

plotdata <- Wage %>%                                
  group_by(race, education) %>%
  summarize(n = n()) %% 
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

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/118.png)

#### 图形的组合

```r
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
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/119.png)

#### 绘制交互式图形

```r
library(ggplot2) 
library(dplyr) 
library(plotly) 
mtcars$cyl <- factor(mtcars$cyl) 
mtcars$name <- row.names(mtcars) 
p <- ggplot(mtcars,aes(x=disp,y=mpg,color=cyl)) + 
  geom_point() 
ggplotly(p) 

```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/120.png)

```r
library(ggplot2) 
library(plotly) 
mtcars$cyl <- factor(mtcars$cyl) 
mtcars$name <- row.names(mtcars) 
p <- ggplot(mtcars,aes(x=disp,y=mpg,color=cyl,text=paste(name,"\n","mpg:",mpg,"\n","disp:",disp,"\n","cyl:",cyl,"\n","gear:"gear))) + 
  geom_point() 
ggplotly(p,tooltip = c("text"))
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/121.png)

### 高级编程

#### R语言回顾

##### 数据类别

原子向量和泛型向量

###### 原子向量

包含单个数据类型的数组。

passed <- c(TRUE,TRUE,FALSE,TRUE) 

ages <- c(15,18,25,14,19) 

矩阵是一个具有维度属性的原子向量，包含两个元素。

```r
> x <- c(1,2,3,4,5,6,7,8) 
> class(x) 
[1] "numeric"
> print(x) 
[1] 1 2 3 4 5 6 7 8  
> attr(x,"dim") <- c(2,4) 
> print(x) 
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8   
> class(x) 
[1] "matrix" "array" 
> attributes(x)
$dim
[1]
 2 4 
> attr(x,"dimnames") <- list(c("A1","A2"),c("B1","B2","B3","B4")) 
> print(x) 
   B1 B2 B3 B4
A1  1  3  5  7
A2  2  4  6  8
> attr(x,"dim") <- NULL 
> class(x) 
[1] "numeric"
> print(x) 
[1] 1 2 3 4 5 6 7 8
```

###### 泛型向量或列表

原子向量和/或其他列表的集合。数据框是一种特殊的列表，集合中每个原子向量都有相同的长度。

```r
> set.seed(1234) 
> fit <- kmeans(iris[1:4],3) 
> names(fit) 
[1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss" "betweenss"   
[7] "size"         "iter"         "ifault"      
> unclass(fit) 
$cluster
  [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
 [49] 1 1 2 2 3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 3 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
 [97] 2 2 2 2 3 2 3 3 3 3 2 3 3 3 3 3 3 2 2 3 3 3 3 2 3 2 3 2 3 3 2 2 3 3 3 3 3 2 3 3 3 3 2 3 3 3 2 3
[145] 3 3 2 3 3 2

$centers
  Sepal.Length Sepal.Width Petal.Length Petal.Width
1            5           3            1         0.2
2            6           3            4         1.4
3            7           3            6         2.1

$totss
[1] 681

$withinss
[1] 15 40 24

$tot.withinss
[1] 79

$betweenss
[1] 603

$size
[1] 50 62 38

$iter
[1] 2

$ifault
[1] 0
```

sapply返回对象中每个成分所属的类

```r
 sapply(fit,class)
$cluster
[1] "integer"

$centers
[1] "matrix" "array" 

$totss
[1] "numeric"

$withinss
[1] "numeric"

$tot.withinss
[1] "numeric"

$betweenss
[1] "numeric"

$size
[1] "integer"

$iter
[1] "integer"

$ifault
[1] "integer"
```

###### 索引

```r
> x <- c(20,30,40) 
> x[3] 
[1] 40
> x[c(2,3)] 
[1] 30 40
> x <- c(A=20,B=30,C=40) 
> x[c(2,3)] 
 B  C 
30 40 
> x[c("B","C")] 
 B  C 
30 40    
> fit[c(2,7)]
$centers
  Sepal.Length Sepal.Width Petal.Length Petal.Width
1            5           3            1         0.2
2            6           3            4         1.4
3            7           3            6         2.1

$size
[1] 50 62 38  
 fit[2] 
$centers
  Sepal.Length Sepal.Width Petal.Length Petal.Width
1            5           3            1         0.2
2            6           3            4         1.4
3            7           3            6         2.1    
fit[[2]]
 Sepal.Length Sepal.Width Petal.Length Petal.Width
1            5           3            1         0.2
2            6           3            4         1.4
3            7           3            6         2.1   
单个命名成分内容,$ 
fit$centers 
  Sepal.Length Sepal.Width Petal.Length Petal.Width
1            5           3            1         0.2
2            6           3            4         1.4
3            7           3            6         2.1   
fit[[2]][1,]
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
         5.0          3.4          1.5          0.2 
```

```r
> set.seed(1234) 
> fit <- kmeans(iris[1:4],3) 
> means <- fit$center
> means <- as.data.frame(means) 
> means$cluster <- row.names(means) 
> library(tidyr) 
> plotdata <- gather(means,key="variable",value="value",-cluster) 
> names(plotdata) <- c("Cluster","Measurement","Centimeters") 
> head(plotdata) 
  Cluster  Measurement Centimeters
1       1 Sepal.Length           5
2       2 Sepal.Length           6
3       3 Sepal.Length           7
4       1  Sepal.Width           3
5       2  Sepal.Width           3
6       3  Sepal.Width           3
> library(ggplot2) 
> ggplot(plotdata,aes(x=Measurement,y=Centimeters,group=Cluster)) + 
+   geom_point(size=3,aes(shape=Cluster,color=Cluster)) + 
+   geom_line(size=1,aes(color=Cluster)) + 
+   labs(title="Mean Profiles for iris Cluster") + theme_minimal() 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/122.png)

##### 控制结构

###### for循环

for(var in seq){

statements

}

###### if和else

if(condition) {

statements

}else{

statements

}

###### ifelse

ifelse(test,yes,no) 

##### 创建函数

###### 函数语法

functionname <- function(parameters){

statements 

return(value)

}

args交互式查看。

###### 对象的作用域

#### 使用环境

#### 非标准计算

#### 面向对象编程

##### 泛型函数

```r
 mymethod <- function(x, ...) UseMethod("mymethod")    
> mymethod.a <- function(x) print("Using A")
> mymethod.b <- function(x) print("Using B")
> mymethod.default <- function(x) print("Using Default")
> 
> x <- 1:5
> y <- 6:10
> z <- 10:15
> class(x) <- "a"             
> class(y) <- "b"
> 
> mymethod(x)                 
[1] "Using A"
> mymethod(y)
[1] "Using B"
> mymethod(z)
[1] "Using Default"
> 
> class(z) <- c("a", "b")     
> mymethod(z)
[1] "Using A"
> class(z) <- c("c", "a", "b")
> mymethod(z)
[1] "Using A"
```

##### S3模型的局限性

任何的类能被分配到任意的对象中。

#### 编写高效的代码

##### 高效的数据输入

library(readr) 

mydata <- read_csv(mytextfile,col_types=cols_only(age="i",height="d",weight="d",race="c",sex="c",dob="D")) 

##### 向量化

```r
> set.seed(1234)
> mymatrix <- matrix(rnorm(10000000), ncol=10)
> accum <- function(x){
+   sums <- numeric(ncol(x))
+   for (i in 1:ncol(x)){
+     for(j in 1:nrow(x)){
+       sums[i] <- sums[i] + x[j,i]
+     }
+   }
+ }
> system.time(accum(mymatrix))   # using loops
用户 系统 流逝 
0.02 0.00 0.44 
> system.time(colSums(mymatrix)) # using vectorization
用户 系统 流逝 
   0    0    0 
```

##### 准确调整对象的大小

```r
 set.seed(1234)
> k <- 100000
> x <- rnorm(k)
> 
> y <- 0
> system.time(for (i in 1:length(x)) y[i] <- x[i]^2)
用户 系统 流逝 
0.00 0.00 0.01 
> 
> y <- numeric(k)
> system.time(for (i in 1:k) y[i] <- x[i]^2)
用户 系统 流逝 
   0    0    0 
> 
> y <- numeric(k)
> system.time(y <- x^2)
用户 系统 流逝 
   0    0    0 
```

##### 并行化

```r
> library(foreach) 
> library(doParallel) 
载入需要的程辑包：iterators
载入需要的程辑包：parallel
> registerDoParallel(cores = detectCores()) 
> eig <- function(n,p) {
+   x <- matrix(rnorm(100000),ncol=100) 
+   r <- cor(x) 
+   eigen(r)$value 
+ }
> n <- 1000000 
> p <- 100 
> k <- 500 
> system.time(
+   x <- foreach(i=1:k, .combine=rbind) %do% eig(n,p) 
+ )
用户 系统 流逝 
1.03 0.07 4.81 
> system.time(
+   x <- foreach(i=1:k, .combine = rbind) %dopar% eig(n,p) 
+ )
用户 系统 流逝 
 0.1  0.0  0.7 
```

#### 调试

##### 常见的错误来源

##### 调试工具

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/82.jpg)

```r
args(mad)
function (x, center = median(x), constant = 1.4826, na.rm = FALSE, 
    low = FALSE, high = FALSE) 
NULL
> args(mad)
function (x, center = median(x), constant = 1.4826, na.rm = FALSE, 
    low = FALSE, high = FALSE) 
NULL
> debug(mad) 
> mad(1:10) 
debugging in: mad(1:10)
debug: {
    if (na.rm) 
        x <- x[!is.na(x)]
    n <- length(x)
    constant * if ((low || high) && n%%2 == 0) {
        if (low && high) 
            stop("'low' and 'high' cannot be both TRUE")
        n2 <- n%/%2 + as.integer(high)
        sort(abs(x - center), partial = n2)[n2]
    }
    else median(abs(x - center))
}
Browse[2]> ls()
[1] "center"   "constant" "high"     "low"      "na.rm"    "x"       
Browse[2]> center
[1] 6
Browse[2]> constant 
[1] 1
Browse[2]> na.rm
[1] FALSE
Browse[2]> x
 [1]  1  2  3  4  5  6  7  8  9 10
Browse[2]> n
debug: if (na.rm) x <- x[!is.na(x)]
Browse[2]> n
debug: n <- length(x)
Browse[2]> n
debug: constant * if ((low || high) && n%%2 == 0) {
    if (low && high) 
        stop("'low' and 'high' cannot be both TRUE")
    n2 <- n%/%2 + as.integer(high)
    sort(abs(x - center), partial = n2)[n2]
} else median(abs(x - center))
Browse[2]> print(n) 
[1] 10
Browse[2]> where
where 1: mad(1:10)

Browse[2]> c
exiting from: mad(1:10)
[1] 4
```

##### 支持调试的绘画选择

```r
 f <- function(x, y){
+   z <- x + y
+   g(z)
+ }
> g <- function(x){
+   z <- round(x)
+   h(z)
+ }
> 
> h <- function(x){
+   set.seed(1234)
+   z <- rnorm(x)
+   print(z)
+ }
> options(error=recover)
> 
> f(2,3)
[1] -1.2  0.3  1.1 -2.3  0.4
> f(2, -3) # enters debugging mode at this point
Error in rnorm(x) : 参数不对

Enter a frame number, or 0 to exit   

1: f(2, -3)
2: #3: g(z)
3: #3: h(z)
4: #3: rnorm(x)

Selection: 4
Called from: rnorm(x)
Browse[1]> ls() 
[1] "mean" "n"    "sd"  
Browse[1]> mean
[1] 0
Browse[1]> print(n) 
[1] -1
Browse[1]> c

Enter a frame number, or 0 to exit   

1: f(2, -3)
2: #3: g(z)
3: #3: h(z)
4: #3: rnorm(x)

Selection: 3
Called from: h(z)
Browse[1]> ls()
[1] "x"
Browse[1]> x
[1] -1
Browse[1]> c

Enter a frame number, or 0 to exit   

1: f(2, -3)
2: #3: g(z)
3: #3: h(z)
4: #3: rnorm(x)

Selection: 2
Called from: g(z)
Browse[1]> ls() 
[1] "x" "z"
Browse[1]> x
[1] -1
Browse[1]> z
[1] -1
Browse[1]> c

Enter a frame number, or 0 to exit   

1: f(2, -3)
2: #3: g(z)
3: #3: h(z)
4: #3: rnorm(x)

Selection: 1
Called from: f(2, -3)
Browse[1]> ls() 
[1] "x" "y" "z"
Browse[1]> x
[1] 2
Browse[1]> y
[1] -3
Browse[1]> z
[1] -1
Browse[1]> print(f) 
function(x, y){
  z <- x + y
  g(z)
}
<bytecode: 0x000001933f1fbb98>
Browse[1]> c

Enter a frame number, or 0 to exit   

1: f(2, -3)
2: #3: g(z)
3: #3: h(z)
4: #3: rnorm(x)

Selection: 0
```

### 创建动态报告

```r
lm(weight ~ height,data=women) 

Call:
lm(formula = weight ~ height, data = women)

Coefficients:
(Intercept)       height  
     -87.52         3.45  
```

#### 模板生成报告

install.packages("rmarkdown") 

installed.packages("tinytex") 
tinytex::install_tinytex() 

install.packages("broom")

install.packages("kableExtra")

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/83.jpg)

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/84.jpg)

### 创建包

#### edatools包

if(!require(remotes)) install.packages("remotes)

remotes::install.packages("rkabacoff/edatools")

```r
> library(edatools) 
> help(contents) 
> df_info <- contents(happiness) 
> df_info 
Data frame: happiness 
460 observations and 11 variables
size: 0.1 Mb 
 pos   varname      type n_unique n_miss pct_miss
   1       ID* character      460      0    0.000
   2      Date      Date       12      0    0.000
   3       Sex    factor        2      0    0.000
   4      Race    factor        8     92    0.200
   5       Age   integer       73     46    0.100
   6 Education    factor       13     23    0.050
   7    Income   numeric      415     46    0.100
   8        IQ   numeric       45    322    0.700
   9       Zip character       10      0    0.000
  10  Children   integer       11      0    0.000
  11     Happy   ordered        6     18    0.039
> plot(df_info) 
```

![](file:///E:/R%E5%AD%A6%E4%B9%A0/123.png)

#### 创建包

##### 安装开发工具

##### 安装包项目

##### 创建包项目

![](file:///C:/Users/35308/OneDrive/%E5%9B%BE%E7%89%87/r%E8%AF%AD%E8%A8%80%E7%9B%B8%E5%86%8C/85.jpg)

> library(usethis) 
> use_vignette("edatools","Introductions to edatools")

介绍此包的功能和使用方法的简短文章

 library(edatools)

> install.packages(choose.files(),repos=NULL,type="source")
