-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 27 2017 г., 02:40
-- Версия сервера: 5.7.16
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `author` varchar(255) DEFAULT NULL,
  `text` text,
  `is_published` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_published` datetime DEFAULT NULL,
  `tags` text,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `author`, `text`, `is_published`, `date_created`, `date_published`, `tags`, `category`) VALUES
(115, 'Brute posse in eos, nusquam expetendis accommodare quo ut.', 'Brute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.', 'Brute posse ', 'Lorem ipsum dolor sit amet, oportere maluisset deterruisset ei qui, eum eripuit saperet ad. Et etiam similique ius, no invenire facilisis per, velit sensibus nec ei. Eu adhuc eligendi convenire ius, eam at erant vulputate. No mei malis efficiantur, te pri putant diceret, at soluta alienum convenire pro. At pri minimum commune, ad mei quot debitis nusquam. Consul labores docendi te vel, sed in possim eligendi, pro partem dolores ut. Ne oratio impetus per, ut malis urbanitas nam.\r\n\r\nIus ea porro persecuti. Quo duis mollis et. Te definiebas scripserit pri, vel eu mollis propriae, clita veniam omnium ad mel. Sea an quis alia viris. Id dicunt invenire has, in facilisi oportere duo, alia dicunt consetetur quo ex. Illud libris causae ad eos, ut sit alii sensibus erroribus.\r\n\r\nAd senserit signiferumque ius, an alii legimus utroque his, mea alii perfecto et. Cum quod postea volutpat te. Posse molestiae conclusionemque ne eam. Te sit ponderum corrumpit signiferumque, te eam odio saperet evertitur, eum et partiendo consequat posidonium. In usu scaevola ocurreret efficiantur, vitae maiestatis sed eu.\r\n\r\nAn per alia sadipscing, mea iudico legimus ut. Mei te tota omnium philosophia, in est postea mentitum. His utinam meliore tincidunt te, ex eruditi feugait eleifend sed, inani denique in qui. Dicam bonorum ad eos. Eu his graeci aperiam, has sapientem disputando ea, duo ad primis ornatus. Utinam sanctus te usu, pri cu vivendo constituam.\r\n\r\nDuo viderer alterum cu. Assentior sadipscing ex mel, mel facilis detraxit no. Te ferri mandamus adipiscing sit. Facilis eloquentiam eos et. Ut mei eloquentiam repudiandae, an vis quas nusquam molestie.\r\n\r\nBrute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.\r\n\r\nEst eu affert conceptam, meis nulla te ius. Nibh soluta assueverit eos ut, electram iudicabit cum ut, an intellegam dissentias vis. Vis ex movet dictas blandit. Sed ne molestie quaerendum, sanctus detracto invidunt ei mel. Eros sale mei ex, eu sea volumus consulatu euripidis, ius ludus noster ceteros at. Ius integre vituperata no, an vim maluisset intellegebat.\r\n\r\nDuo tamquam nominavi partiendo at, sit eu ferri postulant maiestatis, nam an summo legendos. Cu error deseruisse neglegentur vix, in elitr verear scriptorem his. In putant persecuti sed. Usu ut tota altera invidunt. Nam tota detraxit recusabo ea, vitae fabellas urbanitas est ex. At viris nihil est. At mea tota detraxit senserit.', 1, '2017-09-17 22:14:52', '2017-09-17 22:14:52', 'работа , карьера , отдых , психология ', NULL),
(116, 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. ', 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.', 'Sea an exerci', 'Lorem ipsum dolor sit amet, affert suavitate ullamcorper et duo. Virtute iuvaret appetere his cu. Errem lobortis abhorreant eam ut, an vim exerci virtute atomorum, regione lucilius at per. Has accumsan legendos at, in eum hinc accumsan. Mei te exerci putent, ad omnis mucius scripserit vis. Ad iusto gubergren repudiandae est. Mel doctus oporteat at.\r\n\r\nEt vel latine singulis voluptatibus. Mea dico partem ea. Vitae ridens semper vel eu. Vis ei meis albucius ullamcorper, sea ea ceteros prodesset, dicta tincidunt sit eu. Has eu erant epicuri perpetua, nihil commune ad est.\r\n\r\nAd cum tollit dolorem, ad pro eius accusam. Vim adhuc oportere et, laudem tractatos explicari et eam, in per iriure euismod pericula. Dolore explicari mea in. Id dicant debitis senserit has. Sit tota legimus intellegebat ad, homero abhorreant contentiones has cu. Ei has alia mutat, phaedrum dignissim quo et, per enim idque at.\r\n\r\nCausae persius usu ut, erroribus posidonium intellegebat eu mei. Cum et movet cotidieque. In alienum repudiare incorrupte vix, pri ut paulo nobis consetetur, his te virtute atomorum. Harum iisque aperiri his ei, pri debet consetetur ut. Pro eu melius definitionem, officiis detraxit moderatius mei te.\r\n\r\nLudus dolor suscipit te est, cum fugit scripserit ne. Nulla putant quo cu, ea cum menandri sententiae. Ex vel habemus definitionem, iusto expetendis duo at, est ei decore aperiam aliquid. Sed feugiat minimum eu, duo ut dicta expetenda. Quo an etiam admodum interesset.\r\n\r\nSea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.\r\n\r\nEam mazim graeci iriure in. Gloriatur deterruisset sed an, ex eum elitr scaevola. Sit ne denique epicuri atomorum, nam exerci inermis dolorem ad, vel deserunt convenire ei. Adhuc veritus iudicabit eam ei. Vim id reprimique disputando, mei omnes labores ancillae no, magna omnesque vis no. No nec persius tractatos, homero patrioque persecuti quo at.\r\n\r\nCibo accusamus his ad, brute posse his an. Dicat forensibus temporibus in has, et wisi populo vim. Euismod albucius deseruisse sed cu. Elitr alterum id vis, case etiam id mea.', 1, '2017-09-17 22:17:19', '2017-09-17 22:17:19', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(117, 'Vel tale justo ad. ', 'Vel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.', 'Vel tale', 'Lorem ipsum dolor sit amet, sea nihil nobis antiopam eu, ad vim omnium vocibus ceteros. Inermis albucius recteque in sed, utinam invidunt ne vix. Mei ut viderer ponderum erroribus, eum eu sumo veri ocurreret. Dicat antiopam sea an. Suas quot temporibus ex eos, augue partiendo qui et.\r\n\r\nIus ipsum atomorum mnesarchum an. Clita dolorum legendos no cum, diam integre accusam an cum, quando accumsan id vix. Qui nonumy evertitur te, numquam debitis mei no. Nam electram honestatis et, te eius facer quaeque eos. Iudico putant inimicus vis cu, eam id illud pertinacia, est zril indoctum ad. Qui ne euismod feugiat moderatius, sit utinam tacimates scripserit ex.\r\n\r\nPosse saepe per ea. At vel velit mentitum, quis omnium laoreet eu vis, id vim amet lucilius scribentur. Cu has aliquid vituperatoribus. Mea luptatum pericula ex, sed ei oblique patrioque definitiones, mei ad solum forensibus. Qui debet complectitur ea.\r\n\r\nLegere malorum ne duo, in sed vide appellantur. Te mea duis ullum novum. Eos in impetus philosophia interpretaris, offendit vivendum inciderint pro an, est laudem tempor labores ne. Quot omittam eu vix.\r\n\r\nIn assueverit definitiones pro, ex ipsum affert duo. Sed ceteros perpetua ut, ius honestatis quaerendum cu. Et assum falli exerci quo, ad usu mollis debitis deleniti, sed veri dolor intellegat eu. Mel cu quodsi eruditi suscipiantur, ut vel assum percipitur. Nam ei nostro neglegentur ullamcorper, est eu commodo evertitur prodesset. Nec tota autem audiam ea, pri insolens praesent vulputate ex, ne cum cibo animal explicari. In has perfecto accusata perpetua.\r\n\r\nVel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.\r\n\r\nAd sea adhuc possim, pri euismod nostrum adolescens cu. Ne cum quod persecuti liberavisse, ea nec purto forensibus intellegam, ne meis appetere has. Dicunt percipit mei ut, ex sit aeterno veritus copiosae, pro no tollit scaevola laboramus. Vidit menandri et vel, sed affert perpetua ad. Nec ei summo delectus pertinacia, nam ea equidem interesset.\r\n\r\nAncillae eleifend definitionem eu pri, detraxit iracundia referrentur cu his, an sea expetenda vituperata. Mel etiam viderer efficiantur ex. In odio disputationi deterruisset vim, sea no quot ferri debitis, ius animal accusata conceptam ex. Movet corrumpit mea ei, ius posse idque audiam ea. Cu alii prima putent cum.', 1, '2017-09-17 22:18:43', '2017-09-17 22:18:43', ' лаборатория касперского , сша ', NULL),
(118, 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. ', 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.', 'Per id', 'Lorem ipsum dolor sit amet, ex facer error dicit qui, pri eu dicam everti. Tollit facete nostrud per in, duo dicat neglegentur cu. Nam voluptua lucilius nominati te, no tation definitionem sed. Veri nulla novum ei ius, numquam incorrupte intellegebat te mea, est diam iusto laoreet te.\r\n\r\nEu aliquip eripuit legendos mel, euismod consulatu eum te. Paulo dictas quaeque id his, te per purto inimicus. Mei an quot civibus, ne eum eius nonumy quidam. Meliore corrumpit vix cu, errem apeirian duo at, accusam omnesque sit et. Ei vim impedit incorrupte, mel ea perpetua elaboraret. Sed at fugit fuisset appetere, ad falli solet liberavisse eos, his dicunt utroque adipisci ne.\r\n\r\nNihil explicari dissentias has cu, ea homero aperiam minimum vim, id zril solet verterem vis. Veritus blandit qualisque no ius, sed audiam officiis ut. Eum tantas civibus probatus ut. Omnium consulatu et eum, omnes munere integre an pro. No mazim persequeris philosophia duo.\r\n\r\nUt sumo atqui euripidis his. No his purto similique efficiendi, feugait facilisi accommodare mel ex, ad his aliquid mediocrem liberavisse. Ex nam elitr everti comprehensam. Vel id maiestatis mediocritatem, te nam euismod vivendum.\r\n\r\nMei alii vulputate moderatius no. An aperiri singulis pri, aeterno equidem his ad, enim melius te ius. Duo ad mazim tollit dictas, ius ea enim brute liberavisse, odio graece qualisque per id. Ad choro epicurei vim, nam ne liber fabulas. An inani copiosae pri, his in dicat debet detracto. Equidem sanctus scriptorem te sed, graece appetere sit at, an gloriatur mediocritatem mea.\r\n\r\nPer id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.\r\n\r\nEirmod verear reprimique pri at, vim id utinam populo dissentiet. Feugiat interesset ad est, cu est assentior argumentum. Facilisis repudiare vituperata in duo, vix te zril regione legendos. Graeco dolorem omittam nam an, vix ne malorum iuvaret delicata. Ea eum habeo meliore, mel at quis dicta.\r\n\r\nPurto wisi adipiscing no qui, ex agam laudem mediocritatem vis. Vel no libris possit copiosae. Id quas augue quo, cu mel simul admodum. At mea aeque propriae inimicus, ipsum commune iudicabit sit an. His ut summo fastidii, ut sea imperdiet intellegebat. Eu duo idque invidunt interesset.', 1, '2017-09-17 22:20:34', '2017-09-17 22:20:34', 'искусственный интеллект , ernst and young , робот , работа , профессия , карьера ', NULL),
(119, 'Modo nobis menandri ut pro, inani nullam labore eum an.', 'Modo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.', 'Modo nobis', 'Lorem ipsum dolor sit amet, ex nam veri aeterno mandamus, eu mel mundi tacimates. Mel ridens impetus ex. Solum facer scripserit et sea. Petentium moderatius his ut, sea et viris noluisse repudiare, ea qui quaestio similique abhorreant. Qui delenit intellegam te, et eos omnesque appareat mnesarchum, an quo illum bonorum definitionem. Adhuc dolores est ex, duo splendide philosophia in, fierent platonem theophrastus ea vix.\r\n\r\nEi lorem sapientem nec, no sit inani civibus, esse prima doming eam te. Quis civibus disputationi no per, usu labitur deleniti eloquentiam et. Vel in eros salutatus maiestatis. Sumo corpora scaevola eu has. Sale meliore ei eam, vidisse labitur scribentur ex est, platonem accommodare duo et.\r\n\r\nVim ad epicurei tacimates dissentiunt, an mel probo latine aliquando. Ad duo brute percipitur, intellegat abhorreant et sed, vix nonumes fuisset petentium in. Duo eu populo eloquentiam, utamur volutpat consequat in nam. Pri ut utroque laoreet expetenda. Percipit torquatos complectitur sed at, ne tritani quaeque accumsan mei. Pri no ignota delicata euripidis.\r\n\r\nAugue legimus salutatus vix at. Mea an dicta deserunt senserit, an eam porro accusamus signiferumque. In altera posidonium quo, ei qui esse appareat. Eu cum amet vocent cotidieque, mea cu labitur meliore mentitum. Vivendo honestatis eam cu, ut quod scriptorem vel.\r\n\r\nPri no epicurei adipisci expetendis, error nihil homero mel ad, electram percipitur ea sed. Porro dissentiunt instructior sit an. Usu ut rebum recteque conceptam. Eum et prima munere inimicus. Sit natum rebum dolores et, vix no eros rationibus interpretaris.\r\n\r\nModo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.\r\n\r\nEa eos feugiat veritus urbanitas, ne indoctum conclusionemque duo. An agam audiam convenire pro, hinc novum disputationi sed ei, ea prompta petentium conclusionemque quo. An suas omnesque definiebas vis, per ut duis animal. Est ne scaevola moderatius, odio voluptatibus no eam, in has dolore consequat. An quo explicari dissentiunt, his at enim albucius principes.\r\n\r\nMel molestie mnesarchum ad, in facilisi adipisci delicata duo. Ad molestie nominati molestiae nam, pro populo invenire philosophia ut. Mel errem scripta ocurreret te. Labitur fierent phaedrum cu ius, vis cu vide persecuti intellegat. Oratio dolorem imperdiet pri te, facer dicant detracto mel no.', 1, '2017-09-17 22:22:08', '2017-09-17 22:22:08', 'работа , карьера , отдых , психология ', NULL),
(120, 'Admodum postulant ut mel. ', 'Admodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.', 'Admodum ', 'Lorem ipsum dolor sit amet, mei eu mutat facete patrioque. Cum et viris populo pertinacia, nam maiorum suscipiantur mediocritatem te. Pri tation facete tacimates no, ut augue prodesset temporibus ius. Eu ius persius laoreet meliore, qui justo quodsi abhorreant ea, saepe conclusionemque ea vim. Ius offendit ullamcorper cu.\r\n\r\nNoster prompta efficiantur te nec, eam iudico virtute ne. Mei no wisi verear labores. His in harum habemus appareat, graeco intellegebat mel te. Vix error mucius verterem cu, munere nonumy nominati vim te. Ferri causae aperiam in nec, et nam soleat doming labores. Agam oblique quaestio cu vim, nemore forensibus scribentur per no, paulo pericula mediocrem ex eos.\r\n\r\nMea at aliquid temporibus, vel insolens suavitate appellantur ne, esse timeam aliquam has ea. An epicurei aliquando sea, no commune petentium concludaturque vim. Exerci iriure epicuri cu mei, qui invenire moderatius ex. Eam ex ullum populo partiendo, impetus ornatus ad sed, est an porro eruditi voluptatum.\r\n\r\nEa vix bonorum atomorum. Alii labores constituam per ad. Error honestatis usu eu, id tantas fabulas detraxit his, ei malorum eripuit pro. Cu audire vituperata his, ad pri oblique periculis. Porro sadipscing te est, te vel dicunt omnium, solet constituam liberavisse nam ad.\r\n\r\nAdmodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.\r\n\r\nCu propriae incorrupte eum. Ad duo inani argumentum percipitur, quo novum labitur partiendo te, sonet adolescens eu sea. Vel oblique similique et, mel ad ceteros vituperatoribus. Modo adipisci quo te, ea elitr copiosae vis, no nec alterum disputationi. No nostro lucilius mei, natum moderatius mei ne.\r\n\r\nLabores nonumes in vim, discere mediocrem persequeris usu no, et bonorum delicata erroribus qui. Quot semper consequuntur ius cu, perfecto ullamcorper ius te, cu eum mucius impetus vituperata. Ex vidit omnes conclusionemque pri, vix sumo senserit ut, usu ne numquam percipit. Quo ad postea saperet concludaturque, ceteros salutandi in eam.\r\n\r\nUt mea aperiri interesset, erat posse dissentiet pri et. Cu mea probatus abhorreant. At legere abhorreant pri. Nec id wisi libris vocent.', 1, '2017-09-17 22:23:38', '2017-09-17 22:23:38', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(121, 'Ut eos nullam iisque, per an commodo eruditi. ', 'Ut eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.', 'Ut eos nullam', 'Lorem ipsum dolor sit amet, vocent electram ut his, nam laudem habemus appareat no. Id erat aeterno repudiare est. At dolor detracto gloriatur nam. Mea adhuc solum rebum ex, vim idque utamur propriae te, his alterum appetere honestatis ut. Vis aeque semper impedit id, nec quaeque labores quaerendum cu.\r\n\r\nNe qui case scaevola, ad mea ancillae omnesque perfecto. Mea ea legendos disputationi. Blandit copiosae an usu, pri ei suas suscipiantur. Nam lobortis periculis inciderint ut, mea eu minimum oportere reprehendunt. His te omittam offendit tincidunt, an dictas adversarium sit. At nulla everti vim.\r\n\r\nAn ius vidisse quaestio, eam an graece deleniti facilisi. Adhuc numquam eos an, ut simul propriae disputationi quo. Alterum ponderum eu qui. Saperet conceptam te vim, rebum cetero disputationi mel ut. Duis recteque ad duo, vis at dicta minimum mnesarchum.\r\n\r\nSemper accusam neglegentur at eum, eu veniam veritus pri. Vide sententiae nec ut. Iusto quaestio prodesset per ad. Eum et etiam congue dissentiet.\r\n\r\nUt eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.\r\n\r\nAudire omnesque id cum, an mucius sadipscing adversarium vix. Duo aliquip meliore ea, posse tractatos consulatu ne his. Nam et quod vituperata, eum legimus definitionem ne. Vim in erant graece. Vix duis sadipscing ad, possim euripidis et his, adhuc dicat pertinax cu sea. Ei pri vitae putent, esse explicari eos no. Dolorem contentiones ei vis.\r\n\r\nDuo facete aliquid dolores ut, ei fugit deserunt qui. Ea vim virtute democritum honestatis, no cum dicunt malorum delectus. Pri ad commodo molestiae, sed te soluta persius. Meliore torquatos abhorreant nam an. Nam ex falli suscipit, aeque sententiae cum eu. Duo blandit adipisci et.\r\n\r\nEt eum lorem dignissim, per homero appellantur ut. Omnis accusata ei vis. Malorum volumus reformidans vix ut, pri no iuvaret hendrerit, vim ei hinc inani honestatis. An cum vide scripta consetetur. Iusto vitae ocurreret ut his, purto posse consequuntur id ius, has eu sale definiebas necessitatibus. Case augue usu eu, in vix invenire constituto, tincidunt mnesarchum percipitur sed cu.', 1, '2017-09-17 22:25:03', '2017-09-17 22:25:03', 'лаборатория касперского , сша \r\n', NULL),
(122, 'Brute posse in eos, nusquam expetendis accommodare quo ut.', 'Brute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.', 'Brute posse ', 'Lorem ipsum dolor sit amet, oportere maluisset deterruisset ei qui, eum eripuit saperet ad. Et etiam similique ius, no invenire facilisis per, velit sensibus nec ei. Eu adhuc eligendi convenire ius, eam at erant vulputate. No mei malis efficiantur, te pri putant diceret, at soluta alienum convenire pro. At pri minimum commune, ad mei quot debitis nusquam. Consul labores docendi te vel, sed in possim eligendi, pro partem dolores ut. Ne oratio impetus per, ut malis urbanitas nam.\r\n\r\nIus ea porro persecuti. Quo duis mollis et. Te definiebas scripserit pri, vel eu mollis propriae, clita veniam omnium ad mel. Sea an quis alia viris. Id dicunt invenire has, in facilisi oportere duo, alia dicunt consetetur quo ex. Illud libris causae ad eos, ut sit alii sensibus erroribus.\r\n\r\nAd senserit signiferumque ius, an alii legimus utroque his, mea alii perfecto et. Cum quod postea volutpat te. Posse molestiae conclusionemque ne eam. Te sit ponderum corrumpit signiferumque, te eam odio saperet evertitur, eum et partiendo consequat posidonium. In usu scaevola ocurreret efficiantur, vitae maiestatis sed eu.\r\n\r\nAn per alia sadipscing, mea iudico legimus ut. Mei te tota omnium philosophia, in est postea mentitum. His utinam meliore tincidunt te, ex eruditi feugait eleifend sed, inani denique in qui. Dicam bonorum ad eos. Eu his graeci aperiam, has sapientem disputando ea, duo ad primis ornatus. Utinam sanctus te usu, pri cu vivendo constituam.\r\n\r\nDuo viderer alterum cu. Assentior sadipscing ex mel, mel facilis detraxit no. Te ferri mandamus adipiscing sit. Facilis eloquentiam eos et. Ut mei eloquentiam repudiandae, an vis quas nusquam molestie.\r\n\r\nBrute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.\r\n\r\nEst eu affert conceptam, meis nulla te ius. Nibh soluta assueverit eos ut, electram iudicabit cum ut, an intellegam dissentias vis. Vis ex movet dictas blandit. Sed ne molestie quaerendum, sanctus detracto invidunt ei mel. Eros sale mei ex, eu sea volumus consulatu euripidis, ius ludus noster ceteros at. Ius integre vituperata no, an vim maluisset intellegebat.\r\n\r\nDuo tamquam nominavi partiendo at, sit eu ferri postulant maiestatis, nam an summo legendos. Cu error deseruisse neglegentur vix, in elitr verear scriptorem his. In putant persecuti sed. Usu ut tota altera invidunt. Nam tota detraxit recusabo ea, vitae fabellas urbanitas est ex. At viris nihil est. At mea tota detraxit senserit.', 1, '2017-09-17 22:14:52', '2017-09-17 22:14:52', 'работа , карьера , отдых , психология ', NULL),
(123, 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. ', 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.', 'Sea an exerci', 'Lorem ipsum dolor sit amet, affert suavitate ullamcorper et duo. Virtute iuvaret appetere his cu. Errem lobortis abhorreant eam ut, an vim exerci virtute atomorum, regione lucilius at per. Has accumsan legendos at, in eum hinc accumsan. Mei te exerci putent, ad omnis mucius scripserit vis. Ad iusto gubergren repudiandae est. Mel doctus oporteat at.\r\n\r\nEt vel latine singulis voluptatibus. Mea dico partem ea. Vitae ridens semper vel eu. Vis ei meis albucius ullamcorper, sea ea ceteros prodesset, dicta tincidunt sit eu. Has eu erant epicuri perpetua, nihil commune ad est.\r\n\r\nAd cum tollit dolorem, ad pro eius accusam. Vim adhuc oportere et, laudem tractatos explicari et eam, in per iriure euismod pericula. Dolore explicari mea in. Id dicant debitis senserit has. Sit tota legimus intellegebat ad, homero abhorreant contentiones has cu. Ei has alia mutat, phaedrum dignissim quo et, per enim idque at.\r\n\r\nCausae persius usu ut, erroribus posidonium intellegebat eu mei. Cum et movet cotidieque. In alienum repudiare incorrupte vix, pri ut paulo nobis consetetur, his te virtute atomorum. Harum iisque aperiri his ei, pri debet consetetur ut. Pro eu melius definitionem, officiis detraxit moderatius mei te.\r\n\r\nLudus dolor suscipit te est, cum fugit scripserit ne. Nulla putant quo cu, ea cum menandri sententiae. Ex vel habemus definitionem, iusto expetendis duo at, est ei decore aperiam aliquid. Sed feugiat minimum eu, duo ut dicta expetenda. Quo an etiam admodum interesset.\r\n\r\nSea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.\r\n\r\nEam mazim graeci iriure in. Gloriatur deterruisset sed an, ex eum elitr scaevola. Sit ne denique epicuri atomorum, nam exerci inermis dolorem ad, vel deserunt convenire ei. Adhuc veritus iudicabit eam ei. Vim id reprimique disputando, mei omnes labores ancillae no, magna omnesque vis no. No nec persius tractatos, homero patrioque persecuti quo at.\r\n\r\nCibo accusamus his ad, brute posse his an. Dicat forensibus temporibus in has, et wisi populo vim. Euismod albucius deseruisse sed cu. Elitr alterum id vis, case etiam id mea.', 1, '2017-09-17 22:17:19', '2017-09-17 22:17:19', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(124, 'Vel tale justo ad. ', 'Vel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.', 'Vel tale', 'Lorem ipsum dolor sit amet, sea nihil nobis antiopam eu, ad vim omnium vocibus ceteros. Inermis albucius recteque in sed, utinam invidunt ne vix. Mei ut viderer ponderum erroribus, eum eu sumo veri ocurreret. Dicat antiopam sea an. Suas quot temporibus ex eos, augue partiendo qui et.\r\n\r\nIus ipsum atomorum mnesarchum an. Clita dolorum legendos no cum, diam integre accusam an cum, quando accumsan id vix. Qui nonumy evertitur te, numquam debitis mei no. Nam electram honestatis et, te eius facer quaeque eos. Iudico putant inimicus vis cu, eam id illud pertinacia, est zril indoctum ad. Qui ne euismod feugiat moderatius, sit utinam tacimates scripserit ex.\r\n\r\nPosse saepe per ea. At vel velit mentitum, quis omnium laoreet eu vis, id vim amet lucilius scribentur. Cu has aliquid vituperatoribus. Mea luptatum pericula ex, sed ei oblique patrioque definitiones, mei ad solum forensibus. Qui debet complectitur ea.\r\n\r\nLegere malorum ne duo, in sed vide appellantur. Te mea duis ullum novum. Eos in impetus philosophia interpretaris, offendit vivendum inciderint pro an, est laudem tempor labores ne. Quot omittam eu vix.\r\n\r\nIn assueverit definitiones pro, ex ipsum affert duo. Sed ceteros perpetua ut, ius honestatis quaerendum cu. Et assum falli exerci quo, ad usu mollis debitis deleniti, sed veri dolor intellegat eu. Mel cu quodsi eruditi suscipiantur, ut vel assum percipitur. Nam ei nostro neglegentur ullamcorper, est eu commodo evertitur prodesset. Nec tota autem audiam ea, pri insolens praesent vulputate ex, ne cum cibo animal explicari. In has perfecto accusata perpetua.\r\n\r\nVel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.\r\n\r\nAd sea adhuc possim, pri euismod nostrum adolescens cu. Ne cum quod persecuti liberavisse, ea nec purto forensibus intellegam, ne meis appetere has. Dicunt percipit mei ut, ex sit aeterno veritus copiosae, pro no tollit scaevola laboramus. Vidit menandri et vel, sed affert perpetua ad. Nec ei summo delectus pertinacia, nam ea equidem interesset.\r\n\r\nAncillae eleifend definitionem eu pri, detraxit iracundia referrentur cu his, an sea expetenda vituperata. Mel etiam viderer efficiantur ex. In odio disputationi deterruisset vim, sea no quot ferri debitis, ius animal accusata conceptam ex. Movet corrumpit mea ei, ius posse idque audiam ea. Cu alii prima putent cum.', 1, '2017-09-17 22:18:43', '2017-09-17 22:18:43', ' лаборатория касперского , сша ', NULL),
(125, 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. ', 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.', 'Per id', 'Lorem ipsum dolor sit amet, ex facer error dicit qui, pri eu dicam everti. Tollit facete nostrud per in, duo dicat neglegentur cu. Nam voluptua lucilius nominati te, no tation definitionem sed. Veri nulla novum ei ius, numquam incorrupte intellegebat te mea, est diam iusto laoreet te.\r\n\r\nEu aliquip eripuit legendos mel, euismod consulatu eum te. Paulo dictas quaeque id his, te per purto inimicus. Mei an quot civibus, ne eum eius nonumy quidam. Meliore corrumpit vix cu, errem apeirian duo at, accusam omnesque sit et. Ei vim impedit incorrupte, mel ea perpetua elaboraret. Sed at fugit fuisset appetere, ad falli solet liberavisse eos, his dicunt utroque adipisci ne.\r\n\r\nNihil explicari dissentias has cu, ea homero aperiam minimum vim, id zril solet verterem vis. Veritus blandit qualisque no ius, sed audiam officiis ut. Eum tantas civibus probatus ut. Omnium consulatu et eum, omnes munere integre an pro. No mazim persequeris philosophia duo.\r\n\r\nUt sumo atqui euripidis his. No his purto similique efficiendi, feugait facilisi accommodare mel ex, ad his aliquid mediocrem liberavisse. Ex nam elitr everti comprehensam. Vel id maiestatis mediocritatem, te nam euismod vivendum.\r\n\r\nMei alii vulputate moderatius no. An aperiri singulis pri, aeterno equidem his ad, enim melius te ius. Duo ad mazim tollit dictas, ius ea enim brute liberavisse, odio graece qualisque per id. Ad choro epicurei vim, nam ne liber fabulas. An inani copiosae pri, his in dicat debet detracto. Equidem sanctus scriptorem te sed, graece appetere sit at, an gloriatur mediocritatem mea.\r\n\r\nPer id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.\r\n\r\nEirmod verear reprimique pri at, vim id utinam populo dissentiet. Feugiat interesset ad est, cu est assentior argumentum. Facilisis repudiare vituperata in duo, vix te zril regione legendos. Graeco dolorem omittam nam an, vix ne malorum iuvaret delicata. Ea eum habeo meliore, mel at quis dicta.\r\n\r\nPurto wisi adipiscing no qui, ex agam laudem mediocritatem vis. Vel no libris possit copiosae. Id quas augue quo, cu mel simul admodum. At mea aeque propriae inimicus, ipsum commune iudicabit sit an. His ut summo fastidii, ut sea imperdiet intellegebat. Eu duo idque invidunt interesset.', 1, '2017-09-17 22:20:34', '2017-09-17 22:20:34', 'искусственный интеллект , ernst and young , робот , работа , профессия , карьера ', NULL),
(126, 'Modo nobis menandri ut pro, inani nullam labore eum an.', 'Modo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.', 'Modo nobis', 'Lorem ipsum dolor sit amet, ex nam veri aeterno mandamus, eu mel mundi tacimates. Mel ridens impetus ex. Solum facer scripserit et sea. Petentium moderatius his ut, sea et viris noluisse repudiare, ea qui quaestio similique abhorreant. Qui delenit intellegam te, et eos omnesque appareat mnesarchum, an quo illum bonorum definitionem. Adhuc dolores est ex, duo splendide philosophia in, fierent platonem theophrastus ea vix.\r\n\r\nEi lorem sapientem nec, no sit inani civibus, esse prima doming eam te. Quis civibus disputationi no per, usu labitur deleniti eloquentiam et. Vel in eros salutatus maiestatis. Sumo corpora scaevola eu has. Sale meliore ei eam, vidisse labitur scribentur ex est, platonem accommodare duo et.\r\n\r\nVim ad epicurei tacimates dissentiunt, an mel probo latine aliquando. Ad duo brute percipitur, intellegat abhorreant et sed, vix nonumes fuisset petentium in. Duo eu populo eloquentiam, utamur volutpat consequat in nam. Pri ut utroque laoreet expetenda. Percipit torquatos complectitur sed at, ne tritani quaeque accumsan mei. Pri no ignota delicata euripidis.\r\n\r\nAugue legimus salutatus vix at. Mea an dicta deserunt senserit, an eam porro accusamus signiferumque. In altera posidonium quo, ei qui esse appareat. Eu cum amet vocent cotidieque, mea cu labitur meliore mentitum. Vivendo honestatis eam cu, ut quod scriptorem vel.\r\n\r\nPri no epicurei adipisci expetendis, error nihil homero mel ad, electram percipitur ea sed. Porro dissentiunt instructior sit an. Usu ut rebum recteque conceptam. Eum et prima munere inimicus. Sit natum rebum dolores et, vix no eros rationibus interpretaris.\r\n\r\nModo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.\r\n\r\nEa eos feugiat veritus urbanitas, ne indoctum conclusionemque duo. An agam audiam convenire pro, hinc novum disputationi sed ei, ea prompta petentium conclusionemque quo. An suas omnesque definiebas vis, per ut duis animal. Est ne scaevola moderatius, odio voluptatibus no eam, in has dolore consequat. An quo explicari dissentiunt, his at enim albucius principes.\r\n\r\nMel molestie mnesarchum ad, in facilisi adipisci delicata duo. Ad molestie nominati molestiae nam, pro populo invenire philosophia ut. Mel errem scripta ocurreret te. Labitur fierent phaedrum cu ius, vis cu vide persecuti intellegat. Oratio dolorem imperdiet pri te, facer dicant detracto mel no.', 1, '2017-09-17 22:22:08', '2017-09-17 22:22:08', 'работа , карьера , отдых , психология ', NULL),
(127, 'Admodum postulant ut melel. ', 'Admodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.', 'Admodum ', 'Lorem ipsum dolor sit amet, mei eu mutat facete patrioque. Cum et viris populo pertinacia, nam maiorum suscipiantur mediocritatem te. Pri tation facete tacimates no, ut augue prodesset temporibus ius. Eu ius persius laoreet meliore, qui justo quodsi abhorreant ea, saepe conclusionemque ea vim. Ius offendit ullamcorper cu.\r\n\r\nNoster prompta efficiantur te nec, eam iudico virtute ne. Mei no wisi verear labores. His in harum habemus appareat, graeco intellegebat mel te. Vix error mucius verterem cu, munere nonumy nominati vim te. Ferri causae aperiam in nec, et nam soleat doming labores. Agam oblique quaestio cu vim, nemore forensibus scribentur per no, paulo pericula mediocrem ex eos.\r\n\r\nMea at aliquid temporibus, vel insolens suavitate appellantur ne, esse timeam aliquam has ea. An epicurei aliquando sea, no commune petentium concludaturque vim. Exerci iriure epicuri cu mei, qui invenire moderatius ex. Eam ex ullum populo partiendo, impetus ornatus ad sed, est an porro eruditi voluptatum.\r\n\r\nEa vix bonorum atomorum. Alii labores constituam per ad. Error honestatis usu eu, id tantas fabulas detraxit his, ei malorum eripuit pro. Cu audire vituperata his, ad pri oblique periculis. Porro sadipscing te est, te vel dicunt omnium, solet constituam liberavisse nam ad.\r\n\r\nAdmodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.\r\n\r\nCu propriae incorrupte eum. Ad duo inani argumentum percipitur, quo novum labitur partiendo te, sonet adolescens eu sea. Vel oblique similique et, mel ad ceteros vituperatoribus. Modo adipisci quo te, ea elitr copiosae vis, no nec alterum disputationi. No nostro lucilius mei, natum moderatius mei ne.\r\n\r\nLabores nonumes in vim, discere mediocrem persequeris usu no, et bonorum delicata erroribus qui. Quot semper consequuntur ius cu, perfecto ullamcorper ius te, cu eum mucius impetus vituperata. Ex vidit omnes conclusionemque pri, vix sumo senserit ut, usu ne numquam percipit. Quo ad postea saperet concludaturque, ceteros salutandi in eam.\r\n\r\nUt mea aperiri interesset, erat posse dissentiet pri et. Cu mea probatus abhorreant. At legere abhorreant pri. Nec id wisi libris vocent.', 1, '2017-09-17 22:23:38', '2017-09-17 22:23:38', 'паспорт , мвд , полиция , миграционная служба ,сша', NULL),
(128, 'Ut eos nullam iisque, per an commodo eruditi. ', 'Ut eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.', 'Ut eos nullam', 'Lorem ipsum dolor sit amet, vocent electram ut his, nam laudem habemus appareat no. Id erat aeterno repudiare est. At dolor detracto gloriatur nam. Mea adhuc solum rebum ex, vim idque utamur propriae te, his alterum appetere honestatis ut. Vis aeque semper impedit id, nec quaeque labores quaerendum cu.\r\n\r\nNe qui case scaevola, ad mea ancillae omnesque perfecto. Mea ea legendos disputationi. Blandit copiosae an usu, pri ei suas suscipiantur. Nam lobortis periculis inciderint ut, mea eu minimum oportere reprehendunt. His te omittam offendit tincidunt, an dictas adversarium sit. At nulla everti vim.\r\n\r\nAn ius vidisse quaestio, eam an graece deleniti facilisi. Adhuc numquam eos an, ut simul propriae disputationi quo. Alterum ponderum eu qui. Saperet conceptam te vim, rebum cetero disputationi mel ut. Duis recteque ad duo, vis at dicta minimum mnesarchum.\r\n\r\nSemper accusam neglegentur at eum, eu veniam veritus pri. Vide sententiae nec ut. Iusto quaestio prodesset per ad. Eum et etiam congue dissentiet.\r\n\r\nUt eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.\r\n\r\nAudire omnesque id cum, an mucius sadipscing adversarium vix. Duo aliquip meliore ea, posse tractatos consulatu ne his. Nam et quod vituperata, eum legimus definitionem ne. Vim in erant graece. Vix duis sadipscing ad, possim euripidis et his, adhuc dicat pertinax cu sea. Ei pri vitae putent, esse explicari eos no. Dolorem contentiones ei vis.\r\n\r\nDuo facete aliquid dolores ut, ei fugit deserunt qui. Ea vim virtute democritum honestatis, no cum dicunt malorum delectus. Pri ad commodo molestiae, sed te soluta persius. Meliore torquatos abhorreant nam an. Nam ex falli suscipit, aeque sententiae cum eu. Duo blandit adipisci et.\r\n\r\nEt eum lorem dignissim, per homero appellantur ut. Omnis accusata ei vis. Malorum volumus reformidans vix ut, pri no iuvaret hendrerit, vim ei hinc inani honestatis. An cum vide scripta consetetur. Iusto vitae ocurreret ut his, purto posse consequuntur id ius, has eu sale definiebas necessitatibus. Case augue usu eu, in vix invenire constituto, tincidunt mnesarchum percipitur sed cu.', 1, '2017-09-17 22:25:03', '2017-09-17 22:25:03', 'лаборатория касперского , сша \r\n', NULL),
(129, 'Brute posse in eos, nusquam expetendis accommodare quo ut.', 'Brute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.', 'Brute posse ', 'Lorem ipsum dolor sit amet, oportere maluisset deterruisset ei qui, eum eripuit saperet ad. Et etiam similique ius, no invenire facilisis per, velit sensibus nec ei. Eu adhuc eligendi convenire ius, eam at erant vulputate. No mei malis efficiantur, te pri putant diceret, at soluta alienum convenire pro. At pri minimum commune, ad mei quot debitis nusquam. Consul labores docendi te vel, sed in possim eligendi, pro partem dolores ut. Ne oratio impetus per, ut malis urbanitas nam.\r\n\r\nIus ea porro persecuti. Quo duis mollis et. Te definiebas scripserit pri, vel eu mollis propriae, clita veniam omnium ad mel. Sea an quis alia viris. Id dicunt invenire has, in facilisi oportere duo, alia dicunt consetetur quo ex. Illud libris causae ad eos, ut sit alii sensibus erroribus.\r\n\r\nAd senserit signiferumque ius, an alii legimus utroque his, mea alii perfecto et. Cum quod postea volutpat te. Posse molestiae conclusionemque ne eam. Te sit ponderum corrumpit signiferumque, te eam odio saperet evertitur, eum et partiendo consequat posidonium. In usu scaevola ocurreret efficiantur, vitae maiestatis sed eu.\r\n\r\nAn per alia sadipscing, mea iudico legimus ut. Mei te tota omnium philosophia, in est postea mentitum. His utinam meliore tincidunt te, ex eruditi feugait eleifend sed, inani denique in qui. Dicam bonorum ad eos. Eu his graeci aperiam, has sapientem disputando ea, duo ad primis ornatus. Utinam sanctus te usu, pri cu vivendo constituam.\r\n\r\nDuo viderer alterum cu. Assentior sadipscing ex mel, mel facilis detraxit no. Te ferri mandamus adipiscing sit. Facilis eloquentiam eos et. Ut mei eloquentiam repudiandae, an vis quas nusquam molestie.\r\n\r\nBrute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.\r\n\r\nEst eu affert conceptam, meis nulla te ius. Nibh soluta assueverit eos ut, electram iudicabit cum ut, an intellegam dissentias vis. Vis ex movet dictas blandit. Sed ne molestie quaerendum, sanctus detracto invidunt ei mel. Eros sale mei ex, eu sea volumus consulatu euripidis, ius ludus noster ceteros at. Ius integre vituperata no, an vim maluisset intellegebat.\r\n\r\nDuo tamquam nominavi partiendo at, sit eu ferri postulant maiestatis, nam an summo legendos. Cu error deseruisse neglegentur vix, in elitr verear scriptorem his. In putant persecuti sed. Usu ut tota altera invidunt. Nam tota detraxit recusabo ea, vitae fabellas urbanitas est ex. At viris nihil est. At mea tota detraxit senserit.', 1, '2017-09-17 22:14:52', '2017-09-17 22:14:52', 'работа , карьера , отдых , психология ', NULL),
(130, 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. ', 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.', 'Sea an exerci', 'Lorem ipsum dolor sit amet, affert suavitate ullamcorper et duo. Virtute iuvaret appetere his cu. Errem lobortis abhorreant eam ut, an vim exerci virtute atomorum, regione lucilius at per. Has accumsan legendos at, in eum hinc accumsan. Mei te exerci putent, ad omnis mucius scripserit vis. Ad iusto gubergren repudiandae est. Mel doctus oporteat at.\r\n\r\nEt vel latine singulis voluptatibus. Mea dico partem ea. Vitae ridens semper vel eu. Vis ei meis albucius ullamcorper, sea ea ceteros prodesset, dicta tincidunt sit eu. Has eu erant epicuri perpetua, nihil commune ad est.\r\n\r\nAd cum tollit dolorem, ad pro eius accusam. Vim adhuc oportere et, laudem tractatos explicari et eam, in per iriure euismod pericula. Dolore explicari mea in. Id dicant debitis senserit has. Sit tota legimus intellegebat ad, homero abhorreant contentiones has cu. Ei has alia mutat, phaedrum dignissim quo et, per enim idque at.\r\n\r\nCausae persius usu ut, erroribus posidonium intellegebat eu mei. Cum et movet cotidieque. In alienum repudiare incorrupte vix, pri ut paulo nobis consetetur, his te virtute atomorum. Harum iisque aperiri his ei, pri debet consetetur ut. Pro eu melius definitionem, officiis detraxit moderatius mei te.\r\n\r\nLudus dolor suscipit te est, cum fugit scripserit ne. Nulla putant quo cu, ea cum menandri sententiae. Ex vel habemus definitionem, iusto expetendis duo at, est ei decore aperiam aliquid. Sed feugiat minimum eu, duo ut dicta expetenda. Quo an etiam admodum interesset.\r\n\r\nSea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.\r\n\r\nEam mazim graeci iriure in. Gloriatur deterruisset sed an, ex eum elitr scaevola. Sit ne denique epicuri atomorum, nam exerci inermis dolorem ad, vel deserunt convenire ei. Adhuc veritus iudicabit eam ei. Vim id reprimique disputando, mei omnes labores ancillae no, magna omnesque vis no. No nec persius tractatos, homero patrioque persecuti quo at.\r\n\r\nCibo accusamus his ad, brute posse his an. Dicat forensibus temporibus in has, et wisi populo vim. Euismod albucius deseruisse sed cu. Elitr alterum id vis, case etiam id mea.', 1, '2017-09-17 22:17:19', '2017-09-17 22:17:19', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(131, 'Vel tale justo ad. ', 'Vel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.', 'Vel tale', 'Lorem ipsum dolor sit amet, sea nihil nobis antiopam eu, ad vim omnium vocibus ceteros. Inermis albucius recteque in sed, utinam invidunt ne vix. Mei ut viderer ponderum erroribus, eum eu sumo veri ocurreret. Dicat antiopam sea an. Suas quot temporibus ex eos, augue partiendo qui et.\r\n\r\nIus ipsum atomorum mnesarchum an. Clita dolorum legendos no cum, diam integre accusam an cum, quando accumsan id vix. Qui nonumy evertitur te, numquam debitis mei no. Nam electram honestatis et, te eius facer quaeque eos. Iudico putant inimicus vis cu, eam id illud pertinacia, est zril indoctum ad. Qui ne euismod feugiat moderatius, sit utinam tacimates scripserit ex.\r\n\r\nPosse saepe per ea. At vel velit mentitum, quis omnium laoreet eu vis, id vim amet lucilius scribentur. Cu has aliquid vituperatoribus. Mea luptatum pericula ex, sed ei oblique patrioque definitiones, mei ad solum forensibus. Qui debet complectitur ea.\r\n\r\nLegere malorum ne duo, in sed vide appellantur. Te mea duis ullum novum. Eos in impetus philosophia interpretaris, offendit vivendum inciderint pro an, est laudem tempor labores ne. Quot omittam eu vix.\r\n\r\nIn assueverit definitiones pro, ex ipsum affert duo. Sed ceteros perpetua ut, ius honestatis quaerendum cu. Et assum falli exerci quo, ad usu mollis debitis deleniti, sed veri dolor intellegat eu. Mel cu quodsi eruditi suscipiantur, ut vel assum percipitur. Nam ei nostro neglegentur ullamcorper, est eu commodo evertitur prodesset. Nec tota autem audiam ea, pri insolens praesent vulputate ex, ne cum cibo animal explicari. In has perfecto accusata perpetua.\r\n\r\nVel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.\r\n\r\nAd sea adhuc possim, pri euismod nostrum adolescens cu. Ne cum quod persecuti liberavisse, ea nec purto forensibus intellegam, ne meis appetere has. Dicunt percipit mei ut, ex sit aeterno veritus copiosae, pro no tollit scaevola laboramus. Vidit menandri et vel, sed affert perpetua ad. Nec ei summo delectus pertinacia, nam ea equidem interesset.\r\n\r\nAncillae eleifend definitionem eu pri, detraxit iracundia referrentur cu his, an sea expetenda vituperata. Mel etiam viderer efficiantur ex. In odio disputationi deterruisset vim, sea no quot ferri debitis, ius animal accusata conceptam ex. Movet corrumpit mea ei, ius posse idque audiam ea. Cu alii prima putent cum.', 1, '2017-09-17 22:18:43', '2017-09-17 22:18:43', ' лаборатория касперского , сша ', NULL);
INSERT INTO `articles` (`id`, `title`, `description`, `author`, `text`, `is_published`, `date_created`, `date_published`, `tags`, `category`) VALUES
(132, 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. ', 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.', 'Per id', 'Lorem ipsum dolor sit amet, ex facer error dicit qui, pri eu dicam everti. Tollit facete nostrud per in, duo dicat neglegentur cu. Nam voluptua lucilius nominati te, no tation definitionem sed. Veri nulla novum ei ius, numquam incorrupte intellegebat te mea, est diam iusto laoreet te.\r\n\r\nEu aliquip eripuit legendos mel, euismod consulatu eum te. Paulo dictas quaeque id his, te per purto inimicus. Mei an quot civibus, ne eum eius nonumy quidam. Meliore corrumpit vix cu, errem apeirian duo at, accusam omnesque sit et. Ei vim impedit incorrupte, mel ea perpetua elaboraret. Sed at fugit fuisset appetere, ad falli solet liberavisse eos, his dicunt utroque adipisci ne.\r\n\r\nNihil explicari dissentias has cu, ea homero aperiam minimum vim, id zril solet verterem vis. Veritus blandit qualisque no ius, sed audiam officiis ut. Eum tantas civibus probatus ut. Omnium consulatu et eum, omnes munere integre an pro. No mazim persequeris philosophia duo.\r\n\r\nUt sumo atqui euripidis his. No his purto similique efficiendi, feugait facilisi accommodare mel ex, ad his aliquid mediocrem liberavisse. Ex nam elitr everti comprehensam. Vel id maiestatis mediocritatem, te nam euismod vivendum.\r\n\r\nMei alii vulputate moderatius no. An aperiri singulis pri, aeterno equidem his ad, enim melius te ius. Duo ad mazim tollit dictas, ius ea enim brute liberavisse, odio graece qualisque per id. Ad choro epicurei vim, nam ne liber fabulas. An inani copiosae pri, his in dicat debet detracto. Equidem sanctus scriptorem te sed, graece appetere sit at, an gloriatur mediocritatem mea.\r\n\r\nPer id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.\r\n\r\nEirmod verear reprimique pri at, vim id utinam populo dissentiet. Feugiat interesset ad est, cu est assentior argumentum. Facilisis repudiare vituperata in duo, vix te zril regione legendos. Graeco dolorem omittam nam an, vix ne malorum iuvaret delicata. Ea eum habeo meliore, mel at quis dicta.\r\n\r\nPurto wisi adipiscing no qui, ex agam laudem mediocritatem vis. Vel no libris possit copiosae. Id quas augue quo, cu mel simul admodum. At mea aeque propriae inimicus, ipsum commune iudicabit sit an. His ut summo fastidii, ut sea imperdiet intellegebat. Eu duo idque invidunt interesset.', 1, '2017-09-17 22:20:34', '2017-09-17 22:20:34', 'искусственный интеллект , ernst and young , робот , работа , профессия , карьера ', NULL),
(133, 'Modo nobis menandri ut pro, inani nullam labore eum an.', 'Modo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.', 'Modo nobis', 'Lorem ipsum dolor sit amet, ex nam veri aeterno mandamus, eu mel mundi tacimates. Mel ridens impetus ex. Solum facer scripserit et sea. Petentium moderatius his ut, sea et viris noluisse repudiare, ea qui quaestio similique abhorreant. Qui delenit intellegam te, et eos omnesque appareat mnesarchum, an quo illum bonorum definitionem. Adhuc dolores est ex, duo splendide philosophia in, fierent platonem theophrastus ea vix.\r\n\r\nEi lorem sapientem nec, no sit inani civibus, esse prima doming eam te. Quis civibus disputationi no per, usu labitur deleniti eloquentiam et. Vel in eros salutatus maiestatis. Sumo corpora scaevola eu has. Sale meliore ei eam, vidisse labitur scribentur ex est, platonem accommodare duo et.\r\n\r\nVim ad epicurei tacimates dissentiunt, an mel probo latine aliquando. Ad duo brute percipitur, intellegat abhorreant et sed, vix nonumes fuisset petentium in. Duo eu populo eloquentiam, utamur volutpat consequat in nam. Pri ut utroque laoreet expetenda. Percipit torquatos complectitur sed at, ne tritani quaeque accumsan mei. Pri no ignota delicata euripidis.\r\n\r\nAugue legimus salutatus vix at. Mea an dicta deserunt senserit, an eam porro accusamus signiferumque. In altera posidonium quo, ei qui esse appareat. Eu cum amet vocent cotidieque, mea cu labitur meliore mentitum. Vivendo honestatis eam cu, ut quod scriptorem vel.\r\n\r\nPri no epicurei adipisci expetendis, error nihil homero mel ad, electram percipitur ea sed. Porro dissentiunt instructior sit an. Usu ut rebum recteque conceptam. Eum et prima munere inimicus. Sit natum rebum dolores et, vix no eros rationibus interpretaris.\r\n\r\nModo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.\r\n\r\nEa eos feugiat veritus urbanitas, ne indoctum conclusionemque duo. An agam audiam convenire pro, hinc novum disputationi sed ei, ea prompta petentium conclusionemque quo. An suas omnesque definiebas vis, per ut duis animal. Est ne scaevola moderatius, odio voluptatibus no eam, in has dolore consequat. An quo explicari dissentiunt, his at enim albucius principes.\r\n\r\nMel molestie mnesarchum ad, in facilisi adipisci delicata duo. Ad molestie nominati molestiae nam, pro populo invenire philosophia ut. Mel errem scripta ocurreret te. Labitur fierent phaedrum cu ius, vis cu vide persecuti intellegat. Oratio dolorem imperdiet pri te, facer dicant detracto mel no.', 1, '2017-09-17 22:22:08', '2017-09-17 22:22:08', 'работа , карьера , отдых , психология ', NULL),
(134, 'Admodum postulant ut mel. ', 'Admodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.', 'Admodum ', 'Lorem ipsum dolor sit amet, mei eu mutat facete patrioque. Cum et viris populo pertinacia, nam maiorum suscipiantur mediocritatem te. Pri tation facete tacimates no, ut augue prodesset temporibus ius. Eu ius persius laoreet meliore, qui justo quodsi abhorreant ea, saepe conclusionemque ea vim. Ius offendit ullamcorper cu.\r\n\r\nNoster prompta efficiantur te nec, eam iudico virtute ne. Mei no wisi verear labores. His in harum habemus appareat, graeco intellegebat mel te. Vix error mucius verterem cu, munere nonumy nominati vim te. Ferri causae aperiam in nec, et nam soleat doming labores. Agam oblique quaestio cu vim, nemore forensibus scribentur per no, paulo pericula mediocrem ex eos.\r\n\r\nMea at aliquid temporibus, vel insolens suavitate appellantur ne, esse timeam aliquam has ea. An epicurei aliquando sea, no commune petentium concludaturque vim. Exerci iriure epicuri cu mei, qui invenire moderatius ex. Eam ex ullum populo partiendo, impetus ornatus ad sed, est an porro eruditi voluptatum.\r\n\r\nEa vix bonorum atomorum. Alii labores constituam per ad. Error honestatis usu eu, id tantas fabulas detraxit his, ei malorum eripuit pro. Cu audire vituperata his, ad pri oblique periculis. Porro sadipscing te est, te vel dicunt omnium, solet constituam liberavisse nam ad.\r\n\r\nAdmodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.\r\n\r\nCu propriae incorrupte eum. Ad duo inani argumentum percipitur, quo novum labitur partiendo te, sonet adolescens eu sea. Vel oblique similique et, mel ad ceteros vituperatoribus. Modo adipisci quo te, ea elitr copiosae vis, no nec alterum disputationi. No nostro lucilius mei, natum moderatius mei ne.\r\n\r\nLabores nonumes in vim, discere mediocrem persequeris usu no, et bonorum delicata erroribus qui. Quot semper consequuntur ius cu, perfecto ullamcorper ius te, cu eum mucius impetus vituperata. Ex vidit omnes conclusionemque pri, vix sumo senserit ut, usu ne numquam percipit. Quo ad postea saperet concludaturque, ceteros salutandi in eam.\r\n\r\nUt mea aperiri interesset, erat posse dissentiet pri et. Cu mea probatus abhorreant. At legere abhorreant pri. Nec id wisi libris vocent.', 1, '2017-09-17 22:23:38', '2017-09-17 22:23:38', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(135, 'Ut eos nullam iisque, per an commodo eruditi. ', 'Ut eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.', 'Ut eos nullam', 'Lorem ipsum dolor sit amet, vocent electram ut his, nam laudem habemus appareat no. Id erat aeterno repudiare est. At dolor detracto gloriatur nam. Mea adhuc solum rebum ex, vim idque utamur propriae te, his alterum appetere honestatis ut. Vis aeque semper impedit id, nec quaeque labores quaerendum cu.\r\n\r\nNe qui case scaevola, ad mea ancillae omnesque perfecto. Mea ea legendos disputationi. Blandit copiosae an usu, pri ei suas suscipiantur. Nam lobortis periculis inciderint ut, mea eu minimum oportere reprehendunt. His te omittam offendit tincidunt, an dictas adversarium sit. At nulla everti vim.\r\n\r\nAn ius vidisse quaestio, eam an graece deleniti facilisi. Adhuc numquam eos an, ut simul propriae disputationi quo. Alterum ponderum eu qui. Saperet conceptam te vim, rebum cetero disputationi mel ut. Duis recteque ad duo, vis at dicta minimum mnesarchum.\r\n\r\nSemper accusam neglegentur at eum, eu veniam veritus pri. Vide sententiae nec ut. Iusto quaestio prodesset per ad. Eum et etiam congue dissentiet.\r\n\r\nUt eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.\r\n\r\nAudire omnesque id cum, an mucius sadipscing adversarium vix. Duo aliquip meliore ea, posse tractatos consulatu ne his. Nam et quod vituperata, eum legimus definitionem ne. Vim in erant graece. Vix duis sadipscing ad, possim euripidis et his, adhuc dicat pertinax cu sea. Ei pri vitae putent, esse explicari eos no. Dolorem contentiones ei vis.\r\n\r\nDuo facete aliquid dolores ut, ei fugit deserunt qui. Ea vim virtute democritum honestatis, no cum dicunt malorum delectus. Pri ad commodo molestiae, sed te soluta persius. Meliore torquatos abhorreant nam an. Nam ex falli suscipit, aeque sententiae cum eu. Duo blandit adipisci et.\r\n\r\nEt eum lorem dignissim, per homero appellantur ut. Omnis accusata ei vis. Malorum volumus reformidans vix ut, pri no iuvaret hendrerit, vim ei hinc inani honestatis. An cum vide scripta consetetur. Iusto vitae ocurreret ut his, purto posse consequuntur id ius, has eu sale definiebas necessitatibus. Case augue usu eu, in vix invenire constituto, tincidunt mnesarchum percipitur sed cu.', 1, '2017-09-17 22:25:03', '2017-09-17 22:25:03', 'лаборатория касперского , сша \r\n', NULL),
(136, 'Brute posse in eos, nusquam expetendis accommodare quo ut.', 'Brute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.', 'Brute posse ', 'Lorem ipsum dolor sit amet, oportere maluisset deterruisset ei qui, eum eripuit saperet ad. Et etiam similique ius, no invenire facilisis per, velit sensibus nec ei. Eu adhuc eligendi convenire ius, eam at erant vulputate. No mei malis efficiantur, te pri putant diceret, at soluta alienum convenire pro. At pri minimum commune, ad mei quot debitis nusquam. Consul labores docendi te vel, sed in possim eligendi, pro partem dolores ut. Ne oratio impetus per, ut malis urbanitas nam.\r\n\r\nIus ea porro persecuti. Quo duis mollis et. Te definiebas scripserit pri, vel eu mollis propriae, clita veniam omnium ad mel. Sea an quis alia viris. Id dicunt invenire has, in facilisi oportere duo, alia dicunt consetetur quo ex. Illud libris causae ad eos, ut sit alii sensibus erroribus.\r\n\r\nAd senserit signiferumque ius, an alii legimus utroque his, mea alii perfecto et. Cum quod postea volutpat te. Posse molestiae conclusionemque ne eam. Te sit ponderum corrumpit signiferumque, te eam odio saperet evertitur, eum et partiendo consequat posidonium. In usu scaevola ocurreret efficiantur, vitae maiestatis sed eu.\r\n\r\nAn per alia sadipscing, mea iudico legimus ut. Mei te tota omnium philosophia, in est postea mentitum. His utinam meliore tincidunt te, ex eruditi feugait eleifend sed, inani denique in qui. Dicam bonorum ad eos. Eu his graeci aperiam, has sapientem disputando ea, duo ad primis ornatus. Utinam sanctus te usu, pri cu vivendo constituam.\r\n\r\nDuo viderer alterum cu. Assentior sadipscing ex mel, mel facilis detraxit no. Te ferri mandamus adipiscing sit. Facilis eloquentiam eos et. Ut mei eloquentiam repudiandae, an vis quas nusquam molestie.\r\n\r\nBrute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.\r\n\r\nEst eu affert conceptam, meis nulla te ius. Nibh soluta assueverit eos ut, electram iudicabit cum ut, an intellegam dissentias vis. Vis ex movet dictas blandit. Sed ne molestie quaerendum, sanctus detracto invidunt ei mel. Eros sale mei ex, eu sea volumus consulatu euripidis, ius ludus noster ceteros at. Ius integre vituperata no, an vim maluisset intellegebat.\r\n\r\nDuo tamquam nominavi partiendo at, sit eu ferri postulant maiestatis, nam an summo legendos. Cu error deseruisse neglegentur vix, in elitr verear scriptorem his. In putant persecuti sed. Usu ut tota altera invidunt. Nam tota detraxit recusabo ea, vitae fabellas urbanitas est ex. At viris nihil est. At mea tota detraxit senserit.', 1, '2017-09-17 22:14:52', '2017-09-17 22:14:52', 'работа , карьера , отдых , психология ', NULL),
(137, 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. ', 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.', 'Sea an exerci', 'Lorem ipsum dolor sit amet, affert suavitate ullamcorper et duo. Virtute iuvaret appetere his cu. Errem lobortis abhorreant eam ut, an vim exerci virtute atomorum, regione lucilius at per. Has accumsan legendos at, in eum hinc accumsan. Mei te exerci putent, ad omnis mucius scripserit vis. Ad iusto gubergren repudiandae est. Mel doctus oporteat at.\r\n\r\nEt vel latine singulis voluptatibus. Mea dico partem ea. Vitae ridens semper vel eu. Vis ei meis albucius ullamcorper, sea ea ceteros prodesset, dicta tincidunt sit eu. Has eu erant epicuri perpetua, nihil commune ad est.\r\n\r\nAd cum tollit dolorem, ad pro eius accusam. Vim adhuc oportere et, laudem tractatos explicari et eam, in per iriure euismod pericula. Dolore explicari mea in. Id dicant debitis senserit has. Sit tota legimus intellegebat ad, homero abhorreant contentiones has cu. Ei has alia mutat, phaedrum dignissim quo et, per enim idque at.\r\n\r\nCausae persius usu ut, erroribus posidonium intellegebat eu mei. Cum et movet cotidieque. In alienum repudiare incorrupte vix, pri ut paulo nobis consetetur, his te virtute atomorum. Harum iisque aperiri his ei, pri debet consetetur ut. Pro eu melius definitionem, officiis detraxit moderatius mei te.\r\n\r\nLudus dolor suscipit te est, cum fugit scripserit ne. Nulla putant quo cu, ea cum menandri sententiae. Ex vel habemus definitionem, iusto expetendis duo at, est ei decore aperiam aliquid. Sed feugiat minimum eu, duo ut dicta expetenda. Quo an etiam admodum interesset.\r\n\r\nSea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.\r\n\r\nEam mazim graeci iriure in. Gloriatur deterruisset sed an, ex eum elitr scaevola. Sit ne denique epicuri atomorum, nam exerci inermis dolorem ad, vel deserunt convenire ei. Adhuc veritus iudicabit eam ei. Vim id reprimique disputando, mei omnes labores ancillae no, magna omnesque vis no. No nec persius tractatos, homero patrioque persecuti quo at.\r\n\r\nCibo accusamus his ad, brute posse his an. Dicat forensibus temporibus in has, et wisi populo vim. Euismod albucius deseruisse sed cu. Elitr alterum id vis, case etiam id mea.', 1, '2017-09-17 22:17:19', '2017-09-17 22:17:19', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(138, 'Vel tale justo ad. ', 'Vel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.', 'Vel tale', 'Lorem ipsum dolor sit amet, sea nihil nobis antiopam eu, ad vim omnium vocibus ceteros. Inermis albucius recteque in sed, utinam invidunt ne vix. Mei ut viderer ponderum erroribus, eum eu sumo veri ocurreret. Dicat antiopam sea an. Suas quot temporibus ex eos, augue partiendo qui et.\r\n\r\nIus ipsum atomorum mnesarchum an. Clita dolorum legendos no cum, diam integre accusam an cum, quando accumsan id vix. Qui nonumy evertitur te, numquam debitis mei no. Nam electram honestatis et, te eius facer quaeque eos. Iudico putant inimicus vis cu, eam id illud pertinacia, est zril indoctum ad. Qui ne euismod feugiat moderatius, sit utinam tacimates scripserit ex.\r\n\r\nPosse saepe per ea. At vel velit mentitum, quis omnium laoreet eu vis, id vim amet lucilius scribentur. Cu has aliquid vituperatoribus. Mea luptatum pericula ex, sed ei oblique patrioque definitiones, mei ad solum forensibus. Qui debet complectitur ea.\r\n\r\nLegere malorum ne duo, in sed vide appellantur. Te mea duis ullum novum. Eos in impetus philosophia interpretaris, offendit vivendum inciderint pro an, est laudem tempor labores ne. Quot omittam eu vix.\r\n\r\nIn assueverit definitiones pro, ex ipsum affert duo. Sed ceteros perpetua ut, ius honestatis quaerendum cu. Et assum falli exerci quo, ad usu mollis debitis deleniti, sed veri dolor intellegat eu. Mel cu quodsi eruditi suscipiantur, ut vel assum percipitur. Nam ei nostro neglegentur ullamcorper, est eu commodo evertitur prodesset. Nec tota autem audiam ea, pri insolens praesent vulputate ex, ne cum cibo animal explicari. In has perfecto accusata perpetua.\r\n\r\nVel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.\r\n\r\nAd sea adhuc possim, pri euismod nostrum adolescens cu. Ne cum quod persecuti liberavisse, ea nec purto forensibus intellegam, ne meis appetere has. Dicunt percipit mei ut, ex sit aeterno veritus copiosae, pro no tollit scaevola laboramus. Vidit menandri et vel, sed affert perpetua ad. Nec ei summo delectus pertinacia, nam ea equidem interesset.\r\n\r\nAncillae eleifend definitionem eu pri, detraxit iracundia referrentur cu his, an sea expetenda vituperata. Mel etiam viderer efficiantur ex. In odio disputationi deterruisset vim, sea no quot ferri debitis, ius animal accusata conceptam ex. Movet corrumpit mea ei, ius posse idque audiam ea. Cu alii prima putent cum.', 1, '2017-09-17 22:18:43', '2017-09-17 22:18:43', ' лаборатория касперского , сша ', NULL),
(139, 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. ', 'Per id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.', 'Per id', 'Lorem ipsum dolor sit amet, ex facer error dicit qui, pri eu dicam everti. Tollit facete nostrud per in, duo dicat neglegentur cu. Nam voluptua lucilius nominati te, no tation definitionem sed. Veri nulla novum ei ius, numquam incorrupte intellegebat te mea, est diam iusto laoreet te.\r\n\r\nEu aliquip eripuit legendos mel, euismod consulatu eum te. Paulo dictas quaeque id his, te per purto inimicus. Mei an quot civibus, ne eum eius nonumy quidam. Meliore corrumpit vix cu, errem apeirian duo at, accusam omnesque sit et. Ei vim impedit incorrupte, mel ea perpetua elaboraret. Sed at fugit fuisset appetere, ad falli solet liberavisse eos, his dicunt utroque adipisci ne.\r\n\r\nNihil explicari dissentias has cu, ea homero aperiam minimum vim, id zril solet verterem vis. Veritus blandit qualisque no ius, sed audiam officiis ut. Eum tantas civibus probatus ut. Omnium consulatu et eum, omnes munere integre an pro. No mazim persequeris philosophia duo.\r\n\r\nUt sumo atqui euripidis his. No his purto similique efficiendi, feugait facilisi accommodare mel ex, ad his aliquid mediocrem liberavisse. Ex nam elitr everti comprehensam. Vel id maiestatis mediocritatem, te nam euismod vivendum.\r\n\r\nMei alii vulputate moderatius no. An aperiri singulis pri, aeterno equidem his ad, enim melius te ius. Duo ad mazim tollit dictas, ius ea enim brute liberavisse, odio graece qualisque per id. Ad choro epicurei vim, nam ne liber fabulas. An inani copiosae pri, his in dicat debet detracto. Equidem sanctus scriptorem te sed, graece appetere sit at, an gloriatur mediocritatem mea.\r\n\r\nPer id inermis quaestio antiopam, sint detraxit sapientem mel at, nam debet liberavisse ad. Mei cu utinam option facilisi, et omittam menandri vim. Veniam consul soluta mel cu. Nam cu eripuit scaevola delicata, labitur facilisi efficiantur id sit.\r\n\r\nEirmod verear reprimique pri at, vim id utinam populo dissentiet. Feugiat interesset ad est, cu est assentior argumentum. Facilisis repudiare vituperata in duo, vix te zril regione legendos. Graeco dolorem omittam nam an, vix ne malorum iuvaret delicata. Ea eum habeo meliore, mel at quis dicta.\r\n\r\nPurto wisi adipiscing no qui, ex agam laudem mediocritatem vis. Vel no libris possit copiosae. Id quas augue quo, cu mel simul admodum. At mea aeque propriae inimicus, ipsum commune iudicabit sit an. His ut summo fastidii, ut sea imperdiet intellegebat. Eu duo idque invidunt interesset.', 1, '2017-09-17 22:20:34', '2017-09-17 22:20:34', 'искусственный интеллект , ernst and young , робот , работа , профессия , карьера ', NULL),
(140, 'Modo nobis menandri ut pro, inani nullam labore eum an.', 'Modo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.', 'Modo nobis', 'Lorem ipsum dolor sit amet, ex nam veri aeterno mandamus, eu mel mundi tacimates. Mel ridens impetus ex. Solum facer scripserit et sea. Petentium moderatius his ut, sea et viris noluisse repudiare, ea qui quaestio similique abhorreant. Qui delenit intellegam te, et eos omnesque appareat mnesarchum, an quo illum bonorum definitionem. Adhuc dolores est ex, duo splendide philosophia in, fierent platonem theophrastus ea vix.\r\n\r\nEi lorem sapientem nec, no sit inani civibus, esse prima doming eam te. Quis civibus disputationi no per, usu labitur deleniti eloquentiam et. Vel in eros salutatus maiestatis. Sumo corpora scaevola eu has. Sale meliore ei eam, vidisse labitur scribentur ex est, platonem accommodare duo et.\r\n\r\nVim ad epicurei tacimates dissentiunt, an mel probo latine aliquando. Ad duo brute percipitur, intellegat abhorreant et sed, vix nonumes fuisset petentium in. Duo eu populo eloquentiam, utamur volutpat consequat in nam. Pri ut utroque laoreet expetenda. Percipit torquatos complectitur sed at, ne tritani quaeque accumsan mei. Pri no ignota delicata euripidis.\r\n\r\nAugue legimus salutatus vix at. Mea an dicta deserunt senserit, an eam porro accusamus signiferumque. In altera posidonium quo, ei qui esse appareat. Eu cum amet vocent cotidieque, mea cu labitur meliore mentitum. Vivendo honestatis eam cu, ut quod scriptorem vel.\r\n\r\nPri no epicurei adipisci expetendis, error nihil homero mel ad, electram percipitur ea sed. Porro dissentiunt instructior sit an. Usu ut rebum recteque conceptam. Eum et prima munere inimicus. Sit natum rebum dolores et, vix no eros rationibus interpretaris.\r\n\r\nModo nobis menandri ut pro, inani nullam labore eum an, justo assueverit et est. Has in vero inani, labore melius eam an. Magna disputationi an mei, veniam audire per et, in mel doctus eripuit noluisse. Id perfecto scripserit inciderint sed, volutpat definiebas pri an. Mei everti graecis maluisset ne. Civibus ponderum hendrerit an qui.\r\n\r\nEa eos feugiat veritus urbanitas, ne indoctum conclusionemque duo. An agam audiam convenire pro, hinc novum disputationi sed ei, ea prompta petentium conclusionemque quo. An suas omnesque definiebas vis, per ut duis animal. Est ne scaevola moderatius, odio voluptatibus no eam, in has dolore consequat. An quo explicari dissentiunt, his at enim albucius principes.\r\n\r\nMel molestie mnesarchum ad, in facilisi adipisci delicata duo. Ad molestie nominati molestiae nam, pro populo invenire philosophia ut. Mel errem scripta ocurreret te. Labitur fierent phaedrum cu ius, vis cu vide persecuti intellegat. Oratio dolorem imperdiet pri te, facer dicant detracto mel no.', 1, '2017-09-17 22:22:08', '2017-09-17 22:22:08', 'работа , карьера , отдых , психология ', NULL),
(141, 'Admodum postulant ut mel. ', 'Admodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.', 'Admodum ', 'Lorem ipsum dolor sit amet, mei eu mutat facete patrioque. Cum et viris populo pertinacia, nam maiorum suscipiantur mediocritatem te. Pri tation facete tacimates no, ut augue prodesset temporibus ius. Eu ius persius laoreet meliore, qui justo quodsi abhorreant ea, saepe conclusionemque ea vim. Ius offendit ullamcorper cu.\r\n\r\nNoster prompta efficiantur te nec, eam iudico virtute ne. Mei no wisi verear labores. His in harum habemus appareat, graeco intellegebat mel te. Vix error mucius verterem cu, munere nonumy nominati vim te. Ferri causae aperiam in nec, et nam soleat doming labores. Agam oblique quaestio cu vim, nemore forensibus scribentur per no, paulo pericula mediocrem ex eos.\r\n\r\nMea at aliquid temporibus, vel insolens suavitate appellantur ne, esse timeam aliquam has ea. An epicurei aliquando sea, no commune petentium concludaturque vim. Exerci iriure epicuri cu mei, qui invenire moderatius ex. Eam ex ullum populo partiendo, impetus ornatus ad sed, est an porro eruditi voluptatum.\r\n\r\nEa vix bonorum atomorum. Alii labores constituam per ad. Error honestatis usu eu, id tantas fabulas detraxit his, ei malorum eripuit pro. Cu audire vituperata his, ad pri oblique periculis. Porro sadipscing te est, te vel dicunt omnium, solet constituam liberavisse nam ad.\r\n\r\nAdmodum postulant ut mel. Eum nulla harum ne, his ex eirmod voluptatibus, no eam copiosae splendide. Ei has argumentum instructior, cum no blandit consequuntur. In vim sanctus delicata reformidans, quidam eloquentiam deterruisset vis et. Iuvaret suavitate id est.\r\n\r\nCu propriae incorrupte eum. Ad duo inani argumentum percipitur, quo novum labitur partiendo te, sonet adolescens eu sea. Vel oblique similique et, mel ad ceteros vituperatoribus. Modo adipisci quo te, ea elitr copiosae vis, no nec alterum disputationi. No nostro lucilius mei, natum moderatius mei ne.\r\n\r\nLabores nonumes in vim, discere mediocrem persequeris usu no, et bonorum delicata erroribus qui. Quot semper consequuntur ius cu, perfecto ullamcorper ius te, cu eum mucius impetus vituperata. Ex vidit omnes conclusionemque pri, vix sumo senserit ut, usu ne numquam percipit. Quo ad postea saperet concludaturque, ceteros salutandi in eam.\r\n\r\nUt mea aperiri interesset, erat posse dissentiet pri et. Cu mea probatus abhorreant. At legere abhorreant pri. Nec id wisi libris vocent.', 1, '2017-09-17 22:23:38', '2017-09-17 22:23:38', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(142, 'Ut eos nullam iisque, per an commodo eruditi. ', 'Ut eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.', 'Ut eos nullam', 'Lorem ipsum dolor sit amet, vocent electram ut his, nam laudem habemus appareat no. Id erat aeterno repudiare est. At dolor detracto gloriatur nam. Mea adhuc solum rebum ex, vim idque utamur propriae te, his alterum appetere honestatis ut. Vis aeque semper impedit id, nec quaeque labores quaerendum cu.\r\n\r\nNe qui case scaevola, ad mea ancillae omnesque perfecto. Mea ea legendos disputationi. Blandit copiosae an usu, pri ei suas suscipiantur. Nam lobortis periculis inciderint ut, mea eu minimum oportere reprehendunt. His te omittam offendit tincidunt, an dictas adversarium sit. At nulla everti vim.\r\n\r\nAn ius vidisse quaestio, eam an graece deleniti facilisi. Adhuc numquam eos an, ut simul propriae disputationi quo. Alterum ponderum eu qui. Saperet conceptam te vim, rebum cetero disputationi mel ut. Duis recteque ad duo, vis at dicta minimum mnesarchum.\r\n\r\nSemper accusam neglegentur at eum, eu veniam veritus pri. Vide sententiae nec ut. Iusto quaestio prodesset per ad. Eum et etiam congue dissentiet.\r\n\r\nUt eos nullam iisque, per an commodo eruditi. Putant voluptatum sit ea, vidit doming iudicabit quo ei. Eius soluta eu qui. Te integre scriptorem definitionem pro, doming fuisset no eam. Et est meis instructior, vel no utamur scripserit scriptorem. Laboramus assueverit duo at.\r\n\r\nAudire omnesque id cum, an mucius sadipscing adversarium vix. Duo aliquip meliore ea, posse tractatos consulatu ne his. Nam et quod vituperata, eum legimus definitionem ne. Vim in erant graece. Vix duis sadipscing ad, possim euripidis et his, adhuc dicat pertinax cu sea. Ei pri vitae putent, esse explicari eos no. Dolorem contentiones ei vis.\r\n\r\nDuo facete aliquid dolores ut, ei fugit deserunt qui. Ea vim virtute democritum honestatis, no cum dicunt malorum delectus. Pri ad commodo molestiae, sed te soluta persius. Meliore torquatos abhorreant nam an. Nam ex falli suscipit, aeque sententiae cum eu. Duo blandit adipisci et.\r\n\r\nEt eum lorem dignissim, per homero appellantur ut. Omnis accusata ei vis. Malorum volumus reformidans vix ut, pri no iuvaret hendrerit, vim ei hinc inani honestatis. An cum vide scripta consetetur. Iusto vitae ocurreret ut his, purto posse consequuntur id ius, has eu sale definiebas necessitatibus. Case augue usu eu, in vix invenire constituto, tincidunt mnesarchum percipitur sed cu.', 1, '2017-09-17 22:25:03', '2017-09-17 22:25:03', 'лаборатория касперского , сша \r\n', NULL),
(143, 'Brute posse in eos, nusquam expetendis accommodare quo ut.', 'Brute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.', 'Brute posse ', 'Lorem ipsum dolor sit amet, oportere maluisset deterruisset ei qui, eum eripuit saperet ad. Et etiam similique ius, no invenire facilisis per, velit sensibus nec ei. Eu adhuc eligendi convenire ius, eam at erant vulputate. No mei malis efficiantur, te pri putant diceret, at soluta alienum convenire pro. At pri minimum commune, ad mei quot debitis nusquam. Consul labores docendi te vel, sed in possim eligendi, pro partem dolores ut. Ne oratio impetus per, ut malis urbanitas nam.\r\n\r\nIus ea porro persecuti. Quo duis mollis et. Te definiebas scripserit pri, vel eu mollis propriae, clita veniam omnium ad mel. Sea an quis alia viris. Id dicunt invenire has, in facilisi oportere duo, alia dicunt consetetur quo ex. Illud libris causae ad eos, ut sit alii sensibus erroribus.\r\n\r\nAd senserit signiferumque ius, an alii legimus utroque his, mea alii perfecto et. Cum quod postea volutpat te. Posse molestiae conclusionemque ne eam. Te sit ponderum corrumpit signiferumque, te eam odio saperet evertitur, eum et partiendo consequat posidonium. In usu scaevola ocurreret efficiantur, vitae maiestatis sed eu.\r\n\r\nAn per alia sadipscing, mea iudico legimus ut. Mei te tota omnium philosophia, in est postea mentitum. His utinam meliore tincidunt te, ex eruditi feugait eleifend sed, inani denique in qui. Dicam bonorum ad eos. Eu his graeci aperiam, has sapientem disputando ea, duo ad primis ornatus. Utinam sanctus te usu, pri cu vivendo constituam.\r\n\r\nDuo viderer alterum cu. Assentior sadipscing ex mel, mel facilis detraxit no. Te ferri mandamus adipiscing sit. Facilis eloquentiam eos et. Ut mei eloquentiam repudiandae, an vis quas nusquam molestie.\r\n\r\nBrute posse in eos, nusquam expetendis accommodare quo ut. Sed et erroribus gubergren, case dolor accumsan his te. Dicant lobortis torquatos cu quo. Sit minim dicit omittam cu, mei graeci principes ex.\r\n\r\nEst eu affert conceptam, meis nulla te ius. Nibh soluta assueverit eos ut, electram iudicabit cum ut, an intellegam dissentias vis. Vis ex movet dictas blandit. Sed ne molestie quaerendum, sanctus detracto invidunt ei mel. Eros sale mei ex, eu sea volumus consulatu euripidis, ius ludus noster ceteros at. Ius integre vituperata no, an vim maluisset intellegebat.\r\n\r\nDuo tamquam nominavi partiendo at, sit eu ferri postulant maiestatis, nam an summo legendos. Cu error deseruisse neglegentur vix, in elitr verear scriptorem his. In putant persecuti sed. Usu ut tota altera invidunt. Nam tota detraxit recusabo ea, vitae fabellas urbanitas est ex. At viris nihil est. At mea tota detraxit senserit.', 1, '2017-09-17 22:14:52', '2017-09-17 22:14:52', 'работа , карьера , отдых , психология ', NULL),
(144, 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. ', 'Sea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.', 'Sea an exerci', 'Lorem ipsum dolor sit amet, affert suavitate ullamcorper et duo. Virtute iuvaret appetere his cu. Errem lobortis abhorreant eam ut, an vim exerci virtute atomorum, regione lucilius at per. Has accumsan legendos at, in eum hinc accumsan. Mei te exerci putent, ad omnis mucius scripserit vis. Ad iusto gubergren repudiandae est. Mel doctus oporteat at.\r\n\r\nEt vel latine singulis voluptatibus. Mea dico partem ea. Vitae ridens semper vel eu. Vis ei meis albucius ullamcorper, sea ea ceteros prodesset, dicta tincidunt sit eu. Has eu erant epicuri perpetua, nihil commune ad est.\r\n\r\nAd cum tollit dolorem, ad pro eius accusam. Vim adhuc oportere et, laudem tractatos explicari et eam, in per iriure euismod pericula. Dolore explicari mea in. Id dicant debitis senserit has. Sit tota legimus intellegebat ad, homero abhorreant contentiones has cu. Ei has alia mutat, phaedrum dignissim quo et, per enim idque at.\r\n\r\nCausae persius usu ut, erroribus posidonium intellegebat eu mei. Cum et movet cotidieque. In alienum repudiare incorrupte vix, pri ut paulo nobis consetetur, his te virtute atomorum. Harum iisque aperiri his ei, pri debet consetetur ut. Pro eu melius definitionem, officiis detraxit moderatius mei te.\r\n\r\nLudus dolor suscipit te est, cum fugit scripserit ne. Nulla putant quo cu, ea cum menandri sententiae. Ex vel habemus definitionem, iusto expetendis duo at, est ei decore aperiam aliquid. Sed feugiat minimum eu, duo ut dicta expetenda. Quo an etiam admodum interesset.\r\n\r\nSea an exerci fabellas. Tollit saperet an ius, in inermis vulputate conceptam vim. Ea omnes doctus molestiae sed, ei pro zril explicari suscipiantur, cu eos liber doming audiam. Populo intellegebat ex pro, per ea omnium oportere aliquando, iusto commodo has an. Per ei esse quaeque discere.\r\n\r\nEam mazim graeci iriure in. Gloriatur deterruisset sed an, ex eum elitr scaevola. Sit ne denique epicuri atomorum, nam exerci inermis dolorem ad, vel deserunt convenire ei. Adhuc veritus iudicabit eam ei. Vim id reprimique disputando, mei omnes labores ancillae no, magna omnesque vis no. No nec persius tractatos, homero patrioque persecuti quo at.\r\n\r\nCibo accusamus his ad, brute posse his an. Dicat forensibus temporibus in has, et wisi populo vim. Euismod albucius deseruisse sed cu. Elitr alterum id vis, case etiam id mea.', 1, '2017-09-17 22:17:19', '2017-09-17 22:17:19', 'паспорт , мвд , полиция , миграционная служба ', NULL),
(145, 'Vel tale justo ad. ', 'Vel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.', 'Vel tale', 'Lorem ipsum dolor sit amet, sea nihil nobis antiopam eu, ad vim omnium vocibus ceteros. Inermis albucius recteque in sed, utinam invidunt ne vix. Mei ut viderer ponderum erroribus, eum eu sumo veri ocurreret. Dicat antiopam sea an. Suas quot temporibus ex eos, augue partiendo qui et.\r\n\r\nIus ipsum atomorum mnesarchum an. Clita dolorum legendos no cum, diam integre accusam an cum, quando accumsan id vix. Qui nonumy evertitur te, numquam debitis mei no. Nam electram honestatis et, te eius facer quaeque eos. Iudico putant inimicus vis cu, eam id illud pertinacia, est zril indoctum ad. Qui ne euismod feugiat moderatius, sit utinam tacimates scripserit ex.\r\n\r\nPosse saepe per ea. At vel velit mentitum, quis omnium laoreet eu vis, id vim amet lucilius scribentur. Cu has aliquid vituperatoribus. Mea luptatum pericula ex, sed ei oblique patrioque definitiones, mei ad solum forensibus. Qui debet complectitur ea.\r\n\r\nLegere malorum ne duo, in sed vide appellantur. Te mea duis ullum novum. Eos in impetus philosophia interpretaris, offendit vivendum inciderint pro an, est laudem tempor labores ne. Quot omittam eu vix.\r\n\r\nIn assueverit definitiones pro, ex ipsum affert duo. Sed ceteros perpetua ut, ius honestatis quaerendum cu. Et assum falli exerci quo, ad usu mollis debitis deleniti, sed veri dolor intellegat eu. Mel cu quodsi eruditi suscipiantur, ut vel assum percipitur. Nam ei nostro neglegentur ullamcorper, est eu commodo evertitur prodesset. Nec tota autem audiam ea, pri insolens praesent vulputate ex, ne cum cibo animal explicari. In has perfecto accusata perpetua.\r\n\r\nVel tale justo ad. An cum labitur expetendis, dolor ornatus noluisse pro eu. Cum lucilius sensibus ei, ad mutat tamquam deleniti sea. His tritani accommodare ut, ad eos case wisi intellegebat.\r\n\r\nAd sea adhuc possim, pri euismod nostrum adolescens cu. Ne cum quod persecuti liberavisse, ea nec purto forensibus intellegam, ne meis appetere has. Dicunt percipit mei ut, ex sit aeterno veritus copiosae, pro no tollit scaevola laboramus. Vidit menandri et vel, sed affert perpetua ad. Nec ei summo delectus pertinacia, nam ea equidem interesset.\r\n\r\nAncillae eleifend definitionem eu pri, detraxit iracundia referrentur cu his, an sea expetenda vituperata. Mel etiam viderer efficiantur ex. In odio disputationi deterruisset vim, sea no quot ferri debitis, ius animal accusata conceptam ex. Movet corrumpit mea ei, ius posse idque audiam ea. Cu alii prima putent cum.', 1, '2017-09-17 22:18:43', '2017-09-17 22:18:43', ' лаборатория касперского , сша ', NULL),
(146, 'aaaaa', '', '', '', 1, '2017-09-18 10:12:59', '2017-09-18 10:12:59', 'dhdghdg ghdgndgh', NULL),
(147, '11111111111', '111111111111111', '', '', 1, '2017-09-27 01:42:21', '2017-09-27 01:42:21', 'aaa, bbb', NULL),
(148, '5555555', '', '', '', 1, '2017-09-27 01:48:00', '2017-09-27 01:48:00', '', NULL),
(149, '777777777', '', '', '', 1, '2017-09-27 01:54:58', '2017-09-27 01:54:58', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` tinyint(3) UNSIGNED NOT NULL,
  `firm` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `code_discaunt` varchar(255) NOT NULL,
  `discaunt_percent` tinyint(3) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `category_name` varchar(255) NOT NULL,
  `displayed` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `displayed`) VALUES
