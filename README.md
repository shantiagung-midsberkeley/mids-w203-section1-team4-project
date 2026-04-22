# Childcare Prices and Market Size

**UC Berkeley MIDS - DATASCI 203: Statistics for Data Science (Summer 2025)**

## Project Summary
Using the 2022 National Database of Childcare Prices (NDCP), this project examines how county-level market size relate to center-based childcare prices in the United States.

Our analysis finds that:
- larger markets are associated with higher childcare prices,
- higher household income is also associated with higher childcare prices,
- and these patterns appear across infant, toddler, and preschool care.

## Research Question
How is **market size** associated with **center-based childcare price**?

## Data
- **Dataset:** 2022 National Database of Childcare Prices (NDCP)
- **Publisher:** U.S. Department of Labor
- **Level of analysis:** U.S. county
- **Initial coverage:** 3,221 counties
- **Final analytic sample:** 2,654 counties

## Approach
We estimate descriptive linear models using log-transformed childcare price and market size variables.

The analysis evaluates how market size relates to weekly childcare prices across three age groups:
- Infants
- Toddlers
- Preschoolers

We also compare models that include median household income to better understand how local economic conditions relate to childcare pricing.

## Selected Results
| Age group | Effect of a 10% increase in market size |
|-----------|------------------------------------------|
| Infants   | 0.92% increase in weekly price           |
| Toddlers  | 0.76% increase in weekly price           |
| Preschool | 0.71% increase in weekly price           |

Including household income reduces the size of the market-size coefficient, but the relationship remains positive across all three age groups.

## Why This Project Matters
This analysis can help childcare providers and policy audiences better understand:
- regional pricing environments,
- possible expansion markets,
- and where childcare affordability may be under pressure.

## Team Contributions
- **Jeevan Madilla**: Contributed to project conceptualization; contributed to model review and discussion; conducted statistical analysis; wrote the model results and interpretation, limitations, and discussion sections; and reviewed the report.

- **Perla Meza**: Contributed to project conceptualization; contributed to model review and discussion; wrote the introduction and the model results and interpretation section; and reviewed the report.

- **Praj Prabhu**: Contributed to project conceptualization; contributed to model review and discussion; and wrote the model assumptions section.

- **Shanti Agung**: Contributed to project conceptualization; led data cleaning and preprocessing; built the models and contributed to model review and discussion; conducted statistical analysis; wrote the data and methodology and limitations sections; and reviewed and edited the report.

## Repository Structure
```text
.
├── data/           # Data files and processed datasets
├── notebooks/      # Exploratory analysis and model development
├── renv/           # Reproducible R environment files
├── reports/        # Final written report and supporting materials
├── src/            # Data cleaning, preprocessing, and modeling scripts
└── README.md       # Project overview
```

## Notes
This project is descriptive and should not be interpreted as evidence of causation.

## Links

**Final Report**: [Childcare Prices and Market Size: A Descriptive Study of Center-Based Providers](https://github.com/shantiagung-midsberkeley/mids-w203-section1-team4-project/blob/main/reports/lab2_report_team4.pdf)