package com.ruoyi.web.platform.documentary.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.google.common.collect.Lists;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.mapper.SysUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.documentary.mapper.NewsDocumentaryMapper;
import com.ruoyi.web.platform.documentary.domain.NewsDocumentary;
import com.ruoyi.web.platform.documentary.service.INewsDocumentaryService;
import com.ruoyi.common.core.text.Convert;

/**
 * 党建纪实Service业务层处理
 * 
 * @author party-platform
 * @date 2020-10-14
 */
@Service
public class NewsDocumentaryServiceImpl implements INewsDocumentaryService {

    @Autowired
    private NewsDocumentaryMapper newsDocumentaryMapper;

    @Autowired
    private SysUserMapper         sysUserMapper;

    /**
     * 查询党建纪实
     * 
     * @param documentaryId 党建纪实ID
     * @return 党建纪实
     */
    @Override
    public NewsDocumentary selectNewsDocumentaryById(Long documentaryId) {
        return newsDocumentaryMapper.selectNewsDocumentaryById(documentaryId);
    }

    /**
     * 查询党建纪实列表
     * 
     * @param newsDocumentary 党建纪实
     * @return 党建纪实
     */
    @Override
    public List<NewsDocumentary> selectNewsDocumentaryList(NewsDocumentary newsDocumentary) {
        List<NewsDocumentary> newsDocumentaries = newsDocumentaryMapper.selectNewsDocumentaryList(newsDocumentary);
        newsDocumentaries.forEach(documentary -> {
            List<String> list = Arrays.asList(documentary.getDocumentaryJionPeople().split(","));
            List<SysUser> sysUsers = sysUserMapper.selectByIds(list);
            ArrayList<String> userNames = Lists.newArrayList();
            for (SysUser sysUser : sysUsers) {
                userNames.add(sysUser.getUserName());
            }
            documentary.setDocumentaryJionPeople(userNames.toString());
        });

        return newsDocumentaries;
    }

    /**
     * 新增党建纪实
     * 
     * @param newsDocumentary 党建纪实
     * @return 结果
     */
    @Override
    public int insertNewsDocumentary(NewsDocumentary newsDocumentary) {
        newsDocumentary.setCreateTime(DateUtils.getNowDate());
        return newsDocumentaryMapper.insertNewsDocumentary(newsDocumentary);
    }

    /**
     * 修改党建纪实
     * 
     * @param newsDocumentary 党建纪实
     * @return 结果
     */
    @Override
    public int updateNewsDocumentary(NewsDocumentary newsDocumentary) {
        newsDocumentary.setUpdateTime(DateUtils.getNowDate());
        return newsDocumentaryMapper.updateNewsDocumentary(newsDocumentary);
    }

    /**
     * 删除党建纪实对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNewsDocumentaryByIds(String ids) {
        return newsDocumentaryMapper.deleteNewsDocumentaryByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除党建纪实信息
     * 
     * @param documentaryId 党建纪实ID
     * @return 结果
     */
    @Override
    public int deleteNewsDocumentaryById(Long documentaryId) {
        return newsDocumentaryMapper.deleteNewsDocumentaryById(documentaryId);
    }

    @Override
    public void editJoinPeople(Long documentaryId, String menuIds) {
        NewsDocumentary newsDocumentary = newsDocumentaryMapper.selectNewsDocumentaryById(documentaryId);
        ArrayList<Long> userId = Lists.newArrayList();
        if (newsDocumentary != null) {
            List<String> list = Arrays.asList(menuIds.split(","));
            list.forEach(id -> {
                long l = Long.parseLong(id);
                if (l < 1000) {
                    userId.add(l);
                }
            });
            newsDocumentary.setDocumentaryJionPeople(userId.toString());
        }
        newsDocumentaryMapper.updateNewsDocumentary(newsDocumentary);
    }
}
