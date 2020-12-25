import UIKit

/// print the ABC
//for l in UnicodeScalar("а").value...UnicodeScalar("я").value {
//    print(UnicodeScalar(l)!)
//}

/// shift the abc
//print("\n->\n")
//for l in UnicodeScalar("А").value...UnicodeScalar("Я").value {
//    print(getShiftedCharater(char: String(UnicodeScalar(l)!), for: 12) ?? "nil char")
//}

/*var message = """
гдьхшё, хубшкюу! гдьхшё, чубьряп! гдьхшё, фшеяубкью!

Уиу ь киъ мнфи?

Мёхр яэй пвоплялв
мёошйл, милявнёпщ,
зэз нэюлпэвп млфпэ
нлооёё

Чанце йижъе ъфнпус,
шчёычхъ бсэщьжъе
мчъыьшудхс ъщнм
ъыкихс
эёуькъмпъм роа ч
а щвёом

йжу ылчусегррюм
схезх!

лмиш зъйисмя, гжзя
юхтъм ълйгзи

цёащшзтнэю ьфь
ышэжщ гжяепжяэ

хебуэншся
"""
 */
let message = """
Братик, надеюсь ты прошел все челленджи, дошел сюда, а ответочка получилась достойная, еще надеюсь ты тоже помучаешь питон, обойдешь букву “Ë” и запилишь прогу не через массив буковок.
Очень тебя не хватает, вспоминаю, как переглядывались на спикинг клабе и понимали шутки без слов.
Было очень круто вместе грустить, а главное веселится.
Жду приезда, в общем, братишка.
Заработаем денег вот и будем пересекаться почаще в питерских местах нормальных, ай свеа.
"""

let reposnse = """
Йшзърт, хзлмёщд ъг чшцаму йщм ямуумхлор, лцаму щёлз, з цъймъцятз чцуыярузщд лцщъцсхзж, мбм хзлмёщд ъг ъцом чцфыязмад чръцх, цицслмад иытйы “н” р пзчрурад чшцкы хм ямшмп фзщщрй иытцйцт.
Цямхд ъмиж хм эйзъзмъ, йщчцфрхзё, тзт чмшмкужлгйзурщд хз щчртрхк тузим р чцхрфзур аыътр имп щуцй.
Йгуц цямхд тшыъц йфмщъм кшыщъръд, з кузйхцм ймщмуръщж.
Олы чшрмплз, й цибмф, ишзъратз.
Пзшзицъзмф лмхмк йцъ р иылмф чмшмщмтзъдщж чцязбм й чръмшщтрэ фмщъзэ хцшфзудхгэ, зс щймз.
"""

func getShiftedCharater(char: String, for shift: UInt32 = 12) -> String? {
    
    guard let uniCode = UnicodeScalar(char) else {
        print("No UNICODE for the char")
        return nil
    }
    
    if shift == 0 {
        return char
    }
    
    switch uniCode {
    case "А"..."Е", "а"..."е":
        let resultChar = (UnicodeScalar(uniCode.value + shift)!)
        let lowercaseRange = "а"..."е"
        let uppercaseRange = "А"..."Е"
        
        // result char is "ё"
        if ["ж", "Ж"].contains(resultChar) {
            return "ё"
        }
            
        // default case, FIRST SECTION, shift only
        if resultChar.value <= UnicodeScalar("е").value {
            return String(UnicodeScalar(uniCode.value + shift)!)
        }
            
        // result char is *lowercase* char inside the second section
        else {
            if lowercaseRange.contains(char) {
            
                // outta end boundary
                if UnicodeScalar(resultChar).value > UnicodeScalar("я").value {
                    let newShift = shift - (UnicodeScalar("я").value - uniCode.value) - 1
                    return getShiftedCharater(char: "а", for: newShift)
                } else {
                    // result char is inside the second section and it's not "ё"
                    return String(UnicodeScalar(uniCode.value + shift - 1)!)
                }
            }
                
            // result char is *uppercase* char inside the second section
            else if uppercaseRange.contains(char) {
                
                // outta end boundary
                if UnicodeScalar(resultChar).value > UnicodeScalar("Я").value {
                    let newShift = shift - (UnicodeScalar("Я").value - uniCode.value) - 1
                    return getShiftedCharater(char: "А", for: newShift)
                } else {
                    // result char is inside the second section and it's not "ё"
                    return String(uniCode.value + shift - 1)
                }
            }
            return nil
        }
        
    case "Ë", "ё":
        return String(UnicodeScalar(UnicodeScalar("е").value + shift)!)

    case "Ж"..."Я", "ж"..."я":
        
        let resultChar = (UnicodeScalar(uniCode.value + shift)!)
        let lowercaseRange = "ж"..."я"
        let uppercaseRange = "Ж"..."Я"
        
        // outta end boundary
        if lowercaseRange.contains(char) && UnicodeScalar(resultChar).value > UnicodeScalar("я").value {
            let newShift = shift - (UnicodeScalar("я").value - uniCode.value) - 1
            return getShiftedCharater(char: "а", for: newShift)
        } else if uppercaseRange.contains(char) && UnicodeScalar(resultChar).value > UnicodeScalar("Я").value {
            let newShift = shift - (UnicodeScalar("Я").value - uniCode.value) - 1
            return getShiftedCharater(char: "А", for: newShift)
        } else {
            return String(UnicodeScalar(uniCode.value + shift)!)
        }
    default:
        // Not a letter character
        return char
    }
}

//for shift in 1...34 {
//    for char in message {
//        print(getShiftedCharater(char: String(char), for: UInt32(shift)) ?? "", separator: "", terminator: "")
//    }
//    print("\n--------------------")
//}

for char in message {
    print(getShiftedCharater(char: String(char), for: 8) ?? "*", separator: "", terminator: "")
}

print("\n\n")

for char in reposnse {
    print(getShiftedCharater(char: String(char), for: 25) ?? "*", separator: "", terminator: "")
}


