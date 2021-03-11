package com.ruoyi.web.controller.monitor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.domain.TemplateHumNum;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.web.platform.comments.domain.Comments;
import com.ruoyi.web.platform.comments.service.ICommentsService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.SysLogininfor;
import com.ruoyi.system.service.ISysLogininforService;

/**
 * 系统访问记录
 * 
 * @author ruoyi
 */
@Controller
@RequestMapping("/monitor/logininfor")
public class SysLogininforController extends BaseController
{
    private String prefix = "monitor/logininfor";

    @Autowired
    private ISysLogininforService logininforService;

    @Autowired
    private SysPasswordService passwordService;

    @Autowired
    private ICommentsService commentsService;

    @Autowired
    private ISysUserService userService;

    @RequiresPermissions("monitor:logininfor:view")
    @GetMapping()
    public String logininfor()
    {
        return prefix + "/logininfor";
    }

    @RequiresPermissions("monitor:logininfor:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysLogininfor logininfor)
    {
        startPage();
        List<SysLogininfor> list = logininforService.selectLogininforList(logininfor);
        return getDataTable(list);
    }

    @GetMapping("/sevenCountNumReport")
    @ResponseBody
    public Map<String,Object> getSevenCountNum()
    {
        List<SysLogininfor> sevenCountNum = logininforService.getSevenCountNum();
        List<String> dates = sevenCountNum.stream().map(SysLogininfor -> SysLogininfor.getSevenTime()).collect(Collectors.toList());
        String[] dates1 = new String[dates.size()];
        dates.toArray(dates1);

        List<Integer> countNum = sevenCountNum.stream().map(SysLogininfor -> SysLogininfor.getCountNum()).collect(Collectors.toList());
        int[] arr1 = countNum.stream().mapToInt(Integer::valueOf).toArray();
        Map<String,Object> map = new HashMap<>();
        map.put("dates",dates1);
        map.put("countNum",arr1);
        return map;
    }

    @GetMapping("/getCommentsReport")
    @ResponseBody
    public Map<Integer,String> getCommentsReport()
    {
        List<Comments> commentsReport = commentsService.getCommentsReport();
        Map<Integer, String> maps = commentsReport.stream().collect(Collectors.toMap(Comments::getCountNum,Comments::getDictLabel, (key1, key2) -> key2));
        return maps;
    }

    @GetMapping("/sysUserReport")
    @ResponseBody
    public Map<String,Object> report(SysUser user)
    {
        List<TemplateHumNum> report = userService.report();
        List<String> nameList = report.stream().map(TemplateHumNum -> TemplateHumNum.getParentDeptName() +TemplateHumNum.getDeptName()).collect(Collectors.toList());
        String[] dept = new String[nameList.size()];
        nameList.toArray(dept);
        List<Integer> humNum = report.stream().map(TemplateHumNum::getCountNum).collect(Collectors.toList());
        int[] arr1 = humNum.stream().mapToInt(Integer::valueOf).toArray();
        Map<String,Object> map = new HashMap<>();
        map.put("dept",dept);
        map.put("data",arr1);
        return map;
    }

    @Log(title = "登陆日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:logininfor:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysLogininfor logininfor)
    {
        List<SysLogininfor> list = logininforService.selectLogininforList(logininfor);
        ExcelUtil<SysLogininfor> util = new ExcelUtil<SysLogininfor>(SysLogininfor.class);
        return util.exportExcel(list, "登陆日志");
    }

    @RequiresPermissions("monitor:logininfor:remove")
    @Log(title = "登陆日志", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(logininforService.deleteLogininforByIds(ids));
    }
    
    @RequiresPermissions("monitor:logininfor:remove")
    @Log(title = "登陆日志", businessType = BusinessType.CLEAN)
    @PostMapping("/clean")
    @ResponseBody
    public AjaxResult clean()
    {
        logininforService.cleanLogininfor();
        return success();
    }

    @RequiresPermissions("monitor:logininfor:unlock")
    @Log(title = "账户解锁", businessType = BusinessType.OTHER)
    @PostMapping("/unlock")
    @ResponseBody
    public AjaxResult unlock(String loginName)
    {
        passwordService.unlock(loginName);
        return success();
    }
}
