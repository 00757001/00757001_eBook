//
//  Data.swift
//  00757001_eBook
//
//  Created by HungJie on 2020/10/16.
//
import SwiftUI

struct group {
    var cover: String
    var image : String
    var Cname : String
    var Ename : String
    var intro: String
    var url : String
    var people: Int
    var enemies : [String] = []
}

var enemyArray : [[String]] = [["薩諾斯","奧創","洛基","任務大師"],
                               ["天啟","哨兵","凶兆先生","黑鳳凰"],
                               ["末日博士","史克魯爾人","行星吞噬者","殲滅者"],
                               ["控訴者羅南","活體星球伊果","薩諾斯"]]

let groups : [group] = [
    group(cover: "Group1", image: "avengers", Cname: "復仇者聯盟", Ename:"THE AVENGERS", intro: "最初復仇者的成員為蟻人、黃蜂女、雷神索爾、鋼鐵人以及浩克。然而《復仇者》第二期中浩克就離隊改由美國隊長加入。不斷更改的成員名單已成為復仇者的特點，但一個主題從未更改過，那就是復仇者專與單一超級英雄無法應付的敵人作戰。復仇者的成員包括了人類、機器人、神、外星人、超自然生物、變種人、異人族甚至還有過去的敵人。雖然復仇者成員作風不同，但復仇者總能團結一致，打擊強大的威脅勢力。現在復仇者有主隊、聯合小隊、大湖復仇者以及美國復仇者四支分隊",url: "https://reurl.cc/EzQW5A", people: 8,enemies: enemyArray[0]),
    group(cover: "Group2", image: "xmen", Cname: "X戰警", Ename:"X-MEN" ,intro: "X戰警是一群變種人超級英雄組成。X戰警為當今世界中反人類偏執狂的氾濫而在正常人類與變異者之間爭取和平與平等的鬥爭。他們由查爾斯·澤維爾（Charles Xavier）領導，也被稱為X教授，一個功能強大的心靈感應者，可以控制和讀取思維。 他們的最大敵是Magneto，具有操縱和控制磁場的能力，領導突變兄弟會。 對於突變體和人類之間的關係，雙方都有相反的觀點和哲學",   url: "https://reurl.cc/EzQWEg", people: 9,enemies: enemyArray[1]),
    group(cover: "Group3", image: "four", Cname: "驚奇四超人", Ename:"FANTASTIC FOUR" ,intro: "驚奇四超人在一次對太空進行科學飛行期間暴露於宇宙射線後獲得了超能力。驚奇先生(Reed Richards)，科學天才，也是小組的負責人，可以將自己的身體伸展成令人難以置信的長度和形狀;隱形女(Susan Storm)，可以使自己隱形，並隨後投射出強大的無形力場；霹靂火(Johnny Storm)，會產生火焰，將火焰包圍並飛翔； 石頭人(Ben Grimm)，他們脾氣暴躁但善良的朋友，曾是大學橄欖球明星，也是一名出色的飛行員，由於他像石頭一樣的天性而擁有超強的超人力量和耐力", url: "https://reurl.cc/WLOylZ", people: 4,enemies: enemyArray[2]),
    group(cover: "Group4", image: "galaxy",Cname: "星際異攻隊", Ename:"GUARDIANS OF THE GALAXY" ,intro: "星際異攻隊為一支太空英雄團體，由先前皆沒有相關的角色所組成，主要角色有星爵、浣熊火箭、格魯特、葛摩拉、德克斯和亞當術士所組成，負責對抗太空中的惡勢力，當面臨太強大的敵人時，也會和地球的英雄團體合作。",  url: "https://reurl.cc/7oVng1", people: 6,enemies: enemyArray[3])
]


struct hero{
    var icon : String
    var Cname: String
    var Ename: String
    var intro : String
}

