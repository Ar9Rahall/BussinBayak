// --- MUSIC PLAYER UI ONLY (NO AUDIO FILES YET) ---

String[] titles = {
  "Track 1", "Track 2", "Track 3", "Track 4",
  "Track 5", "Track 6", "Track 7", "Track 8"
};

int currentSong = -1;
boolean isPaused = false;
float volume = 0.7;

void setup() {
  size(1200, 750);
  smooth();
}

void draw() {
  background(20, 10, 30);

  // AR9 background
  fill(180, 0, 0, 40);
  textAlign(CENTER, CENTER);
  textSize(300);
  text("AR9", width / 2, height / 2);

  drawHeader();
  drawAlbums();
  drawMainContent();
  drawControls();
  drawSidebar();
  drawFooter();
}

// ---------------- UI SECTIONS ----------------

void drawHeader() {
  fill(40, 20, 60);
  rect(0, 0, width, 70);
  fill(255);
  textSize(26);
  textAlign(LEFT, CENTER);
  text("AR9 MUSIC PLAYER", 30, 35);
}

void drawAlbums() {
  int x = 60;
  int y = 120;
  int w = 150;
  int h = 120;
  int gap = 30;

  textAlign(CENTER, CENTER);
  textSize(12);

  for (int i = 0; i < 8; i++) {
    if (i == currentSong) {
      fill(120, 0, 0, 200);
    } else {
      fill(40, 20, 60);
    }

    rect(x + (i % 4) * (w + gap),
         y + (i / 4) * (h + gap),
         w, h, 8);

    fill(255);
    text(titles[i],
         x + (i % 4) * (w + gap) + w / 2,
         y + (i / 4) * (h + gap) + h / 2);
  }
}

void drawMainContent() {
  fill(40, 20, 60);
  rect(60, 430, 700, 130, 10);

  fill(255);
  textAlign(LEFT, TOP);
  textSize(18);
  text("Now Playing:", 80, 450);

  textSize(24);
  if (currentSong >= 0) {
    text(titles[currentSong] + (isPaused ? " (Paused)" : " (Playing)"), 80, 490);
  } else {
    text("Nothing Playing", 80, 490);
  }
}

// ---------------- PLAYER CONTROLS ----------------

void drawControls() {
  int y = 580;

  drawButton(220, y, "⏮");
  drawButton(300, y, isPaused ? "▶" : "⏸");
  drawButton(380, y, "⏭");
  drawButton(500, y, "➖");
  drawButton(580, y, "➕");

  fill(255);
  textSize(14);
  textAlign(CENTER, CENTER);
  text("Volume: " + nf(volume, 1, 2), 540, y + 50);
}

void drawButton(int x, int y, String label) {
  fill(60, 30, 80);
  rect(x, y, 60, 40, 8);
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(label, x + 30, y + 20);
}

void drawSidebar() {
  fill(30, 15, 45);
  rect(900, 120, 250, 510, 10);

  fill(255);
  textAlign(LEFT, TOP);
  textSize(20);
  text("Playlist", 920, 140);

  for (int i = 0; i < titles.length; i++) {
    textSize(14);
    text("▶ " + titles[i], 920, 180 + i * 45);
  }
}

void drawFooter() {
  fill(40, 20, 60);
  rect(0, height - 60, width, 60);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Play • Pause • Skip • Volume | AR9", width / 2, height - 30);
}

// ---------------- INTERACTION ----------------

void mousePressed() {

  // Album clicks
  int x = 60;
  int y = 120;
  int w = 150;
  int h = 120;
  int gap = 30;

  for (int i = 0; i < 8; i++) {
    int bx = x + (i % 4) * (w + gap);
    int by = y + (i / 4) * (h + gap);

    if (mouseX > bx && mouseX < bx + w &&
        mouseY > by && mouseY < by + h) {
      playSong(i);
    }
  }

  // Control buttons
  if (over(220, 580, 60, 40)) previousSong();
  if (over(300, 580, 60, 40)) togglePause();
  if (over(380, 580, 60, 40)) nextSong();
  if (over(500, 580, 60, 40)) changeVolume(-0.1);
  if (over(580, 580, 60, 40)) changeVolume(0.1);
}

// ---------------- PLAYER LOGIC (NO AUDIO) ----------------

void playSong(int index) {
  currentSong = index;
  isPaused = false;
}

void togglePause() {
  if (currentSong == -1) return;
  isPaused = !isPaused;
}

void nextSong() {
  if (currentSong < 0) return;
  currentSong = (currentSong + 1) % titles.length;
}

void previousSong() {
  if (currentSong < 0) return;
  currentSong = (currentSong - 1 + titles.length) % titles.length;
}

void changeVolume(float amount) {
  volume = constrain(volume + amount, 0, 1);
}

boolean over(int x, int y, int w, int h) {
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}
