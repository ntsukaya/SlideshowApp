//
//  zoomViewController.swift
//  SlideshowApp
//
//  Created by NoriyasuTsukaya on 2021/09/16.
//

import UIKit

class zoomViewController: UIViewController {

    @IBOutlet weak var zoomImageView: UIImageView!
    
    var x:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageArray:[UIImage] = [
            UIImage(named:"a")!,
            UIImage(named:"b")! ,
            UIImage(named:"c")! ,
            UIImage(named:"d")! ,
            UIImage(named:"e")!]  
        
        zoomImageView.image = imageArray[x]
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
