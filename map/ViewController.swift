//
//  ViewController.swift
//  map
//
//  Created by D7703_15 on 2019. 11. 22..
//  Copyright © 2019년 BlueScreen. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        locationManager.delegate = self
        
        
        
        //pin 꼽기
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
        
        mapView.addAnnotations([anno01, anno02, anno03])
        //현재 나의 위치 트랙킹
        locationManager.startUpdatingLocation()
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        mapView.showsUserLocation = true
        
    }
    
    //CLLocationManagerDelegete 메소드
    func locationManager(_ manager: CLLocationManager, didUpdateLocations location:[CLLocation]){
        let userLocation = location[0]
        print(userLocation)
        
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude:userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta:0.04)
        let region = MKCoordinateRegion(center : center, span: span)
        mapView.setRegion(region, animated: true)
        
    }
    
    }




