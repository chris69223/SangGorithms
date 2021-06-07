func solution(_ a:Int, _ b:Int) -> String {
    /*
    1년이 366일 5 24 는?
    31 29 31 30 31 30 31 31 30 31 30 31
    
    1월 1 2 3  4  5 6 7
       금 토 일 월 화 수 목
    
    */
    var CsArr:[Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var t = 0
    var res = 0
    if a == 0{
        res = b % 7
    }else{
        for i in 0..<a-1{
        t += CsArr[i]
        }
        res = (t + b) % 7
    }
    
    switch res {
    case 1:
        return "FRI"
    case 2:
        return "SAT"
    case 3:
        return "SUN"
    case 4:
        return "MON"
    case 5:
        return "TUE"
    case 6:
        return "WED"
    case 0:
        return "THU"
    default:
        return "오류"
    }
}
