# Clipit

## What is Clipit?

> [!NOTE]
> Clipit is just getting started. It's currently in a non-functional state and is being built from the ground up. The README is currently only outlining my vision for Clipit, and may change in the future.

Clipit is an **open-source iPhone app** that allows you to "clip" the last few seconds of what your microphone picked up. It's inspired by clipping in video games. Essentially, it's an always-on recorder that lets you capture unexpected audio. It continuously records the last 30 seconds (or more, if you configure it) of audio into a rolling buffer that you can save whenever you need.

It can be used for all kinds of situations. For example, you can clip something funny your friend said or capture something your professor said that you missed.

Unlike Voice Memos, Clipit is designed around a rolling audio buffer. If something interesting just happened, you can save the last few seconds, even if you weren't actively recording.

## Privacy by Design & Complete Transparency

I believe transparency is important. Let's be real: an application that continuously listens to your microphone should **never** be blindly trusted—not in this day and age.

I'm proud to say that Clipit does not collect, track, or phone home with any data whatsoever. I don't want your data, and to keep that promise, I want everyone to be able to inspect, question, and verify my code.

By making Clipit completely open source, you can:

* **Audit the code** to see exactly how the app works.
* **Use, share, modify, and redistribute** the code under the terms of the Apache 2.0 License.
* **Help improve Clipit** or fork your own version. (If I merge your pull request, you'll be credited!)

## Intended Use / Designed for Everyday Moments

Clipit was born out of my desire to capture and remember all the funny things my friends and I say in person, even when we aren't actively recording or using our phones.

Clipit was **not** designed to:

* Record people without their permission.
* Capture things that are better left unheard.
* Blackmail others with what you've recorded.

I realize that an app like this can be used for malicious purposes. No one knows when your phone's microphone is on or off, and these days, everything feels monitored.

Clipit stores recordings strictly within the app's private, sandboxed local storage. They are completely isolated from the rest of iOS, cannot be accessed by other apps, and do not appear in the Files app.

**If you delete Clipit, all of your saved clips are permanently deleted with it.**

## Yes, That's Right: Delete the App = Delete Everything

> [!WARNING]
> Deleting Clipit permanently erases all clips stored within the app.

This is a deliberate privacy choice. Your clips are **not** uploaded to iCloud. They are **not** accessible from your other devices. The only way they become permanent outside of Clipit is if you intentionally choose to share or export them.

It also serves as a quick "nuke everything" option if you ever feel it's necessary. Simply deleting the app securely removes Clipit's local storage, providing an easy way to erase every recording stored by the app.

---

## Cloning the Repository

Clone the repository:

```bash
git clone https://github.com/yourusername/Clipit.git
```

Move into the project directory:

```bash
cd Clipit
```

## Opening the Project

Open the project in Xcode:

```bash
open Clipit.xcodeproj
```

Or simply double-click `Clipit.xcodeproj` in Finder.

## Running Clipit

1. Open the project in Xcode.
2. Select either an iPhone simulator or your physical iPhone.
3. Press **⌘R** or click **Run**.
4. Grant microphone permission when prompted. *(this hasn't been done yet)*

> [!NOTE]
> Although the iOS Simulator can run the app, microphone functionality is best tested on a physical device.

## Contributing & Crediting

Contributions are welcome! Feel free to:

* Report bugs.
* Suggest new features.
* Improve documentation.
* Submit pull requests.

Please keep pull requests focused and include a clear description of the changes you've made. Also, please don't add yourself to the credits. I'll credit contributors when I merge their pull requests unless you explicitly say you don't want to be credited or would prefer a different name than the one on your GitHub profile.
