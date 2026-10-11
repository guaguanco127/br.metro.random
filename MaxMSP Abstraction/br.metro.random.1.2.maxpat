{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            640.0,
            480.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "br.metro.random.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian.",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-signature",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        800,
                        15,
                        2186.0,
                        20.0
                    ],
                    "text": "br.metro.random.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-1",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "On/Off (Int) 1 = run (bangs at once, then at random intervals), 0 = stop. Default 0",
                    "index": 1
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-2",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        250,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Time 1 (Int/Float, ms) one end of the range, either end may be higher. Minimum 1. Default 100 (or argument 1)",
                    "index": 2
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-3",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        320,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Time 2 (Int/Float, ms) the other end of the range. Default 1000 (or argument 2)",
                    "index": 3
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-4",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Spacing (Int) 0 = Linear (equal ms steps), 1 = Log (equal ratios: short and long times feel evenly spread). Default 1",
                    "index": 4
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-5",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        460,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Steps (Int) 0 = any whole ms in the range. 2 to 64 = only that many fixed durations (with Log: a geometric scale of durations). No-repeat and Sneak use 8 when Steps is 0. Default 0",
                    "index": 5
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-6",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        530,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Mode (Int) 0 = Random, 1 = Drunk (wanders from the last interval), 2 = Hold (may repeat the last interval), 3 = Chaos (logistic map), 4 = No-repeat (every step once before any repeats), 5 = Sneak (always one step up or down). Default 0",
                    "index": 6
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-7",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        600,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Amount (Float) 0 to 1. Drunk: how far it may wander (0 stuck, 1 anywhere). Hold: chance of repeating. Chaos: 0 = settled cycles, 1 = full chaos. Ignored by Random, No-repeat and Sneak. Default 0.5",
                    "index": 7
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-8",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        670,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Seed (Int) 0 = different every time; any other number restarts the same sequence of intervals. Default 0 (or @seed)",
                    "index": 8
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-9",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        740,
                        15,
                        30.0,
                        30.0
                    ],
                    "comment": "Whole ms (Int) 1 = intervals rounded to whole ms, 0 = decimals (Float). Default 1 (or @whole)",
                    "index": 9
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-10",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        15,
                        60,
                        58.0,
                        22.0
                    ],
                    "text": "change",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-11",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        15,
                        90,
                        72.0,
                        22.0
                    ],
                    "text": "select 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "message",
                    "id": "obj-12",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15,
                        120,
                        44.0,
                        22.0
                    ],
                    "text": "stop",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-13",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        100,
                        160,
                        93.0,
                        22.0
                    ],
                    "text": "trigger b b",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-14",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        530,
                        200,
                        58.0,
                        22.0
                    ],
                    "text": "p pick",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            400.0,
                            300.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "boxes": [
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-1",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "tick"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-2",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        230,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Mode"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-3",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        300,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Amount"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-4",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        370,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Seed"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-5",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        280,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "position 0..1"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-6",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        60,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "trigger b b",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-7",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        100,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "random 1.",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-8",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        120,
                                        100,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "random 1.",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-9",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        230,
                                        60,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "clip 0 5",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-10",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        300,
                                        90,
                                        86.0,
                                        22.0
                                    ],
                                    "text": "clip 0. 1.",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-11",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        170,
                                        430.0,
                                        50.0
                                    ],
                                    "text": "expr ($i4==0)*$f1 + ($i4==1)*(1.-abs(1.-abs($f3+(2.*$f1-1.)*$f5))) + ($i4==2)*(($f2<$f5)*$f3+($f2>=$f5)*$f1) + ($i4==3)*min(max((3.+$f5)*$f3*(1.-$f3)\\, 0.001)\\, 0.999)",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-12",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        240,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "trigger f f",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-13",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        370,
                                        130,
                                        107.0,
                                        22.0
                                    ],
                                    "text": "trigger b i i",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-14",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        640,
                                        165,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "prepend seed",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-15",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        465,
                                        165,
                                        163.0,
                                        22.0
                                    ],
                                    "text": "expr ($i1!=0)*($i1+1)",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-16",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        465,
                                        195,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "prepend seed",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-17",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        520,
                                        230,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "0.5",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-18",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        570,
                                        230,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "loadmess 0.5",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "comment",
                                    "id": "obj-19",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        320,
                                        541.0,
                                        20.0
                                    ],
                                    "text": "Two random numbers per tick: r2 (cold) first, then r1 (hot) fires the expr.",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "comment",
                                    "id": "obj-20",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        345,
                                        1724.0,
                                        20.0
                                    ],
                                    "text": "Mode picks one term: Random = r1. Drunk = last position + a step of up to +-Amount, reflected at 0 and 1. Hold = keep the last position when r2 < Amount. Chaos = logistic map x = r*x*(1-x), r = 3 + Amount (3 to 3.57 settled cycles, then chaos).",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "comment",
                                    "id": "obj-21",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        410,
                                        660.0,
                                        20.0
                                    ],
                                    "text": "The right [t f f] outlet stores the new position in the expr's cold inlet for the next tick.",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
                                        1
                                    ],
                                    "destination": [
                                        "obj-8",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        0
                                    ],
                                    "destination": [
                                        "obj-12",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        1
                                    ],
                                    "destination": [
                                        "obj-11",
                                        2
                                    ],
                                    "midpoints": [
                                        103.0,
                                        268.0,
                                        470.0,
                                        268.0,
                                        470.0,
                                        160.0,
                                        230.0,
                                        160.0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-13",
                                        2
                                    ],
                                    "destination": [
                                        "obj-14",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-14",
                                        0
                                    ],
                                    "destination": [
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-13",
                                        1
                                    ],
                                    "destination": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        0
                                    ],
                                    "destination": [
                                        "obj-16",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-16",
                                        0
                                    ],
                                    "destination": [
                                        "obj-8",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-13",
                                        0
                                    ],
                                    "destination": [
                                        "obj-17",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-17",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-18",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        2
                                    ]
                                }
                            }
                        ],
                        "dependency_cache": [],
                        "autosave": 0
                    },
                    "saved_object_attributes": {
                        "description": "",
                        "digest": "",
                        "globalpatchername": "",
                        "tags": ""
                    }
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-15",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        530,
                        160,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-16",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        670,
                        160,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-17",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        460,
                        245,
                        65.0,
                        22.0
                    ],
                    "text": "p steps",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            400.0,
                            300.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "boxes": [
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-1",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "position 0..1"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-2",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        300,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Steps"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-3",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        560,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Mode"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-4",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        760,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Seed"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-5",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        400,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "position 0..1 (on a step)"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-6",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        300,
                                        60,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "clip 0 64",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-7",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        300,
                                        90,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "trigger i i",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-8",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        120,
                                        219.0,
                                        22.0
                                    ],
                                    "text": "expr ($i1>=2)*$i1 + ($i1<2)*8",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-9",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        150,
                                        135.0,
                                        22.0
                                    ],
                                    "text": "trigger i i i i b",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-10",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        620,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "int",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-11",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        560,
                                        90,
                                        212.0,
                                        22.0
                                    ],
                                    "text": "expr 1 + ($i1>=4) + ($i1>=5)",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-12",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        120,
                                        58.0,
                                        22.0
                                    ],
                                    "text": "gate 3",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-13",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        270,
                                        330.0,
                                        22.0
                                    ],
                                    "text": "expr ($i2>=2)*(float(min(int($f1*$i2)\\, $i2-1)) / float(max($i2-1\\, 1))) + ($i2<2)*$f1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-14",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        130,
                                        160,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "trigger b",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-15",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        130,
                                        190,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "urn 8",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-16",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        300,
                                        230,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "clear",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-17",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        230,
                                        190,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "trigger b b",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-18",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        230,
                                        79.0,
                                        22.0
                                    ],
                                    "text": "trigger b",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-19",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        260,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "random 2",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-20",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        290,
                                        330.0,
                                        22.0
                                    ],
                                    "text": "expr ($i3-1) - abs(($i3-1) - abs(min($i2\\, $i3-1) + 2*$i1 - 1))",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-21",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        320,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "trigger i i",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-22",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        130,
                                        360,
                                        289.0,
                                        22.0
                                    ],
                                    "text": "expr float($i1) / float(max($i2-1\\, 1))",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-23",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        760,
                                        60,
                                        107.0,
                                        22.0
                                    ],
                                    "text": "trigger b i i",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-24",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        860,
                                        90,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "select 0",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-25",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        860,
                                        120,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "prepend seed",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-26",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        760,
                                        120,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "prepend seed",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-27",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        620,
                                        230,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "expr $i1 / 2",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "comment",
                                    "id": "obj-28",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        450,
                                        2256.0,
                                        20.0
                                    ],
                                    "text": "Steps below 2 = continuous. Path 1 snaps Random/Drunk/Hold/Chaos to N equally likely steps (floor(position*N), not rounding, so the end steps are as likely as the rest). No-repeat [urn] uses every step once, then clears. Sneak moves one step up or down and bounces at the ends. Steps 0 gives No-repeat and Sneak 8 steps.",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7",
                                        1
                                    ],
                                    "destination": [
                                        "obj-13",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-8",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8",
                                        0
                                    ],
                                    "destination": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        4
                                    ],
                                    "destination": [
                                        "obj-16",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        3
                                    ],
                                    "destination": [
                                        "obj-15",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        2
                                    ],
                                    "destination": [
                                        "obj-20",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        1
                                    ],
                                    "destination": [
                                        "obj-22",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        0
                                    ],
                                    "destination": [
                                        "obj-10",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        0
                                    ],
                                    "destination": [
                                        "obj-27",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-27",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        0
                                    ],
                                    "destination": [
                                        "obj-12",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-12",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        0
                                    ],
                                    "destination": [
                                        "obj-13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-13",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        1
                                    ],
                                    "destination": [
                                        "obj-14",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-14",
                                        0
                                    ],
                                    "destination": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        1
                                    ],
                                    "destination": [
                                        "obj-17",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-17",
                                        1
                                    ],
                                    "destination": [
                                        "obj-16",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-17",
                                        0
                                    ],
                                    "destination": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-16",
                                        0
                                    ],
                                    "destination": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        2
                                    ],
                                    "destination": [
                                        "obj-18",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-18",
                                        0
                                    ],
                                    "destination": [
                                        "obj-19",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-19",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-20",
                                        0
                                    ],
                                    "destination": [
                                        "obj-21",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-21",
                                        1
                                    ],
                                    "destination": [
                                        "obj-20",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        0
                                    ],
                                    "destination": [
                                        "obj-22",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-21",
                                        0
                                    ],
                                    "destination": [
                                        "obj-22",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-22",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-23",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-23",
                                        2
                                    ],
                                    "destination": [
                                        "obj-24",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-24",
                                        1
                                    ],
                                    "destination": [
                                        "obj-25",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-25",
                                        0
                                    ],
                                    "destination": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-23",
                                        1
                                    ],
                                    "destination": [
                                        "obj-26",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-26",
                                        0
                                    ],
                                    "destination": [
                                        "obj-19",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-23",
                                        0
                                    ],
                                    "destination": [
                                        "obj-10",
                                        0
                                    ]
                                }
                            }
                        ],
                        "dependency_cache": [],
                        "autosave": 0
                    },
                    "saved_object_attributes": {
                        "description": "",
                        "digest": "",
                        "globalpatchername": "",
                        "tags": ""
                    }
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-18",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        250,
                        290,
                        51.0,
                        22.0
                    ],
                    "text": "p map",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            400.0,
                            300.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "boxes": [
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-1",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "position 0..1"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-2",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        120,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Time 1"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-3",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        220,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Time 2"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-4",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        320,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Spacing"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-5",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        170,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "interval (ms, float)"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-6",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        320,
                                        60,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "clip 0 1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-7",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        110,
                                        430.0,
                                        36.0
                                    ],
                                    "text": "expr max(1.\\, $i4*max($f2\\,1.)*pow(max($f3\\,1.)/max($f2\\,1.)\\, $f1) + (1-$i4)*($f2+$f1*($f3-$f2)))",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "comment",
                                    "id": "obj-8",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        215,
                                        1717.0,
                                        20.0
                                    ],
                                    "text": "Linear: Time 1 + position * (Time 2 - Time 1). Log: Time 1 * (Time 2 / Time 1) ^ position (equal ratios, like a scale of durations). Either Time may be the higher one. Never below 1 ms. Rounding to whole ms (Whole) happens outside, after this.",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-7",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-7",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-7",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            }
                        ],
                        "dependency_cache": [],
                        "autosave": 0
                    },
                    "saved_object_attributes": {
                        "description": "",
                        "digest": "",
                        "globalpatchername": "",
                        "tags": ""
                    }
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-19",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        150,
                        60,
                        156.0,
                        22.0
                    ],
                    "text": "patcherargs 100 1000",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-20",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        150,
                        90,
                        93.0,
                        22.0
                    ],
                    "text": "trigger l b",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-21",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        150,
                        120,
                        86.0,
                        22.0
                    ],
                    "text": "unpack f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-22",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        250,
                        130,
                        128.0,
                        22.0
                    ],
                    "text": "clip 1. 3600000.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-23",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        320,
                        160,
                        128.0,
                        22.0
                    ],
                    "text": "clip 1. 3600000.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-24",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        250,
                        330,
                        58.0,
                        22.0
                    ],
                    "text": "gate 2",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-25",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        740,
                        290,
                        135.0,
                        22.0
                    ],
                    "text": "expr 2 - ($i1!=0)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-26",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        250,
                        360,
                        149.0,
                        22.0
                    ],
                    "text": "expr int($f1 + 0.5)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-27",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        250,
                        390,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-28",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        400,
                        390,
                        93.0,
                        22.0
                    ],
                    "text": "trigger f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-29",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        100,
                        420,
                        51.0,
                        22.0
                    ],
                    "text": "delay",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-30",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        100,
                        500,
                        30.0,
                        30.0
                    ],
                    "comment": "Bang on every tick",
                    "index": 1
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-31",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        330,
                        500,
                        30.0,
                        30.0
                    ],
                    "comment": "Interval (ms; Int when Whole is 1, Float when 0): the wait until the next bang. Sent just before the bang, so it can set an envelope length",
                    "index": 2
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-32",
                    "numinlets": 2,
                    "numoutlets": 6,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        560,
                        120,
                        160.0,
                        22.0
                    ],
                    "text": "p attributes",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            400.0,
                            300.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "boxes": [
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-1",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "@attribute lists from patcherargs"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "inlet",
                                    "id": "obj-2",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        15,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "bang = send the defaults"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-3",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        330,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "spacing"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-4",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        125,
                                        330,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "steps"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-5",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        235,
                                        330,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "mode"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-6",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        345,
                                        330,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "amount"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-7",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        455,
                                        330,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "seed"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "outlet",
                                    "id": "obj-8",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        565,
                                        330,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "whole"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-9",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        50,
                                        401.0,
                                        22.0
                                    ],
                                    "text": "spacing 1, steps 0, mode 0, amount 0.5, seed 0, whole 1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-10",
                                    "numinlets": 2,
                                    "numoutlets": 8,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        90,
                                        560.0,
                                        22.0
                                    ],
                                    "text": "route spacing steps mode amount seed whole done",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-11",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        150,
                                        156.0,
                                        22.0
                                    ],
                                    "text": "route lin linear log",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-12",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "0",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-13",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        55,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "0",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-14",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        95,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-15",
                                    "numinlets": 2,
                                    "numoutlets": 8,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        230,
                                        150,
                                        420.0,
                                        22.0
                                    ],
                                    "text": "route random drunk hold chaos norepeat no-repeat sneak",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-16",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        230,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "0",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-17",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        270,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-18",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        310,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "2",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-19",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        350,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "3",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "4",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-21",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "4",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "obj-22",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        470,
                                        190,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "5",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-23",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        680,
                                        150,
                                        310.0,
                                        22.0
                                    ],
                                    "text": "prepend br.metro.random: unknown attribute",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-24",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        680,
                                        190,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "print",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "comment",
                                    "id": "obj-25",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15,
                                        380,
                                        1052.0,
                                        20.0
                                    ],
                                    "text": "@spacing lin | log (or 0 | 1)   @steps 0-64   @mode random | drunk | hold | chaos | norepeat | sneak (or 0-5)   @amount 0-1   @seed N   @whole 1 | 0",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        0
                                    ],
                                    "destination": [
                                        "obj-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        0
                                    ],
                                    "destination": [
                                        "obj-11",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        0
                                    ],
                                    "destination": [
                                        "obj-12",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        1
                                    ],
                                    "destination": [
                                        "obj-13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-13",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        2
                                    ],
                                    "destination": [
                                        "obj-14",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-14",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        3
                                    ],
                                    "destination": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        1
                                    ],
                                    "destination": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        2
                                    ],
                                    "destination": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        0
                                    ],
                                    "destination": [
                                        "obj-16",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-16",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        1
                                    ],
                                    "destination": [
                                        "obj-17",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-17",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        2
                                    ],
                                    "destination": [
                                        "obj-18",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-18",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        3
                                    ],
                                    "destination": [
                                        "obj-19",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-19",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        4
                                    ],
                                    "destination": [
                                        "obj-20",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-20",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        5
                                    ],
                                    "destination": [
                                        "obj-21",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-21",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        6
                                    ],
                                    "destination": [
                                        "obj-22",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-22",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-15",
                                        7
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        3
                                    ],
                                    "destination": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        4
                                    ],
                                    "destination": [
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        5
                                    ],
                                    "destination": [
                                        "obj-8",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        7
                                    ],
                                    "destination": [
                                        "obj-23",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-23",
                                        0
                                    ],
                                    "destination": [
                                        "obj-24",
                                        0
                                    ]
                                }
                            }
                        ],
                        "dependency_cache": [],
                        "autosave": 0
                    },
                    "saved_object_attributes": {
                        "description": "",
                        "digest": "",
                        "globalpatchername": "",
                        "tags": ""
                    }
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-34",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        800,
                        110,
                        1668.0,
                        20.0
                    ],
                    "text": "Each tick: pick the next position (p pick), snap it to a step or pick a step (p steps), turn it into ms (p map), send the interval out, restart [delay] with it, then bang. New settings shape the NEXT interval; the running wait finishes.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-35",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        800,
                        170,
                        1969.0,
                        20.0
                    ],
                    "text": "Arguments: Time 1, Time 2 (ms). Attributes (read once at load, the inlets still change everything): @spacing lin|log  @steps 0-64  @mode random|drunk|hold|chaos|norepeat|sneak  @amount 0-1  @seed N  @whole 1|0. e.g. [br.metro.random.1.2 200 800 @mode drunk @amount 0.15 @steps 8]",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-36",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15,
                        465,
                        191.0,
                        20.0
                    ],
                    "text": "delay -> back to the tick",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-1",
                        0
                    ],
                    "destination": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        0
                    ],
                    "destination": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        1
                    ],
                    "destination": [
                        "obj-13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-13",
                        1
                    ],
                    "destination": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-15",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        0
                    ],
                    "destination": [
                        "obj-16",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-15",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-16",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-19",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        0
                    ],
                    "destination": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-21",
                        0
                    ],
                    "destination": [
                        "obj-22",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-21",
                        1
                    ],
                    "destination": [
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-22",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-3",
                        0
                    ],
                    "destination": [
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-22",
                        0
                    ],
                    "destination": [
                        "obj-18",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-23",
                        0
                    ],
                    "destination": [
                        "obj-18",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-18",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-14",
                        0
                    ],
                    "destination": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-17",
                        0
                    ],
                    "destination": [
                        "obj-18",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-15",
                        1
                    ],
                    "destination": [
                        "obj-17",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-16",
                        1
                    ],
                    "destination": [
                        "obj-17",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-17",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-25",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-25",
                        0
                    ],
                    "destination": [
                        "obj-24",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-18",
                        0
                    ],
                    "destination": [
                        "obj-24",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-24",
                        0
                    ],
                    "destination": [
                        "obj-26",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-26",
                        0
                    ],
                    "destination": [
                        "obj-27",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-24",
                        1
                    ],
                    "destination": [
                        "obj-28",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-27",
                        1
                    ],
                    "destination": [
                        "obj-31",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-28",
                        1
                    ],
                    "destination": [
                        "obj-31",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-27",
                        0
                    ],
                    "destination": [
                        "obj-29",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-28",
                        0
                    ],
                    "destination": [
                        "obj-29",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        1
                    ],
                    "destination": [
                        "obj-32",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-19",
                        1
                    ],
                    "destination": [
                        "obj-32",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-32",
                        0
                    ],
                    "destination": [
                        "obj-18",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-32",
                        1
                    ],
                    "destination": [
                        "obj-17",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-32",
                        2
                    ],
                    "destination": [
                        "obj-15",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-32",
                        3
                    ],
                    "destination": [
                        "obj-14",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-32",
                        4
                    ],
                    "destination": [
                        "obj-16",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-32",
                        5
                    ],
                    "destination": [
                        "obj-25",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        0
                    ],
                    "destination": [
                        "obj-29",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-29",
                        0
                    ],
                    "destination": [
                        "obj-13",
                        0
                    ],
                    "midpoints": [
                        100.0,
                        450.0,
                        70.0,
                        450.0,
                        70.0,
                        150.0,
                        100.0,
                        150.0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-13",
                        0
                    ],
                    "destination": [
                        "obj-30",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [],
        "autosave": 0
    }
}