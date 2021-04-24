package com.ruoyi.web.platform.documentary.service.impl;

import java.util.*;

import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysDept;
import com.ruoyi.system.domain.SysRole;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.mapper.SysDeptMapper;
import com.ruoyi.system.mapper.SysRoleMapper;
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

    @Autowired
    private SysDeptMapper         sysDeptMapper;

    @Autowired
    private SysRoleMapper         sysRoleMapper;

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
        if (newsDocumentaries.size() == 0) {
            return newsDocumentaries;
        }
        newsDocumentaries.forEach(documentary -> {
            if (StringUtils.isNotEmpty(documentary.getDocumentaryJionPeople())) {
                List<String> list = Arrays.asList(documentary.getDocumentaryJionPeople().split(","));
                List<SysUser> sysUsers = null;
                if (list.size() > 1) {
                    sysUsers = sysUserMapper.selectByIds(list);
                    ArrayList<String> userNames = Lists.newArrayList();
                    for (SysUser sysUser : sysUsers) {
                        userNames.add(sysUser.getUserName());
                    }
                    documentary.setDocumentaryJionPeople(userNames.toString());
                } else {
                    SysUser sysUser =
                        sysUserMapper.selectUserById(Long.valueOf(documentary.getDocumentaryJionPeople()));
                    documentary.setDocumentaryJionPeople(sysUser.getUserName());
                }
            }
        });

        Collections.reverse(newsDocumentaries);
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
        newsDocumentary.setCreateBy(String.valueOf(ShiroUtils.getUserId()));
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
        newsDocumentary.setCreateBy(ShiroUtils.getLoginName());
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
        List<String> list = Arrays.asList(menuIds.split(","));
        if (newsDocumentary != null) {
            list.forEach(id -> {
                long l = Long.parseLong(id);
                if (l < 1000L) {

                    userId.add(l);
                }
            });
            if (userId.size() == 1) {
                newsDocumentary.setDocumentaryJionPeople(String.valueOf(userId.get(0)));
            } else {
                newsDocumentary.setDocumentaryJionPeople(userId.toString());
            }
        }
        newsDocumentaryMapper.updateNewsDocumentary(newsDocumentary);
    }
}
