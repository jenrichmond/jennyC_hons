library(likert)

data(pisaitems)

items24 <- pisaitems[,substr(names(pisaitems), 1,5) == 'ST24Q']

names(items24) <- c(
 			ST24Q01="I read only if I have to.",
 			ST24Q02="Reading is one of my favorite hobbies.",
 			ST24Q03="I like talking about books with other people.",
 			ST24Q04="I find it hard to finish books.",
 			ST24Q05="I feel happy if I receive a book as a present.",
 			ST24Q06="For me, reading is a waste of time.",
 			ST24Q07="I enjoy going to a bookstore or a library.",
 			ST24Q08="I read only to get information that I need.",
 			ST24Q09="I cannot sit still and read for more than a few minutes.",
 			ST24Q10="I like to express my opinions about books I have read.",
 			ST24Q11="I like to exchange books with my friends.")

names(items24)


l24 <- likert(items24)


summary(l24)


plot(l24)



plot(l24, ordered=FALSE, group.order=names(items24))


plot(l24, centered=FALSE, wrap=30)


plot(l24, center=1.5, wrap=30)
