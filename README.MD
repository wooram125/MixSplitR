# MixSplitR v6.9
### Mix Archival Tool by KJD

MixSplitR helps you organize your digitized vinyl and CD collection. It works with both recorded mixes and individual tracks, intelligently detecting whether your files are mixes or single songs. For mixes, it splits them into individual tracks, then identifies each song using audio fingerprinting, and organizes everything with full metadata and artwork. Use it to split and tag your personal recordings for easy library management.

## Go from this:
<img width="2556" height="1439" alt="Screenshot 2026-01-29 193015" src="https://github.com/user-attachments/assets/5deda5db-578d-4540-95d0-176dd23cd842" />

## To this!
<img width="2559" height="1439" alt="Screenshot 2026-01-29 191743" src="https://github.com/user-attachments/assets/493deb46-e393-4cdf-b8f8-c86b51c5432f" />

## DOWNLOAD LATEST RELEASES: https://github.com/chefkjd/MixSplitR/releases

## ⚠️ IMPORTANT - PLEASE READ ⚠️

**For Personal Use Only**: This tool is designed to help you organize and archive your personal music collection from digitized vinyl, CDs, and recordings you own or have legal access to.

**Technical Requirement**: The songs need to have 2 seconds of silence in between them for the tool to recognize them as separate tracks. Fully mixed DJ performances with seamless transitions will not work properly.

**KEEP YOUR API KEYS PRIVATE**: After first run, a `config.json` file is created containing your ACRCloud credentials. **DO NOT share this file, upload it to public repositories (GitHub, etc.), or post it online.** Anyone with access to your credentials can use your API quota. Keep `config.json` private and secure. If you accidentally expose it, regenerate your API keys in the ACRCloud console immediately. **The `config.json` file must remain in the same folder as the MixSplitR executable** - if you move the program to a new location, move the config file with it.

---

## 🌟 NEW: Preview Mode - The Smart Way to Process Your Music

**Preview Mode is the biggest quality-of-life feature in MixSplitR.** Instead of processing files blindly and hoping for the best, you can now see exactly what will happen before any files are created.

### Why Preview Mode is Better

| Old Way (Direct Processing) | ✅ New Way (Preview Mode) |
|----------------------------|------------------------|
| ❌ Files created immediately | ✅ Review everything first |
| ❌ Misidentified tracks? Too late | ✅ Fix mistakes before they happen |
| ❌ Wasted API calls on re-runs | ✅ Cache saves your API quota |
| ❌ Must re-split audio if you want changes | ✅ Audio cached for instant apply |
| ❌ No way to edit before saving | ✅ Edit the cache file to fix any track |

### How It Works

1. **Choose Preview Mode (Option 2)** - MixSplitR analyzes all your files
2. **Review the Results** - See every track that will be created with artist, title, and status
3. **Make Corrections** - Open the cache file and fix any misidentified tracks
4. **Apply When Ready** - Creates all files instantly from cached audio (no re-processing!)

### The Magic: Cached Audio Chunks

When you run Preview Mode, MixSplitR saves the split audio chunks to a `mixsplitr_temp/` folder. This means:

- **No waiting** - Apply mode loads pre-split audio instead of re-splitting
- **No duplicate work** - Split once, apply anytime
- **Edit freely** - Change track names in the cache, apply, done!

**Bottom line:** Preview Mode gives you complete control over your music library. No surprises, no wasted time, no mistakes.

---

## ✨ Features

### Core Features
- **Automatic Track Splitting** - Detects silence between tracks to split your mixes
- **Audio Fingerprinting** - Identifies songs using ACRCloud's music recognition API
- **Full Metadata Tagging** - Adds artist, title, album, year, genre, and label information
- **Artwork Embedding** - Downloads and embeds high-quality album artwork
- **Lossless FLAC Output** - Exports all tracks in high-quality FLAC format
- **Multi-Format Support** - Works with WAV, FLAC, MP3, M4A, OGG, AAC, WMA, AIFF, OPUS files
- **Multi-File Processing** - Process multiple mix files in one batch
- **Organized Output** - Automatically sorts tracks by artist into folders

### Identification System
- **Dual Identification** - ACRCloud (fast, accurate) + MusicBrainz (free, unlimited) = 95%+ identification rate
- **MusicBrainz/AcoustID Fallback** - Catches tracks ACRCloud misses using free MusicBrainz database
- **Enhanced Metadata** - Adds release year, genres, record label, and ISRC codes from MusicBrainz
- **Source Tracking** - Preview shows which system identified each track

### 🆕 Preview & Apply Workflow
- **Preview Mode** - Analyze all files and review what will be created before committing
- **Cached Audio Chunks** - Split audio saved to temp folder for instant apply (no re-splitting!)
- **Review & Edit** - Opens cache file for manual corrections before applying
- **Safe Non-Destructive Workflow** - See exactly what will happen before creating any files
- **API Quota Saver** - Preview once, apply anytime, no repeat API calls

