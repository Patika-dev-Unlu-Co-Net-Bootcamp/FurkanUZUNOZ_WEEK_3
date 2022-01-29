using Microsoft.EntityFrameworkCore.Migrations;

namespace PatikaDev_CodeFirst.Migrations
{
    public partial class Initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Assistants",
                columns: table => new
                {
                    AssistantID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AssistantName = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    AssistantLastName = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Assistants", x => x.AssistantID);
                });

            migrationBuilder.CreateTable(
                name: "Educations",
                columns: table => new
                {
                    EducationID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EducationName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EducationDetails = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EducationWeeks = table.Column<int>(type: "int", nullable: false),
                    EducationStart = table.Column<int>(type: "int", nullable: false),
                    EducationEnd = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Educations", x => x.EducationID);
                });

            migrationBuilder.CreateTable(
                name: "Educators",
                columns: table => new
                {
                    EducatorID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EducatorName = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true),
                    EducationLastName = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Educators", x => x.EducatorID);
                });

            migrationBuilder.CreateTable(
                name: "Students",
                columns: table => new
                {
                    StudentID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StudentName = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true),
                    StudentLastName = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Students", x => x.StudentID);
                });

            migrationBuilder.CreateTable(
                name: "EducationToAssistants",
                columns: table => new
                {
                    EducationToAssistantID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EducationID = table.Column<int>(type: "int", nullable: true),
                    AssistantID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EducationToAssistants", x => x.EducationToAssistantID);
                    table.ForeignKey(
                        name: "FK_EducationToAssistants_Assistants_AssistantID",
                        column: x => x.AssistantID,
                        principalTable: "Assistants",
                        principalColumn: "AssistantID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_EducationToAssistants_Educations_EducationID",
                        column: x => x.EducationID,
                        principalTable: "Educations",
                        principalColumn: "EducationID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "EducationToEducators",
                columns: table => new
                {
                    EducationToEducatorID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EducationID = table.Column<int>(type: "int", nullable: true),
                    EducatorID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EducationToEducators", x => x.EducationToEducatorID);
                    table.ForeignKey(
                        name: "FK_EducationToEducators_Educations_EducationID",
                        column: x => x.EducationID,
                        principalTable: "Educations",
                        principalColumn: "EducationID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_EducationToEducators_Educators_EducatorID",
                        column: x => x.EducatorID,
                        principalTable: "Educators",
                        principalColumn: "EducatorID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "EducationToStudents",
                columns: table => new
                {
                    EducationToStudentID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EducationID = table.Column<int>(type: "int", nullable: true),
                    StudentID = table.Column<int>(type: "int", nullable: true),
                    SuccesStatus = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EducationToStudents", x => x.EducationToStudentID);
                    table.ForeignKey(
                        name: "FK_EducationToStudents_Educations_EducationID",
                        column: x => x.EducationID,
                        principalTable: "Educations",
                        principalColumn: "EducationID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_EducationToStudents_Students_StudentID",
                        column: x => x.StudentID,
                        principalTable: "Students",
                        principalColumn: "StudentID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "attendances",
                columns: table => new
                {
                    AttendanceID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AttendanceStatus = table.Column<bool>(type: "bit", nullable: false),
                    Week = table.Column<int>(type: "int", nullable: false),
                    EducationToStudentID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_attendances", x => x.AttendanceID);
                    table.ForeignKey(
                        name: "FK_attendances_EducationToStudents_EducationToStudentID",
                        column: x => x.EducationToStudentID,
                        principalTable: "EducationToStudents",
                        principalColumn: "EducationToStudentID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_attendances_EducationToStudentID",
                table: "attendances",
                column: "EducationToStudentID");

            migrationBuilder.CreateIndex(
                name: "IX_EducationToAssistants_AssistantID",
                table: "EducationToAssistants",
                column: "AssistantID");

            migrationBuilder.CreateIndex(
                name: "IX_EducationToAssistants_EducationID",
                table: "EducationToAssistants",
                column: "EducationID");

            migrationBuilder.CreateIndex(
                name: "IX_EducationToEducators_EducationID",
                table: "EducationToEducators",
                column: "EducationID");

            migrationBuilder.CreateIndex(
                name: "IX_EducationToEducators_EducatorID",
                table: "EducationToEducators",
                column: "EducatorID");

            migrationBuilder.CreateIndex(
                name: "IX_EducationToStudents_EducationID",
                table: "EducationToStudents",
                column: "EducationID");

            migrationBuilder.CreateIndex(
                name: "IX_EducationToStudents_StudentID",
                table: "EducationToStudents",
                column: "StudentID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "attendances");

            migrationBuilder.DropTable(
                name: "EducationToAssistants");

            migrationBuilder.DropTable(
                name: "EducationToEducators");

            migrationBuilder.DropTable(
                name: "EducationToStudents");

            migrationBuilder.DropTable(
                name: "Assistants");

            migrationBuilder.DropTable(
                name: "Educators");

            migrationBuilder.DropTable(
                name: "Educations");

            migrationBuilder.DropTable(
                name: "Students");
        }
    }
}
