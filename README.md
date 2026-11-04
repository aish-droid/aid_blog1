# Aid to middle-income countries: blog draft

**Read the draft with its figures:** https://aish-droid.github.io/aid_blog1/ (once GitHub Pages is switched on for this repo)

Work in progress: unpublished draft text, figures and the analysis behind them.

Snapshot of the blog's figures and draft as of 4 November 2026. Everything the blog needs is in these three folders.

| Folder | What is in it |
|---|---|
| `1_flourish_charts/` | A guide to the five Flourish charts (Figures 1a, 1b, 2, 3, 7): chart IDs, titles, footer HTML and notes for comms. |
| `2_cgd_interactives/` | Only what CGD comms dev needs for the three custom interactives (Figure 4 IDA grant element, Figure 5 aid and conflict map, Figure 6 donor-to-recipient Sankey): the three HTML pages, `data/`, `shared/`, the tracking spec (`TRACKING.md`), the CMS text (`cms-text.md`) and a `README.md`. Start with the README. |
| `3_combined_draft/` | Everything for reading and editing the draft: `blog_preview.html` (draft text and all seven figures on one page), the launcher `open_blog_preview.bat` and `blog_figures.html` (offline stand-ins for the Flourish charts). |

## Editing the combined draft

Double-click `3_combined_draft/open_blog_preview.bat`. It starts a small local web server and opens the page. Opening the HTML file by double-click will not load the interactives.
On the page, tick "Edit text", make your changes, then "Download edited page" and save the file back into `3_combined_draft/`. The figure links only work from that folder.

In the draft, Figures 1a, 1b, 2, 3 and 7 are the published Flourish charts, embedded live (Figures 1a and 1b side by side). They need an internet connection. Each Flourish chart carries its own title, subtitle and source, so the page does not repeat them. Tick "Use local stand-ins instead of Flourish" in the toolbar to see offline copies of the same data, with the page's own titles and sources. Figures 4, 5 and 6 are the live interactives from `2_cgd_interactives/`. The Flourish chart IDs and footers are in `1_flourish_charts/README.md`.

## Scope

This is a copy of the working files in `output/blog` and `output/cgd-interactives`. The code that regenerates them (`code/13`, `16`, `17`, `18`, `12`) still writes to those original folders, not here. Re-copy if you rebuild.
