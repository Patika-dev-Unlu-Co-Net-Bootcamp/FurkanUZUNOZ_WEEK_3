using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels.MiddleTable
{
    class EducationToStudent
    {
        public int EducationToStudentID { get; set; }
        [Required]
        public Education Education { get; set; }
        [Required]
        public Student Student { get; set; }

        public int SuccesStatus { get; set; }

    }
}
