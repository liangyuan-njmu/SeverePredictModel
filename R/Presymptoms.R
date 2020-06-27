# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

Presymptoms<-function(exp){
  data("boo")
  pre_bag <- predict(boo,exp)
  score <- pre_bag$votes[,2]
  ifelse(pre_bag$class==1,"non-severe","severe")->class2
  expmle_rs <- data.frame(regNO=exp[,1],pred_rs=class2)
  print(expmle_rs)
}
