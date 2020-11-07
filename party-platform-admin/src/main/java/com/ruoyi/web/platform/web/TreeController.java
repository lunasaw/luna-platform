package com.ruoyi.web.platform.web;


import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.system.domain.SysDept;
import com.ruoyi.system.service.ISysDeptService;
import com.ruoyi.web.platform.facultySummary.mapper.FacultySummaryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/system/branch")
public class TreeController {

    @Autowired
    private ISysDeptService deptService;

    @Autowired
    private FacultySummaryMapper facultySummaryMapper;

    /**
     * 加载部门列表树
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData()
    {
        List<Ztree> ztrees = deptService.selectDeptTree(new SysDept());
        return ztrees;
    }
}
