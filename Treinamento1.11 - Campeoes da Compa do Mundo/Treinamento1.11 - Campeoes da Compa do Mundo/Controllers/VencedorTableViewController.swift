//
//  VencedorTableViewController.swift
//  Treinamento1.11 - Campeoes da Compa do Mundo
//
//  Created by cassio luciano on 10/02/22.
//

import UIKit

class VencedorTableViewController: UITableViewController {
    
    var copasMundo: [CopaMundo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        carregarCopaMundo()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CampeosCopaViewController
        let copaMundo = copasMundo[tableView.indexPathForSelectedRow!.row]
        vc.copaMundo = copaMundo
    }
    
    func carregarCopaMundo(){
        let arquivoURL = Bundle.main.url(forResource:"vencedores.json", withExtension: nil)!
        let jsonDados = try! Data(contentsOf: arquivoURL)
        do {
            copasMundo = try JSONDecoder().decode([CopaMundo].self, from: jsonDados)
        } catch{
            print(error.localizedDescription)
        }
        
    }

    // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
      // #warning Incomplete implementation, return the number of sections
      return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return copasMundo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CopaMundoTableViewCell

        let copaMund = copasMundo[indexPath.row]
        cell.prepare(with: copaMund)
        return cell
//        cell.textLabel?.text = "Copa \(copaMund.year) - \(copaMund.country)"
//        cell.detailTextLabel?.text = "Copa \(copaMund.winner)  Vs \(copaMund.vice)"
//        print("Opa \(copaMund.year)")
      
    }
    

}
