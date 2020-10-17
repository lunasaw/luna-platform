package com.ruoyi.web.platform.activists.controller;

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
import com.ruoyi.web.platform.activists.domain.PartyActivists;
import com.ruoyi.web.platform.activists.service.IPartyActivistsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 入党积极分子Controller
 *
 * @author party-platform
 * @date 2020-10-17
 */
@Controller
@Api("入党积极分子Controller")
@RequestMapping("/admin/activists")
public class PartyActivistsController extends BaseController {
    private String                 prefix = "admin/activists";

    @Autowired
    private IPartyActivistsService partyActivistsService;

    @RequiresPermissions("admin:activists:view")
    @GetMapping()
    public String activists() {
        return prefix + "/activists";
    }

    /**
     * 查询入党积极分子列表
     */
    @ApiOperation(value = "查询入党积极分子列表", notes = "查询入党积极分子列表详情", tags = {"入党积极分子Controller"})
    @RequiresPermissions("admin:activists:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PartyActivists partyActivists) {
        startPage();
        List<PartyActivists> list = partyActivistsService.selectPartyActivistsList(partyActivists);
        return getDataTable(list);
    }

    /**
     * 导入数据
     *
     * @param file
     * @param updateSupport
     * @return
     * @throws Exception
     */
    @Log(title = "积极分子管理", businessType = BusinessType.IMPORT)
    @RequiresPermissions("admin:activists:import")
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception {
        ExcelUtil<PartyActivists> util = new ExcelUtil<PartyActivists>(PartyActivists.class);
        List<PartyActivists> partyInfoList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getSysUser().getLoginName();
        String message = partyActivistsService.importPartyActivists(partyInfoList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("admin:activists:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate() {
        ExcelUtil<PartyInfo> util = new ExcelUtil<PartyInfo>(PartyInfo.class);
        return util.importTemplateExcel("积极分子");
    }

    /**
     * 导出入党积极分子列表
     */
    @ApiOperation(value = "导出入党积极分子列表", notes = "导出入党积极分子列表详情", tags = {"入党积极分子Controller"})
    @RequiresPermissions("admin:activists:export")
    @Log(title = "入党积极分子", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PartyActivists partyActivists) {
        return partyActivistsService.exportPartyActivists(partyActivists);
    }

    /**
     * 新增入党积极分子
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存入党积极分子
     */
    @ApiOperation(value = "新增保存入党积极分子", notes = "新增保存入党积极分子详情", tags = {"入党积极分子Controller"})
    @RequiresPermissions("admin:activists:add")
    @Log(title = "入党积极分子", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PartyActivists partyActivists) {
        return toAjax(partyActivistsService.insertPartyActivists(partyActivists));
    }

    /**
     * 修改入党积极分子
     */
    @ApiOperation(value = "修改入党积极分子", notes = "修改入党积极分子详情", tags = {"入党积极分子Controller"})
    @ApiImplicitParam(name = "partyActivistsStuId", value = "主键ID", dataType = "Long", paramType = "path")
    @GetMapping("/edit/{partyActivistsStuId}")
    public String edit(@PathVariable("partyActivistsStuId") Long partyActivistsStuId, ModelMap mmap) {
        PartyActivists partyActivists = partyActivistsService.selectPartyActivistsById(partyActivistsStuId);
        mmap.put("partyActivists", partyActivists);
        return prefix + "/edit";
    }

    /**
     * 修改保存入党积极分子
     */
    @ApiOperation(value = "修改保存入党积极分子", notes = "修改保存入党积极分子详情", tags = {"入党积极分子Controller"})
    @RequiresPermissions("admin:activists:edit")
    @Log(title = "入党积极分子", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PartyActivists partyActivists) {
        return toAjax(partyActivistsService.updatePartyActivists(partyActivists));
    }

    /**
     * 删除入党积极分子
     * @ApiOperation("删除入党积极分子")
     */
    @ApiOperation(value = "删除入党积极分子", notes = "删除入党积极分子详情", tags = {"入党积极分子Controller"})
    @RequiresPermissions("admin:activists:remove")
    @Log(title = "入党积极分子", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(partyActivistsService.deletePartyActivistsByIds(ids));
    }
}
