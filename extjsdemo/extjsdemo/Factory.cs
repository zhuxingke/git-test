
using System;
namespace extjsdemo
{
    interface IFactory 
    {
         Operation CreateOperation();
    }
    public class Factory
    {
        public static Operation CreateOperation(string temp)
        {
            Operation ope = null;

            switch (temp)
            {
                case "+": ope = new OperationAdd(); break;
                case "-": ope = new OperationSub(); break;
                case "*": ope = new OperationMul(); break;
                case "/": ope = new OperationDiv(); break;
            }
            return ope;
        }
    }
    //class FactoryAdd:IFactory(){}
    public class Operation 
    {
        private double x;

        public double X
        {
            get { return x; }
            set { x = value; }
        }
        private double y;

        public double Y
        {
            get { return y; }
            set { y = value; }
        }
        public virtual double GetResult()
        {
            double result = 0;
            return result;
        }
    }
    class OperationAdd :Operation 
    {
        public override double GetResult()
        {
            double result = 0;
            result = X + Y;
            return result;
        } 
    }
    class OperationSub : Operation
    {
        public override double GetResult()
        {
            double result = 0;
            result = X - Y;
            return result;
        }
    }
    class OperationMul : Operation
    {
        public override double GetResult()
        {
            double result = 0;
            result = X * Y;
            return result;
        }
    }
    class OperationDiv : Operation
    {
        public override double GetResult()
        {
            double result = 0;
            if (Y == 0) 
            {
                throw new Exception("除数不能为零");
            }
            result = X / Y;
            return result;
        }
    }
    class FactoryAdd : IFactory 
    {
        public Operation CreateOperation() 
        {
            return new OperationAdd();
        }
    }
    class FactorySub : IFactory
    {

        #region IFactory 成员

        public Operation CreateOperation()
        {
            return new OperationSub();
        }

        #endregion
    }
    class FactoryMul : IFactory
    {

        #region IFactory 成员

        public Operation CreateOperation()
        {
            return new OperationMul();
        }

        #endregion
    }
    class FactoryDiv : IFactory
    {

        #region IFactory 成员

        public Operation CreateOperation()
        {
            return new OperationDiv();
        }

        #endregion
    }
}