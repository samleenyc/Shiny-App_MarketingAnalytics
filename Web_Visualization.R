#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

##########################################################################################################

# Define UI for application

#########################################################################################################
ui <- fluidPage(
  #######################################################################################################
  fluidRow( # 1st Row 
    column(3, #Left Column
           selectInput('old_smartphone', 
                       label = 'Choose a smartphone model',
                       choices = c('buyphone','buyphone_lunar', 'buyphone_solar', 'buyphone_martian',
                                   #'buyphone_2_martian',
                                   'buyphone_3_solar', 'buyphone_3_martian', 
                                   'buyphone_3_galactic', 'buyphone_4_martian', 'buyphone_4_galactic'),
                       selected = "buyphone_3_martian")),
    
    column(6, # Center Column / Output
           plotOutput('graph')),
    
    column(3,#Right Column
           selectInput('new_smartphone', 
                       label = 'Choose a smartphone model',
                       choices = c('buyphone','buyphone_lunar', 'buyphone_solar', 'buyphone_martian',
                                   'buyphone_2_martian','buyphone_3_solar', 'buyphone_3_martian', 
                                   'buyphone_3_galactic','buyphone_4_martian', 'buyphone_4_galactic'),
                       selected = "buyphone_4_galactic"))),
  hr(),
  ######################################################################################################
  fluidRow( # 2nd Row
    column(3, #Left Column
           numericInput('old_price', label = h3("Price of model"), value = 499)),
    
    column(5, align = 'center', # Table output
           tableOutput('table')),
    
    column(3, offset = 1, #Right Column 
           numericInput('new_price', label = h3("Price of model"), value = 599))),
  hr(),
  ######################################################################################################
  fluidRow( #3th Row
    #3th Row /Left Column
    column(3, h3("Purchase Media Spend"),
           sliderInput("old_purchase_w1", label = "1st Period Purchase Media Spend",
                       min = 0, max = 500000, value = 100000, step = 500)),
    
    #3th Row / Right Column
    column(3, offset = 6, h3("Purchase Media Spend"),
           sliderInput("new_purchase_w1", label = "1st Period Purchase Media Spend",
                       min = 0, max = 500000, value = 125000, step = 500))),
  ######################################################################################################
  fluidRow(# 4th Row
    column(3,#Left Column
           sliderInput("old_purchase_w2", label = "2nd Period Purchase Media Spend",
                       min = 0, max = 500000, value = 100000, step = 500)),
    column(3, offset = 6, #Right Column
           sliderInput("new_purchase_w2", label = "2nd Period Purchase Media Spend",
                       min = 0, max = 500000, value = 150000, step = 500))),
  #####################################################################################################
  fluidRow(# 5th Row Setting
    column(3, #Left Column
           sliderInput("old_purchase_w3", label = "3rd Period Purchase Media Spend",
                       min = 0, max = 500000, value = 135000, step = 500)),
    column(3, offset = 6, #Right Column
           sliderInput("new_purchase_w3", label = "3rd Period Purchase Media Spend",
                       min = 0, max = 500000, value = 135000, step = 500))),
  ####################################################################################################
  fluidRow(# 6th Row
    column(3, #Left Column
           sliderInput("old_purchase_w4", label = "4th Period Purchase Media Spend",
                       min = 0, max = 500000, value = 250000, step = 500)),
    column(3, offset = 6, #Right Column
           sliderInput("new_purchase_w4", label = "4th Period Purchase Media Spend",
                       min = 0, max = 500000, value = 200000, step = 500))),
  hr(),
  ####################################################################################################
  fluidRow( # 7rd Row
    column(3, h3("Awareness Media Spend"), #Left Column
           sliderInput("old_awareness_w1", label = "1st Period Awareness Media Spend",
                       min = 0, max = 200000,value = 50000,step = 500)),
    
    column(3, offset = 6, h3("Awareness Media Spend"), # Right Column
           sliderInput("new_awareness_w1", label = "1st Period Awareness Media Spend",
                       min = 0,max = 200000,value = 50000, step = 500))),
  ####################################################################################################
  fluidRow( # 8th Row
    column(3, #Left Column
           sliderInput("old_awareness_w2", label = "2st Period Awareness Media Spend",
                       min = 0,max = 200000, value = 40000, step = 500)),
    
    column(3, offset = 6, # Right Column
           sliderInput("new_awareness_w2", label = "2nd Period Purchase Media Spend",
                       min = 0, max = 500000, value = 150000, step = 500))),
  ######################################################################################################
  fluidRow( # 9th Row
    column(3, #Left Column
           sliderInput("old_awareness_w3", label = "3rd Period Awareness Media Spend",
                       min = 0, max = 200000, value = 60000, step = 500)),
    
    column(3, offset = 6, #Right Column
           sliderInput("new_awareness_w3", label = "3rd Period Purchase Media Spend",
                       min = 0, max = 500000, value = 50000, step = 500))),
  ######################################################################################################
  fluidRow(#10th Row
    column(3, #Left Column
           sliderInput("old_awareness_w4", label = "4th Period Awareness Media Spend",
                       min = 0, max = 200000, value = 70000, step = 500)),
    
    column(3, offset = 6, #Right Column
           sliderInput("new_awareness_w4", label = "4th Period Purchase Media Spend",
                       min = 0, max = 500000, value = 200000, step = 500))),
  hr(),
  #####################################################################################################
  fluidRow( #11th Row
    column(3, h3("Discount"), #LEft COlumn
           sliderInput('old_discount_w1', label = '1st Period Discount Rate',
                       min = -50, max = 0, value = -17)),
    
    column(3, offset = 6, h3('Discount'), #Right Column
           sliderInput('new_discount_w1', label = '1st Period Discount Rate',
                       min = -50, max = 0, value = -17))),
  #####################################################################################################
  fluidRow( #12th Row
    column(3, #Left Column 
           sliderInput('old_discount_w2', label = '2nd Period Discount Rate',
                       min = -50,max = 0,value = -17)),
    column(3, offset = 6, #Right Column
           sliderInput('new_discount_w2', label = '2nd Period Discount Rate',
                       min = -50, max = 0, value = -17))),
  #####################################################################################################
  fluidRow( #13th Row
    column(3, #Left Column
           sliderInput('old_discount_w3', label = '3rd Period Discount Rate',
                       min = -50, max = 0, value = -17)), 
    column(3, offset = 6, #Right Column
           sliderInput('new_discount_w3', label = '3rd Period Discount Rate',
                       min = -50, max = 0, value = -17))),
  #####################################################################################################
  fluidRow( #14th Row
    column(3, #Left Column
           sliderInput('old_discount_w4', label = '4th Period Discount Rate',
                       min = -50, max = 0, value = -17)),
    column(3, offset = 6, #Right Column
           sliderInput('new_discount_w4', label = '4th Period Discount Rate',
                       min = -50, max = 0, value = -17)))
)
########################################################################################################

