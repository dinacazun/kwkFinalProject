//
//  ToDoTableTableViewController.swift
//  kwkproject
//
//  Created by chai_goldpig on 7/21/21.
//

import UIKit
import CoreData

class ToDoTableTableViewController : UITableViewController {
    
    var listOfToDo : [ToDoCD] = []

    func getToDos() {
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let dataFromCoreData = try? accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                
                listOfToDo = dataFromCoreData
                tableView.reloadData()
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
            let eachToDo = listOfToDo[indexPath.row]
            cell.textLabel?.text = eachToDo.descriptionInCD
        
            return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

         let eachToDo = listOfToDo[indexPath.row]

         performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
    }

    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoVC = segue.destination as? AddToDoViewController {
            
            nextAddToDoVC.previousToDoTVC = self
            
        }
        
        if let nextCompletedToDoVC = segue.destination as?
            CompletedToDoViewController {
            
            if let choosenToDo = sender as? ToDoCD {
                
                nextCompletedToDoVC.selectedToDo = choosenToDo
                nextCompletedToDoVC.previousToDoTVC = self
                
            }
        }
    }
    

}
