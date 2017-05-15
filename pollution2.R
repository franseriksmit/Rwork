pollutantmean2<-function(directory, pollutant, id=1:332){
        setwd(directory)
        for(i in 1:length(id)){
                fname<-paste(formatC(id[i], width=3,flag=0),".csv", sep="")
                x<-read.csv(fname)
                if(i==1){
                        answervec<-as.vector(x[pollutant])
                        answervec2<-answervec[!is.na(answervec)]
                }else{z<-as.vector(x[pollutant])
                        z2<-z[!is.na(z)]
                        answervec2<-c(answervec2, z2)
                }
                                
        } 
        mean(answervec2)
}