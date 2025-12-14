using System;

namespace webhomework_new
{
    public partial class quiz : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // 简单校验
            if (q1.SelectedItem == null ||
                q2.SelectedItem == null ||
                q3.SelectedItem == null)
            {
                lblResult.Text = "请完成所有题目后再提交。";
                pnlResult.Visible = true;
                return;
            }

            // 拼接 MBTI 类型
            string result =
                q1.SelectedValue +
                q2.SelectedValue +
                q3.SelectedValue;

            string desc = GetDescription(result);

            lblResult.Text = $"你的测试结果是：<b>{result}</b><br/>{desc}";
            pnlResult.Visible = true;
        }

        // 简单性格描述（写死即可）
        string GetDescription(string type)
        {
            switch (type)
            {
                case "ETJ":
                    return "你是一个理性果断、擅长领导和规划的人。";
                case "EFP":
                    return "你热情随和，善于沟通，富有创造力。";
                case "ITJ":
                    return "你理性冷静，做事有条理，喜欢独立思考。";
                case "IFP":
                    return "你温和内敛，重视情感和个人价值。";
                default:
                    return "你是一个性格多元、具有独特个性的人。";
            }
        }
    }
}
