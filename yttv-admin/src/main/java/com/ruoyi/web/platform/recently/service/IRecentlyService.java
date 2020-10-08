package com.ruoyi.web.platform.recently.service;

import java.util.List;
import com.ruoyi.web.platform.recently.domain.Recently;

/**
 * 右侧最近记录板块Service接口
 * 
 * @author yttv-platform
 * @date 2020-10-07
 */
public interface IRecentlyService {
    /**
     * 查询右侧最近记录板块
     * 
     * @param recentlyId 右侧最近记录板块ID
     * @return 右侧最近记录板块
     */
    public Recently selectRecentlyById(Integer recentlyId);

    /**
     * 查询右侧最近记录板块列表
     * 
     * @param recently 右侧最近记录板块
     * @return 右侧最近记录板块集合
     */
    public List<Recently> selectRecentlyList(Recently recently);

    /**
     * 新增右侧最近记录板块
     * 
     * @param recently 右侧最近记录板块
     * @return 结果
     */
    public int insertRecently(Recently recently);

    /**
     * 修改右侧最近记录板块
     * 
     * @param recently 右侧最近记录板块
     * @return 结果
     */
    public int updateRecently(Recently recently);

    /**
     * 批量删除右侧最近记录板块
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteRecentlyByIds(String ids);

    /**
     * 删除右侧最近记录板块信息
     * 
     * @param recentlyId 右侧最近记录板块ID
     * @return 结果
     */
    public int deleteRecentlyById(Integer recentlyId);
}
