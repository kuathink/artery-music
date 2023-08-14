package com.arterymusic.mapper;

import com.arterymusic.entity.MyPlayList;

import java.util.List;

/**
 * Create by Kudos on 2023/6/11 20:33
 */
public interface MyPlayListMapper {
    /**
     * 查询歌单中所有歌曲
     *
     * @return
     */
    List<MyPlayList> findAllSongs();

    /**
     * 删除歌曲(通过id删除)
     *
     * @param id
     * @return
     */
    int deleteSong(int id);

    /**
     * 通过id查询歌曲
     *
     * @param id
     * @return
     */
    MyPlayList findSongById(int id);

    void addSong(MyPlayList myPlayList);
}
