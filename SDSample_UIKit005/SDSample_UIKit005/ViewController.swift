//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Private Fields
    private var imageView: UIImageView!
    
    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        // ImageViewの設定
        self.setupImageView()
    }
    
    /// ImageViewの設定
    private func setupImageView() {
        // ImageViewに設定するImage
        let image = UIImage(named: "logo")
        
        let imageViewSize = CGSize(width: 300.0,
                                   height: 100.0)
        let imageViewPoint = CGPoint(x: (self.view.bounds.width - imageViewSize.width) / 2,
                                     y: (self.view.bounds.height - imageViewSize.height) / 2)
        
        
        imageView = UIImageView(frame: CGRect(origin: imageViewPoint,
                                              size: imageViewSize))
        
        // AspectFitに設定
        imageView.contentMode = .scaleAspectFit
        
        // Imageを設定
        imageView.image = image;
        
        self.view.addSubview(imageView);
    }
}

