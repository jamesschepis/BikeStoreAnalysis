# **Bike Store Analysis**

Tools Used: 
* SQL (Microsoft SQL Server)
* Google Sheets

Project Type:
* Data Collection
* Exploratory Data Analysis
* Data Visualisation

Link to code [here](https://github.com/jamesschepis/BikeStoreAnalysis/blob/f7dbb5ad5ee2efd5033fc4bacd6f094ab49eac04/SQLQuery_bikestoreanalysis.sql)

## **Table of Contents**
1. [Project Background](#project-background)  
2. [⭐ Executive Summary](#executive-summary)  
3. [Insights Deep-Dive](#insights-deep-dive)  
   - [Sales Trends](#sales-trends)
   - [Product Performance](#product-performance)  
4. [Recommendations](#recommendations)  
5. [Assumptions and Caveats](#assumptions-and-caveats)

   
<br>

## **Project Background**
This project involves analysing sales data from a bike store, consisting of approximately 80,000 records. The aim is to uncover insights into product performance and sales trends. Through data exploration and visualisation, the analysis provides key metrics to support strategic recommendations for improving sales performance and marketing efforts.

<br>

## **Executive Summary**
This analysis covers approximately 80,000 records spanning three years (2011–2013), capturing nearly $30 million in total bike store sales. Aside from a slump in the first half of 2012, sales performance has grown significantly over time, with a sharp and sustained increase throughout 2013. Despite this growth, monthly sales remained volatile, suggesting the influence of seasonal patterns or promotional activities.

Key product insights reveal that Bikes—particularly Mountain, Road, and Touring models—are the primary revenue drivers, accounting for 94% of total sales (~$15M) in 2013. In contrast, lower-priced items like Tires and Tubes led unit sales (~16,000 units), indicating strong accessory demand. Notably, accessories also yielded higher profit margins, averaging 63% compared to 40% for bikes.

### Key Recommendations:
1. **Focus inventory and marketing efforts on Bikes**, which drive the majority of revenue.
2. **Investigate month-on-month growth volatility** to understand seasonal trends or campaign impacts.
3. **Leverage high-margin high-volume accessories** (e.g., Tires and Tubes, Helmets, Bottles and Cages) through bundling and targeted promotions to boost profitability without relying on bike sales.
4. **Explore promotions or product expansions** during high-growth months to sustain momentum.
5. **Re-evaluate or phase out low-margin, low-sales products** occupying inventory space with minimal return (e.g. Caps).

<br>

## **Insights Deep-Dive**

### **Sales Trends**
- Sales steadily increased over the three-year period, with a notable slump in H1 2012 followed by a strong recovery.
- 2013 saw the most significant and sustained growth, indicating operational improvements, market demand, or successful campaigns.
- Month-on-month growth revealed high volatility, suggesting potential seasonality, inconsistent promotional strategies, or supply-side impacts.
- Several sharp dips and spikes (e.g., July each year) may correspond to inventory constraints, weather-related trends, or marketing efforts—warranting further investigation.

![image](https://github.com/user-attachments/assets/8b8ddfa7-d2a0-44a8-8ac3-d65b61e68f48)


<br>

### **Product Performance**
- Bikes (Mountain, Road, Touring) dominate total revenue, making up 94% of 2013 sales (~$15M). These are high-ticket items with moderate unit sales but lower margins (~40%).
- Accessories and components like Tires and Tubes, Helmets, and Bottles & Cages make up a small share of revenue but account for high unit sales and often achieve higher margins (average ~63%).
- A product performance matrix (excluding bikes) identified several accessory categories as high-margin and high-volume, offering potential for growth via bundling and promotions. 
- Caps showed low sales and low margins, making them potential candidates for phase-out or replacement.

![image](https://github.com/user-attachments/assets/236883dc-444b-4230-bf5a-02834f3e0a5b)

![image](https://github.com/user-attachments/assets/5699011c-94cf-4352-ade8-d985633f3b02)
![image](https://github.com/user-attachments/assets/d4df41e7-c6e9-49c9-8c05-d527af544010)


<br>

## **Recommendations**
- 

<br>

## **Assumptions and Caveats**
- This analysis excludes bike SKUs from the product performance matrix to avoid skewing results, as they comprise the vast majority of total revenue.
- Margin figures are based on available data and may not account for dynamic pricing, discounts, or cost fluctuations over time.
- The dataset may not reflect the full operational context (e.g., regional demand, supply issues, competitor activity), and conclusions should be validated with business insights.
- Year-to-year external factors (e.g., economic changes, weather, store expansions) were not explicitly analysed but may have influenced sales patterns.
- Sales are assumed to represent completed transactions only; returns, cancellations, or backorders were not separately analysed.
