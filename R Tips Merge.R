# Create fake data frames

x1 <- cbind(rbind(1,2,3,4,5,4,3),
            rbind("a","b","c","another string", "e","Harambe","pineapple-belongs-on-pizza"),
            rbind(42, 62, 35,634,48,999,1000),
            rbind("a","b","c","a", "e","d","b"))
df1 <- as.data.frame(x1) 
colnames(df1) = c("var1","var2","var3","var4")


x2 <- cbind(rbind(2,3,4,6,4,3,6,3,5,3,3,4),
            rbind("data science","R>Py?","e","I heart rank choice voting","alpha", "bravo", "charlie","econ rules!", NA, NA, "f", "g"),
            rbind(0.3, .67, 1.2, -.3, .05, .1, .78,.2,-.3,.13,.06,.33),
            rbind("a","b","c","a", "b","c","a","b","c","a", "b","c"))
df2 <- as.data.frame(x2) 
colnames(df2) = c("var1","var5","var6", "var7")



######################################################################################################################
# Merge by single variable: var1
######################################################################################################################

# Merge like an Inner join
merged_df_inner <- merge(df1,df2, by = "var1")

# Merge like a Left Join
merged_df_left <- merge(df1,df2, by = "var1", all.x = T)

# Merge like a Right join - but who does that?
merged_df_right <- merge(df1,df2, by = "var1", all.y = T)

# Merge like an  Outer Join
merged_df_outer <- merge(df1,df2, by = "var1", all = T)

######################################################################################################################
# Merge by 2 variables: var1, and var4=var7
######################################################################################################################

double_merge <- merge(df1,df2, by.x = c("var1", "var4"), by.y = c("var1","var7"))

