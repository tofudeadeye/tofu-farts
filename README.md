# tofu-farts

Simple meme resource which enables networked fart sounds to be emitted from a players entity. This resource has zero dependencies and can be influenced based on any audio occlusions configured within the game.

### Usage

Included is a simple `playerfart` command that you can use to test & explore the functionality.

This resource can easily be invoked by triggering a server side event on the target player. The event is configured to play a "networked" sound event, so all players will hear it.

```
TriggerServerEvent('tofu-farts:server:doFart', <player id>, 'fart01')
```

The only argument the event requires is the sound identifier which should be played. This resources comes with four (4) by default, all of which are DMCA and royalty free.

- `fart01`
- `fart02`
- `fart03`
- `fart04`

### Adding new sounds.

If you want to add or modify the sounds its a pretty simple process.

1. Add a `.wav` formatted audio file to `tofu-farts/customfarts` directory.
   1. Audio must be a Mono channel, 16bit PCM @ 44100Hz.
1. Update `tofu-farts/customfarts.awc.xml` to add a new audio item entry. _You can use the existing values as a good template of what is needed._
1. Open CodeWalker RPF Explorer, click the `mods` folder on the left menu.
   1. Click "Edit mode" in top right corner
   1. In open space on right side, `right click -> Import XML`
   1. Choose `tofu-farts/customfarts.awc.xml`, this will create `customfarts.awc`
   1. Select `customfarts.awc` and copy/drag that file to your Windows File Explorer.
1. Update `data/customfarts_sounds.dat54.rel.xml` with the new audio files
   1. Create a new `SimpleSound` item entry. _You can use the existing values as a good template of what is needed._
   1. Update the `SoundSet` at the bottom, referencing the `SimpleSound` entry you have just created.
1. Open CodeWalker RPF Explorer, click the `mods` folder on the left menu.
   1. Click "Edit mode" in top right corner
   1. In open space on right side, `right click -> Import XML`
   1. Choose `tofu-farts/customfarts_sounds.dat64.rel.xml`, this will create `customfarts_sounds.dat64.rel`
   1. Select `customfarts_sounds.dat64.rel` and copy/drag that file to your Windows File Explorer.

### References

If you are wanting more information on game sounds the following repositories are a good source of information.

- [ChatDisabled/nativeAudio](https://github.com/ChatDisabled/nativeAudio)
- [Monkeypolice188/Monkys-Audio-Research](https://github.com/Monkeypolice188/Monkys-Audio-Research)
