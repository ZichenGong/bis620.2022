README
================
Zichen Gong, Ziang Li, Ruiqi Zhang
2023-12-01

**Feature 1: “Download CSV” Button**

When a user interacts with the Shiny app and perhaps filters or
manipulates data, they can click the “Download CSV” button. This action
triggers a download of the current dataset in a .csv format to the
user’s local machine. Users might want to use this feature because of
data portability and the convenience of having a local copy of the data
for further use. The feature is intuitive to use in the App: it is
clearly visible and labeled.

**Feature 2: Data Summary Table**

The Data Summary Table feature provides a concise and informative
snapshot of the dataset pertaining to clinical trials. It aggregates
data to present important metrics such as the total number of trials,
average trial duration, and the distribution of trials across different
phases. This summary can be generated dynamically based on the current
dataset within the app, reflecting any filters or search criteria
applied by the user. Users can quickly derive meaningful insights from
the summarized data, which can inform further analysis, decision-making
processes, or provide a quick check on data distribution. The feature is
intuitive to use in the App as the summary table is clearly labeled and
presented in a way that is easy to understand.

**Feature 3: Date Interval**

The Date Interval Selection feature in the Shiny application provides an
interface for users to specify a start date and an end date. This
feature will filter the displayed data to only include clinical trials
that were active between these dates. The filtering is applied to both
the tabular data presentation and the visualizations that represent the
data. It allows for a granular approach to data analysis, focusing on
specific timelines which could be critical for longitudinal studies,
seasonal analysis, or impact assessments.

**Feature 4: Interactive Plotly**

The Interactive Plot feature leverages the Plotly library to enhance the
graphical representation of clinical trials data within the Shiny
application. Plotly’s interactive capabilities include tooltips,
zooming, panning, and dynamic updating. In the context of this Shiny
app, it is used to visualize the distribution of clinical trials across
different phases and to show concurrent trials over time.

**Feature 5: Outcome Dropdown Menu**

In the Shiny app, the outcomes dropdown menu is implemented using
selectInput(). This creates a user interface element that lets users
select from a list of predefined options. The choices provided are
“Primary,” “Secondary,” “Other Pre-specified,” and “Post-Hoc,” which
represent common categories of clinical trial outcomes. When a user
selects one or more of these categories, the app will filter the dataset
to include only those trials that report the selected type of outcome.

**Feature 6: Study Type Checkbox**

The feature is a group of checkboxes where each box corresponds to a
type of clinical trial, such as “Interventional”, “Observational”,
“Observational \[Patient Registry\]”, “Expanded Access”, or “NA” (Not
Available or Not Applicable).Users can select any number of checkboxes,
which allows for the inclusion of multiple study types in the query
simultaneously.The selection made by the user through these checkboxes
is used to filter the dataset for the types of studies selected.
