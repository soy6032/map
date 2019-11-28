//
//  ViewController.swift
//  map
//
//  Created by D7703_15 on 2019. 11. 22..
//  Copyright © 2019년 BlueScreen. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.mapType = MKMapType.standard
        
        
        let anno01 = MKPointAnnotation()
        anno01.coordinate.latitude = 35.164873
        anno01.coordinate.longitude = 129.071415
        anno01.title = "DIT 동의과학대학교"
        anno01.subtitle = "우리학교"
        
        
        let anno02 = MKPointAnnotation()
        anno02.coordinate.latitude = 35.171118
        anno02.coordinate.longitude = 129.056022
        anno02.title = "부산시민공원"
        anno02.subtitle = "학교앞 공원"
        
        
        let anno03 = MKPointAnnotation()
        anno03.coordinate.latitude = 35.156991
        anno03.coordinate.longitude = 129.056648
        anno03.title = "롯데백화점"
        anno03.subtitle = "부산본점"
        
        mapView.showAnnotations([anno01, anno02, anno03], animated: true)
    }
    
    }




