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
    var lbNoPlaces: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPlaces()
        
        lbNoPlaces = UILabel()
        lbNoPlaces.text = "Cadastre os locais que deseja conhcer\nclicando no botão + acima"
        lbNoPlaces.textAlignment = .center
        lbNoPlaces.numberOfLines = 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! != "mapSegue"{
            let vc = segue.destination as! PlaceFinderViewController
            vc.delegate = self
        }else {
            let vc = segue.destination as! MapaViewController
            switch sender {
            case let place as Place:
                vc.places = [place]
            default:
                vc.places = places
            }
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
    @objc func showAll(){
        performSegue(withIdentifier: "mapSegue", sender: nil)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if places.count > 0 {
            let btShowall = UIBarButtonItem(title: "Mostrar todos no mapa", style: .plain, target: self, action: #selector(showAll))
            navigationItem.leftBarButtonItem = btShowall
            tableView.backgroundView = nil
        }else {
            navigationItem.leftBarButtonItem = nil
            tableView.backgroundView = lbNoPlaces
        }
        
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let place = places[indexPath.row]
        performSegue(withIdentifier: "mapSegue", sender: place)
    }
    // MARK: - editingStyle deletar da tabela conteudo
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            places.remove(at: indexPath.row)
            tableView.deleteRows(at:[indexPath], with: .fade)
            savePlace()
        }
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