### Performance
- **Parallel Processing** - Identifies multiple tracks simultaneously with 4 worker threads (2-4x faster!)
- **Batch Artwork Downloads** - Downloads album art in parallel for all tracks at once
- **RAM-Aware Batch Processing** - Automatically optimizes batches based on your system RAM
- **Skip Existing Tracks** - Automatically detects and skips tracks already in your library
- **Memory Safe** - Process hundreds of GB of audio without running out of RAM

### User Experience
- **Interactive Menu System** - Choose your workflow at startup, no command-line flags needed
- **Auto-Update Check** - Shows if you're up to date or if a new version is available
- **Smart Track Detection** - Automatically detects if files are single tracks or mixes
- **Comprehensive Statistics** - Detailed stats showing identified, unidentified, skipped tracks and success rate
- **Clean Progress Display** - Shows file sizes, duration, and track count for each file
- **Auto-Close Terminal** - Terminal closes automatically after completion (macOS)

---

## 📋 Requirements

- **ACRCloud Account** (Free tier: 2,000 identifications/month - see setup instructions below)
- **Optional: MusicBrainz/AcoustID** (Free fallback identification + enhanced metadata)
  - Install: `pip install pyacoustid musicbrainzngs`
  - Automatically included in executable releases
- **Optional: psutil** (Enables RAM-aware batch processing)
  - Install: `pip install psutil`
  - Automatically included in executable releases
- Windows, macOS, or Linux

---

## 🚀 Getting Started

### Step 1: Set Up ACRCloud Account

ACRCloud provides the music recognition service that identifies your tracks:

