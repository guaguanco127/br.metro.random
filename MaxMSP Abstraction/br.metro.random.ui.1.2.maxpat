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
        "openrect": [
            85.0,
            104.0,
            242.0,
            102.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 242.0,
        "description": "br.metro.random.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian.",
        "boxes": [
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        420.0,
                        67.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        141.0,
                        25.5,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "lin",
                                "log"
                            ],
                            "parameter_longname": "Spacing",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Spacing",
                            "parameter_type": 2,
                            "parameter_initial_enable": 1,
                            "parameter_initial": [
                                1
                            ]
                        }
                    },
                    "text": "Lin",
                    "texton": "Log",
                    "varname": "Spacing"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "items": [
                        "Random",
                        ",",
                        "Drunk",
                        ",",
                        "Hold",
                        ",",
                        "Chaos",
                        ",",
                        "No-repeat",
                        ",",
                        "Sneak"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        690.0,
                        67.0,
                        86.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        51.0,
                        22.0,
                        86.0,
                        22.0
                    ],
                    "varname": "Mode"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1300.0,
                        15.0,
                        1083.0,
                        47.0
                    ],
                    "text": "br.metro.random.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian."
                }
            },
            {
                "box": {
                    "comment": "On/Off (Int) 1 = run (bangs at once, then at random intervals), 0 = stop. Default 0",
                    "id": "obj-1",
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
                    "comment": "Time 1 (Int, ms) one end of the range, either end may be higher. 1 to 60000. Default 100",
                    "id": "obj-2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        150.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Time 2 (Int, ms) the other end of the range. 1 to 60000. Default 1000",
                    "id": "obj-3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        285.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Spacing (Int) 0 = Linear (equal ms steps), 1 = Log (equal ratios: short and long times feel evenly spread). Default 1",
                    "id": "obj-4",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        420.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Steps (Int) 0 = any whole ms in the range. 2 to 64 = only that many fixed durations (with Log: a geometric scale of durations). No-repeat and Sneak use 8 when Steps is 0. Default 0",
                    "id": "obj-5",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        555.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mode (Int) 0 = Random, 1 = Drunk (wanders from the last interval), 2 = Hold (may repeat the last interval), 3 = Chaos (logistic map), 4 = No-repeat (every step once before any repeats), 5 = Sneak (always one step up or down). Default 0",
                    "id": "obj-6",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Amount (Float) 0 to 1. Drunk: how far it may wander (0 stuck, 1 anywhere). Hold: chance of repeating. Chaos: 0 = settled cycles, 1 = full chaos. Ignored by Random, No-repeat and Sneak. Default 0.5",
                    "id": "obj-7",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        825.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Seed (Int) 0 = different every time; any other number restarts the same sequence of intervals. Default 0",
                    "id": "obj-8",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        960.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Whole ms (Int) 1 = intervals rounded to whole ms, 0 = decimals (Float). Default 1",
                    "id": "obj-9",
                    "index": 9,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1095.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        15.0,
                        60.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        6.0,
                        24.0,
                        40.0,
                        18.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "On",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On",
                            "parameter_type": 2
                        }
                    },
                    "text": "Off",
                    "texton": "On",
                    "varname": "On"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        150.0,
                        60.0,
                        56.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        45.0,
                        81.0,
                        50.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                100
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Time 1",
                            "parameter_mmax": 60000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Time 1",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "Time 1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        285.0,
                        60.0,
                        56.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        99.0,
                        81.0,
                        50.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                1000
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Time 2",
                            "parameter_mmax": 60000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Time 2",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "Time 2"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        555.0,
                        60.0,
                        56.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        191.0,
                        81.0,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Steps",
                            "parameter_mmax": 64.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Steps",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "Steps"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        825.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        191.0,
                        23.5,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.5
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Amount",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Amount",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Amount"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        960.0,
                        60.0,
                        56.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        191.0,
                        5.5,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Seed",
                            "parameter_mmax": 99999.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Seed",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "Seed"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1095.0,
                        60.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        8.5,
                        56.5,
                        33.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "float",
                                "int"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Whole",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Whole",
                            "parameter_type": 2
                        }
                    },
                    "text": "Float",
                    "texton": "Int",
                    "varname": "Whole"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        15.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        75.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        75.0,
                        180.0,
                        86.0,
                        22.0
                    ],
                    "text": "prepend on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        150.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        210.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        210.0,
                        180.0,
                        107.0,
                        22.0
                    ],
                    "text": "prepend time1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        285.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        345.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        345.0,
                        180.0,
                        107.0,
                        22.0
                    ],
                    "text": "prepend time2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        420.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        480.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        480.0,
                        180.0,
                        121.0,
                        22.0
                    ],
                    "text": "prepend spacing"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        555.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        615.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        180.0,
                        107.0,
                        22.0
                    ],
                    "text": "prepend steps"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        690.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        750.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        750.0,
                        180.0,
                        100.0,
                        22.0
                    ],
                    "text": "prepend mode"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        825.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        885.0,
                        150.0,
                        86.0,
                        22.0
                    ],
                    "text": "change -1."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        885.0,
                        180.0,
                        114.0,
                        22.0
                    ],
                    "text": "prepend amount"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        960.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        1020.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1020.0,
                        180.0,
                        100.0,
                        22.0
                    ],
                    "text": "prepend seed"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        1095.0,
                        120.0,
                        93.0,
                        22.0
                    ],
                    "text": "trigger i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        1155.0,
                        150.0,
                        79.0,
                        22.0
                    ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1155.0,
                        180.0,
                        107.0,
                        22.0
                    ],
                    "text": "prepend whole"
                }
            },
            {
                "box": {
                    "comment": "Bang on every tick",
                    "id": "obj-46",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Interval (Int, ms): the wait until the next bang. Sent just before the bang",
                    "id": "obj-47",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        150.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "State (Message): on, time1, time2, spacing, steps, mode, amount, seed, whole, sent the moment a control changes. Pick them out by name: [route on time1 time2 ...]",
                    "id": "obj-48",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1180.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "ignoreclick": 1,
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        60.0,
                        320.0,
                        24.0,
                        24.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        51.0,
                        55.0,
                        18.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-50",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        200.0,
                        320.0,
                        50.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        73.0,
                        55.0,
                        60.0,
                        22.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        420.0,
                        330.0,
                        100.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        120.0,
                        20.0
                    ],
                    "text": "random metro",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        520.0,
                        330.0,
                        40.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        135.0,
                        55.0,
                        30.0,
                        20.0
                    ],
                    "text": "ms",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        580.0,
                        330.0,
                        44.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        78.0,
                        40.0,
                        20.0
                    ],
                    "text": "Time",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700.0,
                        330.0,
                        51.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        151.0,
                        79.0,
                        40.0,
                        20.0
                    ],
                    "text": "Steps",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        330.0,
                        44.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        152.0,
                        3.5,
                        37.0,
                        20.0
                    ],
                    "text": "Seed",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "br.metro.random.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian.",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.metro.random.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the 'next interval chosen on every tick' loop and the log duration scale follow Karlheinz Essl's RTC-lib (Real Time Composition Library); the Drunk step-size idea follows Gerhard Eckel's brownian.",
                    "id": "obj-56",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1300.0,
                        250.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        245.0,
                        110.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1300.0,
                        110.0,
                        940.0,
                        20.0
                    ],
                    "text": "[br.metro.random.1.2] is the real object: the clock and the picker live inside it. This file adds the controls and the State outlet."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "float"
                    ],
                    "patching_rect": [
                        15.0,
                        260.0,
                        980.0,
                        22.0
                    ],
                    "text": "br.metro.random.1.2"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-10",
                        0
                    ],
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-19",
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
                        "obj-22",
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
                        "obj-25",
                        0
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
                        "obj-31",
                        0
                    ],
                    "source": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-37",
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
                        "obj-40",
                        0
                    ],
                    "source": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-43",
                        0
                    ],
                    "source": [
                        "obj-18",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-20",
                        0
                    ],
                    "source": [
                        "obj-19",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        0
                    ],
                    "source": [
                        "obj-19",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "source": [
                        "obj-2",
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
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-23",
                        0
                    ],
                    "source": [
                        "obj-22",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        1
                    ],
                    "source": [
                        "obj-22",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-24",
                        0
                    ],
                    "source": [
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-24",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-26",
                        0
                    ],
                    "source": [
                        "obj-25",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        2
                    ],
                    "source": [
                        "obj-25",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-27",
                        0
                    ],
                    "source": [
                        "obj-26",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-27",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
                        0
                    ],
                    "source": [
                        "obj-28",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        3
                    ],
                    "source": [
                        "obj-28",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-30",
                        0
                    ],
                    "source": [
                        "obj-29",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        0
                    ],
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-30",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-32",
                        0
                    ],
                    "source": [
                        "obj-31",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        4
                    ],
                    "source": [
                        "obj-31",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-33",
                        0
                    ],
                    "source": [
                        "obj-32",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-33",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-35",
                        0
                    ],
                    "source": [
                        "obj-34",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-34",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-36",
                        0
                    ],
                    "source": [
                        "obj-35",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-36",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-38",
                        0
                    ],
                    "source": [
                        "obj-37",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        6
                    ],
                    "source": [
                        "obj-37",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-39",
                        0
                    ],
                    "source": [
                        "obj-38",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-59",
                        0
                    ],
                    "source": [
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-41",
                        0
                    ],
                    "source": [
                        "obj-40",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        7
                    ],
                    "source": [
                        "obj-40",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-42",
                        0
                    ],
                    "source": [
                        "obj-41",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-42",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "source": [
                        "obj-43",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        8
                    ],
                    "source": [
                        "obj-43",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-45",
                        0
                    ],
                    "source": [
                        "obj-44",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-45",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-14",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-34",
                        0
                    ],
                    "source": [
                        "obj-57",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-28",
                        0
                    ],
                    "source": [
                        "obj-59",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-57",
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
                        "obj-16",
                        0
                    ],
                    "source": [
                        "obj-7",
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
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-18",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-46",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-50",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-core",
                        1
                    ]
                }
            }
        ]
    }
}