# Define server logic

########################################################################################################
server <- function(input, output) {
  
  price = reactive({input$old_price})
  old_awareness1 = reactive({input$old_awareness_w1})
  old_awareness2 = reactive({input$old_awareness_w2})
  old_awareness3 = reactive({input$old_awareness_w3})
  old_awareness4 = reactive({input$old_awareness_w4})
  old_purchase1 = reactive({input$old_purchase_w1})
  old_purchase2 = reactive({input$old_purchase_w2})
  old_purchase3 = reactive({input$old_purchase_w3})
  old_purchase4 = reactive({input$old_purchase_w4})
  old_discount1 = reactive({input$old_discount_w1})
  old_discount2 = reactive({input$old_discount_w2})
  old_discount3 = reactive({input$old_discount_w3})
  old_discount4 = reactive({input$old_discount_w4})
  
  new_price = reactive({input$new_price})
  
  new_awareness1 = reactive({input$new_awareness_w1})
  new_awareness2 = reactive({input$new_awareness_w2})
  new_awareness3 = reactive({input$new_awareness_w3})
  new_awareness4 = reactive({input$new_awareness_w4})
  
  new_purchase1 = reactive({input$new_purchase_w1})
  new_purchase2 = reactive({input$new_purchase_w2})
  new_purchase3 = reactive({input$new_purchase_w3})
  new_purchase4 = reactive({input$new_purchase_w4})
  
  new_discount1 = reactive({input$new_discount_w1})
  new_discount2 = reactive({input$new_discount_w2})
  new_discount3 = reactive({input$new_discount_w3})
  new_discount4 = reactive({input$new_discount_w4})
  #######################################################################################################  
  # Function for total estimated revenue
  ####################################################################################################### 
  output$graph <- renderPlot({
    ##################################################
    #Old Model(Sum of values in left column)
    #################################################
    if (input$old_smartphone == "buyphone_3_martian"){
      old_revenue1 = (77104.26 + 89.53*price()*(1-old_discount1()) - 4.94*old_awareness1() + 19.23*old_purchase1())*1000
      old_revenue2 = (77104.26 + 89.53*price()*(1-old_discount2()) - 4.94*old_awareness2() + 19.23*old_purchase2())*1000
      old_revenue3 = (77104.26 + 89.53*price()*(1-old_discount3()) - 4.94*old_awareness3() + 19.23*old_purchase3())*1000
      old_revenue4 = (77104.26 + 89.53*price()*(1-old_discount4()) - 4.94*old_awareness4() + 19.23*old_purchase4())*1000
    } else if (input$old_smartphone == "buyphone") {
      old_revenue1 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount1())-1.415e+00*old_awareness1()+6.956e+00*old_purchase1())*1000
      old_revenue2 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount2())-1.415e+00*old_awareness2()+6.956e+00*old_purchase2())*1000
      old_revenue3 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount3())-1.415e+00*old_awareness3()+6.956e+00*old_purchase3())*1000
      old_revenue4 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount4())-1.415e+00*old_awareness4()+6.956e+00*old_purchase4())*1000} else if (input$old_smartphone == "buyphone_lunar"){
        old_revenue1 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount1())-4.180e+00*old_awareness1()+1.358e+01*old_purchase1())*1000
        old_revenue2 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount2())-4.180e+00*old_awareness2()+1.358e+01*old_purchase2())*1000
        old_revenue3 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount3())-4.180e+00*old_awareness3()+1.358e+01*old_purchase3())*1000
        old_revenue4 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount4())-4.180e+00*old_awareness4()+1.358e+01*old_purchase4())*1000
      } else if (input$old_smartphone == "buyphone_solar"){
        old_revenue1 = (-75067.17 + 99.01*price()*(1-old_discount1())-8.98*old_awareness1()+20.05*old_purchase1())*1000
        old_revenue2 = (-75067.17 + 99.01*price()*(1-old_discount2())-8.98*old_awareness2()+20.05*old_purchase2())*1000
        old_revenue3 = (-75067.17 + 99.01*price()*(1-old_discount3())-8.98*old_awareness3()+20.05*old_purchase3())*1000
        old_revenue4 = (-75067.17 + 99.01*price()*(1-old_discount4())-8.98*old_awareness4()+20.05*old_purchase4())*1000} else if (input$old_smartphone == 'buyphone_martian') {
          old_revenue1 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount1())+6.755e+00*old_awareness1()+1.559e+01*old_purchase1())*1000
          old_revenue2 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount2())+6.755e+00*old_awareness2()+1.559e+01*old_purchase2())*1000
          old_revenue3 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount3())+6.755e+00*old_awareness3()+1.559e+01*old_purchase3())*1000
          old_revenue4 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount4())+6.755e+00*old_awareness4()+1.559e+01*old_purchase4())*1000
        } else if (input$old_smartphone == 'buyphone_2_martian') {
          old_revenue1 = (342219.32-589.38*price()*(1-old_discount1())-7.63*old_awareness1()+18.78*old_purchase1())*1000
          old_revenue2 = (342219.32-589.38*price()*(1-old_discount2())-7.63*old_awareness2()+18.78*old_purchase2())*1000
          old_revenue3 = (342219.32-589.38*price()*(1-old_discount3())-7.63*old_awareness3()+18.78*old_purchase3())*1000
          old_revenue4 = (342219.32-589.38*price()*(1-old_discount4())-7.63*old_awareness4()+18.78*old_purchase4())*1000} else if (input$old_smartphone == 'buyphone_3_solar') {
            old_revenue1 = (-2.267e+04-1.131e+02*price()*(1-old_discount1())-7.586e-01*old_awareness1()+1.911e+01*old_purchase1())*1000
            old_revenue2 = (-2.267e+04-1.131e+02*price()*(1-old_discount2())-7.586e-01*old_awareness2()+1.911e+01*old_purchase2())*1000
            old_revenue3 = (-2.267e+04-1.131e+02*price()*(1-old_discount3())-7.586e-01*old_awareness3()+1.911e+01*old_purchase3())*1000
            old_revenue4 = (-2.267e+04-1.131e+02*price()*(1-old_discount4())-7.586e-01*old_awareness4()+1.911e+01*old_purchase4())*1000
          } else if (input$old_smartphone == "buyphone_3_galactic") {
            old_revenue1 = (22772.38-0.16*price()*(1-old_discount1())-5.14*old_awareness1()+18.72*old_purchase1())*1000
            old_revenue2 = (22772.38-0.16*price()*(1-old_discount2())-5.14*old_awareness2()+18.72*old_purchase2())*1000
            old_revenue3 = (22772.38-0.16*price()*(1-old_discount3())-5.14*old_awareness3()+18.72*old_purchase3())*1000
            old_revenue4 = (22772.38-0.16*price()*(1-old_discount4())-5.14*old_awareness4()+18.72*old_purchase4())*1000} else if (input$old_smartphone == 'buyphone_4_martian') {
              old_revenue1 = (-41381.18+718.88*price()*(1-old_discount1())+2.57*old_awareness1()+7.89*old_purchase1()*1000)
              old_revenue2 = (-41381.18+718.88*price()*(1-old_discount2())+2.57*old_awareness2()+7.89*old_purchase2()*1000)
              old_revenue3 = (-41381.18+718.88*price()*(1-old_discount3())+2.57*old_awareness3()+7.89*old_purchase3()*1000)      
              old_revenue4 = (-41381.18+718.88*price()*(1-old_discount4())+2.57*old_awareness4()+7.89*old_purchase4()*1000)} else if (input$old_smartphone == 'buyphone_4_galactic') {
                old_revenue1 = (7.990e+03+2.326e+02*price()*(1-old_discount1())+3.288e-01*old_awareness1()+8.107e+00*old_purchase1())*1000
                old_revenue2 = (7.990e+03+2.326e+02*price()*(1-old_discount2())+3.288e-01*old_awareness2()+8.107e+00*old_purchase2())*1000
                old_revenue3 = (7.990e+03+2.326e+02*price()*(1-old_discount3())+3.288e-01*old_awareness3()+8.107e+00*old_purchase3())*1000
                old_revenue4 = (7.990e+03+2.326e+02*price()*(1-old_discount4())+3.288e-01*old_awareness4()+8.107e+00*old_purchase4())*1000}
    ##################################################################################################################    
    # New Model (Sum of values in Right Column)
    ##################################################################################################################    
    if (input$new_smartphone == "buyphone_3_martian"){
      new_revenue1 = (77104.26 + 89.53*new_price()*(1-new_discount1()) - 4.94*new_awareness1() + 19.23*new_purchase1())*1000
      new_revenue2 = (77104.26 + 89.53*new_price()*(1-new_discount2()) - 4.94*new_awareness2() + 19.23*new_purchase2())*1000
      new_revenue3 = (77104.26 + 89.53*new_price()*(1-new_discount3()) - 4.94*new_awareness3() + 19.23*new_purchase3())*1000
      new_revenue4 = (77104.26 + 89.53*new_price()*(1-new_discount4()) - 4.94*new_awareness4() + 19.23*new_purchase4())*1000
    } else if (input$new_smartphone == "buyphone") {
      new_revenue1 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount1())-1.415e+00*new_awareness1()+6.956e+00*new_purchase1())*1000
      new_revenue2 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount2())-1.415e+00*new_awareness2()+6.956e+00*new_purchase2())*1000
      new_revenue3 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount3())-1.415e+00*new_awareness3()+6.956e+00*new_purchase3())*1000
      new_revenue4 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount4())-1.415e+00*new_awareness4()+6.956e+00*new_purchase4())*1000} else if (input$new_smartphone == "buyphone_lunar"){
        new_revenue1 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount1())-4.180e+00*new_awareness1()+1.358e+01*new_purchase1())*1000
        new_revenue2 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount2())-4.180e+00*new_awareness2()+1.358e+01*new_purchase2())*1000
        new_revenue3 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount3())-4.180e+00*new_awareness3()+1.358e+01*new_purchase3())*1000
        new_revenue4 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount4())-4.180e+00*new_awareness4()+1.358e+01*new_purchase4())*1000
      } else if (input$new_smartphone == "buyphone_solar"){
        new_revenue1 = (-75067.17 + 99.01*new_price()*(1-new_discount1())-8.98*new_awareness1()+20.05*new_purchase1())*1000
        new_revenue2 = (-75067.17 + 99.01*new_price()*(1-new_discount2())-8.98*new_awareness2()+20.05*new_purchase2())*1000
        new_revenue3 = (-75067.17 + 99.01*new_price()*(1-new_discount3())-8.98*new_awareness3()+20.05*new_purchase3())*1000
        new_revenue4 = (-75067.17 + 99.01*new_price()*(1-new_discount4())-8.98*new_awareness4()+20.05*new_purchase4())*1000} else if (input$new_smartphone == 'buyphone_martian') {
          new_revenue1 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount1())+6.755e+00*new_awareness1()+1.559e+01*new_purchase1())*1000
          new_revenue2 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount2())+6.755e+00*new_awareness2()+1.559e+01*new_purchase2())*1000
          new_revenue3 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount3())+6.755e+00*new_awareness3()+1.559e+01*new_purchase3())*1000
          new_revenue4 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount4())+6.755e+00*new_awareness4()+1.559e+01*new_purchase4())*1000
        } else if (input$new_smartphone == 'buyphone_2_martian') {
          new_revenue1 = (342219.32-589.38*new_price()*(1-new_discount1())-7.63*new_awareness1()+18.78*new_purchase1())*1000
          new_revenue2 = (342219.32-589.38*new_price()*(1-new_discount2())-7.63*new_awareness2()+18.78*new_purchase2())*1000
          new_revenue3 = (342219.32-589.38*new_price()*(1-new_discount3())-7.63*new_awareness3()+18.78*new_purchase3())*1000
          new_revenue4 = (342219.32-589.38*new_price()*(1-new_discount4())-7.63*new_awareness4()+18.78*new_purchase4())*1000} else if (input$new_smartphone == 'buyphone_3_solar') {
            new_revenue1 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount1())-7.586e-01*new_awareness1()+1.911e+01*new_purchase1())*1000
            new_revenue2 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount2())-7.586e-01*new_awareness2()+1.911e+01*new_purchase2())*1000
            new_revenue3 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount3())-7.586e-01*new_awareness3()+1.911e+01*new_purchase3())*1000
            new_revenue4 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount4())-7.586e-01*new_awareness4()+1.911e+01*new_purchase4())*1000
          } else if (input$new_smartphone == "buyphone_3_galactic") {
            new_revenue1 = (22772.38-0.16*new_price()*(1-new_discount1())-5.14*new_awareness1()+18.72*new_purchase1())*1000
            new_revenue2 = (22772.38-0.16*new_price()*(1-new_discount2())-5.14*new_awareness2()+18.72*new_purchase2())*1000
            new_revenue3 = (22772.38-0.16*new_price()*(1-new_discount3())-5.14*new_awareness3()+18.72*new_purchase3())*1000
            new_revenue4 = (22772.38-0.16*new_price()*(1-new_discount4())-5.14*new_awareness4()+18.72*new_purchase4())*1000} else if (input$new_smartphone == 'buyphone_4_martian') {
              new_revenue1 = (-41381.18+718.88*new_price()*(1-new_discount1())+2.57*new_awareness1()+7.89*new_purchase1()*1000)
              new_revenue2 = (-41381.18+718.88*new_price()*(1-new_discount2())+2.57*new_awareness2()+7.89*new_purchase2()*1000)
              new_revenue3 = (-41381.18+718.88*new_price()*(1-new_discount3())+2.57*new_awareness3()+7.89*new_purchase3()*1000)      
              new_revenue4 = (-41381.18+718.88*new_price()*(1-new_discount4())+2.57*new_awareness4()+7.89*new_purchase4()*1000)} else if (input$new_smartphone == 'buyphone_4_galactic') {
                new_revenue1 = (7.990e+03+2.326e+02*new_price()*(1-new_discount1())+3.288e-01*new_awareness1()+8.107e+00*new_purchase1())*1000
                new_revenue2 = (7.990e+03+2.326e+02*new_price()*(1-new_discount2())+3.288e-01*new_awareness2()+8.107e+00*new_purchase2())*1000
                new_revenue3 = (7.990e+03+2.326e+02*new_price()*(1-new_discount3())+3.288e-01*new_awareness3()+8.107e+00*new_purchase3())*1000
                new_revenue4 = (7.990e+03+2.326e+02*new_price()*(1-new_discount4())+3.288e-01*new_awareness4()+8.107e+00*new_purchase4())*1000}
    
    ###########################################################################################################
    #Graph
    ###########################################################################################################
    
    # Create Old Smartphone DataFrame
    period = c('period 1', 'period 2', 'period 3', 'period 4')
    revenue = c(old_revenue1, old_revenue2, old_revenue3, old_revenue4)
    model = input$old_smartphone
    old_df = data.frame(period, revenue, model)
    
    # Create New Smartphone DataFrame
    revenue = c(new_revenue1, new_revenue2, new_revenue3, new_revenue4)
    model = input$new_smartphone
    new_df = data.frame(period, revenue, model)
    
    #Merge Old and New smartphone DataFrames
    total_df = rbind(old_df, new_df)
    
    #options(scipen=5)
    
    library(ggplot2)
    ggplot(data = total_df, aes(fill = model, x = period, y = revenue))+
      geom_bar(position = 'dodge', stat = 'identity')+
      xlab('Period')+
      ylab("Expected Total Revenue($)")+
      ggtitle("Sales Prediction Graph")+
      theme_bw()+
      theme(plot.title = element_text(hjust=0.5))
  }
  )
