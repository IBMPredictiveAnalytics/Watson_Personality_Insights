#
#Developed by Dr. Olav Laudy
#
# debug for script development
#load("C:/Mdata.RData")
#load("C:/Mdatamodel.RData")

#Check packages
install_required_libs<-function(){
  for(i in 1:length(required_lib)){
    if(required_lib[i] %in% rownames(installed.packages()) == FALSE)
    {install.packages(required_lib[i],type="source")}
  }
}
required_lib =c("jsonlite", "httr")
install_required_libs()

library(httr)
library(jsonlite)

#make modelerDataModel
var1<-c(fieldName="Openness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var2<-c(fieldName="Conscientiousness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var3<-c(fieldName="Extraversion",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var4<-c(fieldName="Agreeableness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var5<-c(fieldName="Neuroticism",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var6<-c(fieldName="Adventurousness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var7<-c(fieldName="Artistic interests",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var8<-c(fieldName="Emotionality",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var9<-c(fieldName="Imagination",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var10<-c(fieldName="Intellect",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var11<-c(fieldName="Liberalism",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var12<-c(fieldName="Achievement striving",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var13<-c(fieldName="Cautiousness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var14<-c(fieldName="Dutifulness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var15<-c(fieldName="Orderliness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var16<-c(fieldName="Self-discipline",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var17<-c(fieldName="Self-efficacy",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var18<-c(fieldName="Activity level",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var19<-c(fieldName="Assertiveness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var20<-c(fieldName="Cheerfulness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var21<-c(fieldName="Excitement-seeking",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var22<-c(fieldName="Friendliness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var23<-c(fieldName="Gregariousness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var24<-c(fieldName="Altruism",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var25<-c(fieldName="Cooperation",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var26<-c(fieldName="Modesty",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var27<-c(fieldName="Morality",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var28<-c(fieldName="Sympathy",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var29<-c(fieldName="Trust",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var30<-c(fieldName="Anger",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var31<-c(fieldName="Anxiety",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var32<-c(fieldName="Depression",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var33<-c(fieldName="Immoderation",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var34<-c(fieldName="Self-consciousness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var35<-c(fieldName="Vulnerability",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var36<-c(fieldName="Challenge",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var37<-c(fieldName="Closeness",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var38<-c(fieldName="Curiosity",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var39<-c(fieldName="Excitement",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var40<-c(fieldName="Harmony",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var41<-c(fieldName="Ideal",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var42<-c(fieldName="Liberty",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var43<-c(fieldName="Love",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var44<-c(fieldName="Practicality",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var45<-c(fieldName="Self-expression",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var46<-c(fieldName="Stability",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var47<-c(fieldName="Structure",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var48<-c(fieldName="Conservation",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var49<-c(fieldName="Openness to change",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var50<-c(fieldName="Hedonism",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var51<-c(fieldName="Self-enhancement",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")
var52<-c(fieldName="Self-transcendence",fieldLabel="",fieldStorage="real",fieldMeasure="",fieldFormat="",fieldRole="")

modelerDataModel<-data.frame(modelerDataModel,var1,var2,var3,var4,var5,var6,var7,var8,var9,var10,
                             var11,var12,var13,var14,var15,var16,var17,var18,var19,var20,
                             var21,var22,var23,var24,var25,var26,var27,var28,var29,var30,
                             var31,var32,var33,var34,var35,var36,var37,var38,var39,var40,
                             var41,var42,var43,var44,var45,var46,var47,var48,var49,var50,var51,var52)
n_col<-ncol(modelerData)
modelerData$%%input%%<-as.character(modelerData$%%input%%) #no factors
modelerData<-cbind(modelerData,array(NA,dim=c(nrow(modelerData),52)))  # add placeholders

#build request variables
url<-"https://gateway.watsonplatform.net/personality-insights/api/v2/profile"
user<-"%%user%%"
pass<-"%%pass%%"
auth<-authenticate(user,pass,type="basic")
cfg=c(auth,add_headers("Encoding"="Encoding.UTF8", "Accept" = "application/json" , "Content-Type" = "application/json"))

#function to connect to Watson and get the results back in a vector 
get_rating<-function(text){
  text<-paste('{"contentItems": [{"userid":"dummy","id":"someid","sourceid":"freetext","contenttype":"text/plain","language":"en","content":"',text,'"}]}',sep="")  
  x<-POST(url = url, body = text,config=cfg)
  res<-fromJSON(content(x,"text"))
  
  if (length(res)==2) {l2<-rep(NA,52)} else { 
    res<-res$tree$children
    l2<-NULL
    for (i in 1:length(res)) {
      a<-res$children[[i]]
      for (j in 1:length(a$children)) { 
        b<-a$children[[j]]
        l2<-c(l2,b$percentage)
        for (k in 1:length(b$children)) { 
          c<-b$children[[k]]
          l2<-c(l2,c$percentage)}}}}
  return(l2) 
}

for (i in 1:nrow(modelerData)) modelerData[i,(n_col+1):(n_col+52)]<-get_rating(modelerData[i,"%%input%%"])


