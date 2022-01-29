using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels
{
    class Assistant
    {
        public int AssistantID { get; set; }
        [Required]
        [MaxLength(20)]
        public string AssistantName { get; set; }
        [MaxLength(20)]
        public string AssistantLastName { get; set; }
    }
}
