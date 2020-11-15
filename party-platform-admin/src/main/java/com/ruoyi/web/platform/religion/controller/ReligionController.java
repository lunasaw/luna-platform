package com.ruoyi.web.platform.religion.controller;

import java.util.List;

import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;
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
import com.ruoyi.web.platform.religion.domain.Religion;
import com.ruoyi.web.platform.religion.service.IReligionService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 留学人员Controller
 *
 * @author party-platform
 * @date 2020-11-15
 */
@Controller
@Api("留学人员Controller")
@RequestMapping("/admin/religion")
public class ReligionController extends BaseController {
    private String prefix = "admin/religion";

    @Autowired
    private IReligionService religionService;

    @RequiresPermissions("admin:religion:view")
    @GetMapping()
    public String religion() {
        return prefix + "/religion";
    }

    /**
     * 查询留学人员列表
     */
    @ApiOperation(value = "查询留学人员列表", notes = "查询留学人员列表详情", tags = {"留学人员Controller"})
    @RequiresPermissions("admin:religion:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Religion religion) {
        startPage();
        List<Religion> list = religionService.selectReligionList(religion);
        return getDataTable(list);
    }

    /**
     * 导出留学人员列表
     */
    @ApiOperation(value = "导出留学人员列表", notes = "导出留学人员列表详情", tags = {"留学人员Controller"})
    @RequiresPermissions("admin:religion:export")
    @Log(title = "留学人员", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Religion religion) {
        return religionService.exportReligion(religion);
    }


    /**
     * 导入数据
     *
     * @param file
     * @param updateSupport
     * @return
     * @throws Exception
     */
    @Log(title = "留学人员信息管理", businessType = BusinessType.IMPORT)
    @RequiresPermissions("admin:religion:import")
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception {
        ExcelUtil<Religion> util = new ExcelUtil<Religion>(Religion.class);
        List<Religion> religionList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getSysUser().getLoginName();
        String message = religionService.importReligion(religionList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    /**
     * 导出模版
     *
     * @return
     */
    @RequiresPermissions("admin:religion:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate() {
        ExcelUtil<Religion> util = new ExcelUtil<Religion>(Religion.class);
        return util.importTemplateExcel("留学人员信息");
    }

    /**
     * 新增留学人员
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存留学人员
     */
    @ApiOperation(value = "新增保存留学人员", notes = "新增保存留学人员详情", tags = {"留学人员Controller"})
    @RequiresPermissions("admin:religion:add")
    @Log(title = "留学人员", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Religion religion) {
        return toAjax(religionService.insertReligion(religion));
    }

    /**
     * 修改留学人员
     */
    @ApiOperation(value = "修改留学人员", notes = "修改留学人员详情", tags = {"留学人员Controller"})
    @ApiImplicitParam(name = "religionId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{religionId}")
    public String edit(@PathVariable("religionId") Long religionId, ModelMap mmap) {
        Religion religion = religionService.selectReligionById(religionId);
        mmap.put("religion", religion);
        return prefix + "/edit";
    }

    /**
     * 修改保存留学人员
     */
    @ApiOperation(value = "修改保存留学人员", notes = "修改保存留学人员详情", tags = {"留学人员Controller"})
    @RequiresPermissions("admin:religion:edit")
    @Log(title = "留学人员", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Religion religion) {
        return toAjax(religionService.updateReligion(religion));
    }

    /**
     * 删除留学人员
     *
     * @ApiOperation("删除留学人员")
     */
    @ApiOperation(value = "删除留学人员", notes = "删除留学人员详情", tags = {"留学人员Controller"})
    @RequiresPermissions("admin:religion:remove")
    @Log(title = "留学人员", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(religionService.deleteReligionByIds(ids));
    }
}
