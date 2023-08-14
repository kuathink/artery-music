/**
 * 1. 拆开歌词
 *    准备两个空数组: 时间数组  歌词数组
 *    准备正则表达式
 *    循环截取
 *
 * 2. 渲染页面
 *    遍历数组,生成 li 放到 ul 中
 *
 * 3. 随着音乐的播放拿到对应的时间
 *    时间格式化成 00:00 的时间格式
 *
 * 4. 找到时间数组里对应的时间索引
 *    时间数组与歌词数组一一对应
 *
 */
// 1-1 准备数组
const timeArr = [];
const lrcArr = [];

// 1-2 准备正则
/**
 * 解析:截取后将获得 [XX:XX.XX]AAAAA (X表示数字,A表示汉字)   AAAAA 两种字串
 *      g 是全局标识符,使截取后的下标指向下次的位置
 * @type {RegExp}
 */
const reg = /\[(\d{2}:\d{2})\.\d{2}\](.+)/g;
// 1-3 截取
let tmp = reg.exec(lrcStr);
while (tmp) {
    timeArr.push(tmp[1]);
    lrcArr.push(tmp[2]);
    tmp = reg.exec(lrcStr)
}

// 2-1 获取 ul 标签
const ul = document.querySelector('ul');
// 2-2 循环遍历歌词数组
let str = '';
lrcArr.forEach((item, index) => {
    str += `<li class="${index === 0 ? 'active' : ''}">${item}</li>`
});
ul.innerHTML = str;

// 3-1 获取 audio 标签
const audio = document.querySelector('.audio');
// 3-2 绑定事件
audio.addEventListener('timeupdate', function () {
    // 3-3 格式化拿到的时间
    const {currentTime} = this;
    const minutes = parseInt(currentTime / 60);
    const seconds = parseInt(currentTime % 60);
    const timeStr = (minutes < 10 ? '0' + minutes : minutes) + ":" + (seconds < 10 ? '0' + seconds : seconds);

    // 4-1 在时间数组中找到对应的索引
    const index = timeArr.findIndex(item => item === timeStr);
    // 4-2 给 ul 赋值
    if (index !== -1) {
        ul.style.top = -index * 25 + 100 + 'px';
        ;[...ul.children].forEach(item => item.className = '');
        ul.children[index].className = 'active';
    }
});