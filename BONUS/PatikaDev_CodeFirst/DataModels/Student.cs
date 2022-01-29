using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels
{
    class Student
    {
        public int StudentID { get; set; }
        [MaxLength(20)]
        public string StudentName { get; set; }
        [MaxLength(20)]
        public string StudentLastName { get; set; }
        

    }
}
