package com.ruoyi.web.platform.partyInfo.controller;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysUser;
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
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;
import com.ruoyi.web.platform.partyInfo.service.IPartyInfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 党员信息Controller
 *
 * @author party-platform
 * @date 2020-10-10
 */
@Controller
@Api("党员信息Controller")
@RequestMapping("/admin/partyInfo")
public class PartyInfoController extends BaseController {
    private String  prefix = "admin/partyInfo";

    @Autowired
    private IPartyInfoService partyInfoService;

    @RequiresPermissions("admin:partyInfo:view")
    @GetMapping()
    public String partyInfo() {
        return prefix + "/partyInfo";
    }

    /**
     * 查询党员信息列表
     */
    @ApiOperation(value = "查询党员信息列表", notes = "查询党员信息列表详情", tags = {"党员信息Controller"})
    @RequiresPermissions("admin:partyInfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PartyInfo partyInfo) {
        startPage();
        List<PartyInfo> list = partyInfoService.selectPartyInfoList(partyInfo);
        return getDataTable(list);
    }

    /**
     * 导出党员信息列表
     */
    @ApiOperation(value = "导出党员信息列表", notes = "导出党员信息列表详情", tags = {"党员信息Controller"})
    @RequiresPermissions("admin:partyInfo:export")
    @Log(title = "党员信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PartyInfo partyInfo) {
        return partyInfoService.exportPartyInfoList(partyInfo);
    }

    /**
     * 导入数据
     * 
     * @param file
     * @param updateSupport
     * @return
     * @throws Exception
     */
    @Log(title = "党员信息管理", businessType = BusinessType.IMPORT)
    @RequiresPermissions("admin:partyInfo:import")
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception {
        ExcelUtil<PartyInfo> util = new ExcelUtil<PartyInfo>(PartyInfo.class);
        List<PartyInfo> partyInfoList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getSysUser().getLoginName();
        String message = partyInfoService.importPartyInfo(partyInfoList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("admin:partyInfo:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate() {
        ExcelUtil<PartyInfo> util = new ExcelUtil<PartyInfo>(PartyInfo.class);
        return util.importTemplateExcel("学生党员数据");
    }

    /**
     * 新增党员信息
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存党员信息
     */
    @ApiOperation(value = "新增保存党员信息", notes = "新增保存党员信息详情", tags = {"党员信息Controller"})
    @RequiresPermissions("admin:partyInfo:add")
    @Log(title = "党员信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PartyInfo partyInfo) {
        return toAjax(partyInfoService.insertPartyInfo(partyInfo));
    }

    /**
     * 修改党员信息
     */
    @ApiOperation(value = "修改党员信息", notes = "修改党员信息详情", tags = {"党员信息Controller"})
    @ApiImplicitParam(name = "partyId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{partyId}")
    public String edit(@PathVariable("partyId") Long partyId, ModelMap mmap) {
        PartyInfo partyInfo = partyInfoService.selectPartyInfoById(partyId);
        mmap.put("partyInfo", partyInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存党员信息
     */
    @ApiOperation(value = "修改保存党员信息", notes = "修改保存党员信息详情", tags = {"党员信息Controller"})
    @RequiresPermissions("admin:partyInfo:edit")
    @Log(title = "党员信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PartyInfo partyInfo) {
        return toAjax(partyInfoService.updatePartyInfo(partyInfo));
    }

    /**
     * 删除党员信息
     *
     * @ApiOperation("删除党员信息")
     */
    @ApiOperation(value = "删除党员信息", notes = "删除党员信息详情", tags = {"党员信息Controller"})
    @RequiresPermissions("admin:partyInfo:remove")
    @Log(title = "党员信息", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(partyInfoService.deletePartyInfoByIds(ids));
    }
}
