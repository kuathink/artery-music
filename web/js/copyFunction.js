function copyQQ() {
    var QQ = document.getElementById("QQ");
    var copyQQ = document.getElementById("copyQQ");
    /*使用select()方法选取文本域内容*/
    QQ.select();
    /*使用浏览器的 Web API 接口方法 execCommand() 复制文本域中的内容。*/
    document.execCommand("copy");
    copyQQ.focus();
    alert("内容已经复制，请粘贴");
}

function copyEmail() {
    var Email = document.getElementById("Email");
    var copyEmail = document.getElementById("copyEmail");
    /*使用select()方法选取文本域内容*/
    Email.select();
    /*使用浏览器的 Web API 接口方法 execCommand() 复制文本域中的内容。*/
    document.execCommand("copy");
    copyEmail.focus();
    alert("内容已经复制，请粘贴");
}