(5, 0, 'Politics\r\n', 1),
(6, 0, 'Analytics', 1),
(7, 0, 'Economics', 1),
(8, 0, 'Culture', 1),
(9, 0, 'Society', 1),
(13, 0, 'Showbiz', 1),
(14, 0, 'Science', 1),
(57, 8, '221', 1),
(65, 8, '55', 1),
(66, 65, '551', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories_of_article`
--

CREATE TABLE `categories_of_article` (
  `id_article` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories_of_article`
--

INSERT INTO `categories_of_article` (`id_article`, `id_category`) VALUES
(93, 7),
(93, 11),
(93, 3),
(93, 3),
(93, 5),
(93, 12),
(92, 3),
(102, 13),
(102, 5),
(103, 8),
(103, 5),
(104, 13),
(105, 7),
(94, 11),
(0, 6),
(0, 14),
(0, 5),
(0, 7),
(0, 5),
(0, 13),
(0, 7),
(0, 8),
(0, 6),
(0, 14),
(0, 9),
(0, 14),
(0, 5),
(0, 8),
(0, 13),
(0, 5),
(0, 9),
(0, 13),
(0, 14),
(0, 8),
(0, 14),
(0, 9),
(0, 5),
(0, 7),
(0, 6),
(0, 7),
(0, 5),
(121, 8),
(121, 7),
(121, 14),
(0, 8),
(0, 5),
(0, 14),
(146, 14),
(146, 8),
(120, 13),
(127, 5),
(127, 6),
(127, 8),
(127, 13),
(134, 9),
(134, 7),
(134, 5),
(141, 6),
(141, 8),
(141, 7),
(115, 7),
(115, 6),
(115, 13),
(122, 5),
(122, 6),
(122, 13),
(129, 13),
(129, 5),
(129, 14),
(136, 6),
(136, 8),
(143, 13),
(143, 5),
(119, 8),
(119, 5),
(126, 6),
(126, 5),
(126, 14),
(133, 7),
(133, 6),
(133, 14),
(140, 6),
(140, 7),
(118, 8),
(118, 14),
(125, 8),
(125, 7),
(132, 6),
(132, 9),
(139, 8),
(139, 5),
(116, 6),
(116, 13),
(123, 6),
(123, 7),
(130, 8),
(130, 14),
(137, 5),
(137, 9),
(144, 6),
(144, 8),
(144, 7),
(144, 5),
(144, 14),
(144, 13),
(144, 9),
(128, 6),
(128, 5),
(135, 6),
(135, 8),
(142, 5),
(142, 14),
(117, 7),
(117, 5),
(117, 14),
(124, 7),
(131, 13),
(131, 14),
(138, 5),
(145, 14),
(145, 5),
(120, 8),
(146, 6),
(146, 57),
(0, 8),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 127),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(147, 0),
(147, 6),
(147, 8),
(147, 57),
(147, 65),
(147, 66),
(147, 7),
(147, 5),
(147, 14),
(147, 13),
(147, 9),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(148, 6),
(148, 8),
(148, 57),
(148, 65),
(148, 66),
(148, 7),
(148, 5),
(148, 14),
(148, 13),
(148, 9),
(0, 0),
(0, 0),
(149, 57),
(149, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(10) UNSIGNED NOT NULL,
  `id_parent_comment` int(10) UNSIGNED DEFAULT NULL,
  `nested_level` int(11) NOT NULL DEFAULT '0',
  `id_article` int(10) UNSIGNED DEFAULT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL,
  `text` text,
  `date` datetime DEFAULT NULL,
  `like_ok` text,
  `dislike` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id_comment`, `id_parent_comment`, `nested_level`, `id_article`, `id_user`, `text`, `date`, `like_ok`, `dislike`) VALUES
(2, 1, 0, 128, 1, 'sdfsdbs', NULL, '', NULL),
(3, 7, 0, 128, 2, 'sbfsbsfbs', NULL, '3', NULL),
(4, 4, 0, 128, 1, 'sfb', NULL, '', NULL),
(5, 6, 0, 128, 2, 'sfbsgfbs', NULL, '', NULL),
(7, 0, 0, 128, 1, 'sgbsg', NULL, '3,2', NULL),
(8, 1, 0, 128, 1, 'sdfsdbs', NULL, '', NULL),
(9, 7, 0, 128, 2, 'sbfsbsfbs', NULL, '3', NULL),
(10, 4, 0, 128, 1, 'sfb', NULL, '', NULL),
(11, 6, 0, 128, 2, 'sfbsgfbs', NULL, '', NULL),
(12, 0, 0, 128, 1, 'sgbsg', NULL, '3', NULL),
(15, 4, 0, 128, 1, NULL, NULL, '', NULL),
(17, 7, 0, 128, 2, NULL, NULL, '', NULL),
(20, 9, 0, 128, 1, 'dgfhdgfhd gfdgf dfgdghd', NULL, '3', NULL),
(21, 9, 0, 128, 2, 'gbe  egbegb', NULL, '2', NULL),
(22, 0, 0, 128, 2, '555', '2017-09-22 03:35:17', '2', NULL),
(23, 0, 0, 128, 2, 'gbsfgbsfg', '2017-09-22 03:37:34', '2,3', NULL),
(128, 23, 0, 128, 2, '0', '2017-09-22 22:21:32', '3,2', NULL),
(154, 17, 0, 128, 2, '999999', '2017-09-23 02:29:29', '3,2', NULL),
(155, 9, 0, 128, 2, '000000', '2017-09-23 02:32:06', '2,3', NULL),
(156, 21, 0, 128, 2, '2', '2017-09-23 03:57:50', '', NULL),
(157, 155, 0, 128, 2, '2', '2017-09-23 03:57:54', '', NULL),
(158, 17, 0, 128, 2, '1', '2017-09-23 03:58:01', '', NULL),
(159, 154, 0, 128, 2, '2', '2017-09-23 03:58:03', '', NULL),
(160, 128, 0, 128, 2, '12345', '2017-09-23 04:06:50', '', NULL),
(161, 22, 0, 128, 2, '54321', '2017-09-23 04:07:36', '2', NULL),
(162, 22, 0, 128, 2, '54321', '2017-09-23 04:07:46', '', NULL),
(163, 161, 0, 128, 2, '54321', '2017-09-23 04:07:53', '', NULL),
(164, 163, 0, 128, 2, '2', '2017-09-23 04:08:27', '2', NULL),
(165, 0, 0, 128, 2, 'gggggggggggggggggggggg', '2017-09-23 04:31:12', '', NULL),
(166, 21, 0, 128, 2, '2', '2017-09-23 04:32:23', '', NULL),
(167, 0, 0, 128, 2, 'uuuuuuuuu', '2017-09-23 04:33:41', '', NULL),
(168, 20, 0, 128, 2, 'nnnnnnnn', '2017-09-23 04:34:19', '', NULL),
(169, 157, 0, 128, 2, 'ssssssssss', '2017-09-23 23:58:43', '', NULL),
(170, 0, 0, 128, 2, 'wwwww', '2017-09-24 00:03:41', '', NULL),
(171, 161, 0, 128, 1, 'zdvz', '2017-09-26 14:02:41', '', NULL),
(172, 161, 0, 128, 1, 'vdv', '2017-09-26 14:02:54', '', NULL),
(173, 0, 0, 128, 1, '444444', '2017-09-26 14:04:16', '', NULL),
(174, 166, 0, 128, 1, 'hjkhj', '2017-09-26 20:54:38', '', NULL),
(175, 166, 0, 128, 1, 'klhui', '2017-09-26 20:54:53', '', NULL),
(176, 0, 0, 128, 1, '77777777722222222', '2017-09-26 23:19:15', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `images_of_article`
--

CREATE TABLE `images_of_article` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_article` int(10) UNSIGNED NOT NULL,
  `num` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images_of_article`
--

INSERT INTO `images_of_article` (`id`, `id_article`, `num`, `name`, `full_name`) VALUES
(7, 94, 5, 'Desert.jpg', '7_Desert.jpg'),
(8, 94, 6, 'Lighthouse.jpg', '8_Lighthouse.jpg'),
(9, 97, 1, 'Chrysanthemum.jpg', '9_Chrysanthemum.jpg'),
(10, 97, 2, 'Desert.jpg', '10_Desert.jpg'),
(11, 97, 3, 'Hydrangeas.jpg', '11_Hydrangeas.jpg'),
(12, 98, 1, 'Chrysanthemum.jpg', '12_Chrysanthemum.jpg'),
(13, 98, 2, 'Desert.jpg', '13_Desert.jpg'),
(14, 98, 3, 'Hydrangeas.jpg', '14_Hydrangeas.jpg'),
(15, 99, 1, 'Chrysanthemum.jpg', '15_Chrysanthemum.jpg'),
(16, 99, 2, 'Desert.jpg', '16_Desert.jpg'),
(17, 99, 3, 'Hydrangeas.jpg', '17_Hydrangeas.jpg'),
(18, 92, 1, 'texture3.png', '18_texture3.png'),
(19, 92, 3, 'texture3.png', '19_texture3.png'),
(20, 93, 1, 'dna-robot-cargo-1-218x150.jpg', '20_dna-robot-cargo-1-218x150.jpg'),
(21, 93, 2, 'hyperloop-one-winners-1-218x150.jpeg', '21_hyperloop-one-winners-1-218x150.jpeg'),
(22, 102, 1, 'mini-electric-concept-iaa-1-218x150.jpg', '22_mini-electric-concept-iaa-1-218x150.jpg'),
(23, 102, 2, 'moon-water-map-2-218x150.jpg', '23_moon-water-map-2-218x150.jpg'),
(24, 102, 3, 'tesla-model-3-first-ride-002-1020.0.0-218x150.jpg', '24_tesla-model-3-first-ride-002-1020.0.0-218x150.jpg'),
(25, 103, 1, 'ustanovlennye_vodoschetchiki-218x150.jpg', '25_ustanovlennye_vodoschetchiki-218x150.jpg'),
(26, 104, 1, 'hyperloop-one-winners-1-218x150.jpeg', '26_hyperloop-one-winners-1-218x150.jpeg'),
(27, 105, 1, 'z-wire-2-900x600-218x150.jpg', '27_z-wire-2-900x600-218x150.jpg'),
(28, 107, 1, 'laferrari-apera-final-edition-210-02-218x150.jpg', '28_laferrari-apera-final-edition-210-02-218x150.jpg'),
(29, 107, 2, 'moon-water-map-2-218x150.jpg', '29_moon-water-map-2-218x150.jpg'),
(30, 115, 1, 'laferrari-apera-final-edition-210-02-218x150.jpg', '30_laferrari-apera-final-edition-210-02-218x150.jpg'),
(31, 115, 2, 'udoben-chechol-knizhka-samsung-a5-1-218x150.jpg', '31_udoben-chechol-knizhka-samsung-a5-1-218x150.jpg'),
(32, 116, 1, 'lilium-jet-funding-1-218x150.jpg', '32_lilium-jet-funding-1-218x150.jpg'),
(33, 116, 2, 'ustanovlennye_vodoschetchiki-218x150.jpg', '33_ustanovlennye_vodoschetchiki-218x150.jpg'),
(34, 117, 1, 'jpg5-1024x768-218x150.jpg', '34_jpg5-1024x768-218x150.jpg'),
(35, 117, 2, 'laferrari-apera-final-edition-210-02-218x150.jpg', '35_laferrari-apera-final-edition-210-02-218x150.jpg'),
(36, 117, 3, 'lilium-jet-funding-1-218x150.jpg', '36_lilium-jet-funding-1-218x150.jpg'),
(37, 118, 1, 'dna-robot-cargo-1-218x150.jpg', '37_dna-robot-cargo-1-218x150.jpg'),
(38, 118, 2, 'lilium-jet-funding-1-218x150.jpg', '38_lilium-jet-funding-1-218x150.jpg'),
(39, 119, 1, 'india-hyperloop-2-218x150.jpg', '39_india-hyperloop-2-218x150.jpg'),
(40, 119, 2, 'iss-bact-1_1024-218x150.jpg', '40_iss-bact-1_1024-218x150.jpg'),
(41, 120, 1, 'jpg5-1024x768-218x150.jpg', '41_jpg5-1024x768-218x150.jpg'),
(42, 121, 1, 'moon-water-map-2-218x150.jpg', '42_moon-water-map-2-218x150.jpg'),
(43, 121, 2, 'ustanovlennye_vodoschetchiki-218x150.jpg', '43_ustanovlennye_vodoschetchiki-218x150.jpg'),
(44, 146, 1, 'laferrari-apera-final-edition-210-02-218x150.jpg', '44_laferrari-apera-final-edition-210-02-218x150.jpg'),
(45, 146, 2, 'lilium-jet-funding-1-218x150.jpg', '45_lilium-jet-funding-1-218x150.jpg'),
(46, 127, 1, 'iss-bact-1_1024-218x150.jpg', '46_iss-bact-1_1024-218x150.jpg'),
(47, 127, 2, 'udoben-chechol-knizhka-samsung-a5-1-218x150.jpg', '47_udoben-chechol-knizhka-samsung-a5-1-218x150.jpg'),
(48, 134, 1, 'mini-electric-concept-iaa-1-218x150.jpg', '48_mini-electric-concept-iaa-1-218x150.jpg'),
(49, 141, 1, 'india-hyperloop-2-218x150.jpg', '49_india-hyperloop-2-218x150.jpg'),
(50, 141, 2, 'laferrari-apera-final-edition-210-02-218x150.jpg', '50_laferrari-apera-final-edition-210-02-218x150.jpg'),
(51, 122, 1, 'lilium-jet-funding-1-218x150.jpg', '51_lilium-jet-funding-1-218x150.jpg'),
(52, 122, 2, 'moon-water-map-2-218x150.jpg', '52_moon-water-map-2-218x150.jpg'),
(53, 129, 1, 'moon-water-map-2-218x150.jpg', '53_moon-water-map-2-218x150.jpg'),
(54, 136, 1, 'lilium-jet-funding-1-218x150.jpg', '54_lilium-jet-funding-1-218x150.jpg'),
(55, 143, 1, 'laferrari-apera-final-edition-210-02-218x150.jpg', '55_laferrari-apera-final-edition-210-02-218x150.jpg'),
(56, 143, 2, 'moon-water-map-2-218x150.jpg', '56_moon-water-map-2-218x150.jpg'),
(57, 126, 1, 'dna-robot-cargo-1-218x150.jpg', '57_dna-robot-cargo-1-218x150.jpg'),
(58, 133, 1, 'lilium-jet-funding-1-218x150.jpg', '58_lilium-jet-funding-1-218x150.jpg'),
(59, 140, 1, 'jpg5-1024x768-218x150.jpg', '59_jpg5-1024x768-218x150.jpg'),
(60, 140, 2, 'mini-electric-concept-iaa-1-218x150.jpg', '60_mini-electric-concept-iaa-1-218x150.jpg'),
(61, 125, 1, 'tesla-model-3-first-ride-002-1020.0.0-218x150.jpg', '61_tesla-model-3-first-ride-002-1020.0.0-218x150.jpg'),
(62, 132, 1, 'laferrari-apera-final-edition-210-02-218x150.jpg', '62_laferrari-apera-final-edition-210-02-218x150.jpg'),
(63, 132, 2, 'moon-water-map-2-218x150.jpg', '63_moon-water-map-2-218x150.jpg'),
(64, 139, 1, 'lilium-jet-funding-1-218x150.jpg', '64_lilium-jet-funding-1-218x150.jpg'),
(65, 123, 1, 'mini-electric-concept-iaa-1-218x150.jpg', '65_mini-electric-concept-iaa-1-218x150.jpg'),
(66, 123, 2, 'timbilding-ot-my-mice-218x150.jpg', '66_timbilding-ot-my-mice-218x150.jpg'),
(67, 130, 1, 'jpg5-1024x768-218x150.jpg', '67_jpg5-1024x768-218x150.jpg'),
(68, 137, 1, 'mini-electric-concept-iaa-1-218x150.jpg', '68_mini-electric-concept-iaa-1-218x150.jpg'),
(69, 137, 2, 'tesla-model-3-first-ride-002-1020.0.0-218x150.jpg', '69_tesla-model-3-first-ride-002-1020.0.0-218x150.jpg'),
(70, 144, 1, 'jpg5-1024x768-218x150.jpg', '70_jpg5-1024x768-218x150.jpg'),
(71, 144, 2, 'mini-electric-concept-iaa-1-218x150.jpg', '71_mini-electric-concept-iaa-1-218x150.jpg'),
(72, 144, 3, 'ustanovlennye_vodoschetchiki-218x150.jpg', '72_ustanovlennye_vodoschetchiki-218x150.jpg'),
(73, 128, 1, 'moon-water-map-2-218x150.jpg', '73_moon-water-map-2-218x150.jpg'),
(74, 135, 1, 'moon-water-map-2-218x150.jpg', '74_moon-water-map-2-218x150.jpg'),
(75, 135, 2, 'timbilding-ot-my-mice-218x150.jpg', '75_timbilding-ot-my-mice-218x150.jpg'),
(76, 142, 1, 'iss-bact-1_1024-218x150.jpg', '76_iss-bact-1_1024-218x150.jpg'),
(77, 124, 1, 'tesla-model-3-first-ride-002-1020.0.0-218x150.jpg', '77_tesla-model-3-first-ride-002-1020.0.0-218x150.jpg'),
(78, 131, 1, 'lilium-jet-funding-1-218x150.jpg', '78_lilium-jet-funding-1-218x150.jpg'),
(79, 131, 2, 'tesla-model-3-first-ride-002-1020.0.0-218x150.jpg', '79_tesla-model-3-first-ride-002-1020.0.0-218x150.jpg'),
(80, 138, 1, 'timbilding-ot-my-mice-218x150.jpg', '80_timbilding-ot-my-mice-218x150.jpg'),
(81, 145, 1, 'mini-electric-concept-iaa-1-218x150.jpg', '81_mini-electric-concept-iaa-1-218x150.jpg'),
(82, 145, 2, 'z-wire-2-900x600-218x150.jpg', '82_z-wire-2-900x600-218x150.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `like_comment` int(10) UNSIGNED NOT NULL,
  `like_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`like_comment`, `like_user`) VALUES
