# Max/MSP Abstractions:
## br.metro.random.1.2



By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.metro.random.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.metro.random](https://github.com/guaguanco127/br.metro.random)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[Attributes](#Attributes)  
[State outlet](#State)  
[Example Patch](#Example)  
[Credits](#Credits)  



## <a name="About"></a>About

A metro for Max/MSP that picks a new interval on every bang. Time 1 and Time 2 set the range, and either one can be the higher. The mode decides how the next interval is chosen.

| Mode | What it does |
|---|---|
| 0 Random | Any interval in the range |
| 1 Drunk | Wanders from the last interval. Amount is the largest move, as a part of the range (0.1 = a tenth of it). It bounces back at the ends. 0 never moves, 1 can go anywhere |
| 2 Hold | Each bang may repeat the last interval. Amount is the chance (0 never, 1 always) |
| 3 Chaos | The logistic map, no random numbers at all. Amount 0 to 0.45: two intervals alternate. 0.45 to 0.54: a four-interval loop. Above about 0.57: chaos that never quite repeats. Small Amount changes can switch the rhythm |
| 4 No-repeat | Every step once, in a random order, before any repeats |
| 5 Sneak | Always one step up or down, never the same twice, bouncing at the ends |

**Spacing:** Linear spaces the intervals evenly in milliseconds. Log keeps equal ratios between them (like a scale of note lengths), so short and long intervals come up equally often to the ear. Log is the default.

**Steps:** 0 = any interval in the range. 2 to 64 = only that many fixed durations. With Log, 100 to 1000 ms and 5 steps gives 100, 178, 316, 562 and 1000 ms. A few steps sound like a rhythm vocabulary; 20 or more sound close to Steps 0. Random, Drunk, Hold and Chaos snap to the steps; No-repeat and Sneak need steps and use 8 when Steps is 0.

**Seed:** 0 = different every time. Any other number restarts the same run of intervals, for rehearsing a part.

**Whole / Float:** Whole rounds every interval to whole milliseconds; Float keeps the decimals (useful for narrow ranges with many steps).

**Changes apply to the next interval:** the wait that is running always finishes, so turning a control never makes it stutter. Turning it On bangs at once, like [metro].

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.

2. Copy br.metro.random.1.2.maxpat and br.metro.random.ui.1.2.maxpat into the same folder as the Max patch you are using (the .ui file uses the plain object).

3. For the version with controls, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select br.metro.random.ui.1.2.maxpat. Size the bpatcher to 245 x 110 to show all of the controls.

4. For the plain object, create an object with its name and, if you like, the two times and attributes, for example br.metro.random.1.2 200 800 @mode drunk (do not include brackets). Control it through its inlets (see below).

## <a name="Use"></a>How To Use

Every control has its own inlet, in the same order on both files. On the .ui file, sending a value to an inlet moves its on-screen control too. Values outside a control's range are limited to that range. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | On/Off | Int | 0 / 1 | 0 |
| 2 | Time 1 | Int/Float | 1 - 60000 ms (either Time may be higher) | 100 |
| 3 | Time 2 | Int/Float | 1 - 60000 ms | 1000 |
| 4 | Spacing | Int | 0 = Linear, 1 = Log | 1 |
| 5 | Steps | Int | 0 = any value, 2 - 64 steps | 0 |
| 6 | Mode | Int | 0 Random, 1 Drunk, 2 Hold, 3 Chaos, 4 No-repeat, 5 Sneak | 0 |
| 7 | Amount | Float | 0 - 1 (Drunk, Hold, Chaos) | 0.5 |
| 8 | Seed | Int | 0 = different every time, any other number repeats a run | 0 |
| 9 | Whole ms | Int | 1 = whole ms, 0 = decimals | 1 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Bang on every tick | Bang |
| 2 | Interval: the wait until the next bang, sent just before the bang | Int (Whole) or Float |
| 3 | State (.ui only): the settings as named messages, see [State outlet](#State) | Message |

**Ideas:**
- Interval into an envelope's decay time, so long gaps get long notes.
- Hold with a high Amount and Steps 3: a groove that settles, then changes.
- Chaos at 0.5 with Log and Steps 4: a four-interval loop on a duration scale.
- Seed for a part you want the same at every rehearsal.

## <a name="Attributes"></a>Attributes (plain object)

The plain object reads Time 1 and Time 2 as arguments and everything else as attributes, once, when the patch opens. The inlets still change everything live.

`[br.metro.random.1.2 200 800 @mode drunk @amount 0.15 @steps 8]`

| Attribute | Values | Default |
|---|---|---|
| @spacing | lin, log (or 0 / 1) | log |
| @steps | 0 - 64 | 0 |
| @mode | random, drunk, hold, chaos, norepeat, sneak (or 0 - 5) | random |
| @amount | 0 - 1 | 0.5 |
| @seed | any number | 0 |
| @whole | 1 / 0 | 1 |

A misspelled attribute prints "br.metro.random: unknown attribute" in the Max console.

## <a name="State"></a>State outlet

The last outlet of the .ui file (State) sends the current settings as named messages the moment they change, for example `mode 1`, `time1 250`, `amount 0.3`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route on time1 time2 spacing steps mode amount seed whole], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| on | Int | 0 / 1 |
| time1 | Int | 1 to 60000 ms |
| time2 | Int | 1 to 60000 ms |
| spacing | Int | 0 = Linear, 1 = Log |
| steps | Int | 0 to 64 |
| mode | Int | 0 to 5 |
| amount | Float | 0 to 1 |
| seed | Int | 0 to 99999 |
| whole | Int | 0 / 1 |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The plain object has no State outlet: whatever drives it already knows the values.

## <a name="Example"></a>Example Patch

Open _br.metro.random.example.1.2.maxpat (keep it in the same folder as both abstraction files). Every bang plays a short, click-free blip. The output starts muted at -70 dB: turn on the audio with the toggle, then raise the slider slowly.

- **First page:** the .ui version. Turn it On and try each Mode, Steps and Spacing.
- **plain object:** br.metro.random.1.2 200 800 @mode drunk @amount 0.15 @steps 8, with message boxes into every inlet. Try Mode 3 (Chaos) at Amount 0.5, then 1, and the same Seed twice.
- **State outlet:** move the controls on the first page and watch each value come out by name through [route].

## <a name="Credits"></a>Credits

The "choose the next interval on every tick" loop and the logarithmic duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library). The Drunk mode's step-size idea follows Gerhard Eckel's brownian object in RTC-lib. br.metro.random is a new build, not a port: Chaos, Hold, the attributes, the State outlet and the UI are added here.
