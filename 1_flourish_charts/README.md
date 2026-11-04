# Flourish charts (Figures 1a, 1b, 2, 3, 7)

These five charts live on Flourish, not in this folder. This file records what each one is, so comms can embed it and you can find it again.
All five use the Flourish "line, bar and pie" template (id 121006). The chart IDs are in the links below.

| Figure | Flourish chart | Title in Flourish | Subtitle |
|---|---|---|---|
| 1a | [30806197](https://app.flourish.studio/visualisation/30806197/edit) | Figure 1a: People living in extreme poverty ($3 poverty line), by world region | Billions of people, 1990 to 2024 |
| 1b | [30792818](https://app.flourish.studio/visualisation/30792818/edit) | Figure 1b: People living in extreme poverty ($3 poverty line), by country income class | Billions of people, 1990 to 2024. Jumps reflect countries being reclassified. |
| 2 | [30792837](https://app.flourish.studio/visualisation/30792837/edit) | Figure 2: Aid per person in extreme poverty has shifted to middle-income countries | Net ODA per person in extreme poverty ($3 poverty line, ODA in constant 2024 USD) |
| 3 | [30792841](https://app.flourish.studio/visualisation/30792841/edit) | Figure 3: Progressivity of ODA from 1990-2024 | Share of net ODA going to the poorest recipient countries, accounting for 20% of the world population |
| 7 | [30804677](https://app.flourish.studio/visualisation/30804677/edit) | Figure 7: Cost of Cutting Extreme Poverty to 1%, as a Share of GDP | Estimated annual cost of targeted cash transfers to bring the extreme-poverty rate to 1% by World Bank income class ($2.15 poverty line) |

## Notes for comms

- **Figures 1a and 1b go side by side.** They are two separate charts, each embedded on its own. A single Flourish chart with both panels could not give each panel its own legend. 1a (regions) should sit on the left and 1b (income classes) on the right, at the same height and with the same y-axis (0 to 2.5 billion).
- **Published** from the shared CGD Flourish account on 4 November 2026, so these links are the ones to use. The combined draft in `3_combined_draft/` embeds all five live. Edits to a chart show in the embed only after you republish it.
- **Footers are HTML** (the "Note" field under Footer). The exact text of each footer is below. Paste it in the same field if a chart is rebuilt.
- **Unused drafts you can delete from Flourish:** 30805947 (combined Figure 1), 30806000 (a switch version), 30803600 (old IDA chart), 30792869 (old aid and conflict map).

## Footer HTML

**1a**

```html
Source: World Bank Poverty and Inequality Platform, via <a href="https://ourworldindata.org/grapher/total-population-living-in-extreme-poverty-by-world-region" target="_blank" rel="noopener noreferrer">Our World in Data</a> ($3 a day, 2021 PPP). North America (under 5 million people) is not shown.
```

**1b**

```html
Source: <a href="https://pip.worldbank.org/" target="_blank" rel="noopener noreferrer">World Bank Poverty and Inequality Platform</a> ($3 a day, 2021 PPP), grouped by each country's World Bank income class in that year. The jumps reflect countries being reclassified, not changes in people's lives. Income-class totals differ slightly from the regional totals in Figure 1a (different aggregations).
```

**2**

```html
Source: <a href="https://data-explorer.oecd.org/vis?df[ds]=DisseminateFinalDMZ&amp;df[id]=DSD_DAC2@DF_DAC2A&amp;df[ag]=OECD.DCD.FSD" target="_blank" rel="noopener noreferrer">OECD DAC Table 2A</a> for net ODA; <a href="https://pip.worldbank.org" target="_blank" rel="noopener noreferrer">World Bank Poverty and Inequality Platform</a>, $3 2021 PPP data for extreme poverty. World Bank’s income classifications change over the years. Each line divides the total net ODA by the total number of extreme poor in that year for all countries in that income class.
```

**3**

```html
Source: <a href="https://data-explorer.oecd.org/vis?df[ds]=DisseminateFinalDMZ&amp;df[id]=DSD_DAC2@DF_DAC2A&amp;df[ag]=OECD.DCD.FSD" target="_blank" rel="noopener noreferrer">OECD DAC Table 2A</a> for net ODA; <a href="https://databank.worldbank.org/source/world-development-indicators" target="_blank" rel="noopener noreferrer">World Bank WDI</a> for population and GNI. See footnote 3 for notes on calculation of this measure.
```

**7**

```html
Source: <a href="https://www.nber.org/papers/w34583" target="_blank" rel="noopener noreferrer">Sahoo et al. 2025</a> (Table E.4). The poverty line is $2.15 per person per day, 2017 PPP standard. World Bank income classifications are as of 2024 (Ethiopia has no income class in 2024, so its 2023 class is used). 34 countries in the paper’s sample are shown here. The paper states that the total sample's estimated cost in nominal 2023 dollars goes up by 64% when poverty is defined using the World Bank’s new $3 2021 PPP line.
```

## Open item

Figure 7: Mexico's bar (0.01% of GDP) is too thin to hover over. Either plot it at 0.1 with a note, or leave it as is.
