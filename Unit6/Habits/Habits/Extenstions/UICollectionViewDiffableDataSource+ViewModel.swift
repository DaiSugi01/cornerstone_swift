//
//  UICollectionViewDiffableDataSource+ViewModel.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/13.
//

import UIKit

extension UICollectionViewDiffableDataSource {
    func applySnapshotUsing(sectionIDs: [SectionIdentifierType],
                            itemsBySection: [SectionIdentifierType: [ItemIdentifierType]],
                            sectionsRetainedIfEmpty: Set<SectionIdentifierType> =
                                Set<SectionIdentifierType>()) {
        applySnapshotUsing(sectionIDs: sectionIDs, itemsBySection:
                            itemsBySection, animatingDifferences: true,
                           sectionsRetainedIfEmpty: sectionsRetainedIfEmpty)
    }
    
    func applySnapshotUsing(sectionIDs: [SectionIdentifierType],itemsBySection: [SectionIdentifierType: [ItemIdentifierType]], animatingDifferences: Bool, sectionsRetainedIfEmpty: Set<SectionIdentifierType> = Set<SectionIdentifierType>()) {
        var snapshot = NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>()
        
        for sectionId in sectionIDs {
            guard let sectionItems = itemsBySection[sectionId],
                  sectionItems.count > 0 || sectionsRetainedIfEmpty.contains(sectionId) else { continue }
            snapshot.appendSections([sectionId])
            snapshot.appendItems(sectionItems, toSection: sectionId)
        }
        
        self.apply(snapshot, animatingDifferences: animatingDifferences)
    }
}