let heros : [hero] = [
    hero(icon: "ironman", Cname: "鋼鐵人", Ename: "Iron Man",intro: "鋼鐵人(Tony Stark)是一名超級英雄和復仇者，在遭受嚴重的心臟傷害並遭綁架後，被迫為綁架者製造毀滅性武器。 卻反而促使他創造了一套高科技裝甲，不僅拯救自己的生命，並以鋼鐵人的身份幫助保護世界。"),
    hero(icon: "captain", Cname: "美國隊長", Ename: "Captain America", intro: "美國隊長(Steve Rogers)是一名二戰時期的士兵，也是地球上最早的超級英雄和復仇者，起初身形瘦弱，但在接受一次的血清實驗後，身形變得魁武且強大，有異於常人的力氣和運動能力，在一次的意外的飛機迫降後，被冰凍起來一直到現代來清醒，並和其他英雄一起保護地球。"),
    hero(icon: "thor", Cname: "索爾", Ename: "Thor", intro: "索爾(Thor Odinson)是傳說中北歐神中的雷神，為眾神之神奧丁的兒子，起初為一個放蕩不羈的人，驕傲又自大，然而在被父親驅除出境到地球後，過著平凡人的生活時，他漸漸學習到憐憫心和寬容心，而他願意為夥伴們犧牲生命感動了神器-雷神之鎚，也讓他重拾了神力，而之後的日子他也成為復仇者的一員，一同保衛地球的和平。"),
    hero(icon: "doctor", Cname: "奇異博士", Ename: "Doctor Strange", intro:"奇異博士(Stephen Strange)，至高無上的奇異博士曾經是一位精明但傲慢的神經外科醫生，直到車禍致使他的雙手癱瘓。當現代醫術無法幫助他。他前往西藏，並接受古一大師的訓練，他治癒了自己的雙手，並進一步了解了法術，最終成為了至尊魔法師。 他定居在紐約市格林威治村的聖所，成為了讓地球免受任何神秘威脅的保護者。"),
    hero(icon: "spiderman", Cname: "蜘蛛人", Ename: "Spider man", intro: "蜘蛛人(Peter Parker)年輕時就失去了父母，不得不和他的班叔和梅姨住在一起。在一次科學展覽中，他被放射性蜘蛛咬傷，賦予了他力量。 起初他決定利用這些權力謀取私利，直到班叔死在他本可以阻止的盜賊手上。從此之後，他學會了“擁有強大的力量，同時也必須承擔巨大的責任”，並且決定不辜負班叔的精神，化悲憤作為蜘蛛人的力量。"),
    hero(icon: "panther", Cname: "黑豹", Ename: "Black Panther", intro:"黑豹(T'Challa)是非洲國家瓦干達的國家元首，瓦干達是地球上技術最先進的國家。他是國王/酋長，宗教領袖和總司令。 他還被認為是世界上最傑出的知識分子之一。 利用Wakanda先進的釩金屬技術以及他自己的能力和財富，他將自己的一生奉獻給全人類。"),
    hero(icon: "wolverine", Cname: "金鋼狼", Ename: "Wolverine", intro: "金鋼狼(Logan)是加拿大籍的變種人，也是X戰警成員。 出生於一個多世紀以前，他擁有野獸般的狂暴和武士的靈魂。洛根的神秘的過去充滿著鮮血、戰爭和背叛。 洛根具有快速癒合能力，每隻手和骨爪都有異於常人的感知。他的骨頭被亞德曼金屬包覆，一個幾乎堅不可摧的元素。 後來，他加入X戰警團隊，為人類與變異者之間的和平而戰。"),
    hero(icon: "deadpool", Cname: "死侍", Ename: "Deadpool", intro: "死侍(Wade Wilson)，首次露面時被描述為反派，但後來演變為易辨認的反英雄人物，具毀滅性能力的傭兵具有超級人類的能力，最常見的武器為兩把長刀和機關槍，具有快速治療的能力和出色的身體素質，沒有任何傷害能使他致命。而該角色因經常說廢話和開英雄們的玩笑而出名，他的幽默和常常打破第四堵牆(與觀眾對話)使他的知名度快速上升。"),
]

let MusicName : [String] = ["Avengers","Spider-Man","Deadpool"]