1. **Create an Account**
   - Go to [https://console.acrcloud.com/signup](https://console.acrcloud.com/signup)
   - Sign up for a free account
   - Verify your email address

2. **Create a Project**
   - Log in to the [ACRCloud Console](https://console.acrcloud.com)
   - Click **"Create Project"** or **"Audio & Video Recognition"**
   - Choose **"Audio & Video Recognition"** as the project type
   - Give your project a name (e.g., "MixSplitR")
   - Click **Create**

3. **Get Your API Credentials**
   - In your project dashboard, find:
     - **Host** (e.g., `identify-us-west-2.acrcloud.com`)
     - **Access Key** (a long string of letters and numbers)
     - **Access Secret** (another long string)
   - Keep this page open - you'll need these values on first run!

4. **Understanding the Free Tier**
   - 2,000 free identifications per month
   - Enough for approximately 30-40 mixes
   - Perfect for personal use!

### Step 2: Prepare Your Audio Files

1. Place your audio files in the same folder as MixSplitR
   - **Supported Formats**: WAV, FLAC, MP3, M4A, OGG, AAC, WMA, AIFF, OPUS
   - **Single tracks**: Files under 8 minutes are recognized as individual songs
   - **Mixes**: Files 8+ minutes are treated as mixes and split automatically
2. For mixes, ensure there are clear gaps of silence between tracks (at least 2 seconds)
3. For best results, use high-quality source files

### Step 3: Run MixSplitR

**Simply run the program - it will guide you through everything!**

```
Windows: Double-click MixSplitR.exe
Mac: Double-click MixSplitR (or run in Terminal)
Linux: python MixSplitR.py
```

---

## 📖 How It Works

### Interactive Menu

```
========================================
              MixSplitR v6.9          
         MIX ARCHIVAL TOOL by KJD     
========================================

What would you like to do?

  1. Process files directly (classic mode)
     → Processes everything immediately, no preview

  2. Preview changes first (safe mode)
     → Analyze files and review before creating anything

  3. Apply cached preview
     → Create files from a previous preview session

  4. Cancel/Delete cached preview
     → Remove preview cache and start fresh

Enter your choice (1-4):
```

### Option 1: Direct Processing (Classic Mode)
- Processes everything immediately
- Best when you're confident tracks will identify correctly
- Files created right away, no preview

### ⭐ Option 2: Preview Mode (RECOMMENDED)
**This is the smart way to use MixSplitR.**

1. Analyzes all files and identifies tracks
2. Saves split audio to `mixsplitr_temp/` folder
3. Saves metadata to `mixsplitr_cache.json`
4. Shows you a preview of everything that will be created
5. After preview, choose:
   - **Apply changes now** - Creates all files immediately from cache
   - **Review & Edit** - Opens cache file for corrections, then exits
   - **Cancel** - Deletes cache and temp files, start over

**Why use Preview Mode?**
- See what you're getting before committing
- Fix misidentified tracks by editing the cache file
- No wasted API calls - preview once, apply anytime
- Instant apply - audio is already split and cached!

### Option 3: Apply Cached Preview
- Creates files from a previous preview session
- Uses cached audio chunks (no re-splitting needed!)
- Much faster than re-processing from scratch
- Use after editing the cache file to fix mistakes

### Option 4: Cancel/Delete Cached Preview
- Removes `mixsplitr_cache.json` and `mixsplitr_temp/` folder
- Use to start fresh or clean up after applying

---

## 💡 Recommended Workflow

### For Best Results, Use Preview Mode:

```
1. Place audio files in MixSplitR folder
2. Run MixSplitR → Choose Option 2 (Preview)
3. Wait for analysis to complete
4. Review the preview table
   - Look for any obvious misidentifications
   - Note any "Unidentified" tracks
5. Choose "Review & Edit" to open the cache file
6. Fix any wrong artist/title entries in the JSON
7. Save the cache file
8. Run MixSplitR again → Choose Option 3 (Apply)
9. Done! Perfect library with no mistakes.
```

### Quick Processing (When You Trust the Results):

```
1. Place audio files in MixSplitR folder
2. Run MixSplitR → Choose Option 1 (Direct)
3. Wait for processing to complete
4. Done!
```

---

## 📁 Output Structure

```
My_Music_Library/
├── Artist Name/
│   ├── Artist Name - Song Title.flac
│   ├── Artist Name - Another Song.flac
│   └── folder.jpg (album artwork)
├── Another Artist/
│   ├── Another Artist - Track.flac
│   └── folder.jpg
└── File1_Track_3_Unidentified.flac (if not identified)
```

---

## 🔧 Cache Files

When using Preview Mode, MixSplitR creates:

| File/Folder | Purpose |
|-------------|---------|
| `mixsplitr_cache.json` | Track metadata, artwork URLs, identification results |
| `mixsplitr_temp/` | Pre-split audio chunks (FLAC format) |

**Editing the Cache File:**

The cache is a JSON file you can edit with any text editor. Each track looks like:

```json
{
  "status": "identified",
  "artist": "Wrong Artist",
  "title": "Wrong Title",
  "album": "Unknown Album"
}
```

Just change `"Wrong Artist"` to the correct artist, save, and apply!

These files are automatically cleaned up when you choose to delete them after applying, or via Option 4.

---

## ❓ Troubleshooting

### "No audio files found"
- Ensure audio files are in the same folder as MixSplitR
- Check supported formats: WAV, FLAC, MP3, M4A, OGG, AAC, WMA, AIFF, OPUS

### "ACRCloud API error"
- Verify your credentials in `config.json`
- Check your API quota at [console.acrcloud.com](https://console.acrcloud.com)

### "Chunk index out of range" in Apply Mode
- The source audio file may have changed since preview
- Delete cache (Option 4) and re-run preview

### Program seems frozen during splitting
- Splitting large mixes takes time (1-2 minutes for 60+ minute files)
- The progress display shows which file is being processed

### macOS: "Cache file not found" but file exists
- MixSplitR automatically handles macOS extended attributes
- If issues persist, run: `xattr -c mixsplitr_cache.json`

### Track was misidentified
- This is exactly why Preview Mode exists!
- Use Option 2, then "Review & Edit" to fix it before applying

---

## 📊 Version History

**v6.9** - Current Version
- **🌟 Preview Mode Enhancements** - Now the recommended way to use MixSplitR
- **🔔 Auto-Update Check** - Shows version status on startup (up to date or update available)
- **🚀 Cached Audio Chunks** - Preview mode saves split audio to temp folder
- **⚡ Instant Apply Mode** - Uses cached chunks instead of re-splitting (much faster!)
- **📂 Auto-Open Cache** - "Review & Edit" option opens JSON file automatically
- **🖥️ Cross-Platform Progress** - Reliable display on Mac, Windows, and Linux
- **🍎 macOS Auto-Close** - Terminal closes automatically after completion
- **🎨 Icon Support** - Windows compiler includes custom icon in executable
- **🧹 Smart Cleanup** - Option 4 and apply mode clean up both cache and temp files

**v6.8.x**
- Mac file access fixes
- Visible cache file (no hidden dot prefix)
- Bug fixes for preview and apply modes
- Memory optimization for large collections

**v6.8**
- MusicBrainz/AcoustID integration for free fallback identification
- Enhanced metadata (year, genres, label, ISRC codes)
- Dual identification system with 95%+ success rate

**v6.7**
- Interactive menu system (no command-line flags needed)
- Preview & Apply workflow introduced
- Cached processing to avoid repeat API calls

**v6.6**
- Parallel processing with 4 worker threads (2-4x faster)
- Batch artwork downloads

**v6.5.x**
- Skip existing tracks feature
- Comprehensive statistics
- Library scan optimization

**v6.4**
- RAM-aware batch processing
- Memory safety for large collections

**v6.3.x**
- Multi-format support
- Smart track detection (single vs mix)
- Multi-file batch processing

---

## ⚖️ Legal & Credits

- **MixSplitR** by KJD
- Uses **ACRCloud** for audio fingerprinting
- Uses **MusicBrainz/AcoustID** for fallback identification
- Uses **pydub**, **mutagen**, and other open-source libraries

**Intended Use:**
This tool is designed for organizing your personal music collection from digitized vinyl, CDs, and other recordings you own or have legal access to.

**Legal Disclaimer:**
- For personal, non-commercial use only
- Users are responsible for ensuring they have legal rights to process the audio files
- Respect copyright laws and do not distribute copyrighted material

---

## 🔗 Links

- **Releases**: https://github.com/chefkjd/MixSplitR/releases
- **Compiler Guide**: See `COMPILER_GUIDE.md` for building from source
- **ACRCloud Console**: https://console.acrcloud.com

---

**Happy Archiving! 🎵**
