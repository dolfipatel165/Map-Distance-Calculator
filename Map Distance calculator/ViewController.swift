

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var First_Place: MKMapView!
    @IBOutlet weak var lblDistance: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
               First_location()
        Second_location()
        // Do any additional setup after loading the view, typically from a nib.
        
        let first_Location = CLLocation(latitude: 43.773217, longitude: -79.335493)
        let second_Location = CLLocation(latitude: 43.779860, longitude:-79.345773)
        let distance = first_Location.distanceFromLocation(second_Location)
        lblDistance.text = String(stringInterpolationSegment: distance)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    func First_location()
    {
        
        //Coordinates
        let fLat:CLLocationDegrees = 43.773217
        let flong:CLLocationDegrees = -79.335493
        
        let fCoordinates = CLLocationCoordinate2D(latitude: fLat, longitude: flong)
        
        //Span
        let fLatDelta:CLLocationDegrees = 0.5
        let fLongDelta:CLLocationDegrees = 0.5
        let fSpan = MKCoordinateSpan(latitudeDelta: fLatDelta, longitudeDelta: fLongDelta)
        
        let fRegion = MKCoordinateRegion(center: fCoordinates, span: fSpan)
        
        First_Place.setRegion(fRegion, animated: true)
        
        let fAnnotation = MKPointAnnotation()
        fAnnotation.title = "Lambton College"
  
        fAnnotation.coordinate = fCoordinates
        
        First_Place.addAnnotation(fAnnotation)
    }
    
    // Home Co-ordinates 43.744004, -79.599248
    
    func  Second_location()
    {
     
     
        let sLat:CLLocationDegrees = 43.779860
        let slong:CLLocationDegrees = -79.345773
        let sCoordinates = CLLocationCoordinate2D(latitude: sLat, longitude: slong)
        
     
        let sLatDelta:CLLocationDegrees = 0.5
        let sLongDelta:CLLocationDegrees = 0.5
        let sSpan = MKCoordinateSpan(latitudeDelta: sLatDelta, longitudeDelta: sLongDelta)
        
        let sRegion = MKCoordinateRegion(center: sCoordinates, span: sSpan)
        
        First_Place.setRegion(sRegion, animated: true)
        
        let sAnnotation = MKPointAnnotation()
        sAnnotation.title = "Fairview Mall"
       
        sAnnotation.coordinate = sCoordinates
        
        First_Place.addAnnotation(sAnnotation)
    }
    
    
    
    
}





