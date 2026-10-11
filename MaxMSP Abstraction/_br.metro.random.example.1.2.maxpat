{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            100.0,
            100.0,
            1000.0,
            720.0
        ],
        "description": "_br.metro.random.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian.",
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700.0,
                        15.0,
                        474.0,
                        87.0
                    ],
                    "text": "_br.metro.random.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        15.0,
                        300.0,
                        20.0
                    ],
                    "text": "br.metro.random"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-3",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        40.0,
                        502.0,
                        87.0
                    ],
                    "text": "A metro that picks a new interval on every bang, inside a range, with modes for HOW it picks:\nRandom (any value), Drunk (wanders from the last one), Hold (may repeat the last one), Chaos (logistic map: settled rhythmic cycles that break into chaos as Amount rises), No-repeat (every step once) and Sneak (one step up or down). Steps limits it to N fixed durations; with Spacing Log they form a scale of durations. Whole off = decimal ms."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        140.0,
                        578.0,
                        47.0
                    ],
                    "text": "Two files. br.metro.random.ui.1.2 has the controls and a State outlet: load it in a [bpatcher]. br.metro.random.1.2 is the plain object (same inlets, no State outlet) and also takes @attributes, see its tab."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        192.0,
                        600.0,
                        20.0
                    ],
                    "text": "Outputs start muted at -70 dB: turn on audio, then raise the slider slowly."
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-6",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.metro.random.ui.1.2.maxpat",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "bang",
                        "float",
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        218.0,
                        244.0,
                        110.0
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        333.0,
                        300.0,
                        20.0
                    ],
                    "text": "1 bang   2 interval (ms)   3 State"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        15.0,
                        358.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-9",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        110.0,
                        358.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        398.0,
                        78.0,
                        22.0
                    ],
                    "text": "1 2 0 40"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        15.0,
                        433.0,
                        56.0,
                        22.0
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        105.0,
                        433.0,
                        96.0,
                        22.0
                    ],
                    "text": "cycle~ 880"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        468.0,
                        40.0,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        195.0,
                        398.0,
                        600.0,
                        20.0
                    ],
                    "text": "2 ms in, 40 ms out: a click-free blip"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        15.0,
                        508.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out main",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "out_main"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        105.0,
                        608.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        658.0,
                        80.0,
                        22.0
                    ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        133.0,
                        609.0,
                        90.0,
                        20.0
                    ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-19",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350.0,
                        218.0,
                        312.0,
                        60.0
                    ],
                    "text": "Tabs:\n  plain object: the core with @attributes + message boxes\n  State outlet: reading the UI's State outlet by name"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            0.0,
                            26.0,
                            1000.0,
                            694.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-1",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        0.0,
                                        760.0,
                                        47.0
                                    ],
                                    "text": "The plain object: [br.metro.random.1.2] has no controls. Arguments = Time 1, Time 2. Attributes set the rest once at load (@spacing lin|log  @steps 0-64  @mode random|drunk|hold|chaos|norepeat|sneak  @amount 0-1  @seed N  @whole 1|0); the inlets still change everything live."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-4",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        110.0,
                                        90.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-5",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        170.0,
                                        90.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        240.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        272.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-8",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        320.0,
                                        90.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        420.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        450.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        480.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "3"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        510.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        540.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "5"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "p-15",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        580.0,
                                        90.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        720.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        752.0,
                                        90.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-18",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        650.0,
                                        90.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-19",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        52.0,
                                        504.0,
                                        33.0
                                    ],
                                    "text": "on / off   Time 1   Time 2   Spacing  Steps      Mode 0-5                     Amount    Seed      Whole"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-20",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        130.0,
                                        770.0,
                                        22.0
                                    ],
                                    "text": "br.metro.random.1.2 200 800 @mode drunk @amount 0.15 @steps 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-21",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        175.0,
                                        24.0,
                                        24.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "p-22",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        330.0,
                                        175.0,
                                        60.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        395.0,
                                        175.0,
                                        150.0,
                                        20.0
                                    ],
                                    "text": "<- interval (ms)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        220.0,
                                        78.0,
                                        22.0
                                    ],
                                    "text": "1 2 0 40"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        255.0,
                                        56.0,
                                        22.0
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        105.0,
                                        255.0,
                                        96.0,
                                        22.0
                                    ],
                                    "text": "cycle~ 880"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        290.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        195.0,
                                        220.0,
                                        600.0,
                                        20.0
                                    ],
                                    "text": "2 ms in, 40 ms out: a click-free blip"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-29",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "",
                                        "float",
                                        "list"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        15.0,
                                        330.0,
                                        48.0,
                                        136.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                -70.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "Out plain",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Out",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "out_plain"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-30",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        105.0,
                                        430.0,
                                        24.0,
                                        24.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-31",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        480.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "dac~ 1 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        133.0,
                                        431.0,
                                        90.0,
                                        20.0
                                    ],
                                    "text": "audio on/off"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-33",
                                    "linecount": 7,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        520.0,
                                        484.0,
                                        100.0
                                    ],
                                    "text": "It starts as typed: Drunk, small steps, 8 durations between 200 and 800 ms. Press 1 to run. Whole 0 -> decimals.\nTry: Mode 3 (Chaos), Amount 0.5 -> a 4-step cycle. Amount 1 -> chaos. Seed 7 twice -> the same run again.\nSteps: Spacing 1 + Steps 5 + Mode 4 (No-repeat) -> five log-spaced durations, each once before any repeats. Mode 5 (Sneak) walks up and down that scale one step at a time."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        5
                                    ],
                                    "source": [
                                        "p-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        5
                                    ],
                                    "source": [
                                        "p-11",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        5
                                    ],
                                    "source": [
                                        "p-12",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        5
                                    ],
                                    "source": [
                                        "p-13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        5
                                    ],
                                    "source": [
                                        "p-14",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        6
                                    ],
                                    "source": [
                                        "p-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        8
                                    ],
                                    "source": [
                                        "p-16",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        8
                                    ],
                                    "source": [
                                        "p-17",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        7
                                    ],
                                    "source": [
                                        "p-18",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        0
                                    ],
                                    "source": [
                                        "p-2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-21",
                                        0
                                    ],
                                    "source": [
                                        "p-20",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-22",
                                        0
                                    ],
                                    "source": [
                                        "p-20",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-24",
                                        0
                                    ],
                                    "source": [
                                        "p-21",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-25",
                                        0
                                    ],
                                    "source": [
                                        "p-24",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-27",
                                        0
                                    ],
                                    "source": [
                                        "p-25",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-27",
                                        1
                                    ],
                                    "source": [
                                        "p-26",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-29",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "p-27",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-29",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "p-27",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-31",
                                        1
                                    ],
                                    "source": [
                                        "p-29",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-31",
                                        0
                                    ],
                                    "source": [
                                        "p-29",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        0
                                    ],
                                    "source": [
                                        "p-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-31",
                                        0
                                    ],
                                    "source": [
                                        "p-30",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        1
                                    ],
                                    "source": [
                                        "p-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        2
                                    ],
                                    "source": [
                                        "p-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        3
                                    ],
                                    "source": [
                                        "p-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        3
                                    ],
                                    "source": [
                                        "p-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        4
                                    ],
                                    "source": [
                                        "p-8",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "p-20",
                                        5
                                    ],
                                    "source": [
                                        "p-9",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        350.0,
                        298.0,
                        120.0,
                        22.0
                    ],
                    "text": "p \"plain object\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            0.0,
                            26.0,
                            1000.0,
                            694.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State from the main tab's br.metro.random.ui.1.2",
                                    "id": "s-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        15.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        60.0,
                                        20.0,
                                        582.0,
                                        33.0
                                    ],
                                    "text": "The UI's last outlet reports each control by name the moment it changes. Route by NAME, never by position."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-3",
                                    "maxclass": "newobj",
                                    "numinlets": 10,
                                    "numoutlets": 10,
                                    "outlettype": [
                                        "",
                                        "",
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
                                        15.0,
                                        70.0,
                                        530.0,
                                        22.0
                                    ],
                                    "text": "route on time1 time2 spacing steps mode amount seed whole"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-4",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "on"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-6",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        75.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        75.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "time1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-8",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        135.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        135.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "time2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-10",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        195.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        195.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "spacing"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-12",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        255.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        255.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "steps"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-14",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        315.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        315.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "mode"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "s-16",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        375.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        375.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "amount"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-18",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        435.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        435.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "seed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-20",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        495.0,
                                        110.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        495.0,
                                        135.0,
                                        60.0,
                                        20.0
                                    ],
                                    "text": "whole"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        560.0,
                                        110.0,
                                        136.0,
                                        22.0
                                    ],
                                    "text": "print unmatched"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "s-3",
                                        0
                                    ],
                                    "source": [
                                        "s-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-10",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-12",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-14",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-16",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-18",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-20",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-22",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-4",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-6",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "s-8",
                                        0
                                    ],
                                    "source": [
                                        "s-3",
                                        2
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        490.0,
                        298.0,
                        120.0,
                        22.0
                    ],
                    "text": "p \"State outlet\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350.0,
                        518.0,
                        320.0,
                        20.0
                    ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "source": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-13",
                        0
                    ],
                    "source": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-13",
                        1
                    ],
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        1
                    ],
                    "source": [
                        "obj-15",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        0
                    ],
                    "source": [
                        "obj-15",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        0
                    ],
                    "source": [
                        "obj-16",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-21",
                        0
                    ],
                    "source": [
                        "obj-6",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-8",
                        0
                    ],
                    "source": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-9",
                        0
                    ],
                    "source": [
                        "obj-6",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-10",
                        0
                    ],
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-15": [
                "Out main",
                "Out",
                0
            ],
            "obj-20::p-29": [
                "Out plain",
                "Out",
                0
            ],
            "obj-6::obj-10": [
                "On",
                "On",
                0
            ],
            "obj-6::obj-11": [
                "Time 1",
                "Time 1",
                0
            ],
            "obj-6::obj-12": [
                "Time 2",
                "Time 2",
                0
            ],
            "obj-6::obj-14": [
                "Steps",
                "Steps",
                0
            ],
            "obj-6::obj-16": [
                "Amount",
                "Amount",
                0
            ],
            "obj-6::obj-17": [
                "Seed",
                "Seed",
                0
            ],
            "obj-6::obj-18": [
                "Whole",
                "Whole",
                0
            ],
            "obj-6::obj-59": [
                "Spacing",
                "Spacing",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "parameter_overrides": {},
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}