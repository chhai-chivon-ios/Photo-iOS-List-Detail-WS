//
//  PhotoListViewController.swift
//  MyPhoto
//
//  Created by Chhai Chivon on 1/19/20.
//  Copyright © 2020 Chhai Chivon. All rights reserved.
//

import UIKit

class PhotoListViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var photoTableView: UITableView!
    var photos = [Photo]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoTableView.dataSource = self
        photoTableView.delegate  = self
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
        let task = URLSession.shared.dataTask(with: url!) { (data, res, err) in
            let jsonDecoder = JSONDecoder()
            let photos = try! jsonDecoder.decode([Photo].self, from: data!)
            self.photos = photos
            
            DispatchQueue.main.async {
                self.photoTableView.reloadData()
            }
        }
        task.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "photo_table_view_cell")
        let photo = photos[indexPath.row]
        cell?.textLabel?.text = photo.title
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "photo_detail_segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? PhotoDetailViewController {
            destinationViewController.photo  = photos[(photoTableView.indexPathForSelectedRow?.row)!]
        }
    }
}
