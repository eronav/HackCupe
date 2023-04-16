//
//  Tab.swift
//  HackCupe
//
//  Created by Ronav Dholakia on 4/16/23.
//

import Foundation

enum Tagg {
    case precalc, alg2, trig, calc, geo, stats, aam, alg
    case lit
    case ushist, worldhist, econ, gov
    case physics, chem, bio
    case java, python, apcsa, c, swift, html
}

struct Tag: Hashable, Identifiable {
    var id: UUID
    var t: Tagg
    var val: String
    
    static let allTags = [Tag(t: Tagg.precalc), Tag(t: Tagg.alg2), Tag(t: Tagg.trig), Tag(t: Tagg.calc), Tag(t: Tagg.geo), Tag(t: Tagg.stats), Tag(t: Tagg.aam), Tag(t: Tagg.alg), Tag(t: Tagg.lit), Tag(t: Tagg.ushist), Tag(t: Tagg.worldhist), Tag(t: Tagg.econ), Tag(t: Tagg.gov), Tag(t: Tagg.physics), Tag(t: Tagg.chem), Tag(t: Tagg.bio), Tag(t: Tagg.java), Tag(t: Tagg.python), Tag(t: Tagg.apcsa), Tag(t: Tagg.c), Tag(t: Tagg.swift), Tag(t: Tagg.html)]
    
    init(t: Tagg) {
        self.t = t
        self.id = UUID()
        switch (t) {
            case Tagg.precalc:
                val = "precalc"
            case Tagg.alg2:
                val = "alg2"
            case Tagg.trig:
                val = "trig"
            case Tagg.calc:
                val = "calc"
            case Tagg.geo:
                val = "geo"
            case Tagg.stats:
                val = "stats"
            case Tagg.aam:
                val = "aam"
            case Tagg.alg:
                val = "alg"
            case Tagg.lit:
                val = "lit"
            case Tagg.ushist:
                val = "ushist"
            case Tagg.worldhist:
                val = "worldhist"
            case Tagg.econ:
                val = "econ"
            case Tagg.gov:
                val = "gov"
            case Tagg.physics:
                val = "physics"
            case Tagg.chem:
                val = "chem"
            case Tagg.bio:
                val = "bio"
            case Tagg.java:
                val = "java"
            case Tagg.python:
                val = "python"
            case Tagg.apcsa:
                val = "apcsa"
            case Tagg.c:
                val = "c"
            case Tagg.swift:
                val = "swift"
            case Tagg.html:
                val = "html"
            default:
                val = "invalid"
        }
    }
}
