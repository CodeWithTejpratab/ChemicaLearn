//
//  displayQuizCell.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 6/2/24.
//

import UIKit
import SwiftUI

class displayQuizCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    
    private var hostingController: UIHostingController<QuizCellView>?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        // Remove previous hosting controller when cell is reused
        hostingController?.view.removeFromSuperview()
        hostingController = nil
    }

    func configure(with imageName: String, index: Int) {
        let quizCellView = QuizCellView(quizImageName: imageName, index: index)
        
        // Create the hosting controller to host the SwiftUI view
        let hostingController = UIHostingController(rootView: quizCellView)
        
        // Make sure to add the SwiftUI view to the containerView
        if let containerView = self.containerView {
            containerView.subviews.forEach { $0.removeFromSuperview() } // Clean up previous views
            hostingController.view.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(hostingController.view)
            
            // Constrain the hosting controller to the container view
            NSLayoutConstraint.activate([
                hostingController.view.topAnchor.constraint(equalTo: containerView.topAnchor),
                hostingController.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
                hostingController.view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
                hostingController.view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
            ])
            
            containerView.clipsToBounds = true
        }
        
        self.hostingController = hostingController
    }

}
