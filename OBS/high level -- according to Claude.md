**Warning: Exported profiles include your stream key, so don't share them with untrusted people.**

Also: remove this section from your `basic.ini` if you post your profile config online.

```
[Panels]
CookieId=****************
```

---- claude paste below this line ----

## **OBS Profiles vs Scene Collections**

**Profiles** save your output and streaming/recording settings:
- Encoder settings (including your AV1 encoder choice, rate control like CQP, quality settings)
- Canvas and output resolution, bitrate, advanced options, and various settings menu options
- Streaming service configurations (stream keys, URLs)
- Recording format and quality settings

**Scene Collections** save your visual setup:
- All scenes and sources (like game capture, webcam, overlays, images)
- Audio settings and scene transitions

The two are completely independent - you can switch one without affecting the other, and any scene collection can be used with any profile.

## **Backing Up Your AV1 CQP Settings**

**Yes! Exporting a Profile WILL export your AV1 encoding CQP settings.** 

Profiles contain all encoder settings including rate control type (CQP) and the CQP value itself, along with your preset, keyframe interval, and other encoder-specific options.

**To back up your settings:**
1. Go to **Profile → Export** to save your encoding settings (includes your AV1 CQP configuration)
2. Optionally, **Scene Collection → Export** to save your scenes/sources

Warning: Exported profiles include your stream key, so don't share them with untrusted people.

So for your AV1 CQP backup specifically, exporting your Profile is exactly what you need!

-- 2025/11/29 --
