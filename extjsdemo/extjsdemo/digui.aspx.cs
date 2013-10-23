using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace extjsdemo
{
    public partial class digui : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 n = 5;

            NumberLable.Text = CountResult(n).ToString();
            int x = 5767;
            int y = 4453;
            NumberLable1.Text = xydiv(x, y).ToString();
            NumberLable2.Text = ((5767 * 4453) / xydiv(x, y)).ToString();

        }
        public Int64 CountResult(Int64 n)
        {
            Int64 z = 1;
            if (n < 1) {  }
            else if (n == 1)
            {
                z = 1;
            }
            else
            {
                z = CountResult(n - 1) * n;
            }


            return z;
        }
        public int xydiv(int x, int y) 
        {
            int z;
            int r;
            int m;
            if (x < y) 
            {
                x = x + y;
                y = x - y;
                x = x - y;
            }
            if (x % y != 0)
            {
                r = x % y;
                m = y;

                z = xydiv(m, r);
            }
            else { z = y; }
            return z;
        }
       
       
    }
}