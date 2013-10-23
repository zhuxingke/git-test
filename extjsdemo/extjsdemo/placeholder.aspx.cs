using System;

namespace extjsdemo
{
    public partial class _fongface : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //简单工厂 调用
            Operation oper = null;
            oper = Factory.CreateOperation("+");
            oper.X = 1;
            oper.Y = 2;
            double result = oper.GetResult();
            number.Text = result.ToString();
            string a, b, c;
            a = Methord(2, 3).ToString();
            b = Methord(3).ToString();
            c = Methord("zhu");
            Label1.Text = a;
            Label2.Text = b;
            Label3.Text = c;

            //工厂模式调用
            IFactory ifactory = new FactoryAdd();
            Operation ioper = ifactory.CreateOperation();
            ioper.X = 5;
            ioper.Y = 6;
            Label4.Text = ioper.GetResult().ToString();
            
        }
        public int Methord(int x, int y) 
        {
            return x + y;
            
        }
        public int Methord(int x) 
        {
            x++;
            return x;
 
        }
        public string Methord(string vvv) 
        {
            return vvv;
        }
    }
}