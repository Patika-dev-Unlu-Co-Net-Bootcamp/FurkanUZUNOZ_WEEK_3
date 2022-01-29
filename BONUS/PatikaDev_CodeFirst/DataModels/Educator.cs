using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels
{
    class Educator
    {
        public int EducatorID { get; set; }
        [MaxLength(20)]
        public string EducatorName { get; set; }
        [MaxLength(20)]
        public string EducationLastName { get; set; }
        
    }
}
