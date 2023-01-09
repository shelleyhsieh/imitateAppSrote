//
//  showAppTableViewController.swift
//  imitateAppSrote
//
//  Created by shelley on 2022/12/19.
//

import UIKit

class MultiUseAppTableViewController: UITableViewController {
    

    var showMultiUseApp = [
        MultiUseApp(picName: "pic1", name: "LINE", classInfo: "社交"),
        MultiUseApp(picName: "pic2", name: "Google地圖", classInfo: "導航和大眾運輸"),
        MultiUseApp(picName: "pic3", name: "OPEN POINT", classInfo: "加入會員即可開始享受"),
        MultiUseApp(picName: "pic4", name: "冰友，MixerBox冰棒好友地圖", classInfo: "定位追蹤、尋找手機"),
        MultiUseApp(picName: "pic5", name: "YouTube", classInfo: "影片、音樂與直播"),
        MultiUseApp(picName: "pic6", name: "momo購物", classInfo: "購物"),
        MultiUseApp(picName: "pic7", name: "蝦皮購物", classInfo: "放心買、安心退"),
        MultiUseApp(picName: "pic8", name: "Google", classInfo: "無所不知，掌握全局"),
        MultiUseApp(picName: "pic9", name: "TikTok", classInfo: "Trend Start Here")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return showMultiUseApp.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(multiUseTableViewCell.self)", for: indexPath) as? multiUseTableViewCell
        else{
            fatalError("dequeueReusableCell multiUseTableViewCell failed")
        }
                
        let multiUse = showMultiUseApp[indexPath.row]
        cell.appNameLable.text = multiUse.name
        cell.appNameLable.font.withSize(30)
        
        cell.classInfoLable.text = multiUse.classInfo
        cell.classInfoLable.textColor = .gray
        cell.classInfoLable.font.withSize(15)
        
        cell.iconImageView.image = UIImage(named: multiUse.picName)

        cell.getBtn.setTitle("取得", for: .normal)
        cell.getBtn.layer.cornerRadius = 18
        cell.getBtn.backgroundColor = UIColor(cgColor: CGColor(red: 178/255, green: 179/255, blue: 181/255, alpha: 0.4))
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
