# Aid and Middle-Income Countries: interactives

Three static interactives for the CGD blog on aid to middle-income countries, built to the [CGD interactive toolkit](https://github.com/Center-for-Global-Development/cgd-interactive-toolkit) standards. In the blog they are Figures 4, 5 and 6; the other figures are Flourish charts.

| Blog figure | File | What it shows | `interactive_name` |
|---|---|---|---|
| Figure 4 | `ida-grant-element.html` | Four small bar charts (one per World Bank income class) of each class's share of IDA country allocations and of their grant element, FY20–FY25; selecting a class lists its countries with grant element by year and IDA status | `aid-middle-income-ida-grant-element` |
| Figure 5 | `aid-conflict-map.html` | World map of net ODA received per person, 1990–2024, with a red outline on countries in war (1,000+ battle-related deaths) and optional conflict-location circles | `aid-middle-income-conflict-map` |
| Figure 6 | `donor-recipient-sankey.html` | Sankey diagram of net ODA from donors to recipients, by continent or World Bank income group, with click-through country detail | `aid-middle-income-donor-sankey` |

All three are meant to be embedded as iframes on cgdev.org. They have no titles, subtitles or source notes of their own; that text is in `cms-text.md` for the article page.

## Embedding

```html
<iframe src="https://center-for-global-development.github.io/<repo-name>/aid-conflict-map.html"
        title="Map of aid per person and armed conflict, 1990-2024"
        style="width:100%;border:0" loading="lazy"></iframe>
```

Height is set by the page itself through the `cgd-iframe-resize` message (`shared/iframe-resize.js`), so no fixed height is needed. Resizing only works when the page is served from the CGD GitHub Pages origin.

## Data

Generated into `data/` by `code/12_build_cgd_embed_data.py` in the replication package (`Blog experimental/`), which reuses the builders in `04_build_map_html.py` and `06_build_sankey_html.py`. Run it after any change to `data/clean/`:

```bash
python code/12_build_cgd_embed_data.py        # map and Sankey data
python code/16_ida_grant_element_fy20_25.py   # IDA country-year grant element (checks against the workbook)
python code/17_build_cgd_ida_embed_data.py    # IDA chart data
```

| File | Used by | Contents |
|---|---|---|
| `data/ida-grant-element.json` | IDA chart | Per income class: share of IDA allocations and of grant element by fiscal year (FY20–FY25) and pooled, and the class's countries with grant element by year and IDA status. Written by `code/17_build_cgd_ida_embed_data.py` from `data/clean/ida_grant_element_country_year.csv` (14 KB) |
| `data/ida-grant-element-country-year.csv` | IDA chart download link | One row per country and fiscal year: income class, IDA lending group, grants, credits, PBA-SMLs, allocation, grant element |
| `data/map-data.json` | map | Country polygons (Natural Earth, 50m), ODA per capita and total by country-year, UCDP conflict intensity and deaths by country-year, World Bank income group by country-year (shown in the hover callout), 0.5° conflict grid |
| `data/aid-conflict-country-year.csv` | map download link | The country-year figures behind the map tooltip |
| `data/sankey-data.json` | Sankey | Donor-to-recipient net ODA by year, in continent and income-group views, plus the country-level detail for the drill-down |
| `data/donor-recipient-flows.csv` | Sankey download link | Net ODA by year, donor and recipient country (193,000 rows, about 14 MB; offered as an optional download, not loaded by the page) |

Sources and treatment (full wording in `cms-text.md`):

- **IDA allocations and grant element (Figure 4):** IDA country allocations FY20–FY25 (SDR millions, nominal) from the grant element workbook of Mathiasen, Landers and Martinez (`data/raw/nico_grant/New Grant Element Calculation, FY20-25-Allocations-Table.xlsx`). Grant element = grants at 100% + 40-year credits at 69% + small-economy credits at 52% + blend and gap credits at 30% + shorter-maturity loans at 37% (5% discount rate); the IDA lending group of each country-year and the factor applied are read from the workbook's own formulas by `code/16_ida_grant_element_fy20_25.py`, which checks that the totals match the workbook for every year. Income class: World Bank class effective in each fiscal year.
- **Aid per capita:** OECD DAC Table 2a net ODA received, divided by World Bank WDI population, constant 2024 US$. Pre-2005 "Part II" (countries in transition) flows are included, as in Table 1 of the paper.
- **Conflict:** UCDP Georeferenced Event Dataset v26.1, state-based violence, 1,000+ deaths in a country-year counted as war.
- **Donor-recipient flows:** David Roodman's ODA dataset, net ODA (not grant-equivalent), official donors only.
- **Borders:** modern borders throughout, so successor states have no data before independence.

## Libraries and technical choices

| Library | Version | Loaded from | Used for |
|---|---|---|---|
| D3 | 7.9.0 | jsDelivr, pinned, SRI | Map projection and paths (`d3-geo`), scales and formatting; Sankey layout |
| d3-sankey | 0.12.3 | jsDelivr, pinned, SRI | Sankey layout (Sankey page only) |

D3 is used rather than Chart.js or Leaflet because neither can draw a Sankey, and the map needs a world projection, country polygons shaded by year and a second outline layer. If comms would prefer Leaflet for the map, that is a separate rebuild.

Fonts: Sofia Pro from CGD's Adobe Fonts kit (`https://use.typekit.net/ymp6ujv.css`); the kit must allow the GitHub Pages domain. Falls back to system sans-serif if it does not load.

Data is fetched from this repo's own `data/` folder with `fetch()`, so the pages must be served over HTTP, not opened from disk (double-clicking the HTML file shows "The data could not be loaded"). On Windows, double-click `preview.bat` (local use only; leave it out of the repo if preferred), or run:

```bash
python -m http.server 8000
```

then open `http://localhost:8000/aid-conflict-map.html`. The data files are 2.2 MB and 1.6 MB uncompressed (GitHub Pages serves them gzipped).

## Analytics

Events follow the CGD standard; see `TRACKING.md`. Locally, the postMessages are blocked (target origin is `https://www.cgdev.org`), which logs a harmless console warning.

## Accessibility notes

- All controls are keyboard-operable with visible focus; the Sankey donor and recipient bars are focusable buttons (Enter or Space).
- SVGs have titles and descriptions; the year summary line is an `aria-live` region.
- Colour is never the only carrier of meaning: wars are marked by outline weight as well as hue, and nodes are labelled directly.
- Map countries are hover/tap only (hundreds of tab stops would not help); the CSV download is the keyboard-accessible equivalent.

## Known limitations

- The Sankey drill-down lists scroll inside the page (capped at 360 px).
- On screens narrower than about 480 px, the Sankey shortens some labels (e.g. "Multilateral") to fit.
- Very small island states are hard to see on the map; use the tooltip or the CSV.
