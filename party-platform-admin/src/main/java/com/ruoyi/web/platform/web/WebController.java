package com.ruoyi.web.platform.web;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.SysDept;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysDeptService;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.web.platform.documentary.domain.NewsDocumentary;
import com.ruoyi.web.platform.documentary.mapper.NewsDocumentaryMapper;
import com.ruoyi.web.platform.news.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Package: com.ruoyi.web.platform.partyInfo
 * @ClassName: WebController
 * @Author: luna
 * @CreateTime: 2020/10/14 20:11
 * @Description:
 */
@RestController
@RequestMapping("/system/user")
public class WebController {

    @Autowired
    private ISysDeptService       deptService;

    @Autowired
    private ISysUserService       userService;

    @Autowired
    private NewsDocumentaryMapper newsDocumentaryMapper;

    @GetMapping("/allTreeData")
    @ResponseBody
    public List<Ztree> getUserTree(Long documentaryId) {
        List<Ztree> deptTree = deptService.selectDeptTree(new SysDept());
        List<Ztree> ztrees = new ArrayList<>();
        List<SysUser> sysAllUsers = userService.selectUserList(new SysUser());
        for (SysUser user : sysAllUsers) {
            if (UserConstants.NORMAL.equals(user.getStatus())) {
                Ztree ztree = new Ztree();
                ztree.setId(user.getUserId());
                ztree.setpId(user.getDeptId());
                ztree.setName(user.getUserName());
                ztree.setTitle(user.getUserName());
                ztree.setChecked(false);
                ztrees.add(ztree);
            }
        }
        ztrees.addAll(deptTree);
        if (documentaryId == null) {
            return ztrees;
        }
        NewsDocumentary newsDocumentary = newsDocumentaryMapper.selectNewsDocumentaryById(documentaryId);
        if (StringUtils.isEmpty(newsDocumentary.getDocumentaryJionPeople())) {
            return ztrees;
        }
        ztrees.clear();
        List<String> list = Arrays.asList(newsDocumentary.getDocumentaryJionPeople().split(","));
        for (SysUser user : sysAllUsers) {
            if (!list.contains(user.getUserId().toString())) {
                if (UserConstants.NORMAL.equals(user.getStatus())) {
                    Ztree ztree = new Ztree();
                    ztree.setId(user.getUserId());
                    ztree.setpId(user.getDeptId());
                    ztree.setName(user.getUserName());
                    ztree.setTitle(user.getUserName());
                    ztree.setChecked(false);
                    ztrees.add(ztree);
                }
            } else {
                if (UserConstants.NORMAL.equals(user.getStatus())) {
                    Ztree ztree = new Ztree();
                    ztree.setId(user.getUserId());
                    ztree.setpId(user.getDeptId());
                    ztree.setName(user.getUserName());
                    ztree.setTitle(user.getUserName());
                    ztree.setChecked(true);
                    ztrees.add(ztree);
                }
            }
        }
        ztrees.addAll(deptTree);
        return ztrees;
    }

}