(3, 1),
(7, 2),
(168, 2),
(156, 2),
(21, 2),
(20, 2),
(166, 2),
(169, 2),
(9, 2),
(155, 2),
(159, 2),
(154, 2),
(17, 2),
(157, 2),
(3, 2),
(168, 1),
(158, 1),
(161, 1),
(171, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `alias` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `is_published` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `alias`, `title`, `content`, `is_published`) VALUES
(1, 'about', 'About Us', 'Test content', 1),
(4, 'test', 'test', 'dtyjdtyjdyj', 1),
(5, 'guio', 'guio', 'guio', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id_article` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `top_menu`
--

CREATE TABLE `top_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `login` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'admin',
  `password` char(32) NOT NULL,
  `is_active` tinyint(1) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `role`, `password`, `is_active`) VALUES
(1, 'admin', 'admin@your-site.com', 'admin', '44ca5fa5c67e434b9e779c5febc46f06', 1),
(2, '11111', 'a@a.a', 'user', '1854830800a115a705b59715555c11b6', 1),
(3, '22222', 'd@d.d', 'user', '67d7cbe6559cc242c411fdd157d9b69d', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories_of_article`
--
ALTER TABLE `categories_of_article`
  ADD KEY `id_article` (`id_article`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Индексы таблицы `images_of_article`
--
ALTER TABLE `images_of_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `top_menu`
--
ALTER TABLE `top_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT для таблицы `images_of_article`
--
ALTER TABLE `images_of_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `top_menu`
--
ALTER TABLE `top_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
