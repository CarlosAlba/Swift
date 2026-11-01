# Diamond Games -  Code Challenge

## SlotMachine

### OverView
A slot machine game built with SwiftUI using the Model-View-ViewModel (MVVM) architectural pattern. The application allows players to spin three reels, select their bet, and earn credits based on matching symbols.

The project separates the user interface, game state, and game logic to keep the code organized, testable, and easy to maintain.

## Features Implemented

- Three-reel slot machine interface.
- Random symbol generation using weighted probabilities.
- Animated reels with staggered stopping times.
- Betting system that cycles through 5, 10, and 15 credits.
- Initial credit balance of 100 credits.
- Credit deduction when a spin starts.
- Payout calculation based on matching symbols and the selected bet.
- Automatic credit updates when a payout is awarded.
- Win tracking and display of the most recent winnings.
- Alert when the player does not have enough credits to spin.
- Winning alert for three matching symbols.
- System sound effects for starting a spin, winning, and losing.
- Custom image assets for the slot machine interface and controls.
- Spin validation to prevent overlapping spins and bets that exceed the available balance.

## Assumptions

- The player starts with 100 credits.
- The available bets are 5, 10, and 15 credits.
- The selected bet cycles back to 5 after reaching 15.
- Each spin deducts the selected bet before the result is evaluated.
- The middle symbol on each reel forms the active payline.
- A winning combination consists of three matching symbols on the active payline.
- Symbol weights and payout multipliers are defined by the game engine and symbol model.
- The spin animation lasts approximately 2.5 seconds, with reels stopping at different times.
- System sound IDs are used for basic audio feedback; their exact sounds may vary between iOS versions.
- The game is a local demonstration and does not require a backend, account, or network connection.

## Requirements

- macOS with a compatible version of Xcode.
- An iOS Simulator or a compatible iPad(A16).
- Swift and SwiftUI support.

## How to Run

1. Clone or download the project repository.
2. Open the `.xcodeproj` or `.xcworkspace` file in Xcode, as applicable.
3. Ensure all required image assets are included in the app target.
4. Select an iOS Simulator or connect a compatible device.
5. Build and run the application using **Product → Run** or `Cmd + R`.
6. Use the BET button to select a wager and press the Play button to spin the reels.
7. Observe the resulting symbols, credit balance, winnings, alerts, and sound effects.

## Future Improvements

With more time, I would focus on the following improvements:

- **Unit testing:** Add tests for weighted symbol generation, payout calculations, bet cycling, credit deduction, and insufficient-credit scenarios.
- **More robust game logic:** Define explicit winning combinations and payout tables, and centralize win detection in the game engine.
- **Improved animations:** Synchronize reel animations with the actual spin lifecycle and give each reel independent stopping behavior.
- **Audio improvements:** Replace system sound IDs with bundled sound effects for consistent spin, win, and loss audio across devices.
- **Accessibility:** Add VoiceOver labels, Dynamic Type support where appropriate, and sufficient visual contrast.
- **Responsive layout:** Improve support for different screen sizes, orientations, and device types.
- **Game experience:** Add a configurable sound toggle, a clear win animation, and a more detailed history of previous spins.
- **State management:** Improve handling of asynchronous tasks and cancellation when the view disappears.
- **Persistence:** Save the player's credit balance and preferences between launches if persistence is part of the intended experience.
- **Devices Support:** Add more logic to support more devices

