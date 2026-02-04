# Russian Solitaire

A challenging single-player card game built as a standalone HTML5 web application. Russian Solitaire is one of the hardest solitaire variants with approximately 5-10% of games being winnable.

## Game Overview

**Objective:** Move all 52 cards to four foundation piles, organized by suit in ascending order (Ace to King).

**Key Rules:**
- All cards are dealt face-up into 7 tableau columns (no draw pile)
- Tableau cards stack in descending order by **same suit** (e.g., 7♠ on 8♠)
- Only Kings can be placed in empty columns
- Foundation piles build up by suit from Ace to King

**Controls:**
- **Tap to select**, then tap destination to move
- **Double-tap** a card to auto-move to first valid position
- **Drag and drop** cards between columns
- One-tap move mode available in settings

## Running the App

### Requirements
- Any modern web browser (Chrome, Firefox, Safari, Edge)
- No server, dependencies, or build process required

### Local Usage

Simply open `index.html` directly in a browser:

```bash
git clone https://github.com/starlessoblivion/russian-solitaire.git
cd russian-solitaire
open index.html  # macOS
# or
xdg-open index.html  # Linux
# or
start index.html  # Windows
```

Or serve via HTTP (required for some browsers):

```bash
python3 -m http.server 8000
# Open http://localhost:8000
```

### Android (Termux)

```bash
pkg install python git
git clone https://github.com/starlessoblivion/russian-solitaire
cd russian-solitaire
python3 -m http.server 8000
```

Open **http://localhost:8000** in your browser.

### Hosting

The app is a single HTML file with all CSS and JavaScript embedded. Deploy by serving `index.html` from any static file host:

- **GitHub Pages:** Enable Pages in repo settings
- **Netlify/Vercel:** Drop the file or connect the repository
- **Any web server:** Serve the single HTML file

### Mobile

The app is fully responsive and touch-optimized. Add to home screen on iOS/Android for an app-like experience.

## Features

| Feature | Description |
|---------|-------------|
| Dealer Animation | Cards animate from deck to tableau on new game |
| Auto-Move | Optional automatic movement of aces and foundation-ready cards |
| Undo | Full move history with unlimited undo |
| Hint System | Highlights valid moves when stuck |
| Tutorial Mode | Guided introduction with favorable deck |
| Themes | 8 backgrounds, 5 card backs, 2 card face styles |
| Scoreboard | Tracks wins, losses, scores, and times |
| Persistence | Game state auto-saves; resume interrupted games |
| Export/Import | Backup all data to JSON file |

## Scoring

```
Score = (Cards in Foundation × 10) - Moves + Win Bonus
```

| Component | Points |
|-----------|--------|
| Cards in foundation | +10 each (max 520) |
| Moves taken | -1 each |
| Win bonus | +500 |

## Data Storage

All data stored in browser localStorage:

| Key | Contents |
|-----|----------|
| `russianSolitaireSettings` | Game preferences |
| `russianSolitaireTheme` | Visual theme selection |
| `russianSolitaireScoreboard` | Game history |
| `russianSolitaireGameState` | Current game (auto-save) |

Use **Settings > Export** to backup data to a JSON file, **Import** to restore.

## Card Layout

| Column | Face Down | Face Up | Total |
|--------|:---------:|:-------:|:-----:|
| 1 | 0 | 1 | 1 |
| 2 | 1 | 5 | 6 |
| 3 | 2 | 5 | 7 |
| 4 | 3 | 5 | 8 |
| 5 | 4 | 5 | 9 |
| 6 | 5 | 5 | 10 |
| 7 | 6 | 5 | 11 |
| **Total** | **21** | **31** | **52** |

## Tech Stack

- **Single HTML file** (~3500 lines)
- **Vanilla JavaScript** (no frameworks or dependencies)
- **CSS3** with transitions and animations
- **LocalStorage API** for persistence
- **Touch events** for mobile support
- Works offline after initial load

## License

MIT

---

Made with ♠️ by starless_oblivion
