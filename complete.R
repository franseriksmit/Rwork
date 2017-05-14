complete<-function(directory, id=1:332){
        setwd(directory)
        
        for(i in 1:length(id)){
                fname<-paste(formatC(id[i], width=3,flag=0),".csv", sep="")
                x<-read.csv(fname)
                z<-nrow(na.omit(x))
                if(i==1){
                        answerframe<-data.frame("id"=id, "nobs"=z)        
                }else{
                        answerframe$id[i]=id[i]
                        answerframe$nobs[i]=z
                }
        } 
        answerframe
}