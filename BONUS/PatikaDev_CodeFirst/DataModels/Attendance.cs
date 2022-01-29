using PatikaDev_CodeFirst.DataModels.MiddleTable;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels
{
    class Attendance
    {
        public int AttendanceID { get; set; }

        [Required]
        public bool AttendanceStatus { get; set; }

        public int Week { get; set; }
        [Required]
        public EducationToStudent EducationToStudent { get; set; }
    }
}
