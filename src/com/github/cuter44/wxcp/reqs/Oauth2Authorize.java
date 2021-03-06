package com.github.cuter44.wxcp.reqs;

import java.util.Properties;
import java.util.List;
import java.util.Arrays;
import java.io.IOException;

import com.github.cuter44.wxcp.resps.*;

/** OAuth2.0验证接口
 * <br />
 * <a href="http://qydev.weixin.qq.com/wiki/index.php?title=%E4%B8%BB%E5%8A%A8%E8%B0%83%E7%94%A8#OAuth2.0.E9.AA.8C.E8.AF.81.E6.8E.A5.E5.8F.A3.E8.AF.B4.E6.98.8E">ref ↗</a>
 * <br />
 * <pre style="font-size:12px">
    参数说明
    appid           是  企业的CorpID
    redirect_uri    是  授权后重定向的回调链接地址，请使用urlencode对链接进行处理
    response_type   是  返回类型，此时固定为：code
    scope           是  应用授权作用域，此时固定为：snsapi_base
    state           否  重定向后会带上state参数，企业可以填写a-zA-Z0-9的参数值，长度不可超过128个字节
 * </pre>
 * <br />
 * Notice that this request composer does NOT urlencoded the <code>redirect_uri</code>
 */
public class Oauth2Authorize extends WxcpRequestBase
{
  // KEYS
    protected static final List<String> KEYS_PARAM = Arrays.asList(
        "appid", "redirect_uri", "response_type", "scope", "state"
    );

    public static final String KEY_APPID         = "appid";
    public static final String KEY_REDIRECT_URI  = "redirect_uri";
    public static final String KEY_STATE         = "state";

    public static final String URL_API_BASE = "https://open.weixin.qq.com/connect/oauth2/authorize";

  // CONSTRUCT
    public Oauth2Authorize(Properties prop)
    {
        super(prop);

        super.setProperty("response_type"   , "code"        )
            .setProperty("scope"            , "snsapi_base" );

        return;
    }

    public Oauth2Authorize(String appid, String redirectUri)
    {
        this(new Properties());

        super.setProperty(KEY_APPID         , appid         )
            .setProperty(KEY_REDIRECT_URI   , redirectUri   );

        return;
    }

    public Oauth2Authorize(String appid, String redirectUri, String state)
    {
        this(appid, redirectUri);

        super.setProperty(KEY_STATE, state);

        return;
    }

  // PROPERTY
    public Oauth2Authorize setAppid(String appid)
    {
        super.setProperty(KEY_APPID, appid);

        return(this);
    }

    public Oauth2Authorize setRedirectUri(String redirectUri)
    {
        super.setProperty(KEY_REDIRECT_URI, redirectUri);

        return(this);
    }

    public Oauth2Authorize setState(String state)
    {
        super.setProperty(KEY_STATE, state);

        return(this);
    }


  // BUILD
    @Override
    public Oauth2Authorize build()
    {
        return(this);
    }

  // TO_URL
    @Override
    public String toURL()
    {
        return(
            URL_API_BASE+"?"+super.toQueryString(KEYS_PARAM)+"#wechat_redirect"
        );
    }

  // EXECUTE
    @Override
    public WxcpResponseBase execute()
        throws UnsupportedOperationException
    {
        throw(
            new UnsupportedOperationException("This request does not execute on server side.")
        );
    }
}
