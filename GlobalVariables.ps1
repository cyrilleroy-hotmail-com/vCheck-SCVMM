# You can change the following defaults by altering the below settings:
#

# Set the following to true to enable the setup wizard for first time run
$SetupWizard =$False

# Start of Settings
# Please Specify the IP address or Hostname of the server to connect to
$Server ="scvmm.domain.local"
# Please Specify the SMTP server address
$SMTPSRV ="smtp.domain.local"
# Please specify the email address who will send the vCheck report
$EmailFrom ="scvmm@domain.local"
# Please specify the email address who will receive the vCheck report
$EmailTo ="itops@domain.local"
# Please specify an email subject
$EmailSubject="SC VMM Status Report"
# Would you like the report displayed in the local browser once completed ?
$DisplaytoScreen =$false
# Use the following item to define if an email report should be sent once completed
$SendEmail =$false
# If you would prefer the HTML file as an attachment then enable the following:
$SendAttachment =$false
# Use the following area to define the title color
$Colour1 ="D6E7F8"
$Colour1 ="FFFFFF"
# Use the following area to define the Heading color=
$Colour2 ="F70808"
#$Colour2 ="FFFFFF"
# Use the following area to define the Title text color
$TitleTxtColour ="090736"
$TitleTxtColour ="FFFFFF"
# Set the following setting to $true to see how long each Plugin takes to run as part of the report=
$TimeToRun = $true
# Report an plugins that take longer than the following amount of seconds=
$PluginSeconds = 30
# End of Settings=
# End of Settings

$Date = Get-Date