#################################################################################################
  #Cannibalization Table
#################################################################################################
  
  output$table <- renderTable({
    ##################################################
    #Old Model(Sum of values in left column)
    #################################################
    if (input$old_smartphone == "buyphone_3_martian"){
      old_revenue1 = (77104.26 + 89.53*price()*(1-old_discount1()) - 4.94*old_awareness1() + 19.23*old_purchase1())*1000
      old_revenue2 = (77104.26 + 89.53*price()*(1-old_discount2()) - 4.94*old_awareness2() + 19.23*old_purchase2())*1000
      old_revenue3 = (77104.26 + 89.53*price()*(1-old_discount3()) - 4.94*old_awareness3() + 19.23*old_purchase3())*1000
      old_revenue4 = (77104.26 + 89.53*price()*(1-old_discount4()) - 4.94*old_awareness4() + 19.23*old_purchase4())*1000
    } else if (input$old_smartphone == "buyphone") {
      old_revenue1 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount1())-1.415e+00*old_awareness1()+6.956e+00*old_purchase1())*1000
      old_revenue2 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount2())-1.415e+00*old_awareness2()+6.956e+00*old_purchase2())*1000
      old_revenue3 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount3())-1.415e+00*old_awareness3()+6.956e+00*old_purchase3())*1000
      old_revenue4 = (-7.531e+04 + 4.459e+02*price()*(1-old_discount4())-1.415e+00*old_awareness4()+6.956e+00*old_purchase4())*1000} else if (input$old_smartphone == "buyphone_lunar"){
        old_revenue1 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount1())-4.180e+00*old_awareness1()+1.358e+01*old_purchase1())*1000
        old_revenue2 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount2())-4.180e+00*old_awareness2()+1.358e+01*old_purchase2())*1000
        old_revenue3 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount3())-4.180e+00*old_awareness3()+1.358e+01*old_purchase3())*1000
        old_revenue4 = (-3.037e+05 + 1.237e+03*price()*(1-old_discount4())-4.180e+00*old_awareness4()+1.358e+01*old_purchase4())*1000
      } else if (input$old_smartphone == "buyphone_solar"){
        old_revenue1 = (-75067.17 + 99.01*price()*(1-old_discount1())-8.98*old_awareness1()+20.05*old_purchase1())*1000
        old_revenue2 = (-75067.17 + 99.01*price()*(1-old_discount2())-8.98*old_awareness2()+20.05*old_purchase2())*1000
        old_revenue3 = (-75067.17 + 99.01*price()*(1-old_discount3())-8.98*old_awareness3()+20.05*old_purchase3())*1000
        old_revenue4 = (-75067.17 + 99.01*price()*(1-old_discount4())-8.98*old_awareness4()+20.05*old_purchase4())*1000} else if (input$old_smartphone == 'buyphone_martian') {
          old_revenue1 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount1())+6.755e+00*old_awareness1()+1.559e+01*old_purchase1())*1000
          old_revenue2 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount2())+6.755e+00*old_awareness2()+1.559e+01*old_purchase2())*1000
          old_revenue3 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount3())+6.755e+00*old_awareness3()+1.559e+01*old_purchase3())*1000
          old_revenue4 = (-1.439e+05 + 2.869e+02*price()*(1-old_discount4())+6.755e+00*old_awareness4()+1.559e+01*old_purchase4())*1000
        } else if (input$old_smartphone == 'buyphone_2_martian') {
          old_revenue1 = (342219.32-589.38*price()*(1-old_discount1())-7.63*old_awareness1()+18.78*old_purchase1())*1000
          old_revenue2 = (342219.32-589.38*price()*(1-old_discount2())-7.63*old_awareness2()+18.78*old_purchase2())*1000
          old_revenue3 = (342219.32-589.38*price()*(1-old_discount3())-7.63*old_awareness3()+18.78*old_purchase3())*1000
          old_revenue4 = (342219.32-589.38*price()*(1-old_discount4())-7.63*old_awareness4()+18.78*old_purchase4())*1000} else if (input$old_smartphone == 'buyphone_3_solar') {
            old_revenue1 = (-2.267e+04-1.131e+02*price()*(1-old_discount1())-7.586e-01*old_awareness1()+1.911e+01*old_purchase1())*1000
            old_revenue2 = (-2.267e+04-1.131e+02*price()*(1-old_discount2())-7.586e-01*old_awareness2()+1.911e+01*old_purchase2())*1000
            old_revenue3 = (-2.267e+04-1.131e+02*price()*(1-old_discount3())-7.586e-01*old_awareness3()+1.911e+01*old_purchase3())*1000
            old_revenue4 = (-2.267e+04-1.131e+02*price()*(1-old_discount4())-7.586e-01*old_awareness4()+1.911e+01*old_purchase4())*1000
          } else if (input$old_smartphone == "buyphone_3_galactic") {
            old_revenue1 = (22772.38-0.16*price()*(1-old_discount1())-5.14*old_awareness1()+18.72*old_purchase1())*1000
            old_revenue2 = (22772.38-0.16*price()*(1-old_discount2())-5.14*old_awareness2()+18.72*old_purchase2())*1000
            old_revenue3 = (22772.38-0.16*price()*(1-old_discount3())-5.14*old_awareness3()+18.72*old_purchase3())*1000
            old_revenue4 = (22772.38-0.16*price()*(1-old_discount4())-5.14*old_awareness4()+18.72*old_purchase4())*1000} else if (input$old_smartphone == 'buyphone_4_martian') {
              old_revenue1 = (-41381.18+718.88*price()*(1-old_discount1())+2.57*old_awareness1()+7.89*old_purchase1()*1000)
              old_revenue2 = (-41381.18+718.88*price()*(1-old_discount2())+2.57*old_awareness2()+7.89*old_purchase2()*1000)
              old_revenue3 = (-41381.18+718.88*price()*(1-old_discount3())+2.57*old_awareness3()+7.89*old_purchase3()*1000)      
              old_revenue4 = (-41381.18+718.88*price()*(1-old_discount4())+2.57*old_awareness4()+7.89*old_purchase4()*1000)} else if (input$old_smartphone == 'buyphone_4_galactic') {
                old_revenue1 = (7.990e+03+2.326e+02*price()*(1-old_discount1())+3.288e-01*old_awareness1()+8.107e+00*old_purchase1())*1000
                old_revenue2 = (7.990e+03+2.326e+02*price()*(1-old_discount2())+3.288e-01*old_awareness2()+8.107e+00*old_purchase2())*1000
                old_revenue3 = (7.990e+03+2.326e+02*price()*(1-old_discount3())+3.288e-01*old_awareness3()+8.107e+00*old_purchase3())*1000
                old_revenue4 = (7.990e+03+2.326e+02*price()*(1-old_discount4())+3.288e-01*old_awareness4()+8.107e+00*old_purchase4())*1000}
    ##################################################################################################################    
    # New Model (Sum of values in Right Column)
    ##################################################################################################################    
    if (input$new_smartphone == "buyphone_3_martian"){
      new_revenue1 = (77104.26 + 89.53*new_price()*(1-new_discount1()) - 4.94*new_awareness1() + 19.23*new_purchase1())*1000
      new_revenue2 = (77104.26 + 89.53*new_price()*(1-new_discount2()) - 4.94*new_awareness2() + 19.23*new_purchase2())*1000
      new_revenue3 = (77104.26 + 89.53*new_price()*(1-new_discount3()) - 4.94*new_awareness3() + 19.23*new_purchase3())*1000
      new_revenue4 = (77104.26 + 89.53*new_price()*(1-new_discount4()) - 4.94*new_awareness4() + 19.23*new_purchase4())*1000
    } else if (input$new_smartphone == "buyphone") {
      new_revenue1 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount1())-1.415e+00*new_awareness1()+6.956e+00*new_purchase1())*1000
      new_revenue2 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount2())-1.415e+00*new_awareness2()+6.956e+00*new_purchase2())*1000
      new_revenue3 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount3())-1.415e+00*new_awareness3()+6.956e+00*new_purchase3())*1000
      new_revenue4 = (-7.531e+04 + 4.459e+02*new_price()*(1-new_discount4())-1.415e+00*new_awareness4()+6.956e+00*new_purchase4())*1000} else if (input$new_smartphone == "buyphone_lunar"){
        new_revenue1 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount1())-4.180e+00*new_awareness1()+1.358e+01*new_purchase1())*1000
        new_revenue2 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount2())-4.180e+00*new_awareness2()+1.358e+01*new_purchase2())*1000
        new_revenue3 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount3())-4.180e+00*new_awareness3()+1.358e+01*new_purchase3())*1000
        new_revenue4 = (-3.037e+05 + 1.237e+03*new_price()*(1-new_discount4())-4.180e+00*new_awareness4()+1.358e+01*new_purchase4())*1000
      } else if (input$new_smartphone == "buyphone_solar"){
        new_revenue1 = (-75067.17 + 99.01*new_price()*(1-new_discount1())-8.98*new_awareness1()+20.05*new_purchase1())*1000
        new_revenue2 = (-75067.17 + 99.01*new_price()*(1-new_discount2())-8.98*new_awareness2()+20.05*new_purchase2())*1000
        new_revenue3 = (-75067.17 + 99.01*new_price()*(1-new_discount3())-8.98*new_awareness3()+20.05*new_purchase3())*1000
        new_revenue4 = (-75067.17 + 99.01*new_price()*(1-new_discount4())-8.98*new_awareness4()+20.05*new_purchase4())*1000} else if (input$new_smartphone == 'buyphone_martian') {
          new_revenue1 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount1())+6.755e+00*new_awareness1()+1.559e+01*new_purchase1())*1000
          new_revenue2 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount2())+6.755e+00*new_awareness2()+1.559e+01*new_purchase2())*1000
          new_revenue3 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount3())+6.755e+00*new_awareness3()+1.559e+01*new_purchase3())*1000
          new_revenue4 = (-1.439e+05 + 2.869e+02*new_price()*(1-new_discount4())+6.755e+00*new_awareness4()+1.559e+01*new_purchase4())*1000
        } else if (input$new_smartphone == 'buyphone_2_martian') {
          new_revenue1 = (342219.32-589.38*new_price()*(1-new_discount1())-7.63*new_awareness1()+18.78*new_purchase1())*1000
          new_revenue2 = (342219.32-589.38*new_price()*(1-new_discount2())-7.63*new_awareness2()+18.78*new_purchase2())*1000
          new_revenue3 = (342219.32-589.38*new_price()*(1-new_discount3())-7.63*new_awareness3()+18.78*new_purchase3())*1000
          new_revenue4 = (342219.32-589.38*new_price()*(1-new_discount4())-7.63*new_awareness4()+18.78*new_purchase4())*1000} else if (input$new_smartphone == 'buyphone_3_solar') {
            new_revenue1 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount1())-7.586e-01*new_awareness1()+1.911e+01*new_purchase1())*1000
            new_revenue2 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount2())-7.586e-01*new_awareness2()+1.911e+01*new_purchase2())*1000
            new_revenue3 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount3())-7.586e-01*new_awareness3()+1.911e+01*new_purchase3())*1000
            new_revenue4 = (-2.267e+04-1.131e+02*new_price()*(1-new_discount4())-7.586e-01*new_awareness4()+1.911e+01*new_purchase4())*1000
          } else if (input$new_smartphone == "buyphone_3_galactic") {
            new_revenue1 = (22772.38-0.16*new_price()*(1-new_discount1())-5.14*new_awareness1()+18.72*new_purchase1())*1000
            new_revenue2 = (22772.38-0.16*new_price()*(1-new_discount2())-5.14*new_awareness2()+18.72*new_purchase2())*1000
            new_revenue3 = (22772.38-0.16*new_price()*(1-new_discount3())-5.14*new_awareness3()+18.72*new_purchase3())*1000
            new_revenue4 = (22772.38-0.16*new_price()*(1-new_discount4())-5.14*new_awareness4()+18.72*new_purchase4())*1000} else if (input$new_smartphone == 'buyphone_4_martian') {
              new_revenue1 = (-41381.18+718.88*new_price()*(1-new_discount1())+2.57*new_awareness1()+7.89*new_purchase1()*1000)
              new_revenue2 = (-41381.18+718.88*new_price()*(1-new_discount2())+2.57*new_awareness2()+7.89*new_purchase2()*1000)
              new_revenue3 = (-41381.18+718.88*new_price()*(1-new_discount3())+2.57*new_awareness3()+7.89*new_purchase3()*1000)      
              new_revenue4 = (-41381.18+718.88*new_price()*(1-new_discount4())+2.57*new_awareness4()+7.89*new_purchase4()*1000)} else if (input$new_smartphone == 'buyphone_4_galactic') {
                new_revenue1 = (7.990e+03+2.326e+02*new_price()*(1-new_discount1())+3.288e-01*new_awareness1()+8.107e+00*new_purchase1())*1000
                new_revenue2 = (7.990e+03+2.326e+02*new_price()*(1-new_discount2())+3.288e-01*new_awareness2()+8.107e+00*new_purchase2())*1000
                new_revenue3 = (7.990e+03+2.326e+02*new_price()*(1-new_discount3())+3.288e-01*new_awareness3()+8.107e+00*new_purchase3())*1000
                new_revenue4 = (7.990e+03+2.326e+02*new_price()*(1-new_discount4())+3.288e-01*new_awareness4()+8.107e+00*new_purchase4())*1000}    
####################################################################################################################    
    library(DT)
    model = input$old_smartphone
    cannibal_rate = ((sum(old_revenue3+old_revenue4)+
                      sum(old_revenue3+old_revenue4))-
                     (sum(old_revenue1+old_revenue2)+
                        sum(old_revenue1+old_revenue2)))/
    (sum(old_revenue1+old_revenue2)+
       sum(old_revenue1+old_revenue2))*100
    old_canni = data.frame(model, cannibal_rate)
    
    model = input$new_smartphone
    cannibal_rate = ((sum(new_revenue3+new_revenue4)+
                      sum(new_revenue3+new_revenue4))-
                     (sum(new_revenue1+new_revenue2)+
                        sum(new_revenue1+new_revenue2)))/
    (sum(new_revenue1+new_revenue2)+
       sum(new_revenue1+new_revenue2))*100
  new_canni = data.frame(model, cannibal_rate)
  
  #Merge Old and New smartphone DataFrames
  cannibal_df = rbind(old_canni, new_canni)
  names(cannibal_df)[names(cannibal_df) == "cannibal_rate"] <- "Cannibalization Rate(%)"
  cannibal_df
  }
  )
  }
####################################################################################################################

# Run the application 
shinyApp(ui = ui, server = server)