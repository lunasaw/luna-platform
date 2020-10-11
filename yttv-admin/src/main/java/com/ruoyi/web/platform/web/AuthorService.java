package com.ruoyi.web.platform.web;

import com.ruoyi.system.domain.SysPost;
import com.ruoyi.system.service.ISysPostService;
import com.ruoyi.web.platform.teamInfo.domain.AuthorTeam;
import com.ruoyi.web.platform.teamInfo.service.IAuthorTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Package: com.ruoyi.web.platform.web
 * @ClassName: AuthorService
 * @Author: luna
 * @CreateTime: 2020/10/11 16:02
 * @Description:
 */
@Service
public class AuthorService {

    @Autowired
    private IAuthorTeamService iAuthorTeamService;

    @Autowired
    private ISysPostService    iSysPostService;

    public List<AuthorTeam> getAuthor() {
        List<AuthorTeam> authorTeams = iAuthorTeamService.selectAuthorTeamList(new AuthorTeam());
        authorTeams.forEach(authorTeam -> {
            SysPost sysPost = iSysPostService.selectPostById(authorTeam.getPostId());
            authorTeam.setRemark(sysPost.getPostName());
        });

        return authorTeams;
    }
}
