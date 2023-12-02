library(shiny)
library(plotly)

source("util.R")
max_num_studies = 1000

# Define UI for application that draws a histogram
ui <- fluidPage(

  # Application title
  titlePanel("Clinical Trials Query"),

  # feature 2: Data Summary Table
  wellPanel(
    h3("Data Summary"),
    verbatimTextOutput("data_summary") # Output for the data summary
  ),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("brief_title_kw", "Brief title keywords"),

      dateInput("start_date", "Start Date", value = NULL, max = Sys.Date()),
      dateInput("end_date", "End Date", value = Sys.Date(), max = Sys.Date()),

      # feature 1: Download CSV button
      downloadButton("downloadData", "Download CSV"),

      # we add a check box here for sponsor type of studies
      checkboxGroupInput("source_class",
                         label = h3("Sponsor type"),
                         choices = list("Federal" = "FED",
                                        "Individual" = "INDIV",
                                        "Industry" = "INDUSTRY",
                                        "Network" = "NETWORK",
                                        "NIH" = "NIH",
                                        "Other" = "OTHER",
                                        "Unknown" = "UNknown")),

      # feature 5: outcomes drop-down menu
      selectInput("source_outcomes",
                  label = h3("Select Outcome Type"),
                  choices = c("Primary", "Secondary",
                              "Other Pre-specified", "Post-Hoc")),

      # feature 6: study_type check box
      checkboxGroupInput("source_type",
                         label = h3("Study type"),
                         choices = list("Expanded Access" = "Expanded Access",
                                        "Interventional" = "Interventional",
                                        "Observational" = "Observational",
                                        "Observational [Patient Registry]" = "Observational [Patient Registry]",
                                        "NA" = "NA"))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        type = "tabs",
        # Change this in ui.R
        tabPanel("Phase", plotlyOutput("phase_plot")),
        tabPanel("Concurrent", plotlyOutput("concurrent_plot"))
      ),
      dataTableOutput("trial_table")
    )
  )
)

