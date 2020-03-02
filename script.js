var count = 1
    function likeButton(btn) {
        var property = document.getElementById("like-button");
        if (count == 0) {
            property.style.color= "gray"
            count = 1;        
        }
        else {
            property.style.color= "red"
            count = 0;
        }
    }