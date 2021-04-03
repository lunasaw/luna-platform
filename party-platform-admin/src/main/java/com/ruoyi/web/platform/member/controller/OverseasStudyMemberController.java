package com.ruoyi.web.platform.member.controller;

import java.util.List;

import com.ruoyi.framework.util.ShiroUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.web.platform.member.domain.OverseasStudyMember;
import com.ruoyi.web.platform.member.service.IOverseasStudyMemberService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 留学归国人员Controller
 *
 * @author party-platform
 * @date 2020-10-24
 */
@Controller
@Api("留学归国人员Controller")
@RequestMapping("/admin/member")
public class OverseasStudyMemberController extends BaseController {
    private String prefix = "admin/member";

    @Autowired
    private IOverseasStudyMemberService overseasStudyMemberService;

    @RequiresPermissions("admin:member:view")
    @GetMapping()
    public String member() {
        return prefix + "/member";
    }

    /**
     * 查询留学归国人员列表
     */
    @ApiOperation(value = "查询留学归国人员列表", notes = "查询留学归国人员列表详情", tags = {"留学归国人员Controller"})
    @RequiresPermissions("admin:member:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(OverseasStudyMember overseasStudyMember) {
        startPage();
        List<OverseasStudyMember> list = overseasStudyMemberService.selectOverseasStudyMemberList(overseasStudyMember);
        return getDataTable(list);
    }

    /**
     * 导入留学归国人员列表
     */
    @ApiOperation(value = "导入留学归国人员列表", notes = "导入留学归国人员列表详情", tags = {"留学归国人员Controller"})
    @RequiresPermissions("admin:member:import")
    @Log(title = "留学归国人员", businessType = BusinessType.IMPORT)
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception{
        ExcelUtil<OverseasStudyMember> util = new ExcelUtil<OverseasStudyMember>(OverseasStudyMember.class);
        List<OverseasStudyMember> OverseasStudyMemberList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getSysUser().getLoginName();
        String message = overseasStudyMemberService.importOverseasStudyMember(OverseasStudyMemberList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("admin:member:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate() {
        ExcelUtil<OverseasStudyMember> util = new ExcelUtil<OverseasStudyMember>(OverseasStudyMember.class);
        return util.importTemplateExcel("留学归国人员数据");
    }

    /**
     * 导出留学归国人员列表
     */
    @ApiOperation(value = "导出留学归国人员列表", notes = "导出留学归国人员列表详情", tags = {"留学归国人员Controller"})
    @RequiresPermissions("admin:member:export")
    @Log(title = "留学归国人员", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OverseasStudyMember overseasStudyMember) {
        return overseasStudyMemberService.exportOverseasStudyMembers(overseasStudyMember);
    }

    /**
     * 新增留学归国人员
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存留学归国人员
     */
    @ApiOperation(value = "新增保存留学归国人员", notes = "新增保存留学归国人员详情", tags = {"留学归国人员Controller"})
    @RequiresPermissions("admin:member:add")
    @Log(title = "留学归国人员", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(OverseasStudyMember overseasStudyMember) {
        return toAjax(overseasStudyMemberService.insertOverseasStudyMember(overseasStudyMember));
    }

    /**
     * 修改留学归国人员
     */
    @ApiOperation(value = "修改留学归国人员", notes = "修改留学归国人员详情", tags = {"留学归国人员Controller"})
    @ApiImplicitParam(name = "overseasId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{overseasId}")
    public String edit(@PathVariable("overseasId") Long overseasId, ModelMap mmap) {
        OverseasStudyMember overseasStudyMember = overseasStudyMemberService.selectOverseasStudyMemberById(overseasId);
        mmap.put("overseasStudyMember", overseasStudyMember);
        return prefix + "/edit";
    }

    /**
     * 修改保存留学归国人员
     */
    @ApiOperation(value = "修改保存留学归国人员", notes = "修改保存留学归国人员详情", tags = {"留学归国人员Controller"})
    @RequiresPermissions("admin:member:edit")
    @Log(title = "留学归国人员", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(OverseasStudyMember overseasStudyMember) {
        return toAjax(overseasStudyMemberService.updateOverseasStudyMember(overseasStudyMember));
    }

    /**
     * 删除留学归国人员
     *
     * @ApiOperation("删除留学归国人员")
     */
    @ApiOperation(value = "删除留学归国人员", notes = "删除留学归国人员详情", tags = {"留学归国人员Controller"})
    @RequiresPermissions("admin:member:remove")
    @Log(title = "留学归国人员", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(overseasStudyMemberService.deleteOverseasStudyMemberByIds(ids));
    }
}
