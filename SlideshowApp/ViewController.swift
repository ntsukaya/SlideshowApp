//
//  ViewController.swift
//  SlideshowApp
//
//  Created by NoriyasuTsukaya on 2021/09/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playOrStop: UIButton!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    //index番号
    var nowIndex:Int = 0
    //タイマー
    var timer:Timer!
    //画像の配列
    var imageArray:[UIImage] = [
        UIImage(named:"a")!,
        UIImage(named:"b")! ,
        UIImage(named:"c")! ,
        UIImage(named:"d")! ,
        UIImage(named:"e")!]  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageview.image = imageArray[0]
    }

    override func prepare( for segue:UIStoryboardSegue,sender: Any?) {
        let zoomViewConroller:zoomViewController = segue.destination as! zoomViewController
        zoomViewConroller.x = nowIndex
        
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }

    
    @IBAction func playStopSlideshow(_ sender: Any) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            playOrStop.setTitle("停止", for: .normal)
            nextButton.isEnabled = false
            backButton.isEnabled = false
        } else {
            timer.invalidate()
            timer = nil
            playOrStop.setTitle("再生", for: .normal)
            nextButton.isEnabled = true
            backButton.isEnabled = true
        }
        
    }
    
    @objc func changeImage() {
        nowIndex += 1
        if nowIndex == imageArray.count {
            nowIndex = 0
        }
        imageview.image = imageArray[nowIndex]
    }
    
    @IBAction func back(_ sender: Any) {
        
        if nowIndex == 0 {
            nowIndex = imageArray.count - 1
            
        } else {
            nowIndex -= 1
        }
        imageview.image = imageArray[nowIndex]
    }
    
    @IBAction func next(_ sender: Any) {
        nowIndex += 1
        if nowIndex == imageArray.count {
            nowIndex = 0
        }
        imageview.image = imageArray[nowIndex]
    
    }
}

