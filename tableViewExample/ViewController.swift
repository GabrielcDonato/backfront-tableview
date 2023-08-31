//
//  ViewController.swift
//  tableViewExample
//
//  Created by Premiersoft on 29/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var names: [String] = ["Fiat", "Honda", "Renault", "BMW", "Audi"]
    
    var images: [String] = ["checkmark.circle.fill", "gearshape.fill",  "heart.fill", "exclamationmark.triangle.fill", "airplane"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        self.bottomLabel.text = "Selecione uma marca acima"
    }

    func configBottomLabel(marca: String){
        bottomLabel.text = "Marca de veículo escolhida: \(marca)"
    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}

//MARK: - PROTOCOLS TABLEVIEW

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(title: names[indexPath.row], image: images[indexPath.row])
        return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
//        print("O nome que foi selecionado foi: \(names[indexPath.row])")
        
        
        
        self.configBottomLabel(marca: "\(names[indexPath.row])")
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}

