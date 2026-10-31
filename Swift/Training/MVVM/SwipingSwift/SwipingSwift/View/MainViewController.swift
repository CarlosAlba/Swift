//
//  MainViewController.swift
//  SwipingSwift
//
//  Created by Alfredo Alba on 5/12/25.
//

import UIKit

class MainViewController: UIViewController {
    private let viewModel = MainViewModel()
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Swipe any Direction"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
        addGestures()
    }

    func setupLabel() {
        view.addSubview(label)
        NSLayoutConstraint.activate([
                    label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
                ])
    }
    
    func addGestures() {
        let directions: [UISwipeGestureRecognizer.Direction] = [.up, .down, .left, .right]
        
        for direction in directions {
            let gesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
            gesture.direction = direction
            view.addGestureRecognizer(gesture)
        }
    }

    @objc private func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        let direction: Direction
        
        switch gesture.direction {
        case .up:
            direction = .up
        case .down:
            direction = .down
        case .left:
            direction = .left
        case .right:
            direction = .right
        default:
            return
        }
        
        let message = viewModel.handleSwipe(direction)
        label.text = message
        animateBackground(for: direction)
    }
    
    private func animateBackground(for direction: Direction) {
        UIView.animate(withDuration: 0.3) {
            switch direction {
            case .up:
                self.view.backgroundColor = .systemBlue
            case .down:
                self.view.backgroundColor = .systemRed
            case .left:
                self.view.backgroundColor = .systemYellow
            case .right:
                self.view.backgroundColor = .systemGreen
            }
        }
    }
}

