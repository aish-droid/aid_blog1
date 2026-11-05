# Flourish charts (Figures 1a, 1b, 2, 3, 7, 8a, 8b, 8c)

These eight charts live on Flourish, not in this folder. This file records what each one is, so comms can embed it and you can find it again.
All five use the Flourish "line, bar and pie" template (id 121006). The chart IDs are in the links below.

| Figure | Flourish chart | Title in Flourish | Subtitle |
|---|---|---|---|
| 1a | [30806197](https://app.flourish.studio/visualisation/30806197/edit) | Figure 1a: People living in extreme poverty by world region | Y-axis is measured in billions, figures as per the $3 poverty line |
| 1b | [30792818](https://app.flourish.studio/visualisation/30792818/edit) | Figure 1b: People living in extreme poverty by country income class | Y-axis is measured in billions, figures as per the $3 poverty line |
| 2 | [30792837](https://app.flourish.studio/visualisation/30792837/edit) | Figure 2: How proportionate is net ODA to shares of extreme poverty over different income classes? | Share of net ODA vs share of people living in extreme poverty ($3 poverty line) by World Bank income class. |
| 3 | [30792841](https://app.flourish.studio/visualisation/30792841/edit) | Figure 3: Progressivity of ODA from 1990-2024 | Share of net ODA going to the poorest recipient countries, accounting for 20% of the world population |
| 7 | [30804677](https://app.flourish.studio/visualisation/30804677/edit) | Figure 7: Cost of Cutting Extreme Poverty to 1%, as a Share of GDP | Estimated annual cost of targeted cash transfers to bring the extreme-poverty rate to 1% by World Bank income class ($2.15 poverty line) |
| 8a | [30807271](https://app.flourish.studio/visualisation/30807271/edit) | Figure 8a: Per capita personal remittances received, by recipient income group | Per capita flows in constant 2024 USD |
| 8b | [30807273](https://app.flourish.studio/visualisation/30807273/edit) | Figure 8b: Per capita foreign direct investment net inflows, by recipient income group | Per capita flows in constant 2024 USD |
| 8c | [30807671](https://app.flourish.studio/visualisation/30807671/edit) | Figure 8c: Per capita OECD net ODA, by recipient income group | Per capita flows in constant 2024 USD |

## Notes for comms

- **Figures 8a, 8b and 8c also go side by side**, in that order from the left. Chart 30807230, a single faceted version with both panels on one shared y-axis, is not used.
- **Figures 1a and 1b go side by side.** They are two separate charts, each embedded on its own. A single Flourish chart with both panels could not give each panel its own legend. 1a (regions) should sit on the left and 1b (income classes) on the right, at the same height and with the same y-axis (0 to 2.5 billion).
- **Published** from the shared CGD Flourish account on 4 November 2026, so these links are the ones to use. The combined draft in `3_combined_draft/` embeds them live (Figures 8a, 8b and 8c are included). Edits to a chart show in the embed only after you republish it.
- **Footers are HTML** (the "Note" field under Footer). The exact text of each footer is below. Paste it in the same field if a chart is rebuilt.
- **Unused drafts you can delete from Flourish:** 30805947 (combined Figure 1), 30806000 (a switch version), 30803600 (old IDA chart), 30792869 (old aid and conflict map).

## Footer HTML

**1a**

```html
Source: World Bank Poverty and Inequality Platform, via <a href="https://ourworldindata.org/grapher/total-population-living-in-extreme-poverty-by-world-region" target="_blank" rel="noopener noreferrer">Our World in Data</a> ($3 a day, 2021 PPP). North America (under 5 million people) is not shown.
```

**1b**

```html
Source: <a href="https://pip.worldbank.org/" target="_blank" rel="noopener noreferrer">World Bank Poverty and Inequality Platform</a> ($3 a day, 2021 PPP), grouped by each country's World Bank income class in that year. Income classifications change over the years.
```

**2**

```html
Source: <a href="https://data-explorer.oecd.org/vis?df[ds]=DisseminateFinalDMZ&amp;df[id]=DSD_DAC2@DF_DAC2A&amp;df[ag]=OECD.DCD.FSD" target="_blank" rel="noopener noreferrer">OECD DAC Table 2A</a> for net ODA; <a href="https://pip.worldbank.org" target="_blank" rel="noopener noreferrer">World Bank Poverty and Inequality Platform</a>, $3 2021 PPP data for extreme poverty. Shares are within low-, lower-middle- and upper-middle-income countries, using each country's World Bank income class in that year. Unallocated and unclassified aid is excluded. The last panel leaves Ukraine out of both net ODA, where it received about $36 billion in 2024, and the number of people in extreme poverty (about 15,000, a World Bank projection). Ukraine was lower-middle income in 2022 and upper-middle income in 2023 and 2024.
```

Figure 2 was rebuilt on 4 November 2026: it used to be a line chart of net ODA per extremely poor person (low-income, middle-income, and middle-income excluding Ukraine). It is now a grouped column chart with three panels (2020, 2024, and 2024 excluding Ukraine) and for each income class (labelled LIC, LMIC, UMIC) two bars: its share of net ODA and its share of people in extreme poverty. Data: `code/21_figure2_share_oda_vs_poor.py` writes `data/clean/figure2_share_oda_vs_poor.csv` (and an annual 2000-2024 version, `figure2_share_oda_vs_poor_annual.csv`). The previous data are kept in `data/clean/figure2_previous_aid_per_poor_person.csv`.

**3**

```html
Source: <a href="https://data-explorer.oecd.org/vis?df[ds]=DisseminateFinalDMZ&amp;df[id]=DSD_DAC2@DF_DAC2A&amp;df[ag]=OECD.DCD.FSD" target="_blank" rel="noopener noreferrer">OECD DAC Table 2A</a> for net ODA; <a href="https://databank.worldbank.org/source/world-development-indicators" target="_blank" rel="noopener noreferrer">World Bank WDI</a> for population and GNI. See footnote 3 for notes on calculation of this measure.
```

**7**

```html
Source: <a href="https://www.nber.org/papers/w34583" target="_blank" rel="noopener noreferrer">Sahoo et al. 2025</a> (Table E.4). The poverty line is $2.15 per person per day, 2017 PPP standard. World Bank income classifications are as of 2024 (Ethiopia has no income class in 2024, so its 2023 class is used). 34 countries in the paper’s sample are shown here. The paper states that the total sample's estimated cost in nominal 2023 dollars goes up by 64% when poverty is defined using the World Bank’s new $3 2021 PPP line.
```

**8a**

```html
Source: <a href="https://databank.worldbank.org/source/world-development-indicators" target="_blank" rel="noopener noreferrer">World Bank WDI</a> for personal remittances received and population, converted to constant 2024 US$ with the US GDP deflator. Per capita is each income group's total flow divided by its population, using the countries with data for that flow in that year. World Bank income classifications change over the years.
```

**8b**

```html
Source: <a href="https://databank.worldbank.org/source/world-development-indicators" target="_blank" rel="noopener noreferrer">World Bank WDI</a> for  net foreign direct investment inflows and population, converted to constant 2024 US$ with the US GDP deflator. Per capita is each income group's total flow divided by its population, using the countries with data for that flow in that year. World Bank income classifications change over the years.
```

Figure 8 is three charts, 8a (remittances), 8b (FDI) and 8c (OECD net ODA), shown side by side, each with its own y-axis scale and legend. The data come from `chart_data_annual.xlsx` (Charts experimental), through `code/20_figure8_remittances_fdi_data.py` to `data/clean/figure8_remittances_fdi_per_capita.csv`.

**8c**

```html
Source: <a href="https://data-explorer.oecd.org/vis?df[ds]=DisseminateFinalDMZ&amp;df[id]=DSD_DAC2@DF_DAC2A&amp;df[ag]=OECD.DCD.FSD" target="_blank" rel="noopener noreferrer">OECD DAC Table 2A</a> for net ODA from all official donors, in constant 2024 US$; <a href="https://databank.worldbank.org/source/world-development-indicators" target="_blank" rel="noopener noreferrer">World Bank WDI</a> for population. Per capita is each income group's total flow divided by its population, using the countries with data for that flow in that year. World Bank income classifications change over the years.
```

## Open item

Figure 7: Mexico's bar (0.01% of GDP) is too thin to hover over. Either plot it at 0.1 with a note, or leave it as is.
