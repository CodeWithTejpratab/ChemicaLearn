//
//  SimpleReaction.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/15/24.
//

import Foundation

struct Reaction {
    let question : String
    let questionSolution : String
    let choice1 : String
    let choice2 : String
    let choice3 : String
    let choice4 : String
    let correctChoice : String
    init(_ question: String, _ questionSolution: String, 
         _ choice1: String, _ choice2: String, _ choice3: String,
         _ choice4: String, _ correctChoice: String) {
        self.question = question
        self.questionSolution = questionSolution
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice3 = choice3
        self.choice4 = choice4
        self.correctChoice = correctChoice
    }
}

let simpleReactionQuestions = [
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

let questionOrganicChemistry = [
    Reaction("2-propanol + HCl → ?", "2-propanol + HCl → 2-chloropropane", "2-chloropropane", "1-methylpropane", "propene", "CH3OH", "2-chloropropane"),
    Reaction("Cyclohexene + Br2 → ?", "Cyclohexene + Br2 → 1,2-Dibromocyclohexane", "Hexane", "1,2,-Dibromohexane", "1,2-Dibromocyclohexane", "Pentane + methyl bromide", "1,2-Dibromocyclohexane"),
    Reaction("Cyclohexanol  + H2SO4 → ? + H2O", "Cyclohexanol  + H2SO4 → Cyclohexene + H2O", "Hexane + SO3", "Cyclohexene", "1-methylhexane", "3-hexanethiol", "Cyclohexene"),
    Reaction("Benzene + CH3Cl + AlCl3→ ? + HCl", "Benzene + CH3Cl + AlCl3→ Toluene + HCl", "1-Chlorobenzene", "2-cyclohexanol", "Toluene", "2-chlorohexane", "Toluene"),
    Reaction("Toluene + HNO3 + H2SO4 → ? + 2H2O", "Toluene + HNO3 + H2SO4 → Nitrobenzene + 2H2O", "Nitrobenzene", "1-benzenethiol", "Methane", "Nitrous oxide", "Nitrobenzene"),
    Reaction("Formaldehyde + CH3MgBr → ?", "Formaldehyde + CH3MgBr → ethanol", "Methanol", "ethanol", "acetaldehyde", "2-Bromopropane", "ethanol"),
    Reaction("Acetic acid + methanol + H2SO4/heat → ? + H2O", "Acetic acid + methanol + H2SO4/heat → Ethyl acetate + H2O", "2-methyl ethanoate", "Benzyl alcohol", "propanethiol", "Ethyl acetate", "Ethyl acetate"),
    Reaction("Ethyl ethanoate + H2O + NaOH → ?", "Ethyl ethanoate + H2O + NaOH → ethanol", "2-methylpropane", "ethanol", "2-ethyl propanol", "Acetic acid", "ethanol"),
    Reaction("1,2-dibromo propane + 2 NaNH2 → ?", "1,2-dibromo propane + 2 NaNH2 → 1-propyne", "propanol", "2-ethyl-3-bromo propane", "1-propyne", "2-methyl propanol", "1-propyne"),
    Reaction("1-Benzene oxide + NaOH → ?", "1-Benzene oxide + NaOH → cyclohexanediol", "cyclohexanediol", "Benzyl alcohol", "2-methyl propanol", "ethanol", "cyclohexanediol")
]
