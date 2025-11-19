//
//  IntervalType.swift
//  TabataTimer
//
//  Created by Ivan Revchuk on 19.11.2025.
//

import Foundation

/// Describes a type of interval in a tabata workout. // Описывает тип интервала в табата-тренировке.
enum IntervalType {
    case prepare          // Time before the first work interval. // Время перед первым рабочим интервалом.
    case work             // Active work interval. // Активный рабочий интервал.
    case rest             // Short rest between work intervals. // Короткий отдых между рабочими интервалами.
    case restBetweenSets  // Longer rest between sets. // Более длинный отдых между сетами.
    case finished         // Workout is finished. // Тренировка завершена.
}
