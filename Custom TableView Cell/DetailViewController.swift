//
//  DetailViewController.swift
//  Custom TableView Cell
//
//  Created by D7703_17 on 2018. 5. 28..
//  Copyright © 2018년 황지성. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        /*
        if indexPath.row == 0{
            cell.textLabel?.text = "주소:" + location
            return cell
        }else if indexPath.row == 1{
            cell.textLabel?.text = "전화번호:" + Tell
            return cell
        }else {
            cell.textLabel?.text = "메뉴:" + menu
            return cell
        */
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "주소:" + location
            return cell
        case 1:
            cell.textLabel?.text = "전화번호:" + Tell
            return cell
        
        default:
            cell.textLabel?.text = "메뉴:" + menu
            return cell
        }
        }
        
    
    

    @IBOutlet weak var detailTableView: UITableView!
    
      @IBOutlet weak var ImgView: UIImageView!
      var cellImage : String = ""
      
      @IBOutlet weak var loca: UILabel!
      var location = ""
      
      @IBOutlet weak var Tel: UILabel!
      var Tell = ""
      var menu : String = ""
      override func viewDidLoad() {
        
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
        super.viewDidLoad()
            ImgView.image = UIImage(named : cellImage)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
