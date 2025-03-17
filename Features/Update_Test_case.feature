@tag
Feature: Update Resume and Update Profile on Nokri Portal

  @resume
  Scenario Outline: Successfully updating the resume
    Given the user is logged into the Nokri portal "<username>" "<password>"
    And the user is on the My Profile page
    When the user clicks on the Upload Resume button
    And selects a valid resume file "<resume_path>"
    Then the system should successfully update the resume

    Examples: 
      | username                   | password          | resume_path                   |
      | tusharsjadhav60@gmail.com  | JayJay_Shakar1919 | E:\\Tushar_Jadhav_QA.pdf      |
      | nancykalariya101@gmail.com | @4559baleno       | E:\\nancy_kalariya_UI_UX.pdf  |
      | mr.rohitpatil97@gmail.com  | Rohit@123         | E:\\Rohit_Patil_QA.pdf        |

  @Profile
  Scenario Outline: Successfully updating personal information
    Given the user is logged into the Nokri portal "<username>" "<password>"
    And the user is on the My Profile page
    When the user is on the Edit Profile page
    And clicks on the Save button
    #Then the system should successfully update the profile

    Examples: 
      | username                   | password          |
      | tusharsjadhav60@gmail.com  | JayJay_Shakar1919 |
      | nancykalariya101@gmail.com | @4559baleno       |
      | mr.rohitpatil97@gmail.com  | Rohit@123         |
