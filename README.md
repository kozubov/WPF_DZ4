# WPF_DZ4

Creating custom controls.
Working with graphics Using the MVVM pattern, develop a WPF application “Image Viewer” with the following interface:
Select and add images by using the standard dialog. The file name and the size in KB are displayed below the image. When you hover over the image, the corresponding element smoothly increases, blurring disappears, a shadow appears

Tips:

Only one effect can be applied to one element. To apply two effects to a selected element (removing blur and appearing shadow), you need to use two nested layout managers: for one, one effect will be applied, for the other, another effect:

...
<StackPanel.Effect>
...
</StackPanel.Effect>

Properties for animation effects: Storyboard.TargetProperty = "Effect. (BlurEffect.Radius)" Storyboard.TargetProperty = "Effect. (DropShadowEffect.Opacity)" 3. Events for trigger events: MouseEnter, MouseLeave
