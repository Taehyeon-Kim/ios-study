//
//  ViewController.swift
//  MapPractice
//
//  Created by taehy.k on 2020/10/31.
//

import UIKit

class ViewController: UIViewController, MTMapViewDelegate {

    var mapView: MTMapView?
    var mapPoint1: MTMapPoint?
    var poiItem1: MTMapPOIItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 지도 로드
        mapView = MTMapView(frame: self.view.bounds)
        
        // unwrapping
        if let mapView = mapView {
            mapView.delegate = self
            mapView.baseMapType = .standard
            
            // 지도 중심점, 레벨
            mapView.setMapCenter(MTMapPoint(geoCoord: MTMapPointGeo(latitude: 37.587568, longitude: 127.029248)), zoomLevel: 4, animated: true)
            
            // 현재 위치 트래킹? 있고 없고 무슨 차이지??
            mapView.showCurrentLocationMarker = true
            mapView.currentLocationTrackingMode = .onWithoutHeading
            
            // 테스트 핀 하나 생성 
            self.mapPoint1 = MTMapPoint(geoCoord: MTMapPointGeo(latitude: 37.587568, longitude: 127.029248))
            poiItem1 = MTMapPOIItem()
            poiItem1?.markerType = MTMapPOIItemMarkerType.yellowPin
            poiItem1?.mapPoint = mapPoint1
            poiItem1?.itemName = "테스트 핀"
            mapView.add(poiItem1)
            
            
            // 하위 레벨 뷰로 추가
            self.view.addSubview(mapView)
        }
    }


}

