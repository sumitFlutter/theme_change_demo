# theme_change package demo
👉 Here theme_change package link :- <a href="https://github.com/sumitFlutter/theme_change">GitHub </a><br>
👉 Here theme_change package link :- <a href="https://pub.dev/packages/theme_change">Official pub.dev </a><br>
<h3>this package allows You to use custom Light and Dark Theme using built-in ThemeData class Otherwise You can use package provided Light and dark theme.</h3>
<hr>
<h2> New method for getTheme State </h2>
<h3> Use This ThemeMaterialAppGetX Widget like this: (You can add Extra properties that are mentioned in official docs)</h3>
<img src="https://github.com/user-attachments/assets/6432974b-52cd-4aaf-b9e8-bc8a5311651d"/>
<hr>
<h2> Old Method for getTheme State </h2>
<h3>call this getTheme method and (assign themeMode Like this and define theme and dark theme Like this in GetMaterialApp) (it's necessary)</h3>
<image src="https://github.com/user-attachments/assets/a9577a22-03da-4abb-b3f6-d976bf02135c"/>
 <hr>
<h2> New method for setTheme State </h2>
<h3>Then after call this setTheme method  (it's necessary) usng brand new ThemeObserver Widget Like this</h3>
<img src="https://github.com/user-attachments/assets/baee7f3b-8222-4c4d-a2d2-6448239761a1" />
  <hr>
<h2> old method for setTheme State </h2>
<h3>Then after call this setTheme method Like this (it's necessary)</h3>
<image src="https://github.com/user-attachments/assets/a22a6d7f-8200-4b1c-b00b-0fadc434a62c" />
 <hr>
<h2> Warning :-</h2>
<h3> all variable I used in this part of the package are RX Variables</h3>
 <h3> Don't forget to write WidgetsFlutterBinding.ensureInitialized(); before the runApp() </h3>
<h3> So I recomand you to use Obx()  Or ThemeObserver() Widget.. </h3>
<hr>
<h2>Additional Information</h2>
<h3>ThemeChange.themeController.pTheme.value is this package's main boolean variable that contains current theme's State</h3>
<h3>By Default ..pTheme.value is set to like that
 (..pTheme.value == true so current themeMode value is Dark theme)
 (..pTheme.value == false so current themeMode value is Light theme )</h3>
<h3>By using above mentioned variable you can customise your app like using Switch Widget instead of Icon Widget</h3>
<h3>By using above mentioned variable you can customise your application with condition management
like custom Image management (..pTheme.value?Image.asset(darktheme_image): Image.asset(lighttheme_image))</h3><hr>
<p>
<img src="https://github.com/user-attachments/assets/76137672-ec4c-433e-b305-e32fdc354f54" height="400px" width="200px" />
<img src="https://github.com/user-attachments/assets/86fcf705-b8d6-4815-b230-03587003efc8" height="400px" width="200px" />
</p>

 
