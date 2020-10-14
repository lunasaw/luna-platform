package com.ruoyi.web.platform.documentary.service;

import java.util.List;
import com.ruoyi.web.platform.documentary.domain.NewsDocumentary;

/**
 * 党建纪实Service接口
 * 
 * @author party-platform
 * @date 2020-10-14
 */
public interface INewsDocumentaryService {
    /**
     * 查询党建纪实
     * 
     * @param documentaryId 党建纪实ID
     * @return 党建纪实
     */
    public NewsDocumentary selectNewsDocumentaryById(Long documentaryId);

    /**
     * 查询党建纪实列表
     * 
     * @param newsDocumentary 党建纪实
     * @return 党建纪实集合
     */
    public List<NewsDocumentary> selectNewsDocumentaryList(NewsDocumentary newsDocumentary);

    /**
     * 新增党建纪实
     * 
     * @param newsDocumentary 党建纪实
     * @return 结果
     */
    public int insertNewsDocumentary(NewsDocumentary newsDocumentary);

    /**
     * 修改党建纪实
     * 
     * @param newsDocumentary 党建纪实
     * @return 结果
     */
    public int updateNewsDocumentary(NewsDocumentary newsDocumentary);

    /**
     * 批量删除党建纪实
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteNewsDocumentaryByIds(String ids);

    /**
     * 删除党建纪实信息
     * 
     * @param documentaryId 党建纪实ID
     * @return 结果
     */
    public int deleteNewsDocumentaryById(Long documentaryId);

    /**
     * 添加通过Id添加参与人员
     * 
     * @param documentaryId
     * @param menuIds
     */
    void editJoinPeople(Long documentaryId, String menuIds);
}
