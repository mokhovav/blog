let pageNumber = 0;

$(document).ready(function () {

    pageNumber = document.cookie.replace(/(?:(?:^|.*;\s*)blogPage\s*\=\s*([^;]*).*$)|^.*$/, "$1");
    sendPostRequest('/getPosts',pageNumber, showPosts);

    $('#newPost').click(function () {
        $("#postModal").on('show.bs.modal', function (event) {
            // $("#message").text("<#if error??> ${error}</#if>");
        });
        $("#postModal").modal("show");
    })

    $('#postSubmit').click(function () {
        sendPostRequest('/newPost', '' + $('#postText').val(), showPosts);
        pageNumber = 0;
        document.cookie = "blogPage=" + pageNumber;
        $("#postModal").modal("hide");
    })

    $('#postCancel').click(function () {
        $("#postModal").modal("hide");
    })

    $('#forward').click(function () {
        pageNumber++;
        document.cookie = "blogPage=" + pageNumber;
        console.info(document.cookie.replace(/(?:(?:^|.*;\s*)blogPage\s*\=\s*([^;]*).*$)|^.*$/, "$1"));
        sendPostRequest('/getPosts',pageNumber, showPosts);
    })

    $('#back').click(function () {
        if(--pageNumber < 0) pageNumber = 0;
        document.cookie = "blogPage=" + pageNumber;
        console.info(document.cookie.replace(/(?:(?:^|.*;\s*)blogPage\s*\=\s*([^;]*).*$)|^.*$/, "$1"));
        sendPostRequest('/getPosts',pageNumber, showPosts);
    })
})

function showPosts(text){
    if (text == ""){
        $('#posts').text("");
        $('#posts').append("<tr><td>" + "There are no posts on this blog. Add a new post" + "</td></tr>");
    }
        // $('#posts').text("There are no posts on this blog. Add a new post");
    else {
        console.info(text);
        let message = JSON.parse(text);
        $('#posts').text("");
        for (let data of message.dataList) {
            $('#posts').append("<tr><td><div>" + dateToString(data.time) + "</div><div>" + data.post + "</div></td></tr>");
        }
        $('#message').text(message.message);
    }
}

function dateToString(date) {
    let dateObj = new Date(date);
    return dateObj.getFullYear()+'-'+(dateObj.getMonth()+1)+'-'+dateObj.getDate() +' '
        + dateObj.getHours() + ":" + dateObj.getMinutes() + ":" + dateObj.getSeconds();
}

function sendRequest(method, address = "/", message){
    let xmlHttp;
    if (window.XMLHttpRequest) {
        // code for modern browsers
        xmlHttp = new XMLHttpRequest();
    } else {
        // code for old IE browsers
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    if (message == null || typeof (message) == undefined)
        xmlHttp.open(method, address, true);
    else
        xmlHttp.open(method, address + "/" + message, true);
    let csrf_token = document.getElementById("csrf_token");
    if (csrf_token != null) xmlHttp.setRequestHeader("X-XSRF-TOKEN", csrf_token.getAttribute("value"));
    xmlHttp.send();
    return xmlHttp;
}

function sendPostRequest (address = "/", message, func) {
    let xmlHttp = sendRequest('POST',address, message);
    xmlHttp.onreadystatechange = function () {
        // if (this.readyState == 4 && this.status == 200) {
            func(this.responseText);
        // }
    }
}