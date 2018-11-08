#Creates a function that does
#Clustering through kmeans over vector of random 15x15 values between 0-1
clusterRandomValues <- function(randObsQuantity,clusters)
{
df <- data.frame(x=runif(randObsQuantity),y=runif(randObsQuantity))
kmO <- kmeans(x=df, centers=clusters, iter.max=10)
plot(df$x,df$y,pch=19,cex=2)
plot(df$x,df$y,col=kmO$cluster,pch=19,cex=2)
}
