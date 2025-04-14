//
//  AcidBaseReactions.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 4/13/25.
//

import Foundation

final class AcidBaseReaction: Quiz {
    var questions: [Reaction] = [
        Reaction("Zn(OH)2 + HNO3 →?", "Zn(OH)2 + HNO3 →Zn(NO3)2",  "Zn(OH)2",
                 "H2O",  "Zn(NO3)2",  "O2",  "Zn(NO3)2"),
        Reaction("HCl + Mg(OH)2 → ?",  "HCl + Mg(OH)2 → MgCl2 + H2O",  "H2",  "MgCl2 + H2O",  "MgCl2 + O2",  "Mg",  "MgCl2 + H2O"),
        Reaction("C3H7NO2 + H3O+ ←→? + H2O",  "C3H7NO2 + H3O+ ←→C3H8NO2(+) + H2O",  "H3O(+)",  "C3H7NO2(-)", "C3H7NO2(3+)",  "C3H8NO2(+)", "C3H8NO2(+)"),
        Reaction("Benzoic acid is a common preservative. It has a pKa of 4.20. What is the Kb and the pKb for the benzoate ion?", "Kb=10^−pKb→10^−9.80→1.58*10^-10", "9.80", "1.58×10^-10", "14", "3.68*10^-5", "1.58*10^-10"),
        Reaction("During a titration, 17.6 mL of H2SO4 solution neutralized 27.4 mL of 0.0165 M Mg(OH)2 solution. Find the molarity of the aqueous H2SO4 solution.", "[H2SO4] = 0.0128 M", "0.45 M", "0.98", "17.62 M", "0.0128 M", "0.0128 M"),
        Reaction("Calculate the pH and pOH of a 0.03 M KOH solution.", "pOH = 2, pH = 14-2 = 12", "4.8", "3", "12", "10", "12"),
        Reaction("Which of the following is a strong acid?", "HClO4 (perchloric acid)", "H2SO3", "HClO4", "H2CO3", "HF", "HClO4"),
        Reaction("What is the pH of a 0.010 M solution of acetic acid? Ka for acetic acid is 1.8 × 10–5", "pH=-log[H3O+] and pH=-log[H+], Ka=[H3O+][A-]/[HA] = 3.37", "6.7", "3.37", "7.14", "2.24", "3.37"),
        Reaction("What is the pH of a solution which has a hydroxide ion concentration of 5x 10^-4M?", "Kw=[H+][OH-]=10^-14, [H+]=Kw]/[OH-]=2x10^-11, pH=-log[H+=10.70]", "10.70", "8.5", "7", "12", "10.70"),
        Reaction("What is the pKa of acetic acid, which has a Ka value of 1.8x10^-5?", "pKa=-log[Ka]=4.7", "2.1", "8.3", "4.7", "5.7", "4.7")
    ]
}
