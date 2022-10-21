global function Retouched_Init

global array< array<string> > RETOUCHED_CHANGELIST = [
    [
        "Summary",
        "SMGs: around -50% damage",
        "R201/R101/Flatline/Spitfire/EVA-8/RE-45/P2016: around -25% damage",
        "Gravity star: -33% pull time",
        "Melee: 70 damage"
    ],
    [
        "Goals",
        "1. Not a perfect rebalance, just vanilla but a little less so",
        "2. Nerfing stronger weapons a little, but leaving rest be",
        "3. Minimal changes preferred, like damage only for guns"
    ],
    [
        "CAR",
        "Near damage: 25 -> 15 (4 -> 7 bullets)",
        "Far damage: 13 -> 10 (7 -> 10 bullets)",
        "Very far damage: 10 -> 9 (10 -> 12 bullets)"
    ],
    [
        "Alternator",
        "Near damage: 35 -> 20 (3 -> 5 bullets)",
        "Far damage: 18 -> 13 (6 -> 8 bullets)",
        "Very far damage: 14 -> 10 (8 -> 10 bullets)"
    ],
    [
        "Volt",
        "Near damage: 25 -> 17 (4 -> 6 bullets)",
        "Far damage: 15 -> 12 (7 -> 9 bullets)",
        "Very far damage: 12 -> 10 (9 -> 10 bullets)"
    ],
    [
        "R97",
        "Near damage: 20 -> 13 (5 -> 8 bullets)",
        "Far damage: 12 -> 8 (9 -> 13 bullets)",
        "Very far damage: 10 -> 7 (10 -> 15 bullets)"
    ],
    [
        "R101",
        "Near damage: 25 -> 17 (4 -> 6 bullets)",
        "Far damage: 17 (6 bullets) (vanilla)",
        "Very far damage: 12 (9 bullets) (vanilla)"
    ],
    [
        "R201",
        "Near damage: 25 -> 17 (4 -> 6 bullets)",
        "Far damage: 17 (6 bullets) (vanilla)",
        "Very far damage: 12 (9 bullets) (vanilla)",
    ],
    [
        "Flatline",
        "Near damage: 30 -> 20 (4 -> 5 bullets)",
        "Far damage: 20 (5 bullets) (vanilla)",
        "Very far damage: 15 (7 bullets) (vanilla)"
    ],
    [
        "Spitfire",
        "Near damage: 35 -> 25 (3 -> 4 bullets)",
        "Far damage: 25 -> 20 (4 -> 5 bullets)",
        "Very far damage: 20 -> 17 (5 -> 6 bullets)"
    ],
    [
        "EVA",
        "Near damage: 200 -> 150",
        "Far damage: 10 (vanilla)"
    ],
    [
        "P2016",
        "Near damage: 30 -> 20 (4 -> 5 bullets)"
        "Far damage: 20 -> 17 (5 -> 6 bullets)"
        "Very far damage: 15 -> 13 (7 -> 8 bullets)"

    ],
    [
        "RE45",
        "Near damage: 20 -> 15 (4 -> 7 bullets)"
        "Far damage: 13 -> 12 (8 -> 9 bullets)"
        "Very far damage: 9 -> 8 (12 -> 13 bullets)"

    ],
    [
        "Grav",
        "Pull time: 2.0s -> 1.33s (-33%)"
    ],
    [
        "Melee",
        "Damage: 100 -> 70"
    ],
    [
        "Github",
        "github.com/fvnkhead/Northstar.Retouched"
    ]
]

void function Retouched_Init()
{
    SetConVarBool("retouched_loaded", true)
}
