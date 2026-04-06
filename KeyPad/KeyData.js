
function alphaModel(upperCase) {
    function labelOf(group) {
        return upperCase ? group.toUpperCase() : group.toLowerCase()
    }

    return [
        { label: labelOf("abc"), action: "group", value: "abc" },
        { label: labelOf("def"), action: "group", value: "def" },
        { label: labelOf("ghi"), action: "group", value: "ghi" },
        { label: "⌫", action: "backspace" },

        { label: labelOf("jkl"), action: "group", value: "jkl" },
        { label: labelOf("mno"), action: "group", value: "mno" },
        { label: labelOf("pqrs"), action: "group", value: "pqrs" },
        { label: upperCase ? "SHIFT ↑" : "shift", action: "shift" },

        { label: labelOf("tuv"), action: "group", value: "tuv" },
        { label: labelOf("wxyz"), action: "group", value: "wxyz" },
        { label: "?", action: "insert", value: "?" },
        { label: "⏎", action: "enter" },

        { label: ".", action: "insert", value: "." },
        { label: ",", action: "insert", value: "," },
        { label: "123", action: "layoutNumber" },
        { label: "#!@", action: "layoutSpecial" },

        { label: "Space", action: "space", columnSpan: 4, heightHint: 46 },

        { label: "←", action: "left" },
        { label: "→", action: "right" },
        { label: "Dismiss", action: "dismiss", columnSpan: 2 }
    ]
}

function numberModel() {
    return [
        { label: "1", action: "insert", value: "1" },
        { label: "2", action: "insert", value: "2" },
        { label: "3", action: "insert", value: "3" },
        { label: "⌫", action: "backspace" },

        { label: "4", action: "insert", value: "4" },
        { label: "5", action: "insert", value: "5" },
        { label: "6", action: "insert", value: "6" },
        { label: "ABC", action: "layoutAlpha" },

        { label: "7", action: "insert", value: "7" },
        { label: "8", action: "insert", value: "8" },
        { label: "9", action: "insert", value: "9" },
        { label: "⏎", action: "enter" },

        { label: "*", action: "insert", value: "*" },
        { label: "0", action: "insert", value: "0" },
        { label: "#", action: "insert", value: "#" },
        { label: "#!@", action: "layoutSpecial" },

        { label: "Space", action: "space", columnSpan: 4, heightHint: 46 },

        { label: "←", action: "left" },
        { label: "→", action: "right" },
        { label: "Dismiss", action: "dismiss", columnSpan: 2 }
    ]
}

function specialModel() {
    return [
        { label: "@", action: "insert", value: "@" },
        { label: "#", action: "insert", value: "#" },
        { label: "$", action: "insert", value: "$" },
        { label: "⌫", action: "backspace" },

        { label: "%", action: "insert", value: "%" },
        { label: "&", action: "insert", value: "&" },
        { label: "*", action: "insert", value: "*" },
        { label: "ABC", action: "layoutAlpha" },

        { label: "(", action: "insert", value: "(" },
        { label: ")", action: "insert", value: ")" },
        { label: "-", action: "insert", value: "-" },
        { label: "⏎", action: "enter" },

        { label: "+", action: "insert", value: "+" },
        { label: "\"", action: "insert", value: "\"" },
        { label: "'", action: "insert", value: "'" },
        { label: "123", action: "layoutNumber" },

        { label: "Space", action: "space", columnSpan: 4, heightHint: 46 },

        { label: "←", action: "left" },
        { label: "→", action: "right" },
        { label: "Dismiss", action: "dismiss", columnSpan: 2 }
    ]
}
