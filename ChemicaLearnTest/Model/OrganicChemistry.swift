//
//  OrganicChemistry.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 5/15/24.
//

import Foundation

struct OrganicChemistry {
    let question : String 
    let answerForQuestion : String
    let choice1 : String
    let choice2 : String
    let choice3 : String
    let choice4 : String
    let correctChoice : String
    init(_ question: String, _ answerForQuestion: String,
         _ choice1: String, _ choice2: String, _ choice3: String,
         _ choice4: String, _ correctChoice: String) {
        self.question = question
        self.answerForQuestion = answerForQuestion
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice3 = choice3
        self.choice4 = choice4
        self.correctChoice = correctChoice
    }
}

let questionOrganicChemistry = [
    OrganicChemistry("2-propanol + HCl → ?", "2-propanol + HCl → 2-chloropropane", "2-chloropropane", "1-methylpropane", "propene", "CH3OH", "2-chloropropane"),
    OrganicChemistry("Cyclohexene + Br2 → ?", "Cyclohexene + Br2 → 1,2-Dibromocyclohexane", "Hexane", "1,2,-Dibromohexane", "1,2-Dibromocyclohexane", "Pentane + methyl bromide", "1,2-Dibromocyclohexane"),
    OrganicChemistry("Cyclohexanol  + H2SO4 → ? + H2O", "Cyclohexanol  + H2SO4 → Cyclohexene + H2O", "Hexane + SO3", "Cyclohexene", "1-methylhexane", "3-hexanethiol", "Cyclohexene"),
    OrganicChemistry("Benzene + CH3Cl + AlCl3→ ? + HCl", "Benzene + CH3Cl + AlCl3→ Toluene + HCl", "1-Chlorobenzene", "2-cyclohexanol", "Toluene", "2-chlorohexane", "Toluene"),
    OrganicChemistry("Toluene + HNO3 + H2SO4 → ? + 2H2O", "Toluene + HNO3 + H2SO4 → Nitrobenzene + 2H2O", "Nitrobenzene", "1-benzenethiol", "Methane", "Nitrous oxide", "Nitrobenzene"),
    OrganicChemistry("Formaldehyde + CH3MgBr → ?", "Formaldehyde + CH3MgBr → ethanol", "Methanol", "ethanol", "acetaldehyde", "2-Bromopropane", "ethanol"),
    OrganicChemistry("Acetic acid + methanol + H2SO4/heat → ? + H2O", "Acetic acid + methanol + H2SO4/heat → Ethyl acetate + H2O", "2-methyl ethanoate", "Benzyl alcohol", "propanethiol", "Ethyl acetate", "Ethyl acetate"),
    OrganicChemistry("Ethyl ethanoate + H2O + NaOH → ?", "Ethyl ethanoate + H2O + NaOH → ethanol", "2-methylpropane", "ethanol", "2-ethyl propanol", "Acetic acid", "ethanol"),
    OrganicChemistry("1,2-dibromo propane + 2 NaNH2 → ?", "1,2-dibromo propane + 2 NaNH2 → 1-propyne", "propanol", "2-ethyl-3-bromo propane", "1-propyne", "2-methyl propanol", "1-propyne"),
    OrganicChemistry("1-Benzene oxide + NaOH → ?", "1-Benzene oxide + NaOH → cyclohexanediol", "cyclohexanediol", "Benzyl alcohol", "2-methyl propanol", "ethanol", "cyclohexanediol")
]
