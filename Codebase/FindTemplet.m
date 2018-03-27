function ObjectImage = FindTemplet(ObjectReq)
    switch ObjectReq
        case 'WATERBOTTLE_REQUESTED'
            ObjectImage = 'water.jpg';
        case 'MOBILE_REQUESTED'
            ObjectImage = 'mobile.jpg';
        case 'TOWEL_REQUESTED'
            ObjectImage = 'water.jpg';
        case 'SPEC_REQUESTED'
            ObjectImage = 'water.jpg';
        case 'SYRUPBOTTLE_REQUESTED'
            ObjectImage = 'water.jpg';
        case 'GLASS_REQUESTED'
            ObjectImage = 'water.jpg';    
    end
end