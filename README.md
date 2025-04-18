# 🎵 Mini-Spotify — Lightweight Music Streaming MVP

**Mini-Spotify** is a minimalist, Spotify-style music streaming MVP built with **Ruby on Rails** and **Bootstrap 5**. It allows users to upload, organize, and stream music through a clean and responsive web interface.

> 🎧 Stream tracks, build playlists, and manage your music — all in a simplified Spotify clone.

---

## 🚀 Features

- 🎶 Upload and stream audio tracks (MP3, WAV, etc.)
- 💿 Create albums and assign tracks
- 🖼️ Upload album artwork and audio with Active Storage
- 📜 Create playlists and manage track collections
- 👤 User authentication (Devise)
- 🧠 Modular and scalable architecture
- 💻 Built with Bootstrap 5 for sleek, responsive UI

---

## 🖼️ Screenshots

> Add screenshots here of playlists, track player, album pages, etc.

---

## 🛠️ Tech Stack

| Category       | Technology                  |
|----------------|-----------------------------|
| Backend        | Ruby on Rails 7             |
| Database       | PostgreSQL                  |
| Auth           | Devise                      |
| File Uploads   | Active Storage (local/cloud)|
| UI Framework   | Bootstrap 5                 |
| Audio Player   | HTML5 Audio Tag             |

---

## ⚙️ Getting Started

### 🧾 Prerequisites

- Ruby 3.2+
- Rails 7+
- PostgreSQL
- Yarn & Node.js

### 💻 Setup Instructions

```bash
# Clone the repository
git clone https://github.com/yourusername/mini-spotify.git
cd mini-spotify

# Install gems
bundle install

# Setup DB
rails db:create db:migrate

# Install Active Storage (if not already)
rails active_storage:install
rails db:migrate

# Start the server
rails server
