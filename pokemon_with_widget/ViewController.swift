//
//  ViewController.swift
//  pokemon_with_widget
//
//  Created by Alif Phincon on 17/10/22.
//

import PokemonAPI
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Example of calling a web API using an ID
        PokemonAPI().berryService.fetchBerry(1) { result in
            switch result {
            case .success(let berry):
                print(berry)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }


}

