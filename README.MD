# MixSplitR v7.0
### Mix Archival Tool by KJD

**🚨 MAJOR UPDATE: v7.0 is Here!**  
MixSplitR now supports **seamless DJ mixes** with a visual waveform editor, interactive metadata editing with audio previews, and expanded 5-source identification for better accuracy. This release addresses the #1 requested feature (DJ mix support) and adds tons of polish—perfect for archiving your digitized vinyl, CDs, and recordings.  

**Go from a folder of untitled recordings → To a perfectly organized music library with artist folders, proper filenames, embedded artwork, genres, and BPM!**

📥 **DOWNLOAD:** [GitHub Releases](https://github.com/chefkjd/MixSplitR/releases)

---

## ⚠️ IMPORTANT - PLEASE READ

- **For Personal Use Only:** This tool is designed to help you organize and archive your personal music collection from digitized vinyl, CDs, and recordings you own or have legal access to.
- **🆕 DJ Mixes Fully Supported:** No more limitations on seamless transitions—use the new Visual Waveform Splitter!
- **KEEP YOUR API KEYS PRIVATE:** Your `config.json` file contains your ACRCloud credentials. **DO NOT share this file, upload it to public repositories (GitHub, etc.), or post it online.** Anyone with access to your credentials can use your API quota. If you accidentally expose it, regenerate your API keys in the ACRCloud console immediately.
- **🆕 Config Location:** Now stored safely in your user data folder:
  - **Windows:** `%APPDATA%\MixSplitR\config.json`
  - **macOS:** `~/Library/Application Support/MixSplitR/config.json`
  - **Linux:** `~/.config/MixSplitR/config.json`

---

## 🆕 What's New in v7.0: A Major Leap Forward

v7.0 is our biggest release yet, transforming MixSplitR into a pro-level tool for DJs, archivists, and music enthusiasts. We've listened to feedback and added features that make processing seamless mixes effortless and metadata more complete.

### ⭐ Headline Features
- 🎛️ **Visual Waveform Splitter** 🆕 — Handle seamless DJ mixes! View the waveform in your browser, add/drag split points, and play audio to verify. Supports Automatic, Manual, and Assisted modes (auto-detect + tweaks).
- ✏️ **Interactive Track Editor** 🆕 — Edit metadata in-terminal: Listen to tracks, fix misidentifications, add genres/BPM, and convert unidentified tracks—all without external files.
- 🎧 **Audio Preview** 🆕 — Play 30-second snippets directly in the app to identify tracks by ear.
- 🎵 **5-Source Identification** 🆕 — Now pulls from ACRCloud, MusicBrainz, iTunes (artwork), Deezer (BPM/genres), and Last.fm (tags) for 95%+ accuracy and richer metadata.

### 🔧 Other Key Additions
- 🥁 **Automatic BPM Detection** 🆕 — From Deezer or local analysis (offline fallback, optimized for EDM).
- 🏷️ **Enhanced Genre Detection** 🆕 — Merges genres/tags from all sources, including EDM subgenres like riddim or melodic techno.
- 🔑 **API Key Validation** 🆕 — Checks credentials at startup; test anytime via menu.
- 📊 **Better Progress & Feedback** 🆕 — Real-time bars, track counts, and status updates.
- 💾 **Safe Config/Cache** 🆕 — User data storage prevents accidental deletion.
- 🍎 **macOS ALAC Output** 🆕 — Optional for better artwork compatibility.
- 🗑️ **Delete Source Files** 🆕 — Optional cleanup after processing.

### Changes from v6.9
- **Upgraded Preview Mode**: Now with "Light" (no disk use) and "Full" options; replaces external JSON editing with in-app editor.
- **Splitting Overhaul**: Silence detection is now "Automatic"; adds Manual/Assisted for DJ mixes (fixes v6.9's seamless mix limitation).
- **Identification Expansion**: From 2 sources to 5; adds BPM/genres.
- **Menu Updates**: Adds "Manage API Keys"; streamlines workflows.
- **Performance Tweaks**: Lazy loading, parallel enhancements—faster and more efficient.

**Upgrade Guide for v6.9 Users**: Delete old cache/temp files via menu (Option 4). Run setup to validate/add Last.fm key. Your old config.json will be migrated automatically.

---

## ✨ Features

### Core Features
- **Automatic Track Splitting** - Detects silence between tracks to split your mixes.
- **🆕 Visual Splitter** - Browser-based waveform editor for seamless DJ mixes.
- **🆕 Assisted Splitting** - Auto-detect + manual review for best of both worlds.
- **5-Source Identification** 🆕 - ACRCloud + MusicBrainz + iTunes + Deezer + Last.fm.
- **Full Metadata Tagging** - Artist, title, album, year, genre, BPM, and more.
- **Artwork Embedding** - Downloads and embeds high-quality album artwork.
- **Lossless FLAC Output** - Exports all tracks in high-quality FLAC format.
- **🆕 macOS ALAC Option** - Full artwork compatibility on Mac.
- **Multi-Format Support** - WAV, FLAC, MP3, M4A, OGG, AAC, WMA, AIFF, OPUS.
- **Organized Output** - Automatically sorts tracks by artist into folders.

### Identification & Metadata
- **Dual Identification** - ACRCloud (fast, accurate) + MusicBrainz (free, unlimited).
- **🆕 BPM Detection** - From Deezer API + local librosa analysis fallback.
- **🆕 Genre Merging** - Collects genres from all 5 sources, deduplicates intelligently.
- **🆕 Last.fm Tags** - User-generated tags for better EDM subgenre detection.
- **Enhanced Metadata** - Release year, ISRC codes, multiple genres.

| Source | What It Provides 🆕 |
|--------|---------------------|
| **ACRCloud** | Primary identification via audio fingerprinting |
| **MusicBrainz** | Free fallback + release year, ISRC codes |
| **iTunes** | High-quality album artwork |
| **Deezer** | BPM data and additional genre info |
| **Last.fm** | User-generated tags (great for EDM subgenres!) |

### 🆕 Preview & Apply Workflow
- **Preview Mode** - Analyze all files and review before committing.
- **Light Preview** 🆕 - No temp storage needed, re-splits during apply.
- **Full Preview** 🆕 - Cached audio chunks for instant apply + audio playback.
- **Interactive Editor** 🆕 - Edit tracks directly in terminal with audio preview.
- **Audio Preview** 🆕 - Listen to unidentified tracks before entering metadata.

| Preview Type | Disk Usage | Apply Speed | Audio Preview 🆕 |
|--------------|------------|-------------|------------------|
| Full Preview | ~85% of input size | Instant (cached) | ✅ Yes |
| Light Preview | None | Re-splits from source | ❌ No |

### User Experience
- **🆕 API Key Validation** - Credentials tested before processing begins.
- **🆕 Safe Config Storage** - Config/cache stored in user data folder (won't be deleted on update).
- **🆕 Progress Feedback** - Real-time status showing loading, splitting, identifying, saving.
- **Contextual Menus** - Clear descriptions for every option.

### Performance
- **Parallel Processing** - 4 worker threads (2-4x faster identification).
- **Parallel File Analysis** - Instant single vs mix detection.
- **Batch Artwork Downloads** - Downloads album art in parallel.
- **RAM-Aware Batching** - Automatically optimizes based on system RAM.
- **Skip Existing Tracks** - Detects and skips tracks already in your library.
- **Lazy Loading** - Heavy libraries (librosa) load only when needed.

---

## 📋 Requirements

### Required
- **ACRCloud Account** (Free tier: 2,000 identifications/month).

### Optional (Recommended)
- **🆕 Last.fm API Key** (Free - enables better genre tagging).
  - Get yours at: https://www.last.fm/api/account/create.

### Bundled in Releases
The compiled releases include everything you need:
- MusicBrainz/AcoustID (fallback identification).
- psutil (RAM-aware processing).
- librosa (offline BPM detection).
- All other dependencies.

---

## 🚀 Getting Started

### Step 1: Set Up ACRCloud Account

1. **Create an Account** at https://console.acrcloud.com/signup.
2. **Create a Project** → Choose "Audio & Video Recognition".
3. **Get Your Credentials:**
   - Host (e.g., `identify-us-west-2.acrcloud.com`).
   - Access Key.
   - Access Secret.

**Free Tier:** 2,000 identifications/month (enough for ~30-40 mixes).

### Step 2: First Run Setup

When you first run MixSplitR, it will guide you through setup:
============================================================
ACRCloud API Setup (Required)
ACRCloud provides the music recognition service.
Get your free API keys at: https://console.acrcloud.com
Enter your ACR Host: identify-us-west-2.acrcloud.com
Enter your Access Key: xxxxxxxxxx
Enter your Secret Key: xxxxxxxxxx

Last.fm API Setup (Optional)
Last.fm improves genre detection with user-generated tags.
Get a free API key at: https://www.last.fm/api/account/create
Add Last.fm API key for better tagging? (y/n) [n]: y
Enter your Last.fm API Key: xxxxxxxxxx
✅ Last.fm API key added!
============================================================
Setup Complete!
text### Step 3: Prepare Your Audio Files

- **Windows/Linux:** Place audio files in the same folder as MixSplitR.
- **macOS .app:** Place audio files next to the .app (portable mode) or in `~/Music`.
- **Single tracks:** Files under 8 minutes.
- **Mixes:** Files 8+ minutes (split automatically).
- For automatic splitting, ensure clear gaps of silence between tracks (at least 2 seconds).
- For seamless DJ mixes, use **Manual** or **Assisted** splitting mode.

### Step 4: Run MixSplitR
Windows: Double-click MixSplitR.exe
Mac:     Double-click MixSplitR (or run in Terminal)
Linux:   python MixSplitR.py
text---

## 📖 How It Works

### Interactive Menu
============================================================
MixSplitR v7.0
MIX ARCHIVAL TOOL by KJD
What would you like to do?

👁️  Preview Mode
Analyze files, identify tracks, review before saving
→ Best for first-time use or reviewing results
⚡ Direct Mode (One-Click)
Process everything immediately, save as you go
→ Fast, no review step
📦 Apply Cached Preview
Apply a previous preview session's results
→ Use after editing preview in external editor
🗑️  Delete Cache
Remove cached preview data and temp files
🔑 Manage API Keys
View or update ACRCloud/Last.fm credentials

Enter choice (1-5):
text### ⭐ Option 1: Preview Mode (RECOMMENDED)

**This is the smart way to use MixSplitR.**

When you select Preview Mode:

1. **API Validation** - Checks your credentials before processing.
2. **File Analysis** - Instantly analyzes all files (parallel ffprobe).
3. **Progress Feedback** - Shows what's happening: loading, splitting, identifying.
4. **Batch Summary** - Shows identified/unidentified/skipped counts.
5. **Preview Table** - Displays all metadata.
6. **Next Steps** - Choose: Apply Now, Edit Tracks, or Cancel.

### Option 2: Direct Mode (One-Click)
- Processes everything immediately with no review step.
- Best when you're confident tracks will identify correctly.
- Most hands-off approach but may have accuracy issues.
- Use Preview Mode if you want to review/edit before files are created.

### Option 3: Apply Cached Preview
- Creates files from previous preview.
- Uses cached audio (no re-splitting).
- Much faster than re-processing.

### Option 4: Delete Cache
- Removes cache and temp files from safe storage location.
- Use to start fresh.

### Option 5: Manage API Keys
- View current API key status and config location.
- Update ACRCloud credentials with validation.
- Test credentials without processing files.
- Add/update/remove Last.fm key.

---

## ✏️ Interactive Track Editor 🆕

After preview completes, choose **Option 2: Edit tracks** to open the interactive editor:
══════════════════════════════════════════════════════════════
TRACK EDITOR
══════════════════════════════════════════════════════════════
✅ 152 identified  ❓ 3 unidentified  ⏭️ 0 skipped
⚠️  12 missing genre  ⚠️  8 missing BPM
──────────────────────────────────────────────────────────────
All Tracks (155 tracks)
Page 1/11
──────────────────────────────────────────────────────────────

✅ Skrillex            - Bangarang               G:Dubstep    B:110
✅ Deadmau5            - Strobe                  G:Progress.. B:128
❓ File1_Track_3_Unidentified.flac               BPM:~126
...

──────────────────────────────────────────────────────────────
FILTER:  1. All tracks    2. Missing genre   3. Missing BPM
4. Unidentified  5. Identified only
NAV:     6. Next page     7. Previous page
EDIT:    8. Edit track #
FINISH:  9. Save & Apply  0. Save & Exit     X. Discard
──────────────────────────────────────────────────────────────
Enter choice:
text### Quick Reference

| # | Action |
|---|--------|
| 1 | Show all tracks |
| 2 | Show tracks missing genre |
| 3 | Show tracks missing BPM |
| 4 | Show unidentified tracks |
| 5 | Show identified only |
| 6 | Next page |
| 7 | Previous page |
| 8 | Edit a specific track |
| 9 | Save changes and create files |
| 0 | Save and exit (apply later) |
| X | Discard changes |

### Editing a Track
══════════════════════════════════════════════════════════════
EDITING TRACK 3
══════════════════════════════════════════════════════════════
Status: ❓ Unidentified
File: File1_Track_3_Unidentified.flac
Detected BPM: ~126
Convert to identified track?

Yes, enter metadata
No, go back

Enter choice (1-2): 1
Artist: Knife Party
Title: Internet Friends
Album (Enter to skip): 100% No Modern Talking
Genre (Enter to skip): Electro House
BPM [126]:
✅ Track converted: Knife Party - Internet Friends
text---

## 📁 Output Structure
My_Music_Library/
├── Skrillex/
│   ├── Skrillex - Bangarang.flac
│   ├── Skrillex - Scary Monsters.flac
│   └── folder.jpg
├── Deadmau5/
│   ├── Deadmau5 - Strobe.flac
│   └── folder.jpg
└── File1_Track_3_Unidentified.flac
textEach FLAC file contains:
- Embedded artwork.
- Artist, Title, Album.
- Year, Genre(s), BPM.
- ISRC code (when available).

---

## 🎧 Mix Splitting 🆕

MixSplitR offers three ways to split long mixes into individual tracks:

### Automatic (Silence Detection)
- **Default mode** - works for most mixes with gaps between tracks.
- Great for radio recordings, podcasts, and cassette rips.
- Fast and fully automatic.

### Manual (Visual Editor)
- Opens a **browser-based waveform editor**.
- Click to add split points, drag to adjust.
- **Ctrl+click** (or **Cmd+click** on Mac) a marker to remove it.
- Play audio to verify your splits.
- Perfect for **seamless DJ mixes** with no gaps.
- Requires `splitter_ui.py` module (included in releases).

### Assisted (Auto-Detect + Review)
- **Best of both worlds!** Combines automatic detection with manual review.
- First scans for silence gaps and pre-populates split points.
- Opens visual editor with points already placed on waveform.
- Review, adjust, add, or remove points before confirming.
- Great when automatic detection is *mostly* right but needs tweaks.

When mixes are detected, you'll be prompted to choose:
============================================================
SPLITTING MODE
Found 2 mix(es) that will be split into tracks.
Splitting options:

Automatic (silence detection) - default
→ Works for most mixes with gaps between tracks
Manual (visual editor)
→ Opens browser to set split points on waveform
→ Best for seamless DJ mixes with no gaps
Assisted (auto-detect + review)
→ Scans for silence, then opens visual editor
→ Review and adjust auto-detected points
→ Best of both worlds!

Choose splitting mode (1/2/3) [1]:
text---

## 🍎 macOS Users 🆕

### First Run (Gatekeeper)
When you first open MixSplitR.app:
- Right-click the app → "Open" → Click "Open" in dialog.
- This only needs to be done once (unsigned app security check).

### Compatibility
- **M-series Macs (M1/M2/M3/M4):** Native ARM64 build.
- **Intel Macs:** Runs via Rosetta 2 translation.

Both architectures are fully supported. When compiling yourself, you can choose to build specifically for Intel if needed.

### Default Music Folder
The .app version checks for audio files in this order:

1. **Portable Mode:** The folder containing the .app bundle (if audio files are present).
2. **Default Mode:** `~/Music` (if no local files found).

This means you can either:
- **Use portably:** Place `MixSplitR.app` directly in a folder with your audio files.
- **Use installed:** Keep the app anywhere and it will check `~/Music`.

When portable mode is detected:
📂 Found 12 audio files next to app
textIf no audio files are found in either location:
============================================================
No audio files found
Checked: ~/Music (no audio files in root)
💡 Tip: Place audio files next to the .app for portable use,
or put them in ~/Music, or enter a path below.
Supported formats: WAV, FLAC, MP3, M4A, OGG, AAC, WMA, AIFF, OPUS
Options:
• Enter/paste a folder path
• Drag and drop a folder onto this window
• Press Enter to exit
Folder path:
text### Output Format
MixSplitR detects macOS and offers ALAC output:
🍎 macOS detected!
FLAC artwork may not display in Finder/Apple Music.
Options:
• ALAC (.m4a) - Full macOS compatibility, artwork shows everywhere
• FLAC - Universal format, will create folder.jpg for Finder
Output format - FLAC (1) or ALAC (2)? [1]:
text---

## 🗑️ Delete Source Files 🆕

After Apply, MixSplitR can delete your original source files to save disk space:
📁 SOURCE FILES (safe to delete if happy with results)
──────────────────────────────────────────────────────────
• mix_recording_001.wav (23 tracks extracted)
• mix_recording_002.wav (18 tracks extracted)
Total: 2 file(s), 4.2 GB
⚠️  WARNING: This cannot be undone! Your original recordings
will be permanently deleted. Only do this if you're 100%
satisfied with the extracted tracks.
Type 'delete' to remove source files (or press Enter to keep):
text⚠️ This is **permanent** - only do this when you're 100% satisfied!

---

## ❓ Troubleshooting

### "No audio files found"
- Ensure audio files are in the same folder as MixSplitR.
- Check supported formats: WAV, FLAC, MP3, M4A, OGG, AAC, WMA, AIFF, OPUS.

### "ACRCloud API error"
- Verify your credentials in `config.json`.
- Check your API quota at [console.acrcloud.com](https://console.acrcloud.com).

### "Chunk index out of range" in Apply Mode
- The source audio file may have changed since preview.
- Delete cache (Option 4) and re-run preview.

### Program seems frozen during splitting
- Splitting large mixes takes time (1-2 minutes for 60+ minute files).
- The progress display shows which file is being processed.

### macOS: "Cache file not found" but file exists
- MixSplitR automatically handles macOS extended attributes.
- If issues persist, run: `xattr -c mixsplitr_cache.json`.

### Track was misidentified
- This is exactly why Preview Mode exists!
- Use Option 1, then "Edit tracks" to fix before applying.

### BPM not detected
- Deezer may not have BPM for obscure tracks.
- librosa fallback analyzes audio locally (works offline).
- Some tracks may still lack BPM data.

### Last.fm not working
- Check your API key in Option 5 → Manage API Keys.
- Last.fm is optional - everything else works without it.

---

## 📊 Version History

### v7.0 - Current Release
- 🎵 **5-Source Identification** - ACRCloud + MusicBrainz + iTunes + Deezer + Last.fm.
- 🥁 **BPM Detection** - Deezer API + local librosa fallback (works offline!).
- 🎛️ **Visual Splitter** - Browser-based waveform editor for seamless DJ mixes.
- 🏷️ **Enhanced Genres** - Merged from all sources, Last.fm user tags for EDM.
- ✏️ **Interactive Editor** - Edit tracks directly in the terminal, no external files.
- 📂 **Folder Selection** - Drag-and-drop folder path, run from anywhere.
- 🍎 **macOS .app Bundle** - Double-click app with custom icon support.
- ⚡ **Parallel File Analysis** - Instant singles vs mixes detection.
- 🔧 **Manage API Keys** - Option 5 to update credentials without editing config.
- 📝 **BPM for Unidentified** - Detected BPM shown to help manual tagging.
- 🧹 **Compact Output** - Clean console display, one line per file for singles.
- 💾 **Light Preview** - Preview without temp storage option.
- 🗑️ **Delete Source Files** - Optional cleanup after Apply.

### v6.9
- Preview Mode enhancements.
- Auto-update check.
- Cached audio chunks.
- Cross-platform progress display.
- macOS auto-close terminal.

### v6.8
- MusicBrainz/AcoustID integration.
- Enhanced metadata (year, genres, label, ISRC).
- Dual identification system.

### v6.7
- Interactive menu system.
- Preview & Apply workflow.
- Cached processing.

### v6.6
- Parallel processing (4 worker threads).
- Batch artwork downloads.

---

## ⚖️ Legal & Credits

**MixSplitR** by KJD

**Services Used:**
- [ACRCloud](https://www.acrcloud.com/) - Audio fingerprinting.
- [MusicBrainz](https://musicbrainz.org/) / [AcoustID](https://acoustid.org/) - Fallback identification.
- [Last.fm](https://www.last.fm/) - User-generated tags.
- [Deezer](https://www.deezer.com/) - BPM and metadata.
- [iTunes](https://www.apple.com/itunes/) - Album artwork.

**Libraries:** pydub, mutagen, librosa, and other open-source projects.

**Intended Use:** Organizing your personal music collection from digitized vinyl, CDs, and recordings you own or have legal access to.

**Legal Disclaimer:**
- For personal, non-commercial use only.
- Users are responsible for ensuring they have legal rights to process the audio files.
- Respect copyright laws and do not distribute copyrighted material.

---

## 🔗 Links

- **Releases:** https://github.com/chefkjd/MixSplitR/releases
- **Compiler Guide:** See `COMPILER_GUIDE.md` for building from source
- **ACRCloud Console:** https://console.acrcloud.com
- **Last.fm API:** https://www.last.fm/api/account/create

---

**Happy Archiving! 🎵**
