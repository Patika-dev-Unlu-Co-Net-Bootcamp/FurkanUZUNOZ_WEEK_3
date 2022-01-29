using Microsoft.EntityFrameworkCore;
using PatikaDev_CodeFirst.DataModels.MiddleTable;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PatikaDev_CodeFirst.DataModels
{
    class BaseEntity:DbContext
    {
        DbSet<Education> Educations { get; set; }
        DbSet<Educator> Educators { get; set; }

        DbSet<Student> Students { get; set; }
        DbSet<Assistant> Assistants { get; set; }
        DbSet<EducationToEducator> EducationToEducators { get; set; }
        DbSet<EducationToStudent> EducationToStudents { get; set; }
        DbSet<EducationToAssistant> EducationToAssistants { get; set; }
        DbSet<Attendance> attendances { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=aspnet-53bc9b9d-9d6a-45d4-8429-2a2761773502;Trusted_Connection=True;MultipleActiveResultSets=true");
        }
    }
}
