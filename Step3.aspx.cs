using System;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;

namespace Mygod.Skylark.Deployer
{
    public partial class Step3 : Page
    {
        protected void Process()
        {
            Response.Flush();
            string result = Api("https://appharbor.com/tokens", "client_id=044928e2-f4f7-4209-" +
                                "bdb6-388129e19fb0&client_secret=ae8f5e3d-1378-4ca9-9b3c-b7ed9a8609cc&code=" +
                                Request.Form["code"]), token = HttpUtility.ParseQueryString(result)["access_token"];
            if (string.IsNullOrEmpty(token)) WriteLine("<div>连接失败！错误信息：</div>{1}{0}",
                result == "error=access_denied" ? "授权超时，请<a href=\"/\">返回第一步</a>重新授权。"
                                                : "<pre>" + result + "</pre>", Environment.NewLine);
            else
                try
                {
                    Api("https://appharbor.com/applications/" + Request.Form["name"], token: token, method: "DELETE");
                    WriteLine("<div>删除完毕。</div>");
                }
                catch (WebException exc)
                {
                    if (((HttpWebResponse) exc.Response).StatusCode == HttpStatusCode.NotFound)
                        WriteLine("<div>错误：应用不存在。</div>");
                    else throw;
                }
        }

        private static string Api(string address, string data = null, string token = null, string method = "POST")
        {
            var request = (HttpWebRequest)WebRequest.Create(address);
            request.AllowAutoRedirect = false;
            request.Method = method;
            request.Accept = "application/json";
            request.ContentType = "application/x-www-form-urlencoded";
            if (token != null) request.Headers["Authorization"] = "BEARER " + token;
            if (data != null)
            {
                var bytes = Encoding.UTF8.GetBytes(data);
                request.ContentLength = bytes.LongLength;
                using (var stream = request.GetRequestStream()) stream.Write(bytes, 0, bytes.Length);
            }
            using (var response = request.GetResponse()) using (var stream = response.GetResponseStream())
                return new StreamReader(stream).ReadToEnd();
        }

        private void WriteLine(string format, params object[] args)
        {
            Response.Write(string.Format(format, args) + Environment.NewLine);
        }
    }
}