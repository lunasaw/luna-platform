package com.ruoyi.web.platform.partyInfo.util;

import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.web.platform.partyInfo.PartyInfoConstant;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfo;
import com.ruoyi.web.platform.partyInfo.domain.PartyInfoVO;

/**
 * @Package: com.ruoyi.web.platform.partyInfo.util
 * @ClassName: DO2VOUtil
 * @Author: luna
 * @CreateTime: 2020/10/17 12:46
 * @Description:
 */
public class DO2VOUtil {

    public static PartyInfoVO PartyInfo2PartyInfoVO(PartyInfo partyInfo) {
        if (partyInfo == null) {
            return null;
        }
        PartyInfoVO partyInfoVO = new PartyInfoVO();
        partyInfoVO.setPartyId(partyInfo.getPartyId());
        partyInfoVO.setPartyStudentNumber(partyInfo.getPartyStudentNumber());
        partyInfoVO.setPartyName(partyInfo.getPartyName());
        partyInfoVO.setPartyClass(partyInfo.getPartyClass());
        // 性别
        if (!StringUtils.equals(partyInfo.getPartySex(), PartyInfoConstant.MAN_NUM)) {
            if (StringUtils.equals(partyInfo.getPartySex(), PartyInfoConstant.WOMAN_NUM)) {
                partyInfo.setPartySex(PartyInfoConstant.WOMAN);
            } else if (StringUtils.equals(partyInfo.getPartySex(), PartyInfoConstant.NOT_KNOW_MUM)) {
                partyInfo.setPartySex(PartyInfoConstant.NOT_KNOW);
            }
        } else {
            partyInfo.setPartySex(PartyInfoConstant.MAN);
        }
        partyInfoVO.setPartyBirthday(partyInfo.getPartyBirthday());
        partyInfoVO.setPartyNativePlace(partyInfo.getPartyNativePlace());
        partyInfoVO.setPartyIdcard(partyInfo.getPartyIdcard());
        partyInfoVO.setPartyJoinTime(partyInfo.getPartyJoinTime());
        // 入党申请书
        if (!StringUtils.equals(partyInfo.getPartyJoinApplication(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
            if (StringUtils.equals(partyInfo.getPartyJoinApplication(), PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
                partyInfo.setPartyJoinApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
            } else {
                partyInfo.setPartyJoinApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
            }
        } else {
            partyInfo.setPartyJoinApplication(PartyInfoConstant.HAS_SUBMIT);
        }

        // 预备党员考察表
        if (StringUtils.equals(partyInfo.getPartyInspect(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
            partyInfo.setPartyInspect(PartyInfoConstant.HAS_SUBMIT);
        } else if (StringUtils.equals(partyInfo.getPartyInspect(), PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
            partyInfo.setPartyInspect(PartyInfoConstant.NOT_HAS_SUBMIT);
        } else {
            partyInfo.setPartyInspect(PartyInfoConstant.NOT_HAS_SUBMIT);
        }

        // 转正申请书
        if (StringUtils.equals(partyInfo.getPartyFormalApplication(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
            partyInfo.setPartyFormalApplication(PartyInfoConstant.HAS_SUBMIT);
        } else if (StringUtils.equals(partyInfo.getPartyFormalApplication(), PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
            partyInfo.setPartyFormalApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
        } else {
            partyInfo.setPartyFormalApplication(PartyInfoConstant.NOT_HAS_SUBMIT);
        }

        // 思想报告
        if (StringUtils.equals(partyInfo.getPartyThoughtReport(), PartyInfoConstant.HAS_SUBMIT_NUM)) {
            partyInfo.setPartyThoughtReport(PartyInfoConstant.HAS_SUBMIT);
        } else if (StringUtils.equals(partyInfo.getPartyThoughtReport(), PartyInfoConstant.NOT_HAS_SUBMIT_NUM)) {
            partyInfo.setPartyThoughtReport(PartyInfoConstant.NOT_HAS_SUBMIT);
        } else {
            partyInfo.setPartyThoughtReport(PartyInfoConstant.NOT_HAS_SUBMIT);
        }
        partyInfoVO.setPartyStudentPost(partyInfo.getPartyStudentPost());
        partyInfoVO.setPartyRewardsPunishments(partyInfo.getPartyRewardsPunishments());
        partyInfoVO.setPartyOtherInfo(partyInfo.getPartyOtherInfo());
        partyInfoVO.setPartyHeadMaster(partyInfo.getPartyHeadMaster());
        partyInfoVO.setPartyConnect(partyInfo.getPartyConnect());
        partyInfoVO.setSearchValue(partyInfo.getSearchValue());
        partyInfoVO.setCreateBy(partyInfo.getCreateBy());
        partyInfoVO.setCreateTime(partyInfo.getCreateTime());
        partyInfoVO.setUpdateBy(partyInfo.getUpdateBy());
        partyInfoVO.setUpdateTime(partyInfo.getUpdateTime());
        partyInfoVO.setRemark(partyInfo.getRemark());
        partyInfoVO.setParams(partyInfo.getParams());
        return partyInfoVO;
    }
}
