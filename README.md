# Russian Solitaire

A unique solitaire variant without a draw pile.

## Quick Start

### Run on Android (Termux)

```bash
pkg install python git
git clone https://github.com/starlessoblivion/russian-solitaire
cd russian-solitaire
python3 -m http.server 8000
```

Then open **http://localhost:8000** in your browser.

### Run Locally

```bash
git clone https://github.com/starlessoblivion/russian-solitaire
cd russian-solitaire
python3 -m http.server 8000
```

Open http://localhost:8000

## Rules

### Setup
- Standard 52-card deck
- 7 vertical tableau columns (fanned so you can see all cards)
- 4 foundation piles

### Layout
| Column | Face Down | Face Up | Total |
|--------|-----------|---------|-------|
| 1 | 0 | 1 | 1 |
| 2 | 1 | 5 | 6 |
| 3 | 2 | 5 | 7 |
| 4 | 3 | 5 | 8 |
| 5 | 4 | 5 | 9 |
| 6 | 5 | 5 | 10 |
| 7 | 6 | 5 | 11 |

**Total:** 52 cards

### Key Differences
1. **No draw pile** - All cards dealt upfront
2. Foundation builds **UP by suit** (A→K)
3. Tableau builds **DOWN by same suit** (K→A)
4. Only **Kings** can go in empty columns

### How to Play
1. Tap a card to select it
2. Tap a valid destination to move
3. Use **Auto Move** to automatically move cards to foundations
4. **New Game** to restart

## Features
- Touch-friendly UI
- Drag to select cards
- Auto-move button
- Win detection
- Responsive design

## Tech
- Pure HTML/CSS/JavaScript
- No dependencies
- Works offline

---

Made with ♠️ by starless_oblivion
