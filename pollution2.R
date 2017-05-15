pollutantmean2<-function(directory, pollutant, id=1:332){
        setwd(directory)
        for(i in 1:length(id)){
                fname<-paste(formatC(id[i], width=3,flag=0),".csv", sep="")
                x<-read.csv(fname)
                if(i==1){
                        answervec<-as.vector(x[pollutant])
                }else{z<-as.vector(x[pollutant])
                        z2<-z[!is.na(z)]
                        answervec<-c(answervec, z)
                }
                                
        } 
        ##bad<-is.na(answervec)
        ##out<-mean(as.numeric(answervec[!bad]))
        ##out<-mean(answervec, na.rm=TRUE)
        ##answ<-answervec[!is.na(answervec)]
       answ<-apply(answ,function(x) mean(x),na.rm=TRUE)
}