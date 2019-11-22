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
        
        //1) 지도의 중심점 (위도, 경도)지정
        //미래관 35.164873, 129.071415
        let center = CLLocationCoordinate2D(latitude: 35.164873, longitude: 129.071415)
        
        //2)지도 반경 지정
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        
        //3) 지도의 보여주는 영역인 region 만들기
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 300, longitudinalMeters: 300)
        
        //4) MapView에 설정하기
        mapView.setRegion(region, animated: true)
        
        //5) center에 pin 꼽기
        let anno01 = MKPointAnnotation()
        anno01.coordinate = center
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




