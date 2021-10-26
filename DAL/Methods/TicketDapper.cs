using DAL.Inerfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Methods
{
    public class TicketDapper: ITicketDapper
    {
        private readonly string _connectionString;

        public TicketDapper(string connectionString)
        {
            this._connectionString = connectionString;
        }


    }
}
