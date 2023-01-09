//
//  RankAppViewController.swift
//  imitateAppSrote
//
//  Created by shelley on 2022/12/21.
//

import UIKit

class RankAppViewController: UIViewController {
    
    let freeRanks = [
    FreeRankApp(picName: "pic10", name: "Hami Vedio", classInfo: "是電視也是電影院"),
    FreeRankApp(picName: "pic11", name: "NGL-匿名的問與答", classInfo: "取得你的NGL Link"),
    FreeRankApp(picName: "pic4", name: "冰友：MixerBox冰棒好友地圖", classInfo: "定位追蹤、尋找手機"),
    FreeRankApp(picName: "pic12", name: "台北通TaipeiPASS", classInfo: "工具程式"),
    FreeRankApp(picName: "pic13", name: "皮克直播-第四台電視隨你看到飽", classInfo: "一個APP，看所有的節目"),
    FreeRankApp(picName: "pic14", name: "愛爾達電視", classInfo: "娛樂")
    ]
    
    let paidRanks = [
    PaidRankApp(picName: "pic15", name: "AutiSleep在手錶上追蹤睡眠", classInfo: "自動睡眠追蹤器＆鬧鐘"),
    PaidRankApp(picName: "pic16", name: "Shadoworket", classInfo: "Rule based proxy utility"),
    PaidRankApp(picName: "pic17", name: "FLICA - SLR Film", classInfo: "Analog Film"),
    PaidRankApp(picName: "pic18", name: "樂克導航王全3D", classInfo: "導航"),
    PaidRankApp(picName: "pic19", name: "理財幫手AndroMoney", classInfo: "財經"),
    PaidRankApp(picName: "pic20", name: "Procreate Pocket", classInfo: "iPhone上速寫與繪圖")
    ]

    @IBOutlet weak var rankSegmentControl: UISegmentedControl!
    @IBOutlet weak var rankTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rankTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    @IBAction func rankChange(_ sender: UISegmentedControl) {
        
        self.rankTableView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RankAppViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch rankSegmentControl.selectedSegmentIndex {
        case 0:
            return freeRanks.count
        case 1:
            return paidRanks.count
        default:
            return 0
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let freeApp = freeRanks[indexPath.row]
        let paidApp = paidRanks[indexPath.row]
        
        switch rankSegmentControl.selectedSegmentIndex {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: RankAppTableViewCell.reuseIdentifier, for: indexPath) as! RankAppTableViewCell
            cell.rankImageView.image = UIImage(named: freeApp.picName)
            cell.rankTitleLable.text = freeApp.name
            cell.rankTitleLable.font = cell.rankTitleLable.font.withSize(20)
            cell.rankSubtitleLable.text = freeApp.classInfo
            cell.rankSubtitleLable.font = cell.rankSubtitleLable.font.withSize(15)
            cell.rankSubtitleLable.textColor = .gray
            cell.rankBtn.setTitle("取得", for: .normal)
            cell.rankBtn.backgroundColor = UIColor(cgColor: CGColor(red: 178/255, green: 179/255, blue: 181/255, alpha: 0.4))
            cell.rankBtn.layer.cornerRadius = 18
            
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: RankAppTableViewCell.reuseIdentifier, for: indexPath) as! RankAppTableViewCell
            cell.rankImageView.image = UIImage(named: paidApp.picName)
            cell.rankTitleLable.text = paidApp.name
            cell.rankTitleLable.font = cell.rankTitleLable.font.withSize(20)
            cell.rankSubtitleLable.text = paidApp.classInfo
            cell.rankSubtitleLable.font = cell.rankSubtitleLable.font.withSize(15)
            cell.rankSubtitleLable.textColor = .gray
    
            return cell
            
        default:
            return UITableViewCell()
        }
        
        
    }
    
        
}
