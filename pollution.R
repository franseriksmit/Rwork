pollutantmean<-function(directory, pollutant, id=1:332){
        setwd(directory)
        for(i in 1:length(id)){
                fname<-paste(formatC(id[i], width=3,flag=0),".csv", sep="")
                if(i==1){
                        y<-read.csv(fname)}else{
                        x<-read.csv(fname)
                        y<-data.frame(rbind(as.matrix(y), as.matrix(x)))
                }
       
        } 
        vect<-as.vector(y[pollutant])
        bad<-is.na(vect)
        out<-mean(as.numeric(vect[!bad]))
       out
}