//
//  ViewController.swift
//  Homework022
//
//  Created by Chun-Yi Lin on 2021/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    let balls = Ball.data
    
    @IBOutlet weak var ballTableView: UITableView!
    
    @IBSegueAction func balldetailSegue(_ coder: NSCoder) -> BallDetailViewController? {
        
        if let row = ballTableView.indexPathForSelectedRow?.row {
            return BallDetailViewController(coder: coder, ball: balls[row])
        } else {
            return nil
        }
        
    }
    
    
           override func viewDidLoad() {
           super.viewDidLoad()
               
       }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return balls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = ballTableView.dequeueReusableCell(withIdentifier: "\(BallTableViewCell.self)", for: indexPath) as? BallTableViewCell
        else{return UITableViewCell()}
                
        cell.seriesLabel.text = "\(balls[indexPath.row].Series)"
        cell.ball1ImageView.image = UIImage(systemName: "\(balls[indexPath.row].Ball1).circle.fill")
        cell.ball2ImageView.image = UIImage(systemName: "\(balls[indexPath.row].Ball2).circle.fill")
        cell.ball3ImageView.image = UIImage(systemName: "\(balls[indexPath.row].Ball3).circle.fill")
        cell.ball4ImageView.image = UIImage(systemName: "\(balls[indexPath.row].Ball4).circle.fill")
        cell.ball5ImageView.image = UIImage(systemName: "\(balls[indexPath.row].Ball5).circle.fill")
        
        
        cell.ball1ImageView.tintColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        cell.ball2ImageView.tintColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        cell.ball3ImageView.tintColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        cell.ball4ImageView.tintColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        cell.ball5ImageView.tintColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        return cell
    }
    
    
}
