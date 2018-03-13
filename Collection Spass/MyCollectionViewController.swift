import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)

        switch indexPath.item {
            case 0: cell.backgroundColor = UIColor.red
            case 1: cell.backgroundColor = UIColor.blue
            case 2: cell.backgroundColor = UIColor.green
            case 3: cell.backgroundColor = UIColor.cyan
            default: cell.backgroundColor = UIColor.brown
        }

        return cell
    }

}

extension MyCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width: CGFloat = 0.0
        width = 300

        if traitCollection.horizontalSizeClass == .regular {
            width = 400
        }

        return CGSize(width: width, height: 300)
    }

}
