

ALTER VIEW [dbo].[tac_mbk_details1]
AS
SELECT     dbo.ggn_auther.auther_name, dbo.ggn_languagetype.language_name, dbo.mbtype_details.btype_name, dbo.ggn_shelf.shelf_no, dbo.ggn_borrower.borrower_code, 
                      dbo.tac_bkstock.bkcopy_code, dbo.ggn_staff.staff_name, dbo.ggn_student.student_name, dbo.ggn_designation.designation_name, 
                      dbo.ggn_department.department_name, dbo.mbk_details.bk_code, dbo.mbk_details.bk_name, dbo.mbk_details.auther_code, dbo.mbk_details.btype_code, 
                      dbo.mbk_details.publication_year, dbo.mbk_details.shelf_code, dbo.mbk_details.language_code
FROM         dbo.mbk_details INNER JOIN
                      dbo.ggn_auther ON dbo.mbk_details.auther_code = dbo.ggn_auther.auther_code INNER JOIN
                      dbo.ggn_languagetype ON dbo.mbk_details.language_code = dbo.ggn_languagetype.language_code INNER JOIN
                      dbo.mbtype_details ON dbo.mbk_details.btype_code = dbo.mbtype_details.btype_code INNER JOIN
                      dbo.ggn_shelf ON dbo.mbk_details.shelf_code = dbo.ggn_shelf.shelf_code LEFT OUTER JOIN
                      dbo.ggn_borrower ON dbo.mbk_details.bk_code = dbo.ggn_borrower.bk_code LEFT OUTER JOIN
                      dbo.tac_bkstock ON dbo.mbk_details.bk_code = dbo.tac_bkstock.bk_code LEFT OUTER JOIN
                      dbo.ggn_staff ON dbo.ggn_borrower.staff_code = dbo.ggn_staff.staff_code LEFT OUTER JOIN
                      dbo.ggn_student ON dbo.ggn_borrower.student_code = dbo.ggn_student.student_code LEFT OUTER JOIN
                      dbo.ggn_designation ON dbo.ggn_staff.designation_code = dbo.ggn_designation.designation_code LEFT OUTER JOIN
                      dbo.ggn_department ON dbo.ggn_student.department_code = dbo.ggn_department.department_code

GO


