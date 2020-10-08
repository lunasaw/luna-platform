package com.ruoyi.web.platform.recently.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.recently.mapper.RecentlyMapper;
import com.ruoyi.web.platform.recently.domain.Recently;
import com.ruoyi.web.platform.recently.service.IRecentlyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 右侧最近记录板块Service业务层处理
 * 
 * @author yttv-platform
 * @date 2020-10-07
 */
@Service
public class RecentlyServiceImpl implements IRecentlyService {
    @Autowired
    private RecentlyMapper recentlyMapper;

    /**
     * 查询右侧最近记录板块
     * 
     * @param recentlyId 右侧最近记录板块ID
     * @return 右侧最近记录板块
     */
    @Override
    public Recently selectRecentlyById(Integer recentlyId) {
        return recentlyMapper.selectRecentlyById(recentlyId);
    }

    /**
     * 查询右侧最近记录板块列表
     * 
     * @param recently 右侧最近记录板块
     * @return 右侧最近记录板块
     */
    @Override
    public List<Recently> selectRecentlyList(Recently recently) {
        return recentlyMapper.selectRecentlyList(recently);
    }

    /**
     * 新增右侧最近记录板块
     * 
     * @param recently 右侧最近记录板块
     * @return 结果
     */
    @Override
    public int insertRecently(Recently recently) {
        recently.setCreateTime(DateUtils.getNowDate());
        recently.setUpdateTime(DateUtils.getNowDate());
        return recentlyMapper.insertRecently(recently);
    }

    /**
     * 修改右侧最近记录板块
     * 
     * @param recently 右侧最近记录板块
     * @return 结果
     */
    @Override
    public int updateRecently(Recently recently) {
        recently.setUpdateTime(DateUtils.getNowDate());
        return recentlyMapper.updateRecently(recently);
    }

    /**
     * 删除右侧最近记录板块对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteRecentlyByIds(String ids) {
        return recentlyMapper.deleteRecentlyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除右侧最近记录板块信息
     * 
     * @param recentlyId 右侧最近记录板块ID
     * @return 结果
     */
    @Override
    public int deleteRecentlyById(Integer recentlyId) {
        return recentlyMapper.deleteRecentlyById(recentlyId);
    }
}
