corr <-function(directory, threshold=0){
        lijst<-complete(directory)
        ini<-0
        for(i in 1:nrow(lijst)) {
              if( lijst[i,2]>threshold){
                        if(ini==0){
                            gebruikvec<-c(lijst[i,1])
                            ini<-1
                        }else{
                        gebruikvec<-c(gebruikvec, c(lijst[i,1]))
                        }
                }
        }
        ini=0
        if(!exists("gebruikvec")){gebruikvec<-numeric()}
        for(i in 1:length(gebruikvec)){
                fname<-paste(formatC(gebruikvec[i], width=3,flag=0),".csv", sep="")
                x<-read.csv(fname)
                z<-na.omit(x)
                sulfatevect<-as.vector(z["sulfate"])
                nitratevect<-as.vector(z["nitrate"])
                
        
                if(ini==0){
                        answervec<-c(cor(sulfatevect, nitratevect))
                        ini<-1
                }else{
                        answervec<-c(answervec, cor(sulfatevect, nitratevect))
                }
        }
        
        answervec
}