package com.ruoyi.web.platform.comments.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.platform.comments.mapper.CommentsMapper;
import com.ruoyi.web.platform.comments.domain.Comments;
import com.ruoyi.web.platform.comments.service.ICommentsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 留言板评论互动Service业务层处理
 *
 * @author party-platform
 * @date 2020-11-07
 */
@Service
public class CommentsServiceImpl implements ICommentsService {
    @Autowired
    private CommentsMapper commentsMapper;

    /**
     * 查询留言板评论互动
     *
     * @param commentsId 留言板评论互动ID
     * @return 留言板评论互动
     */
    @Override
    public Comments selectCommentsById(Long commentsId) {
        return commentsMapper.selectCommentsById(commentsId);
    }

    /**
     * 查询留言板评论互动列表
     *
     * @param comments 留言板评论互动
     * @return 留言板评论互动
     */
    @Override
    public List<Comments> selectCommentsList(Comments comments) {
        return commentsMapper.selectCommentsList(comments);
    }

    /**
     * 新增留言板评论互动
     *
     * @param comments 留言板评论互动
     * @return 结果
     */
    @Override
    public int insertComments(Comments comments) {
        comments.setCreateBy(ShiroUtils.getLoginName());
        comments.setCreateTime(DateUtils.getNowDate());
        comments.setUpdateBy(ShiroUtils.getLoginName());
        comments.setUpdateTime(DateUtils.getNowDate());
        return commentsMapper.insertComments(comments);
    }

    /**
     * 修改留言板评论互动
     *
     * @param comments 留言板评论互动
     * @return 结果
     */
    @Override
    public int updateComments(Comments comments) {
        comments.setUpdateBy(ShiroUtils.getLoginName());
        comments.setUpdateTime(DateUtils.getNowDate());
        return commentsMapper.updateComments(comments);
    }

    /**
     * 删除留言板评论互动对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCommentsByIds(String ids) {
        return commentsMapper.deleteCommentsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除留言板评论互动信息
     *
     * @param commentsId 留言板评论互动ID
     * @return 结果
     */
    @Override
    public int deleteCommentsById(Long commentsId) {
        return commentsMapper.deleteCommentsById(commentsId);
    }
}
