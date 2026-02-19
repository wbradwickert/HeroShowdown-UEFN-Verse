# HeroShowdown (UEFN)

**Language:** Verse | **Platform:** Unreal Editor for Fortnite (UEFN) | **Status:** In Development (Hiatus)

### Project Overview
HeroShowdown is a competitive multiplayer arena shooter developed using **Verse** and **UEFN**. It features a custom-built class system with 25+ unique hero archetypes, state-managed game modes, and a reactive UI system.

While currently on academic hiatus, the core logic for the "Wipeout" and "Gem Grab" game modes is fully functional.

### Technical Highlights

#### 1. Custom Class & Ability System (`custom_player.verse`)
Built a scalable class inheritance system handling unique logic for over 20 distinct characters.
* **Super Meter Logic:** Implemented a float-based resource system (`SuperMeter`) that charges based on damage dealt and triggers unique ultimates.
* **Unique Mechanics:**
    * **Surge (Class 7-10):** A multi-stage upgrade system that evolves the character's movement, health, and weapon stats dynamically during gameplay.
    * **Leon (Class 6):** Stealth logic handling visibility states and UI masking.
    * **Lily (Class 25):** Teleportation logic using transform mapping.

#### 2. Game State Management (`Game_Manager.verse`)
A central `creative_device` manager that handles the game loop lifecycle:
* **Mode Switching:** Dynamically toggles between **Gem Grab** (resource collection) and **Wipeout** (elimination-based) modes.
* **Map Logic:** Handles asset visibility and collision for multiple map layouts (Desert vs. Subway) within a single island instance.
* **Round Logic:** Manages team spawning, score tracking, and "Panic" states (countdown timers).

#### 3. Custom UI Implementation
* Programmed a dynamic HUD using Verse's UI API (`canvas`, `text_block`, `overlay`).
* Real-time updates for "Super" readiness, elimination feeds, and game timers.

---

### File Structure
* `verse/Game_Manager.verse`: The main brain of the island. Handles the `OnBegin` event, player spawning, and round orchestration.
* `verse/custom_player.verse`: The object-oriented player wrapper. Stores per-player variables (Ammo, Class ID, Cooldowns) and handles specific ability execution.

### 🔮 Future Roadmap
* Refine the "Heist" game mode logic.
* Optimize the "Train" cinematic sequence loop in the Subway map.
* Publish to Fortnite Live Servers.
