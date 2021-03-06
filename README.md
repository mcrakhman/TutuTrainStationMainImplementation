# TutuTrainStationMainImplementation

![Alt Text](https://github.com/mcrakhman/FilesRepository/blob/master/tutu720-dynamicheight-2.gif)

Уважаемые коллеги из компании Tutu!

В этом репозитории находится **основной** вариант реализации тестового приложения, пожалуйста, руководствовуйтесь им.

1) Для работы приложения необходим интернет, так как json загружается из репозитория https://raw.githubusercontent.com/mcrakhman/hire_ios-test/master/allStations.json

2) При подготовке задания с точки зрения удобства интерфейса представилось логичным оформить меню выбора станций, список станций и выбор даты в качестве __единого экрана__ (такая же реализация была использована и в приложении, сделанном tutu.ru для iOS). Это во многом определило то, что основная версия использует UISearchBar, а не UISearchController (на всякий случай сделал реализацию также с помощью UISearchController - ее см https://github.com/mcrakhman/TutuTrainStaionAdditionalImplementiation.git, она имеет весь функционал, изображенный на картинке выше, впрочем она не включает ряд исправлений, содержащихся в основной версии и работает менее плавно). При объединенном экране (т.е. при 2х UISearchBar или UISearchController) использование __UISearchBar__ кажется предпочтительнее, в частности, по следующим причинам:

(А) Нет необходимости каждый раз отзывать view controller'ы (dismissViewController) при смене панели ввода в отличие от UISearchController. Также нет проблем с тем, чтобы оставить текст в UISearchBar после смены панели, в отличие от UISearchController, при использовании которого нужно придумывать ряд обходных путей.

(Б) В UISearchBar по умолчанию нет ряда, на мой взгляд, лишних элементов интерфейса, например, кнопки "Cancel" (ее, впрочем, тоже можно убрать и UISearchController, так как он использует UISearchBar).

3) В детальном экране, содержащем информацию о конкретной станции предусмотрена загрузка изображения карты, где расположена станция.

4) Для перемещения между разделами был использован UITabBar, так как этот элемент является стандартным для навигации между логически не связанными друг с другом разделами. 
