//
//  GameForCatsViewController.swift
//  Homework 11
//
//  Created by Дмитрий Соколовский on 4.05.22.
//

import UIKit

class GameForCatsViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var circleButton: UIButton!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getScreenSize()
        setupCircleView()
    }
 
    // MARK: Public Properties
    var screenWidth: CGFloat = 0
    var screenHeight: CGFloat = 0
    var circleWidth: CGFloat = 0
    var circleHeight: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleButton.addGradient(withColors: [.blue, .red])
        circleButton.makeRound()
        circleButton.addShadow()

        self.view.addSubview(circleButton)
    }

    // MARK: IBActions
    @IBAction func circleButtonPressed(_ sender: Any) {
       
        circleButton.frame.origin.x = CGFloat.random(in: 0...screenWidth-circleWidth)
        circleButton.frame.origin.y = CGFloat.random(in: 20...screenHeight-circleHeight)
    }
    
    // MARK: Public Methods
    private func setupCircleView() {
        circleWidth = 100
        circleHeight = 100
        circleButton.frame = CGRect(x: 100, y: 100, width: circleWidth, height: circleHeight)
    }
    
    private func getScreenSize() {
        screenWidth = self.view.frame.width
        screenHeight = self.view.frame.height
    }
}



    

