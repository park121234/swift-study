//
//  BountyViewController.swift
//  BountyList
//
//  Created by gh on 2021/12/08.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MVVM
    
    //Model
    //- BountyInfo
    //> BountyInfo 만들자
    
    //Veiw
    // - ListCell
    // > ListCell 필요한 정보를 ViewModel한테서 받아야겠다
    // > ListCell은 ViewModel로 부터 받은 정보로 뷰 업데이트 하기
    
    //ViewModel
    // - BountyViewModel
    // > BountyViewModel을 만들고, 뷰레이어에서 필요한 메서드 만들기
    // > 모델 가지고 있기, BountyInfo들
    
//    let bountyInfoList: [BountyInfo] = [
//    BountyInfo(name: "brook", bounty: 33000000),
//    BountyInfo(name: "chopper", bounty: 50),
//    BountyInfo(name: "franky", bounty: 44000000),
//    BountyInfo(name: "luffy", bounty: 30000000),
//    BountyInfo(name: "nami", bounty: 16000000),
//    BountyInfo(name: "robin", bounty: 80000000),
//    BountyInfo(name: "sanji", bounty: 77000000),
//    BountyInfo(name: "zoro", bounty: 120000000)
//    ]
    
    let viewModel = BountyViewModel()
    
//    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
//    let bountyList = [33000000, 50, 44000000, 30000000, 16000000, 80000000, 77000000, 120000000]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //DetailViewController 에게 테이터 줌
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int {
                
//                let bountyInfo = bountyInfoList[index]
                let bountyInfo = viewModel.bountyInfo(at: index)
                
                vc?.viewModel.update(model: bountyInfo)
//                vc?.name = bountyInfo.name
//                vc?.bounty = bountyInfo.bounty
//                vc?.name = nameList[index]
//                vc?.bounty = bountyList[index]
            }
        }
    }

    override func viewDidLoad() { //데이터 넘겨주기
        super.viewDidLoad()

    }
    

    //UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return bountyList.count //데이터의 개수만큼 셀설정
//        return bountyInfoList.count
        return viewModel.numOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
//        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
//        cell.imgView.image = img
//        cell.nameLabel.text = nameList[indexPath.row]
//        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        
//        let bountyInfo = bountyInfoList[indexPath.row]
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        cell.update(info: bountyInfo)
//        cell.imgView.image = bountyInfo.image
//        cell.nameLabel.text = bountyInfo.name
//        cell.bountyLabel.text = "\(bountyInfo.bounty)"
        
        return cell
        
    }
    
    
    //UiTableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func update(info: BountyInfo) {
        imgView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}
    



class BountyViewModel {
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 30000000),
        BountyInfo(name: "nami", bounty: 16000000),
        BountyInfo(name: "robin", bounty: 80000000),
        BountyInfo(name: "sanji", bounty: 77000000),
        BountyInfo(name: "zoro", bounty: 120000000)
        ]
    
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted { prev, next in
                              return prev.bounty > next.bounty
        }
        
        return sortedList
    }
    
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo {
        return sortedList[index]
    }
    
}
