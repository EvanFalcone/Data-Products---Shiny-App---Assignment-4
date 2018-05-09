# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/

library(shiny)

ui <- shinyUI(fluidPage(
  titlePanel("The Harmonograph"),
  sidebarLayout(
    sidebarPanel(
      #helpText(),
      
      # # adding the new div tag to the sidebar            
      # tags$div(class="header", checked=NA,
      #          tags$p("A harmonograph is a mechanical apparatus that employs pendulums to create a 
      #                 geometric image. The drawings created typically are Lissajous curves, or 
      #                 related drawings of greater complexity. The devices, which began to appear 
      #                 in the mid-19th century and peaked in popularity in the 1890s, cannot be 
      #                 conclusively attributed to a single person, although Hugh Blackburn, a professor 
      #                 of mathematics at the University of Glasgow, is commonly believed to be the official 
      #                 inventor. A simple, so-called \"lateral\" harmonograph uses two pendulums to control the movement 
      #                  of a pen relative to a drawing surface. One pendulum moves the pen back and forth along 
      #                  one axis and the other pendulum moves the drawing surface back and forth along a 
      #                  perpendicular axis. By varying the frequency and phase of the pendulums relative to 
      #                  one another, different patterns are created. Even a simple harmonograph as described 
      #                  can create ellipses, spirals, figure eights and other Lissajous figures (Source: Wikipedia)")),
      # tags$div(class="header", checked=NA,
      #          HTML("<p>Click <a href=\"http://paulbourke.net/geometry/harmonograph/harmonograph3.html\">here</a> to see an image of a real harmonograph</p>")
      # ),
      actionButton('rerun','Launch the harmonograph!')
    ),
    mainPanel(
      plotOutput("HarmPlot")
    )
  )
))