package com.ruoyi.framework.shiro.web.filter.news;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.web.filter.AccessControlFilter;

import com.google.code.kaptcha.Constants;
import com.ruoyi.common.constant.ShiroConstants;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;

/**
 * 验证码过滤器
 * 
 * @author ruoyi
 */
public class NewsFilter extends AccessControlFilter
{

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
            throws Exception
    {
//        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
//            // 验证码禁用 或不是表单提交 允许访问
//            if ("/party-platform/admin/news/list".equals(httpServletRequest.getRequestURI().toLowerCase()))
//            {
//                return true;
//        }
//        return false;
        return true;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        return false;
    }

}
