using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels.MiddleTable
{
    class EducationToAssistant
    {
        public int EducationToAssistantID { get; set; }
        [Required]
        public Education Education { get; set; }
        [Required]
        public Assistant Assistant { get; set; }

    }
}
