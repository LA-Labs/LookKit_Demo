//
//  Crop_faces.swift
//  LookKit_Demo
//
//  Created by Amir Lahav on 06/04/2021.
//

import UIKit
import LookKit

func cropFaces(completion: @escaping (Result<[UIImage], Error>) -> Void) {
    
    let image = UIImage(named: "angelina")!
    
    // move to background thread
    DispatchQueue.global().async {
        
        // normlized bounding box.
        let faceLocations = DeepLook.faceLocation(image)
        
        // Crop chip faces.
        let cropFaces = DeepLook.cropFaces(image,
                                           locations: faceLocations)
        
        completion(.success(cropFaces))
    }

}
