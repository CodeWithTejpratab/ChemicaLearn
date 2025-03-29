//
//  HomeTabViewController.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 6/1/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore
import SwiftUI

class HomeTabViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let quizSelectionArray = [
         K.Quiz.simpleReaction,
         K.Quiz.organicChemistry,
         K.Quiz.moleculeMaker,
         K.Quiz.acidBaseRacation,
         K.Quiz.electroChemistry,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellName)
        
    }
    
}

extension HomeTabViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Data Source Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizSelectionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellName, for: indexPath) as! displayQuizCell
        
        // Configure the cell with the image and index
        cell.configure(with: quizSelectionArray[indexPath.row], index: indexPath.row)
        
        return cell
    }
    
    // MARK: - Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedQuiz = quizSelectionArray[indexPath.row]
        let quizScreenVC = QuizScreenView(for: selectedQuiz)
        let hostingController = UIHostingController(rootView: quizScreenVC)
        hostingController.modalPresentationStyle = .fullScreen
        present(hostingController, animated: true, completion: nil)
    }
}
