import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 900
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CardCollectionViewCell

        switch indexPath.item {
            case 0: cell.backgroundColor = UIColor.red
            case 1: cell.backgroundColor = UIColor.blue
            case 2: cell.backgroundColor = UIColor.green
            case 3: cell.backgroundColor = UIColor.cyan
            default: cell.backgroundColor = UIColor.brown
        }

        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        print("Collection view width \(collectionView.bounds.width)")
    }

}

extension MyCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("Collection view width \(collectionView.bounds.width)")
        // SE 320
        // ipad air 2 portrait 2/3 = 438.0
        // landscape 2/3 = 694.0
        // landscape 1/2 = 507.0
        // ipad 10.5 portrait 2/3 = 504.0
        // 1/3 = 320.0
        // landscape 2/3 = 782.0
        // landscape 1/2 = 551.0
        // landscape 1/3 = 320

        if collectionView.bounds.width > 600 {
            // row 1: collapsed : collapsed
            // row 2: collapsed : collapsed
        }

        if collectionView.bounds.width > 1200 {
            // row 1: expanded : collapsed
            // row 2: collapsed : expanded
        }

        if collectionView.bounds.width > 1500 {
            // row 1: expanded : expanded
            // row 2: expanded : expanded
        }

        return CGSize(width: 200, height: 200)
    }

}

