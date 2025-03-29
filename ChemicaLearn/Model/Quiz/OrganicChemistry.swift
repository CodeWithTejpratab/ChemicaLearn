//
//  OrganicChemistry.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 3/28/25.
//


import Foundation

final class OrganicChemistry : Quiz {
    var questions: [Reaction] = [
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
}
