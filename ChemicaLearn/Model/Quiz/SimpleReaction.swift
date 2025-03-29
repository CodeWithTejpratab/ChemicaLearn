//
//  SimpleReaction.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 3/28/25.
//


import Foundation

final class SimpleReaction : Quiz {
    var questions: [Reaction] = [
        Reaction("H2 + ? --> H20", "H2 + O2 --> H20",  "H2",  "C",  "O2",  "Li",  "O2"),
        Reaction("C + ? --> CO2",  "C + O2 --> CO2",  "H2",  "O2",  "C",  "Mg",  "O2"),
        Reaction("H2O2 --> 2? + O2",  "H2O2 --> 2H2O + O2",  "H20",  "C", "O2",  "Mn", "H2O"),
        Reaction("CH4 + O2 --> ? + H2O", "CH4 + O2 --> CO2 + H2O", "CO2", "H2", "O2", "C4H6", "CO2"),
        Reaction("SO3 + H2O --> ?", "SO3 + H2O --> H2SO4", "SO4", "H2", "H2O", "H2SO4", "H2SO4"),
        Reaction("N2O5 + H2O --> ?", "N2O5 + H2O --> 2HNO3", "NO2", "H2O", "2HNO3", "H2", "2HNO3"),
        Reaction("2 Fe(OH)3 → ? + 3H2O", "2 Fe(OH)3 → Fe2O3 + 3H2O", "Fe2O3", "H2O", "Fe3", "O2", "Fe2O3"),
        Reaction("H2CO3 → CO2 + ?", "H2CO3 → CO2 + H2O", "H2", "H2O", "O2", "CH3", "H2O"),
        Reaction("CaO + H2O → ?", "CaO + H2O → Ca(OH)2", "CaO2", "CaH2", "H2O2", "Ca(OH)2", "Ca(OH)2"),
        Reaction("CaCO3 → ? + CO2", "CaCO3 → CaO + CO2", "CaO", "CH3", "O2", "CO", "CaO")
    ]
}
