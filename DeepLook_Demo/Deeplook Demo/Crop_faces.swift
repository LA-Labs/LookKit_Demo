//
//  Crop_faces.swift
//  LookKit_Demo
//
//  Created by Amir Lahav on 06/04/2021.
//

import UIKit
import DeepLook

func cropFaces() {
    
    let image = UIImage(named: "angelina")!
    
    // move to background thread
    DispatchQueue.global().async {
        
        // normalized bounding box.
        let faceLocations = DeepLook.faceLocation(image)
        
        // Crop chip faces.
        let cropFaces = DeepLook.cropFaces(image,
                                           locations: faceLocations)
        
    }

}
