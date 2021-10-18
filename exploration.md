# Exploratory Data Analysis

## Steps
1. Search datasets from Kaggle
2. Explore the dataset from the original dataset
3. Download Library and dataset
4. Exploratory Data Analysis
5. Cleaning Dataset
6. Define a question


## Step 1 : Search datasets from Kaggle

`เนื่องจากสมาชิกในกลุ่มมีความสนใจเกี่ยวกับภาพยนตร์เป็นอย่างยิ่ง จึงอยากทราบข้อมูลเชิงลึก บลา ๆ`

Dataset from : https://www.kaggle.com/narmelan/top-ten-blockbusters-20191977

## Step 2 : Explore the dataset from the original dataset
 The Worldwide Blockbusters 2019-1977 dataset provides information on the top 10 highest grossing films worldwide between the years 2019 and 1977. [Cilck here](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/Blockbusters_2019-1977.csv) for more information about this dataset.
 
 
#### ใน dataset นี้ ประกอบไปด้วย 

`column ใน dataset เรามีไรบ้าง`

## Step 3 : Loading library and dataset
```
# Install packages
   install.packages("dplyr")
   install.packages("stringr")
   install.packages("tidyr")
   install.packages("assertive")
   install.packages("readr")

# Listing packages
   library(dplyr)
   library(stringr)
   library(tidyr)
   library(assertive)
   library(readr)

# Import the dataset
blockbusters <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/main/Blockbusters_2019-1977.csv")

# View dataset
View(blockbusters)

```

## Step 4 : Exploratory Data Analysis
`อธิบายข้อมูลเรา มีไรบ้าง บลา ๆ`

  
     
## Step 5 : Cleaning Dataset
```
# Cleaning Data
## Replace the NA values to NULL
   blockbusters$mpaa_rating <- replace(blockbusters$mpaa_rating, is.na(blockbusters$mpaa_rating), 'NULL')
   blockbusters$genre_2 <- replace(blockbusters$genre_2, is.na(blockbusters$genre_2), 'NULL')
   blockbusters$genre_3 <- replace(blockbusters$genre_3, is.na(blockbusters$genre_3), 'NULL')

## View dataset
   View(blockbusters) 

```

## Step 6 : Define a question
1. หนังเรื่องไหนทำรายได้มากที่สุด (รายได้ - ต้นทุน)
2. ค่ายไหนทำรายได้ได้มากที่สุดของปีนั้น ๆ
3. ในปี 2019 joker อยู่ลำดับที่เท่าไหร่ แล้วทำรายได่เท่าไหร่
4. หนังเรื่องไหนมี budget สูงที่สุด
5. แนวหนังยอดฮิต
6. หนังอันดับ 1 ของทุกปี มีรายได้รวมเท่าไหร่
7. หนังที่มีความยาวมากที่สุดคือเรื่องอะไรแล้วมีความยาวเท่าไหร่
8. ค่ายไหนติดอันดับบ่อยที่สุด
9. หนังเรท R มีกี่เรื่อง
10. mpaa_rating ยอดฮิตในแต่ละปี
11. imdb_rating ที่สูงที่สุดคือเรื่องอะไร แล้วเรทเท่าไหร่
12. หนังเรื่องไหนฉายแค่ในประเทศเท่านั้น (worldwide = domestic)
13. imdb_rating ที่สูงสุดในแต่ละปี คือเท่าไหร่ และเรื่องอะไรบ้าง

### 1.

#### code 
```
blockbusters %>%
    filter(film_profit == max(film_profit))%>%
    select(film_title,film_profit)
```
#### result
```
     film_title       film_profit
        <chr>            <dbl>
       1 Avatar        2507336793
```

#### sum up
```
หนังที่ทำรายได้มากที่สุดคือ Avatar มีรายได้ถึง 2507336793
```
-----------------------------------------------------------------------------------------------------------------------

### 2.

#### code
```
blockbusters %>% select(domestic_distributor, worldwide_gross) %>% 
    filter(worldwide_gross == max(worldwide_gross))
```
#### result
```
 domestic_distributor         worldwide_gross
        <chr>                      <dbl>
     1 Walt Disney               2797800564
```

#### sum up
```
ค่ายที่ทำรายได้มากที่สุดของปีคือ Walt Disney มีรายได้ถึง 2797800564
```
-----------------------------------------------------------------------------------------------------------------------
### 3.

#### code
```
blockbusters %>%
    select(release_year,film_title,rank_in_year, film_profit) %>% 
    filter(blockbusters$film_title=='Joker'
```
#### result
```
release_year   film_title   rank_in_year   film_profit
     <dbl>       <chr>         <dbl>          <dbl>
       1       2019 Joker        7         1016030470
```

#### sum up
```
ในปี 2019 Joker อยู่ลำดับที่ 7 มีรายได้ 1016030470
```
-----------------------------------------------------------------------------------------------------------------------
### 4.

#### code
```
blockbusters %>%
    filter(film_budget == max(film_budget)) %>%
    select(film_title)
```
#### result
```
    film_title       
      <chr>            
1 Avengers: Endgame
```

#### sum up
```
แนวหนังที่มี Budget เยอะที่สุดตือ Avengers: Endgame
```
-----------------------------------------------------------------------------------------------------------------------
### 5.

#### code
```
blockbusters %>% count(genre_1)
```
#### result
```
        genre_1          n
        <chr>         <int>
        1 Action       194
        2 Adventure     46
        3 Animation     55
        4 Biography      7
        5 Comedy        69
        6 Crime         11
        7 Drama         37
        8 Family         3
        9 Horror         5
        10 Musical       1
        11 Mystery       1
        12 Sci-Fi        1
```

#### sum up
```
แนวหนังยอดฮิตคือแนวหนัง Action
```
-----------------------------------------------------------------------------------------------------------------------
### 6.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
### 7.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
## 8.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
## 9.

#### code
```
blockbusters %>%
    count(mpaa_rating) %>%
    filter(mpaa_rating == "R")
```
#### result
```
        mpaa_rating     n
          <chr>       <int>
           1 R          95
```

#### sum up
```
หนังเรท R มีทั้งหมด 95 เรื่อง
```
-----------------------------------------------------------------------------------------------------------------------

## 10.

#### code
```
blockbusters %>% group_by(release_year) %>% count(mpaa_rating)
```
#### result
```
    release_year   mpaa_rating            n
       <dbl>          <chr>             <int>
        1            1977 PG              8
        2            1977 R               2
        3            1978 PG              6
        4            1978 PG-13           1
        5            1978 R               3
        6            1979 G               1
        7            1979 PG              4
        8            1979 R               5
        9            1980 PG              6
        10           1980 R               4
```

#### sum up
```
#mpaa_rating ยอดฮิตในแต่ละปี
release_year   mpaa_rating            n
       <dbl>          <chr>             <int>
        1            1977 PG              8
        2            1977 R               2
        3            1978 PG              6
        4            1978 PG-13           1
        5            1978 R               3
        6            1979 G               1
        7            1979 PG              4
        8            1979 R               5
        9            1980 PG              6
        10           1980 R               4
```
-----------------------------------------------------------------------------------------------------------------------
