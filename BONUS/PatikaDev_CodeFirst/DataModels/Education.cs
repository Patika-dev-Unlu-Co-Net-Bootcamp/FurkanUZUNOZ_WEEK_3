using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels
{
    class Education
    {
        public int EducationID { get; set; }

        public string EducationName { get; set; }
        public string EducationDetails { get; set; }
        public int EducationWeeks { get; set; }
        public int EducationStart { get; set; }
        public int EducationEnd { get; set; }
    }
}
