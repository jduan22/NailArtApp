//
//  CameraViewController.swift
//  NailArtApp
//
//  Created by Emma Carpenetti on 7/16/22.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    
    // Take a selfie:
    @IBAction func takeSelfie(_ sender: Any) {
        imagePicker.sourceType = .camera
       present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var shareB: UIButton!
    
    // Set Image View to the selfie:
    func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageDisplay.image = selectedImage
            shareB.isHidden = false
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

}
