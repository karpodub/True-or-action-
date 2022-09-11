//
//  Source.swift
//  TestButton
//
//  Created by karpo_dub on 11/09/2022.
//

import Foundation

struct Source {
    enum SourceType {
        case word
        case action
    }
    
    private static let trueSource = [
    "Czego najbardziej żałujesz?",
    "W kim się podkochujesz?",
    "Kto był twoją pierwszą miłością?",
    "Jaka była najgorsza randka, na jakiej byłeś?",
    "Jaka była twoja najlepsza randka?",
    "Jaka była twoja najbardziej żenująca sytuacja?",
    "Jakie było twoje ostatnie kłamstwo?",
    "Straciłeś/aś kiedyś przyjaciela?",
    "Jaki jest twój najbardziej żenujący nawyk?",
    "Gdybyś mogła umawiać się z kimkolwiek na świecie, to kto by to był?"
    ]
    
    private static let actionSource = [
    "Masz jakieś sekrety?",
    "Zdradziłeś/aś kiedyś kogoś?",
    "Gdyby nie było czegoś takiego jak pieniądze, co byś zrobił ze swoim życiem?",
    "Jakie jest Twoje ulubione jedzenie?",
    "Kogo chciałabyś poślubić?",
    "Czy w dzieciństwie miałeś wyimaginowanego przyjaciela",
    "Ilu chłopaków/dziewczyn miałeś/aś?",
    "Czy kiedykolwiek się całowałeś?",
    "Kiedy ostatnio byłeś zazdrosny?",
    "Jaka jest najgorsza rzecz, jaką zrobiłeś w szkole?"
    ]
    
    static func getInfo(type: SourceType) -> String {
        switch type {
        case .word:
            return trueSource[Int.random(in: 0..<trueSource.count)]
        case .action:
            return actionSource[Int.random(in: 0..<actionSource.count)]
        }
    }
}

