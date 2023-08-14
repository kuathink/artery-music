/* 用于加载网页之后立即执行的操作 */
window.onload = function () {
    // 为音乐标签添加src
    // document.querySelector(".audio").src = "./music/最美的期待.mp3";
    // 添加音乐播放器标题
    // document.querySelector(".music-name").innerHTML = "最美的期待";

    // 音乐有多首，添加音乐数据
    var musicList = [
        "./music/最美的期待.mp3",
        "./music/爸爸妈妈.mp3",
        "./music/广东十年爱情故事.mp3"
    ];
    // 音乐标题
    // var titleList = ["最美的期待","爸爸妈妈","广东十年爱情故事"]
    //初始化
    var num = 1;

    // 为音乐标签添加src
    // document.querySelector(".audio").src = musicList[num];
    // 添加音乐播放器标题
    // document.querySelector(".music-name").innerHTML = titleList[num];

    // 选择器的封装复用
    function reuse(name) {
        return document.querySelector(name);

    }

    // 为音乐标签添加src
    reuse(".audio").src = musicList[num];
    // 添加音乐播放器标题
    // reuse(".dm_middle_right_foot-music_name").innerHTML = titleList[num];


    var audio = reuse(".audio")
    // 播放
    reuse(".play").onclick = function () {
        if (audio.pause) {//判断是否处于暂停状态
            audio.play(); // 播放方法
        }
    }

    // 暂停
    reuse(".pause").onclick = function () {
        if (audio.play) {//判断是否处于播放状态
            audio.pause(); // 暂停方法
        }
    }

}