//
//  appTableViewController.swift
//  imitateAppSrote
//
//  Created by shelley on 2022/12/19.
//

import UIKit

class appTableViewController: UITableViewController {

    
//   topInfo
    @IBOutlet var nameLable: [UILabel]!
    @IBOutlet var infoLable: [UILabel]!
    @IBOutlet var picImage: [UIImageView]!
    
//    everyone use info
    @IBOutlet var multiUseImage: [UIImageView]!
    @IBOutlet var multiUseNameLable: [UILabel]!
    @IBOutlet var multiUseClassLable: [UILabel]!
    @IBOutlet var multiUseGetBtn: [UIButton]!
    
//    ranking info
    @IBOutlet var freeRankImage: [UIImageView]!
    @IBOutlet var freeRankNameLable: [UILabel]!
    @IBOutlet var freeRankClassLable: [UILabel]!
    @IBOutlet var freeRankGetBtn: [UIButton]!
    
    var topAppInfo = [
        TopApp(name: "Coodpad:簡單料理＆快速食譜", info: "耶誕創意料理上桌", picName: "pic01"),
        TopApp(name: "專注旅人-心流計時器", info: "旅人相伴 專注路上不寂寞", picName: "pic02"),
        TopApp(name: "friDay影音", info: "韓劇《財閥家的小兒子》", picName: "pic03")
    ]
    
    var multiUseInfo = [
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
    
    var freeRankInfo = [
        FreeRankApp(picName: "pic10", name: "Hami Video", classInfo: "是電視也是電影院"),
        FreeRankApp(picName: "pic11", name: "NGL-匿名問與答", classInfo: "取得你的 NGL Link"),
        FreeRankApp(picName: "pic4", name: "冰友，MixerBox冰棒好友地圖", classInfo: "定位追蹤、尋找手機")
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTopPage()
        setupFreeRankPart()
        setupMultiUsePart()
    }
    
    func setupTopPage(){
        for i in 0...2{
            nameLable[i].text = topAppInfo[i].name
            nameLable[i].font = nameLable[i].font.withSize(26)
            
            infoLable[i].text = topAppInfo[i].info
            infoLable[i].textColor = .gray
            infoLable[i].font = infoLable[i].font.withSize(20)
            
            picImage[i].image = UIImage(named: topAppInfo[i].picName)
        }
    }
    func setupMultiUsePart(){
        for i in 0...8{
            multiUseNameLable[i].text = multiUseInfo[i].name
            multiUseNameLable[i].font = multiUseNameLable[i].font.withSize(20)
            
            multiUseClassLable[i].text = multiUseInfo[i].classInfo
            multiUseClassLable[i].textColor = .gray
            multiUseClassLable[i].font = multiUseClassLable[i].font.withSize(15)
            
            multiUseImage[i].image = UIImage(named: multiUseInfo[i].picName)
            multiUseImage[i].contentMode = .scaleAspectFill
            
            multiUseGetBtn[i].setTitle("取得", for:.normal)
            multiUseGetBtn[i].layer.cornerRadius = 18
            multiUseGetBtn[i].backgroundColor = UIColor(cgColor: CGColor(red: 178/255, green: 179/255, blue: 181/255, alpha: 0.4))
        }
        
    }
    func setupFreeRankPart(){
        for i in 0...2{
            freeRankNameLable[i].text = freeRankInfo[i].name
            freeRankNameLable[i].font = freeRankNameLable[i].font.withSize(20)
            
            freeRankClassLable[i].text = freeRankInfo[i].classInfo
            freeRankClassLable[i].textColor = .gray
            freeRankClassLable[i].font = freeRankClassLable[i].font.withSize(15)
            
            freeRankImage[i].image = UIImage(named: freeRankInfo[i].picName)
            freeRankImage[i].contentMode = .scaleAspectFill
            
            freeRankGetBtn[i].setTitle("取得", for: .normal)
            freeRankGetBtn[i].layer.cornerRadius = 18
            freeRankGetBtn[i].backgroundColor = UIColor(cgColor: CGColor(red: 178/255, green: 179/255, blue: 181/255, alpha: 0.4))
        }
    }
    
//    @IBSegueAction func showMutilUse(_ coder: NSCoder) -> MultiUseAppTableViewController? {
//        let controller =  MultiUseAppTableViewController(coder: coder)
//        return controller
//    }
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//
//        return 0
//    }

    
    /*override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }*/
    

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
