package com.arterymusic.entity;

/**
 * Create by Kudos on 2023/6/11 20:28
 * 我的歌单实体类
 */
public class MyPlayList {
    private int id;
    private String songName; // 歌名
    private String singer; // 歌手
    private String album; //专辑
    private String duration; //时长

    public MyPlayList() {
    }

    public MyPlayList(int id, String songName, String singer, String album, String duration) {
        this.id = id;
        this.songName = songName;
        this.singer = singer;
        this.album = album;
        this.duration = duration;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    @Override
    public String toString() {
        return "MyPlayList{" +
                "id=" + id +
                ", songName='" + songName + '\'' +
                ", singer='" + singer + '\'' +
                ", album='" + album + '\'' +
                ", duration='" + duration + '\'' +
                '}';
    }
}
