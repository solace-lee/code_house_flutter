import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class SearchResult {

}
const x = {
    "code": 200,
    "data": [
        {
            "meta": {
                "updateAt": "1590295676891"
            },
            "keywords": [
                "学号",
                "班级名称",
                "姓名",
                "语文",
                "数学",
                "英语",
                "政治",
                "物理",
                "历史",
                "6科总分",
                "级排",
                "班排"
            ],
            "detail": [
                18438,
                "初二04班",
                "古鹏",
                70.5,
                89,
                62.5,
                80,
                82,
                69,
                453,
                12,
                1
            ],
            "_id": "5ec9fc80342d8348c15d2dc8",
            "studentname": "古鹏",
            "studentid": "18438",
            "createuser": "陈老师",
            "mark": "启明中学2019-2020第二学期摸底考试",
            "__v": 0
        },
        {
            "meta": {
                "updateAt": "1590295521661"
            },
            "keywords": [
                "班级名称",
                "学号",
                "姓名",
                "语文",
                "数学",
                "英语",
                "政治",
                "物理",
                "历史",
                "体育",
                "总分",
                "班排",
                "年级排名"
            ],
            "detail": [
                "初二04班",
                "18438",
                "古鹏",
                93,
                75,
                81,
                68.4,
                81,
                72.9,
                57,
                528.3,
                1,
                28
            ],
            "_id": "5ec9fbe3342d8348c15d2c6a",
            "studentname": "古鹏",
            "studentid": "18438",
            "createuser": "陈老师",
            "mark": "2019-2020初二第一学期期末测试",
            "__v": 0
        }
    ],
    "msg": "获取成功"
};