//
//  TabataConfigTests.swift
//  TabataTimer
//
//  Created by Ivan Revchuk on 19.11.2025.
//

import XCTest
@testable import TabataTimer

/// Unit tests for TabataConfig derived values. // Юнит-тесты для вычисляемых значений TabataConfig.
final class TabataConfigTests: XCTestCase {

    func testTotalDurationAndIntervalsMatchExample() {
        // Given: configuration from app screenshots. // Дано: конфигурация как на скриншотах приложения.
        let config = TabataConfig(
            prepareSeconds: 10,
            workSeconds: 30,
            restSeconds: 5,
            cyclesPerSet: 3,
            setsCount: 3,
            restBetweenSetsSeconds: 30
        )

        // When: we compute total duration and intervals. // Когда: считаем общую длительность и число интервалов.
        let totalSeconds = config.totalDurationSeconds
        let intervalsCount = config.totalIntervalsCount

        // Then: we expect 6:10 (370 seconds) and 18 intervals. // Тогда: ожидаем 6:10 (370 секунд) и 18 интервалов.
        XCTAssertEqual(totalSeconds, 370, "Total duration should be 370 seconds (6:10). // Общая длительность должна быть 370 секунд (6:10).")
        XCTAssertEqual(intervalsCount, 18, "Total intervals count should be 18. // Общее количество интервалов должно быть 18.")
    }
}
