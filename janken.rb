WIN_LOSE_TABLE = [
    { gu-: ["choki": 1, "pa-": -1] },
    { choki: ["pa-": 1, "gu-": -1] },
    { pa-: ["gu-": 1, "choki": -1] },
]
WIN_LOSE_TABLE.each{ |value| 
    # puts value
    puts value["gu-"]
}