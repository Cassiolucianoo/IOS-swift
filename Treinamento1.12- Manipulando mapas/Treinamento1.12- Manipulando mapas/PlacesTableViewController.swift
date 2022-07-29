//
//  PlacesTableViewControlleTableViewController.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 21/02/22.
//

import UIKit

class PlacesTableViewController: UITableViewController {

    //array para popular a tabela
    var places: [Place] = []
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPlaces()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! != "Segue"{
            let vc = segue.destination as! PlaceFinderViewController
            vc.delegate = self
        }
    }

    func loadPlaces() {
        if let placesData = ud.data(forKey: "places") {
        do {
            places = try JSONDecoder().decode([Place].self, from: placesData)
            tableView.reloadData()
        } catch{
            print(error.localizedDescription)
            }
        
        }
    }
    func savePlace() {
        let json = try? JSONEncoder().encode(places)
        ud.set(json, forKey: "places")
    
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let place = places[indexPath.row]
        cell.textLabel?.text = place.nome
        return cell
    }

}
extension PlacesTableViewController: PlaceFinderDelegate{
    func addPlace (_ place: Place){
        if !places.contains(place){
            places.append(place)
            savePlace()
            tableView.reloadData()
         }
    }
}
