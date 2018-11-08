blackfriday <- function(year){
  #instantiate dias with its length() equals to length(year) on input
  dias <- rep(Sys.Date(),length(year))
  #sets the day to the first day of the month
  day(dias) <- 1
  #sets the month to November
  month(dias) <- 11
  #sets the year according to input
  year(dias) <- year
  #sums 2 days only in the elements with weekdays past thursday (to find first thrursday of the month)
  dias[wday(dias)>5] <- dias[wday(dias)>5]+ddays(2)
  #starting from first friday of the month, sums 3 weeks
  dias <- dias+ddays(6-wday(dias)+21)
  return(dias)
}
