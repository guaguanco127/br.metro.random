# Max/MSP Patches and Abstractions

## br.metro.random.1.2



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.metro.random.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.metro.random](https://github.com/guaguanco127/br.metro.random)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Links

[About](#About)  
[State outlet](#State)  
[Credits](#Credits)  
[Max/MSP Abstractions](https://github.com/guaguanco127/br.metro.random/tree/main/MaxMSP%20Abstraction) To use as abstractions within Max/MSP (installation, every inlet, attribute and the example patch are in its README)  

## <a name="About"></a>About

A metro for Max/MSP that never waits the same way twice, unless you want it to. Every bang picks the next interval between Time 1 and Time 2 (either one can be the higher), and the mode decides how it picks:

| Mode | What it does |
|---|---|
| Random | Any interval in the range |
| Drunk | Wanders from the last interval; Amount sets how far it may move |
| Hold | May repeat the last interval; Amount is the chance |
| Chaos | A logistic map: two- and four-interval loops at a low Amount, breaking into chaos above about 0.57 |
| No-repeat | Uses every step once before any repeats |
| Sneak | Always one step up or down |

**Spacing:** Linear or Log. Log spreads short and long intervals evenly to the ear.

**Steps:** 2 to 64 fixed durations instead of any value in the range, so it plays a rhythm vocabulary rather than noise (0 = any value).

**Seed:** the same number repeats the same run. **Whole / Float:** whole or decimal milliseconds.

**Interval outlet:** the chosen interval comes out just before each bang, so it can set an envelope length.

**Two files:** br.metro.random.1.2 is the plain object. It takes Time 1 and Time 2 as arguments and the rest as attributes, e.g. `[br.metro.random.1.2 200 800 @mode drunk @steps 8]`. br.metro.random.ui.1.2 is the compact version with controls for a [bpatcher], plus a State outlet.

The example patch (_br.metro.random.example.1.2.maxpat) plays a short blip on every bang, with tabs for the plain object (with attributes) and the State outlet.

## <a name="State"></a>State outlet

The last outlet of the .ui file (State) sends the current settings as named messages the moment they change, for example `mode 1`, `time1 250`, `amount 0.3`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route on time1 time2 spacing steps mode amount seed whole]. Repeats are filtered out.

## <a name="Credits"></a>Credits

The "choose the next interval on every tick" loop and the logarithmic duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library). The Drunk mode's step-size idea follows Gerhard Eckel's brownian object in RTC-lib. br.metro.random is a new build, not a port: Chaos, Hold, the attributes, the State outlet and the UI are added here.
