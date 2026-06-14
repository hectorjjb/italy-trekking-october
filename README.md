# Trekking Italy — Early October

A single-page, shareable guide comparing **six trekking routes in Italy** for an early-October trip
(5–7 days), with an interactive map.

**Live site:** https://hectorjjb.github.io/italy-trekking-october/

## The six routes

| # | Route | Region | Style |
|---|-------|--------|-------|
| ① | Tre Cime / Sesto | Dolomites | Valley-based day hikes |
| ② | Alpe di Siusi / Seiser Alm | Dolomites | Gentle meadow day hikes |
| ③ | Cinque Terre + Portofino | Liguria coast | Coastal day hikes |
| ④ | Via Francigena (Lucca → Siena) | Tuscany | Town-to-town walk |
| ⑤ | Path of the Gods | Amalfi Coast | Clifftop day hikes |
| ⑥ | Selvaggio Blu | Sardinia | Wild coast traverse |

## Editing & publishing

The whole site is one file: [`index.html`](index.html) (Apple-inspired styling, [Leaflet](https://leafletjs.com/)
map with [CARTO](https://carto.com/) Positron tiles — no build step).

1. Edit `index.html`.
2. Publish:

   ```bash
   ./update.sh "your commit message"
   ```

   (or just `./update.sh` for a default message)

Changes go live at the URL above ~30–60s after pushing, via **GitHub Pages** (served from `main`).

## Notes

- Distances and elevations are typical published figures — planning estimates, not GPS-exact.
- Map data © OpenStreetMap contributors © CARTO.
