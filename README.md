# Aid to middle-income countries: blog draft

**Read the draft with its figures:** https://aish-droid.github.io/aid_blog1/ (once GitHub Pages is switched on for this repo)

Work in progress: unpublished draft text, figures and the analysis behind them.

Snapshot of the blog's figures and draft as of 4 November 2026. Everything the blog needs is in these three folders.

| Folder | What is in it |
|---|---|
| `1_flourish_charts/` | A guide to the seven Flourish charts (Figures 1a, 1b, 2, 3, 7, 8a, 8b): chart IDs, titles, footer HTML and notes for comms. |
| `2_cgd_interactives/` | Only what CGD comms dev needs for the three custom interactives (Figure 4 IDA grant element, Figure 5 aid and conflict map, Figure 6 donor-to-recipient Sankey): the three HTML pages, `data/`, `shared/`, the tracking spec (`TRACKING.md`), the CMS text (`cms-text.md`) and a `README.md`. Start with the README. |
| `3_combined_draft/` | The draft text and all eight figures on one page, `blog_preview.html`, with the launcher `open_blog_preview.bat`. |

## Reading and editing the combined draft

Read it at https://aish-droid.github.io/aid_blog1/ or, on your own computer, double-click `3_combined_draft/open_blog_preview.bat` (it starts a small local web server; opening the HTML file by double-click will not load the interactives). Edits to the text are made in Word and sent back, then the page is updated.

Figures 1a, 1b, 2, 3, 7, 8a and 8b are the published Flourish charts, embedded live, so the page needs an internet connection. They carry their own titles, subtitles and sources. Figures 4, 5 and 6 are the live interactives from `2_cgd_interactives/`, and their titles, subtitles and notes are page text. The Flourish chart IDs and footers are in `1_flourish_charts/README.md`.

## Scope

This is a copy of the working files in `output/blog` and `output/cgd-interactives`. The code that regenerates them (`code/13`, `16`, `17`, `18`, `12`) still writes to those original folders, not here. Re-copy if you rebuild.
