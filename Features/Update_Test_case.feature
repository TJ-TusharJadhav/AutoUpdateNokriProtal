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
      | username                      | password          | resume_path                             |
      | tusharsjadhav60@gmail.com     | JayJay_Shakar1919 | C:\learing\Tushar_Jadhav_QA.pdf  |
      | vipul12081993@gmail.com     | Vipul@143 | C:\learing\CV_Mr. Vipulsinh Chauhan.pdf  |

  @Profile
  Scenario Outline: Successfully updating personal information
    Given the user is logged into the Nokri portal "<username>" "<password>"
    And the user is on the My Profile page
    When the user is on the Edit Profile page
    And clicks on the Save button
    #Then the system should successfully update the profile

    Examples: 
      | username                      | password          |
      | tusharsjadhav60@gmail.com     | JayJay_Shakar1919 |
      | vipul12081993@gmail.com     | Vipul@143 |
