package com.ruoyi.web.platform.believers.domain;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 信宗教外教专家对象 sys_foreign_believers
 *
 * @author party-platform
 * @date 2020-11-07
 */
@ApiModel("ForeignBelievers")
public class ForeignBelievers extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 信宗教外教专家Id */
    @ApiModelProperty("信宗教外教专家Id")
    private Long foreignNumberId;

    /** 序号 */
    @ApiModelProperty("序号")
    @Excel(name = "序号")
    private Long foreignNumber;

    /** 学院 */
    @ApiModelProperty("学院")
    @Excel(name = "学院")
    private String foreignCollege;

    /** 姓名 */
    @ApiModelProperty("姓名")
    @Excel(name = "姓名")
    private String foreignName;

    /** 性别 */
    @ApiModelProperty("性别")
    @Excel(name = "性别")
    private String foreignSex;

    /** 国家 */
    @ApiModelProperty("国家")
    @Excel(name = "国家")
    private String foreignCountry;

    /** 生日 */
    @ApiModelProperty("生日")
    @Excel(name = "生日", width = 30, dateFormat = "yyyy-MM-dd")
    private Date foreignBirthday;

    /** 宗教类型 */
    @ApiModelProperty("宗教类型")
    @Excel(name = "宗教类型")
    private String foreignReligion;

    /** 宗教活动场所 */
    @ApiModelProperty("宗教活动场所")
    @Excel(name = "宗教活动场所")
    private String foreignReligiousServicesFacilities;

    /** 联系方式 */
    @ApiModelProperty("联系方式")
    @Excel(name = "联系方式")
    private String foreignContactInformation;

    /** 备注 */
    @ApiModelProperty("备注")
    @Excel(name = "备注")
    private String foreignRemarks;

                        public void setForeignNumberId(Long foreignNumberId)
            {
            this.foreignNumberId = foreignNumberId;
            }

    public Long getForeignNumberId()
            {
            return foreignNumberId;
            }
                            public void setForeignNumber(Long foreignNumber)
            {
            this.foreignNumber = foreignNumber;
            }

    public Long getForeignNumber()
            {
            return foreignNumber;
            }
                            public void setForeignCollege(String foreignCollege)
            {
            this.foreignCollege = foreignCollege;
            }

    public String getForeignCollege()
            {
            return foreignCollege;
            }
                            public void setForeignName(String foreignName)
            {
            this.foreignName = foreignName;
            }

    public String getForeignName()
            {
            return foreignName;
            }
                            public void setForeignSex(String foreignSex)
            {
            this.foreignSex = foreignSex;
            }

    public String getForeignSex()
            {
            return foreignSex;
            }
                            public void setForeignCountry(String foreignCountry)
            {
            this.foreignCountry = foreignCountry;
            }

    public String getForeignCountry()
            {
            return foreignCountry;
            }
                            public void setForeignBirthday(Date foreignBirthday)
            {
            this.foreignBirthday = foreignBirthday;
            }

    public Date getForeignBirthday()
            {
            return foreignBirthday;
            }
                            public void setForeignReligion(String foreignReligion)
            {
            this.foreignReligion = foreignReligion;
            }

    public String getForeignReligion()
            {
            return foreignReligion;
            }
                            public void setForeignReligiousServicesFacilities(String foreignReligiousServicesFacilities)
            {
            this.foreignReligiousServicesFacilities = foreignReligiousServicesFacilities;
            }

    public String getForeignReligiousServicesFacilities()
            {
            return foreignReligiousServicesFacilities;
            }
                            public void setForeignContactInformation(String foreignContactInformation)
            {
            this.foreignContactInformation = foreignContactInformation;
            }

    public String getForeignContactInformation()
            {
            return foreignContactInformation;
            }
                            public void setForeignRemarks(String foreignRemarks)
            {
            this.foreignRemarks = foreignRemarks;
            }

    public String getForeignRemarks()
            {
            return foreignRemarks;
            }
                    
    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("foreignNumberId", getForeignNumberId())
            .append("foreignNumber", getForeignNumber())
            .append("foreignCollege", getForeignCollege())
            .append("foreignName", getForeignName())
            .append("foreignSex", getForeignSex())
            .append("foreignCountry", getForeignCountry())
            .append("foreignBirthday", getForeignBirthday())
            .append("foreignReligion", getForeignReligion())
            .append("foreignReligiousServicesFacilities", getForeignReligiousServicesFacilities())
            .append("foreignContactInformation", getForeignContactInformation())
            .append("foreignRemarks", getForeignRemarks())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .toString();
    }
}
