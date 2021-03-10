package com.ruoyi.web.platform.comments.mapper;

import java.util.List;
import com.ruoyi.web.platform.comments.domain.Comments;

/**
 * 留言板评论互动Mapper接口
 *
 * @author party-platform
 * @date 2021-03-06
 */
public interface CommentsMapper {
    /**
     * 查询留言板评论互动
     *
     * @param commentsId 留言板评论互动ID
     * @return 留言板评论互动
     */
    public Comments selectCommentsById(Long commentsId);

    /**
     * 查询留言板评论互动列表
     *
     * @param comments 留言板评论互动
     * @return 留言板评论互动集合
     */
    public List<Comments> selectCommentsList(Comments comments);

    /**
     * 新增留言板评论互动
     *
     * @param comments 留言板评论互动
     * @return 结果
     */
    public int insertComments(Comments comments);

    /**
     * 修改留言板评论互动
     *
     * @param comments 留言板评论互动
     * @return 结果
     */
    public int updateComments(Comments comments);

    /**
     * 删除留言板评论互动
     *
     * @param commentsId 留言板评论互动ID
     * @return 结果
     */
    public int deleteCommentsById(Long commentsId);

    /**
     * 批量删除留言板评论互动
     *
     * @param commentsIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteCommentsByIds(String[] commentsIds);

    /**
     * 评论汇总
     *
     * @return 结果
     */
    public List<Comments> getCommentsReport();
}
