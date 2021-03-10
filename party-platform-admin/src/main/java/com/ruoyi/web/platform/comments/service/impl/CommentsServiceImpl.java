package com.ruoyi.web.platform.comments.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.framework.web.service.DictService;
import com.ruoyi.system.domain.SysDictData;
import com.ruoyi.system.mapper.SysUserMapper;
import com.ruoyi.system.utils.DictUtils;
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
 * @date 2021-03-06
 */
@Service
public class CommentsServiceImpl implements ICommentsService {
    @Autowired
    private CommentsMapper commentsMapper;

    @Autowired
    private SysUserMapper sysUserMapper;

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

        List<Comments> commentes = commentsMapper.selectCommentsList(comments);
        commentes.forEach(comments1 -> {
            if (comments1.getCommentsFromId() != null) {
                comments1.setFromName(sysUserMapper.selectUserById(comments1.getCommentsFromId()).getLoginName());
            }
            if (comments1.getCommentsToId() != null) {
                comments1.setToName(sysUserMapper.selectUserById(comments1.getCommentsToId()).getLoginName());
            }
        });
        return commentes;
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
        comments.setCommentsFromId(ShiroUtils.getUserId());
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

    @Autowired
    private DictService dictService;

    @Override
    public int reply(Comments comments) {
        comments.setFromName(ShiroUtils.getLoginName());
        comments.setCommentsFromId(ShiroUtils.getUserId());
        comments.setStatus("0");
        Comments byId = commentsMapper.selectCommentsById(comments.getCommentsId());
        comments.setCommentsType(byId.getCommentsType());
        comments.setCreateBy(ShiroUtils.getLoginName());
        comments.setCreateTime(DateUtils.getNowDate());
        comments.setUpdateBy(ShiroUtils.getLoginName());
        comments.setUpdateTime(DateUtils.getNowDate());
        return commentsMapper.insertComments(comments);
    }

    @Override
    public List<Comments> getCommentsReport() {
        return commentsMapper.getCommentsReport();
    }


}
