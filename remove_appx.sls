powershell run delete appx application:
  cmd.run:
    - names:
      - Get-AppxPackage -AllUsers *fitbit* | Remove-AppxPackage -AllUsers
      - Get-AppxPackage -AllUsers *Yandex.Music* | Remove-AppxPackage -AllUsers
      - Get-AppxPackage -AllUsers *Candy* | Remove-AppxPackage -AllUsers
      - Get-AppxPackage -AllUsers *OneDrive* | Remove-AppxPackage -AllUsers
      #- Get-AppxPackage -AllUsers *People* | Remove-AppxPackage -AllUsers
      - Get-AppxPackage -AllUsers *solitairecollection* | Remove-AppxPackage -AllUsers
      - Get-AppxPackage -AllUsers *BingWeather* | Remove-AppxPackage -AllUsers
      - Get-AppxPackage -AllUsers *BingNews* | Remove-AppxPackage -AllUsers
      - Get-AppxPackage -AllUsers *Skype* | Remove-AppxPackage -AllUsers
    - shell: powershell
