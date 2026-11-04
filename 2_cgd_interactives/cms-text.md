# Text for the cgdev.org page (CMS)

Per the CGD interactive coding standard, static titles, subtitles and source/credit notes live in the article page, not in the embed. The text below was taken out of the two interactives so it can be pasted into the CMS next to each iframe. Edit freely.

---

## Figure 4: IDA allocations and grant element by income class (`ida-grant-element.html`)

**Title (working):** Who Gets IDA's Grant Element? Allocations and Grant Element by Income Class, FY20–FY25

**Subtitle (working):** Each panel is one World Bank income class. Grey bars are the class's share of all IDA country allocations in a fiscal year; teal bars are its share of the grant element, the part of IDA financing that is effectively a gift. Select a class to list its countries.

**Notes:**

Data: IDA country allocations for FY20–FY25 (SDR millions, nominal), from the grant element calculation behind Mathiasen, Landers and Martinez (2026). Grant element counts grants in full, 40-year credits at 69%, small-economy credits at 52%, blend and gap credits at 30% and shorter-maturity loans (SMLs) at 37%, using a 5% discount rate. Each country's IDA lending group (IDA-only, blend, gap or small economy) is the one the calculation assigns in that year.

Income class: the World Bank classification in effect in each fiscal year (so a country can move between panels). Shares are of the total across all recipients that year. The headline under each class name adds the six years together.

GNI per capita: World Bank Atlas method, current US$, for the year behind that fiscal year's income classes (two years earlier); "n/a" means the World Bank does not publish a figure.

**Source line (suggested):** Source: Authors' calculations from IDA country allocations, FY20–FY25; World Bank income classifications and World Development Indicators.

---

## Figure 5: Aid per capita and armed conflict (`aid-conflict-map.html`)

**Title:** Where Does Aid Go, and Where Is There War?

**Subtitle:** Net official development assistance (ODA) received per person, with armed conflict overlaid, 1990–2024. Darker shading means more aid per head; a red outline marks countries where state-based armed conflict killed 1,000 or more people that year.

**Notes:**

Aid: OECD net ODA received from all official donors (OECD DAC Table 2a) divided by World Bank population (WDI), in constant 2024 US$. Grey = no ODA reported (donor and other high-income countries, and years after a country left the OECD recipient list). The five shades are quintiles of aid per person within each year (dollar cut points rounded and recomputed every year, shown in the legend), so each shade covers roughly a fifth of that year's recipients. Shades therefore show a country's rank among recipients in the year, not a fixed dollar amount, and the same colour means different dollar ranges in different years. "Net negative" means repayments exceeded disbursements. Very small islands are hard to see on the map; hover a country for its value.

Part II countries: before 2005, OECD Table 2a also reports aid to "Part II – Countries in Transition" (e.g. Russia, Poland, Ukraine, Israel). As in Table 1 of the paper, these flows are included here; the tooltip marks them.

Conflict: Red outlines mark countries with 1,000 or more deaths a year (UCDP's threshold for war) from state-based violence – fighting involving a government – recorded by the UCDP Georeferenced Event Dataset (v26.1) as occurring in the country. This tracks the UCDP/PRIO Armed Conflict Dataset closely but places cross-border conflicts where the fighting happened. The optional grey circles are sized by the number of deaths in each 0.5° grid cell (about 55 km across) from all UCDP-recorded violence, including non-state violence and attacks on civilians. Events UCDP could locate only to a province or a country are not drawn, because a circle would mark a place where the violence did not happen. These events account for about 30% of recorded deaths over 1990–2024, so the circles understate total deaths, more in some years than others. Tooltip figures use all events.

Income group: the World Bank income classification of the country in that year, shown in the hover callout; "not classified" means the World Bank did not classify the country in that year (some territories and early years).

GNI per capita: World Bank WDI series NY.GNP.PCAP.CD (GNI per capita, Atlas method, current US$) for the country in that year, converted to constant 2024 US$ with the US GDP deflator (the same deflator used for the paper's other WDI series), shown in the hover callout; "not available" means the World Bank publishes no value for that country and year.

Borders: modern country borders throughout. Successor states have no data before independence (e.g. South Sudan before 2011); Kosovo conflict events are coded by UCDP to Serbia.

**Source line (suggested):** Sources: OECD DAC Table 2a; World Bank World Development Indicators; Uppsala Conflict Data Program (UCDP GED v26.1, UCDP/PRIO Armed Conflict Dataset).

---

## Figure 6: Who gives aid to whom (`donor-recipient-sankey.html`)

**Title:** Who Gives Aid to Whom?

**Subtitle:** Net official development assistance (ODA) from individual donor countries to recipients, 1990–2024, in constant 2024 US$. Each donor has its own colour (teals for European donors, blues for the Americas, golds for Japan and the Gulf). In the continent view, an option highlights the flows that stay within the donor's own continent.

**Notes:**

Data: David Roodman's ODA dataset, "Net ODA" by donor and recipient (not his grant-equivalent series), constant 2024 US$; official donors only. The largest bilateral donors are shown individually, except that all European donors other than France, Germany and the United Kingdom are grouped as "Other European countries", and Saudi Arabia, the United Arab Emirates, Kuwait and Qatar are grouped as "Gulf countries"; all remaining bilateral donors (including Australia, New Zealand, Türkiye and South Korea) are grouped as "Other bilateral donors". Türkiye, Cyprus and Israel count as Asia, not Europe. Multilateral organisations (e.g. IDA, the Global Fund, UN agencies) are grouped in one node and shown as donors of their own onward flows; EU Institutions has its own node. Aid to multilateral organisations (core contributions) is left out to avoid counting it twice.

Unallocated: a large share of bilateral aid is not assigned to any recipient country or region in the source (for example in-donor costs and other unspecified aid). It is shown as its own node rather than dropped. Regional programmes (e.g. "Africa, regional") are counted in their continent in the continent view, and shown as "Regional / unallocated" in the income view.

Continents follow Natural Earth: the Middle East is part of Asia, and Türkiye, Cyprus and the Caucasus countries are counted in Asia. North and South America are combined. Income groups are each recipient's World Bank classification in that year; territories without a class and high-income recipients are grouped as "High income / unclassified".

Reading the flows: net ODA can be negative when repayments exceed disbursements; negative totals are left out of the diagram (0.1% of the total). Bar heights are rescaled each year, so compare shares, not absolute sizes, across years; the total is shown above the chart.

**Source line (suggested):** Source: David Roodman's ODA dataset; World Bank income classifications; Natural Earth.
