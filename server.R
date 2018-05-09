# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
# 

library(shiny)

CreateDS = function () 
{
  
  f=jitter(sample(c(2,3),4, replace = TRUE))
  d=runif(4,0,1e-02)
  p=runif(4,0,pi)
  xt = function(t) exp(-d[1]*t)*sin(t*f[1]+p[1])+exp(-d[2]*t)*sin(t*f[2]+p[2])
  yt = function(t) exp(-d[3]*t)*sin(t*f[3]+p[3])+exp(-d[4]*t)*sin(t*f[4]+p[4])
  t=seq(1, 200, by=.0005)
  data.frame(t=t, x=xt(t), y=yt(t))}

server <- shinyServer(function(input, output) {
  dat<-eventReactive(input$rerun, { CreateDS() })
  output$HarmPlot<-renderPlot({
    plot(rnorm(1000),xlim =c(-2,2), ylim =c(-2,2), type="n")
    with(dat(), plot(x,y, type="l", xlim =c(-2,2), ylim =c(-2,2), xlab = "", ylab = "", xaxt='n', yaxt='n', col="gray10", bty="n"))
  }, height = 650, width = 650)
})