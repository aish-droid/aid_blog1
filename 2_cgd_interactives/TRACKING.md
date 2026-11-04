# Event Tracking: Aid and Middle-Income Countries Interactives

This project has three separately embedded interactives. Each sets its own `window.CGD_INTERACTIVE_NAME` before loading the shared `shared/tracking.js`.

Tracking implemented per the [CGD Interactive Analytics Tracking Standard](https://github.com/Center-for-Global-Development/cgd-interactive-toolkit/blob/main/analytics-tracking-standard.md).

Both fire `interactive_view` once, after the first render.

## `aid-middle-income-ida-grant-element` (`ida-grant-element.html`)

| `action_type` | `action_label` | `action_value` | Notes |
|---|---|---|---|
| `detail_open` | `income_class_panel` | income class name (4 values: Low income, Lower-middle income, Upper-middle income, High income) | Click, tap, or Enter/Space on a class panel opens its country table |
| `detail_close` | `selection_clear` | | Selecting the open class again closes the table |
| `download` | `download_data_csv` | | "Download the data (CSV)" link |

## `aid-middle-income-conflict-map` (`aid-conflict-map.html`)

| `action_type` | `action_label` | `action_value` | Notes |
|---|---|---|---|
| `filter` | `year_slider` | year (1990–2024) | Fires on `change` (release / key press), not `input` |
| `filter` | `conflict_locations_toggle` | `on` / `off` | "Show conflict locations" checkbox |
| `view_control` | `play_pause_button` | `play` / `pause` | Year animation |
| `download` | `download_data_csv` | | "Download the data (CSV)" link |

## `aid-middle-income-donor-sankey` (`donor-recipient-sankey.html`)

| `action_type` | `action_label` | `action_value` | Notes |
|---|---|---|---|
| `filter` | `year_slider` | year (1990–2024) | Fires on `change`, not `input` |
| `view_control` | `recipient_grouping_toggle` | `continent` / `income_group` | Switches how recipients are grouped |
| `view_control` | `highlight_own_continent_toggle` | `on` / `off` | Only available in the continent view |
| `view_control` | `play_pause_button` | `play` / `pause` | Year animation |
| `detail_open` | `donor_node` | donor name (about 28 values) | Click or Enter/Space on a donor bar |
| `detail_open` | `recipient_node` | recipient group name (6 or fewer values) | Click or Enter/Space on a recipient bar |
| `filter` | `donor_member_select` | group name (4 values: Other European countries, Gulf countries, Other bilateral donors, Multilateral organisations) | Country picker in the detail panel of a grouped donor. The individual country is deliberately not sent (about 100 distinct values) |
| `detail_close` | `selection_clear` | | Clicking the selected bar again, "Clear selection", or Esc |
| `download` | `download_data_csv` | | "Download the data (CSV)" link |

## Not Tracked

- Hover / tap tooltips on countries, flows and bars (including the IDA chart's bars): high volume, low signal.
- Scroll inside the IDA country table.
- Playback year steps: only the play/pause button is tracked, not each automatic year advance.
- Scroll inside the country-by-country detail lists.
- Window / iframe resize (the layout re-flows, but this is not a user action).
