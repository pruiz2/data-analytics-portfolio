# Spotify Top Hits Analysis (2000–2019)

Exploratory analysis of 2,000+ top Spotify tracks using SQL and Python to uncover what audio features characterize popular songs, how music trends have shifted over two decades, and which artists dominated the charts.

## Overview

This project analyzes Spotify's top hits from 2000–2019 to answer the question: **What makes a song popular, and how has popular music changed over time?**

I loaded the dataset into an in-memory SQLite database and used SQL queries alongside pandas and matplotlib to explore artist dominance, genre popularity, audio feature trends, and correlations with popularity score.

## Dataset

- **Source:** [Kaggle — Top Hits Spotify from 2000-2019](https://www.kaggle.com/datasets/paradisejoy/top-hits-spotify-from-20002019)
- **Size:** 2,000 tracks
- **Features:** Artist, Song, Year, Popularity, Danceability, Energy, Loudness, Valence, Tempo, Genre, and more

## Tools & Technologies

- Python
- SQL (SQLite via sqlite3)
- pandas
- matplotlib
- Jupyter Notebook

## Key Findings

- **Rihanna, Drake, and Eminem** dominated the charts with the most top hits over the period (25, 23, and 21 tracks respectively)
- **Valence (positivity) has declined** noticeably since the early 2000s — popular music has trended darker and more melancholic, dropping from ~0.65 in 2000 to ~0.47 in 2018
- **Pure hip hop** had the highest average popularity score (64.3) despite having fewer tracks than pop, suggesting hip hop tracks perform more consistently well
- **Rock** had the highest average popularity of any genre with significant volume (67.0), despite representing a much smaller share of top hits than pop
- **Loudness** is the strongest positive correlator with popularity, while acousticness and energy show slight negative correlations

## Project Structure

```
spotify-analysis/
├── spotify_analysis.ipynb   # Main analysis notebook
├── songs_normalize.csv      # Raw dataset
└── requirements.txt         # Dependencies
```

## How to Run

1. Clone the repo
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Open `spotify_analysis.ipynb` in Jupyter Notebook or VS Code and run all cells
