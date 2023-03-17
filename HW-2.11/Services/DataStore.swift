//
//  DataManager.swift
//  HW-2.11
//
//  Created by Игорь Солодянкин on 02.03.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Иван",
        "Игорь",
        "Алексей",
        "Владимир",
        "Павел",
        "Савелий",
        "Сергей",
        "Никита",
        "Григорий",
        "Степан"
    ]
    
    let surnames = [
        "Лис",
        "Дроо",
        "Васильев",
        "Гуромин",
        "Солин",
        "Толпышев",
        "Толкович",
        "Доргин",
        "Магиров",
        "Винзер"
    ]
    
    let phones = [
        "89227770000",
        "89228881001",
        "89229992002",
        "89221213003",
        "89222124004",
        "89223335005",
        "89224446006",
        "89225557007",
        "89226668008",
        "89227779009",
    ]
    
    let emails = [
        "1111@mail.ru",
        "one@ya.ru",
        "two@os.ru",
        "office@ap.com",
        "salery@11.ru",
        "oops@kk.ru",
        "nine@9.ru",
        "healp@help33.com",
        "support@panama.ru",
        "zoiberg@fork.ru",
    ]
    
    private init() {}
}
