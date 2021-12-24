//
//  BallDetailViewController.swift
//  Homework022
//
//  Created by Chun-Yi Lin on 2021/12/24.
//

import UIKit

class BallDetailViewController: UIViewController {

    let ball : Ball
    
    @IBOutlet weak var detailLogo: UIImageView!
    @IBOutlet weak var detailSeriesLabel: UILabel!
    @IBOutlet weak var detailBall1Button: UIButton!
    @IBOutlet weak var detailBall2Button: UIButton!
    @IBOutlet weak var detailBall3Button: UIButton!
    @IBOutlet weak var detailBall4Button: UIButton!
    @IBOutlet weak var detailBall5Button: UIButton!
    
    @IBOutlet weak var detailTotalLabel: UILabel!
    @IBOutlet weak var detailPrizeLabel: UILabel!
    
    init?(coder: NSCoder, ball: Ball){
        self.ball = ball
        super.init(coder: coder)
    }
    
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLogo.image = UIImage(named: "intx_logo03")
        detailSeriesLabel.text = "期數 ： \(ball.Series)"
        detailPrizeLabel.text = "總獎金 ： \(ball.Prize)"
        detailTotalLabel.text = "銷售總金額 ： \(ball.Total)"
        
        detailBall1Button.setTitle("\(ball.Ball1)", for: .normal)
        detailBall1Button.frame.size = CGSize(width: 50, height: 50)
        detailBall1Button.layer.cornerRadius = detailBall1Button.frame.size.height / 2
        detailBall1Button.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        
        detailBall2Button.setTitle("\(ball.Ball2)", for: .normal)
        detailBall2Button.frame.size = CGSize(width: 50, height: 50)
        detailBall2Button.layer.cornerRadius = detailBall2Button.frame.size.height / 2
        detailBall2Button.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        detailBall3Button.setTitle("\(ball.Ball3)", for: .normal)
        detailBall3Button.frame.size = CGSize(width: 50, height: 50)
        detailBall3Button.layer.cornerRadius = detailBall3Button.frame.size.height / 2
        detailBall3Button.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        detailBall4Button.setTitle("\(ball.Ball4)", for: .normal)
        detailBall4Button.frame.size = CGSize(width: 50, height: 50)
        detailBall4Button.layer.cornerRadius = detailBall4Button.frame.size.height / 2
        detailBall4Button.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        detailBall5Button.setTitle("\(ball.Ball5)", for: .normal)
        detailBall5Button.frame.size = CGSize(width: 50, height: 50)
        detailBall5Button.layer.cornerRadius = detailBall5Button.frame.size.height / 2
        detailBall5Button.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)

    }

}
