---
title: "Godot & Blender - Levels aus dem Baukasten - Godot GridMaps"
source: "https://www.youtube.com/watch?v=wCZebRpIgAs"
author:
  - "[[plueschAMAZONE]]"
published: 2026-05-25
created: 2026-08-23
description: "Als Ergänzung zum letzten Video: heute die Levels aus dem Baukasten. Gemeinsam schauen wir uns an, wie wir in Blender Blöcke bauen, die wir dann in Godot als Levelbaukastenteile verwenden. Dazu schaue"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=wCZebRpIgAs)

Als Ergänzung zum letzten Video: heute die Levels aus dem Baukasten. Gemeinsam schauen wir uns an, wie wir in Blender Blöcke bauen, die wir dann in Godot als Levelbaukastenteile verwenden. Dazu schauen wir, was muss wie vorbereitet werden, wie wird es exportiert, importiert und entsprechend zur Nutzung zu konfigurieren.  
  
Viel Spaß damit!  
\- - -  
Kapitel:  
00:00 - Einführung  
00:20 - Vorbereitung und Export in Blender  
05:25 - Import, Einrichtung und Verwendung in Godot  
16:33 - Das Gebaute testen die Grenzen finden  
22:11 - Nachgedanken und Abmoderation  
\- - -  
Das Godot-Logo ist Eigentum des Godot-Projekts und wird verwendet unter dem CC-BY 4.0-Lizenzmodell.  
  
https://github.com/godotengine/godot/blob/master/LOGO\_LICENSE.txt  
  
https://godotengine.org/press/  
\- - -  
Blender - Links:  
Blender-Website: https://www.blender.org/  
Blender Development Fund: https://fund.blender.org/  
Blender Studio: https://studio.blender.org/welcome/  
\- - -  
Das Blender-Logo ist Eigentum der Blender-Foundation. Nähere Infos und die Lizenz unter: https://www.blender.org/about/logo/  
\- - -  
Wer möchte und es kann: helft der Szene bitte mit Spenden!  
Blender: https://fund.blender.org/?utm\_medium=www-nav  
Krita: https://krita.org/en/donations/  
\- - -  
Verwendete Software:  
Blender 5  
Godot 4.7 Beta2  
Krita 5.2  
PureRef 2.0  
OBS 30.2.3  
Sound Forge Pro 17  
DaVinci Resolve 20

## Transcript

### Einführung

**0:00** · Ja, und damit hallo und herzlich willkommen hier zu einem weiteren Video auf meinem Kanal. Wie angekündigt kümmern wir uns heute hier um das Gridmap. Ihr seht hier schon ein vorbereitetes Level, aber wie immer machen wir die ganze Geschichte hier einfach platt und machen das Ganze noch mal. So, den Anfang legen wir hier in Blender. Ich habe jetzt hier zehn Teile gebaut und diese zehn Teile gucken wir uns ganz kurz an. Auf was kommt's drauf an? Wo geht die Reise hin?

### Vorbereitung und Export in Blender

**0:31** · Ich habe mich dafür entschieden jetzt hier einen Rastermaß von ein Meter, also meine Teile einm 1 m zu machen und die ganze Geschichte 3 m in der Höhe. Wir erinnern uns, unser Ei ist 2 m hoch, also wir brauchen ja auch ein bisschen Platz, dass wir uns bewegen können. Dann habe ich hier ganz einfache Ecke, Wand und Boden mit Decke gebaut. Das ganze dann noch mal ein bisschen durchvariiert. Und hier haben wir einen Übergang in einen neuen Raum, aber mit einem kleinen Experiment.

**1:04** · Wir haben, nehmen mal alle, wie ihr seht, den Origin normalerweise im Objektmittelpunkt und auf der unteren Ebene, also auf Z0 bzw. dann in Goduo auf Y0, außer bei dem Teil hier vorne. Hier habe ich das ganze an die Seite gelegt, denn das ist ja hier das Tunnelstück.

**1:25** · erkennst vielleicht, dass wir hier dann anschließen.

**1:30** · Des weiteren ist es nicht ganz unerheblich, sich das Ganze hier sinnvoll zu benennen. Ihr müsst das nicht als Worte ausschreiben, aber es wäre vielleicht ganz gut, wenn ihr auf dem ersten Blick erkennen würdet anhand der Benennung, ah, okay, das ist ein Raumteil, das ist ein Verbindungsstück, das ist eine Decke, das ist ein Boden und und und da das Ganze dann in diesem, ich sag jetzt mal Explorer, in diesem Baukasten da teilweise nicht so besonders toll zu erkennen ist, gerade jetzt hier bei uns, wo wir auch noch gar keine Texturen verwendet haben. Ich sag mal, die Empfehlung geht dahin, das Ganze sauber zu dokumentieren.

**2:01** · Wenn ihr eure Teile jetzt hier erstellt habt, seid ihr im Blender soweit fertig. Wir bauen heute im Blender hier keine Collision Boxes. Das lösen wir heute anders. Das Problem wichtig ist, wenn ihr hier wählen mal alles aus.

**2:19** · Wenn ihr hier jetzt in Blender unterwegs seid, überprüft bitte die Ausrichtung eurer normalen. Ihr könnt im Edit Modus hier das entsprechende Overlay hier mesh Edit Mode angeben und dann könnt ihr gucken, hier habt ihr eure Vertex normalen Kanten normalen und wir wollen aber die Flächen normalen wissen und die sollten nach Möglichkeit alle in den Raum zeigen, denn wir erinnern uns, es ist so, dass wir

**2:46** · in einer Game Engine ja nur eine Richtung rändern und nicht beide Richtungen, wie wir es normalerweise im Blender haben. Wenn wir das Ganze uns angucken, dann würde das so aussehen.

**2:55** · Mach das Backface Cing an der Stelle nämlich jetzt hier mal aus bzw. an. Also sprich alles was wir jetzt von hinten sehen, sehen wir nicht und dementsprechend w natürlich doof wenn dann jetzt hier bei uns Faces verdreht werden. Mach das Backface Coling wieder aus. Wir holen uns hier eine zusätzliche Information über die Face Orientation rein. Also das ist der Idealfall. Das innere euer Räume ist blau und nicht umgedreht. Wie ihr das hinbekommt, ihr könnt das Objekt für Objekt machen. Ihr könnt aber auch alle Objekte auswählen in den Editmodus. übergreifend reingehen, alles auswählen, Shift und N.

**3:28** · In meinem Fall hat er natürlich jetzt Unfug getrieben. Er versucht natürlich jetzt eine Kiste von außen dazustellen und nicht eine Kiste von innen. Wir sind ja nicht Schuldinger Katze, nicht wahr?

**3:36** · Also versucht er uns jetzt sich hier die normalen nach außen zu legen. Das ist aber für uns kein Problem. Wir drücken hier unten ganz einfach auf den Inside Knopf bzw. setzen bei Inside den Haken und dann setzt er uns das wieder rein.

**3:49** · Teilweise wird er uns ja jetzt hier ein paar Probleme bereiten, wie hier mit den Bodenflächen. Das ist überhaupt nicht schlimm. Die wählen wir uns einzeln aus.

**3:56** · Shift und N wieder auf inside. Und hier das gleiche noch mal. Shift und N wieder auf Inside. Und damit haben wir das soweit repariert. Hier ist noch ein Feld, was nicht funktioniert. Hier Shift und N. Und wenn wir jetzt kontrollieren, sehen wir wieder alle normalen gucken nach drinne und alles, was wir von drinnen sehen, ist blau. Und genau das ist der Zustand, den wir erreichen wollten. So, machen nur schnell hier den normalen wieder aus. Und wenn wir das erreicht haben, dann exportieren wir die ganze Geschichte.

**4:28** · Ich wähle dazu jetzt nur meine zehn Felder hier aus. Gehe die Exportfunktion rein. Wir nehmen wieder das GLTF Format bzw. das GLB. Ich nehme meine vorgefertigte Einstellung, die beinhaltet, dass wir keine Animationsdaten und ähnliches rausschmeißen, auch nur raushauen, was tatsächlich selected ist. Also hier unsere zehn Teile. Wir sehen es hier drüben noch mal zur Kontrolle und ansonsten bei Transform haben wir den Haken gesetzt, dass er die Y-Achse nach oben ausrichtet.

**5:01** · Sprich also, dass Positiv Y und Positiv Z gegeneinander ausgetauscht werden. Und ansonsten ist der Rest hier Standard bzw. abgewählt. Wir haben keine Textur, keine Animation, kein Material.

**5:14** · sind wir auf der sicheren Seite. Ich überspeicher das jetzt hier einfach rotzfrech mein Grid Maps Tutorial und wenn das dann soweit ist, ihr das Ganze exportiert habt, dann können wir uns in Godo gleich wieder treffen. So, wir haben jetzt hier in Godo unsere Szene wiederhergestellt, die wir so zuletzt hatten, nur die Torbögen und wir holen uns jetzt hier fröhlich per Drag and Drop ganz einfach unsere Gridmap tutb rein. Ich steck die mir hier in den Ordner.

### Import, Einrichtung und Verwendung in Godot

**5:44** · Level meshs. Das hat geklappt. Jetzt haben wir das Ding hier drinnen und jetzt geht's darum, dass wir das entsprechend aufbreiten. Denn so wie wir das jetzt hier haben, können uns das ja mal reinziehen, können wir damit noch nicht arbeiten. Wir haben jetzt hier diesen kompletten Baukasten als ein Objekt und das funktioniert in dem Sinne nicht.

**6:04** · Wir können jetzt hier eine zusätzliche Szene aufmachen.

**6:08** · Wir können das Ganze hier aber auch direkt aus der ja aus diesem eingefügten Wirw hier bearbeiten. Ich mache das jetzt mal hier raus. Wir öffnen hier der Filmklappe. Die Szene Open anyway.

**6:22** · Bitte. Danke. Jetzt seht ihr, sind wir in der Szene drinne. Und hier sehen wir dann jetzt unsere einzelnen Objekte. Die können wir auch anfassen und verschieben. Machen wir aber nicht.

**6:34** · und können der ganzen Geschichte dann jetzt hier noch entsprechende Eigenschaften zuweisen. Die erste Eigenschaft, die für uns ganz immens wichtig ist, ihr seht wahrscheinlich schon, wir haben jetzt hier nur meshes, wir haben keine Kollisionsdaten, wir haben ja keine Collision Boxes gebaut, also müssen wir uns jetzt um die Kollisionsdaten kümmern. Normalerweise würde ich es ja wie immer machen. Wir rennen erstmal ins Verderben und gucken dann, wie wir das Verderben abwenden.

**6:59** · Heute sparen wir uns an der Stelle ein bisschen Zeit und machen das Ganze gleich richtig. Wenn ihr jetzt hier eure einzelnen Objekte auswählt, habt ihr hier drüben das Meshmenü. Wenn ihr auf dieses Meshmenü klickt, dann bekommt er hier Create Collision Shape, also die Möglichkeit, dass er jetzt dynamisch aus unserem Modell eine Collision Shape generiert.

**7:19** · Wenn wir da drauf klicken, geht so ein kleines Optionsfenster auf und dieses kleine Optionsfenster, das bietet uns jetzt hier einmal die Möglichkeit, den das Placement zu wählen, also einmal als Sibling oder als Static Bodychild. Wir vergleichen das auch gleich. Und dann als Collision Shape Type. Den Collision Shape Type, den lassen wir hier auf Trimesh, denn der Rest, das sind irgendwelche Prim Primitives, also hier unsere Kapsel, unser Ei, wie wir das schon kennen, Zylinder und sowas und das nützt uns gerade absolut gar nichts.

**7:46** · Wir nehmen das Trymh, denn das Trym das erstellt uns aus unserem vorhandenen Modell ein neues Mesh aus Dreiecken. Also genau das, was wir haben wollen. Wie gesagt, sibling und Static Body. Den Unterschied gucken wir uns jetzt gleich an. Wir machen Create mit Zibbling und stellen fest, er hat uns jetzt hier unseren Collision Shape, die haben wir hier. Die sieht gut aus. Die scheint zu funktionieren. Wir können auch sehen, wenn wir jetzt von hier gucken, gucken wir von außen. Also das Zeug ist durchsichtig.

**8:17** · Wenn wir von hier gucken, gucken wir von innen. Also, das Zeug ist so ganz leicht blau schattiert. Das passt soweit. Jetzt müssen wir dem aber begreiflich machen, dass das hier dazu gehört. Und das kriegen wir dadurch, indem man hier ein Parent Child Bewegung aufbau Begegnung Parent Child Beziehung aufbauen. Aber wir haben ja immer noch das Problem, dass er uns jetzt hier mit dem Ausrufezeichen anschimpft. Dem fehlt nämlich noch was. Und was fehlt? Ja, uns fehlt unser Static Body. Also den Static Body eingefügt, natürlich richtig reinsortiert.

**8:48** · Der Static Body kommt nach unserem Mesh und in den Static Body da wandert jetzt unsere Collision Shape rein und sehe, da funktioniert die ganze Geschichte. Bisschen umständlich, oder?

**9:01** · Wir gucken uns das nächste Objekt an und schauen uns jetzt die Static Body Geschichte an. Das ganze ausgewählt, wieder geklickt und sehe, da hat er uns die ganze Arbeit, die wir uns gerade machen mussten, abgenommen, indem man das alles gleich richtig zuordnet und alles gleich in die richtige Beziehung setzt. Und ich würde sagen, ich mache das jetzt hier mal durch. Wir sehen uns gleich wieder, wenn hier alles entsprechend zugeordnet wurde.

**9:32** · So, und damit sind wir durch. Wir gucken uns das jetzt hier an. Wir haben zehn Objekte mit jeweils einem Static Body und einer Collision Shape. Das passt soweit. An der Stel an der Stelle sind wir jetzt hier erstmal fertig. Jetzt geht's darum, dass wir das Ganze zur Bearbeitung weiter verpacken.

**9:47** · Wir haben jetzt das Problem, dass wir das jetzt hier nicht einfach so abspeichern können und dann freuen wir uns, sondern wir müssen das jetzt in entsprechendes Fat bringen und das machen wir wie folgt, indem wir dann ganz einfach hier auf unsere Szene klicken, unsere Szeneoption und auf Export as und dann mesh Library.

**10:12** · Mash Library. Hier pack das wieder bei mir in die Level meshes rein. Und jetzt gebe ich der ganzen Geschichte hier ein entsprechenden Namen und sag ganz einfach Level Baukasten. Wichtig ist jetzt, wir haben eine zusätzliche Dateiänderung dazu bekommen zu Tess und RES, nämlich die Meshlip. Und die Meshlip muss auch entsprechend dahinter stehen, ansonsten wird da ganz großer Mist draus. Der versteht's da nämlich nicht. So, jetzt haben wir das gespeichert und jetzt haben wir hier unten Level Baukasten Mashlp dieses gelbe Ding dazu bekommen.

**10:47** · Wir speichern unsere Szene ganz generell noch mal und jetzt schimpft er mit uns, weil er sagt: "Moment mal, was ist denn hier los? Das ist eine Szene und wir haben jetzt hier das GLB Format. Das geht nicht."

**10:59** · Ja, das geht auch nicht. Der kann das GLB Format lesen als Import. Er kann das Format auch exportieren, aber er kann das DB Format nicht nativ speichern als Szene. Also müssen wir jetzt hier noch mal hingehen und sagen, pass auf, show hier safe safe scene und dann sagen wir dem ganz einfach das ganze noch mal, was wir jetzt haben, nur safe als TSCN, also als 10 und damit sind wir fertig, können das zumachen und können den Wust hier glücklicherweise auch löschen. Da Gripmapz gelöscht.

**11:31** · Unsere Szene ist deswegen unberührt. Wir haben jetzt hier nach wie vor in der Szene alles richtig drin. Ihr habt mit Doppelklick gesehen und die der Baukasten ist auch da. Damit wir damit jetzt arbeiten können, machen wir ganz einfach ein neues Level auf.

**11:48** · Hier Note Zen 3D. Mit F2 benenne ich das um. Nenn das ganze Baukasten Level. Wenn ich das getan habe, speichere ich das einmal. Dann haben wir den Baukasten Level hier. In meinen Levels speichere ich das als Level TSCN.

**12:06** · Und jetzt hole ich mir hier einen Knoten, einen neuen rein. Und das ist der Gridmap Knoten. Mit diesem Gridmap Knoten sehen wir, wie sich hier unser Untergrund verändert. Der Untergrund, der hat jetzt hier so eine orangefarbenen Quadrate bekommen und das ist quasi die Repräsentation unseres Grids, also unseres Rasters, indem wir jetzt hier unseren Baukasten aufbauen können.

**12:31** · Mehr haben wir noch gar nicht gekriegt.

**12:32** · Damit wir jetzt hier unsere Bauteile reinbekommen, nehmen wir hier unser Level Baukasten Meshlip und schieben die hier oben in das Gridmap rein. Jetzt seht ihr, haben wir hier unten unsere Bauteile und jetzt können wir damit theoretisch auch anfangen zu basteln.

**12:46** · Wir sehen jetzt hier haben wir die Entsprechung mit diesem blauen Würfel, wo wir hier hin und her springen. Und wenn wir uns jetzt hier beispielsweise diese Ecke raussuchen und auf den Stift klicken, dann sehen wir, dann tauchen unsere Bauteile auch auf. Wir können jetzt hier wie mit einem Stift malen und werden ganz einfach eine blöde Sache feststellen, nämlich, dass unsere Bauteile hier nicht aneinander schnappen wollen. Und das liegt daran, dass wir das absolut falsche Grundraster haben.

**13:10** · Wir erinnern uns, ups, das war ein Schritt zu weit. So, wir erinnern uns, dass unsere Grundraster auf Meter sind.

**13:18** · Hier ist das Grundraster jetzt aber auf 2 m eingestellt. Also 1 m 1 m x mal 1 m.

**13:23** · Und wenn man jetzt hier malen, sehen wir jetzt schließt das ganze Zeug auch so weit ab. Sieht blöd aus. Machen wir weg.

**13:30** · Aber es funktioniert zumindest erst einmal.

**13:33** · Wir haben jetzt hier, warum der immer zwei Schritte zurückgeht, ich kann es nicht sagen. Es ist ätzend. So, wir haben jetzt hier unser Grundraster also eingestellt und sehen aber jetzt noch eine relativ ätzende Geschichte und das ist nämlich, dass unsere Räume hier schweben hier. Ich weiß nicht, ob das ein Bug jetzt ist. Wir haben hier die sieben ähm die 47 Beta 2 oder ob das tatsächlich eine Funktion ist, die ich nicht verstehe. Wir könnten das jetzt sinnvollerweise dadurch abschalten, indem wir hier Center Y abschalten.

**14:06** · Jetzt sollte es normalerweise auf dem Boden liegen. Das funktioniert offensichtlich auch und wir haben doch unseren Rasterfang. Ich habe es jetzt aber halt bei meinen Probeaufnahmen und bei meinen Versuchen hier schon festgestellt. Teilweise spinnt das Ganze ziemlich, dass er, wenn wir Center Y abschalten, dann auch Center X mit abschaltet oder Center Z mit abschaltet.

**14:28** · Da müsst ihr dann so lange an und ausmachen, bis das wieder geht und dann funktioniert das oder aber und das ist sowieso die bessere Art. Ihr speichert häufig, wenn ihr das macht, gerade wenn er jetzt hier solche Einstellungen übernimmt und ladet dann einfach den letzten Zustand, der funktioniert hat, noch mal mit rein.

**14:44** · Wenn das Ganze dann jetzt hier soweit steht, unsere Teil jetzt hier auf dem Boden aufsetzen und das Raster stimmt, dann können wir anfangen hier unser Level zu bauen. Dazu haben wir hier einmal diese Paintfunktion mit E, einen Radiergummi, der die Taste W hat, einen ganz normalen Curser für die Auswahl, eine Pipette, also der Color Picker, das in dem Fall dann, dass wir halt einfach ein vorhandenes Teil aussuchen können.

**15:09** · Wir haben Füllwerkzeug, wir haben ausschneiden, wir haben kopieren und wir haben ein Delete. Also das ist das kleine Pinselchen, das hat nichts damit zu tun, dass wir irgendwas anmalen und dann haben wir hier die entsprechende Rotation um die X, Y und Z-Achse mit den Kurztasten mit den Kurztasten A, S und D für die jeweiligen Achsen. Wir werden wahrscheinlich primär jetzt hier auf der Saste rumhämmern und das ganze um die Y-Achse rotieren, wenn wir jetzt hier unseren Raum bauen. Und ich würde sagen, damit fange ich mal an. Bauen wir jetzt hier einfach mal so ein Raum auf.

**15:40** · Und ihr seht, das ist wirklich ganz einfach im Baukasten gemacht.

**15:45** · nehme jetzt hier meine meine Ecken genommen. Jetzt nehme ich mir hier beispielsweise ein Wandstück. Cool.

**15:51** · Nehme ich mir hier so ein bisschen um Varianz reinzubringen. Bisschen Diversity, ne? Da nehmen wir jetzt hier noch mal das Wandstück mit diesen Säulenabsatz.

**16:00** · Und ihr seht's, wie das ganze funktioniert. Es ist eigentlich kein Teufelswerk. Also hier einfach durchgehen und so entsprechend die Räume bauen. Ich würde sagen, ich baue mal hier so ein Raum fertig und wir sehen uns dann gleich wieder. Ihr seht jetzt habe ich gerade um die falsche Achse rotiert und er und etwas doof dabei aus der Wäsche geguckt.

**16:22** · Also bis gleich.

### Das Gebaute testen die Grenzen finden

**16:34** · So, wir haben jetzt hier einen Raum gebaut. Desten auch gleich, ob der funktioniert. Ich will euch jetzt bloß auf einen Umstand hinweisen. Ich habe das ja im Blender schon ein bisschen anklingen lassen. Wir haben jetzt hier unsere Tunnelwand und wenn wir jetzt die Tunnelwand nehmen, das ganze entsprechend rotieren. Das sieht erstmal soweit ganz gut aus. Das Problem ist jetzt nur, wenn wir jetzt die gegenüberliegende Seite der Tunnelwand anbauen wollen, dann löscht er uns unsere erstgebaute Seite.

**16:58** · Und das ist ganz einfach darin begründet, dass hier in diesem Teilsystem immer nur ein Teil auf einem Stück liegen kann, also auf einer Fläche zugeordnet werden kann. Und wir haben, wenn wir hier unten hingucken, das Problem, dass wir hier zwar über die eine Hälfte und über die andere Hälfte drüber gehen, aber unser Origin, der liegt jetzt hier in dieser Hälfte und da stoßen sich die beiden und deswegen überschreibt er das.

**17:26** · Also, idealerweise wäre es so, dass wir unseren Tunnel dahingehend umbauen, dass er dann jetzt hier funktioniert wieder klasse dieses Löschen. Hallo.

**17:40** · Idealerweise wäre es jetzt halt so, dass wir unseren Tunnel eingehend umbauen, wenn wir denn jetzt hier auf solche Halbschritte, sag ich jetzt ganz einfach mal setzen würden, dass wir den Origin halt hier raus verlegen, so dass wir wissen, die stoßen zwar in der Mitte zueinander, aber links und rechts voneinander sind da die Origins gepackt.

**17:59** · Oder man macht's gleich so, dass man drauf verzichtet, denn diese Geschichte hier mit Wir verändern ganz einfach das Raster, das funktioniert nicht. Ich kann euch auch zeigen, warum das ist. Wenn wir jetzt das Raster hier auf 0,5 runtersetzen, das wird wahrscheinlich bei den einen oder anderen der intuitivste Schritt sein. Ja, dann setze ich ganz einfach mein Raster runter, ist das Problem, dass diese Rasteinstellung halt global ist. Und diese globale Einstellung, ihr seht's, der hat jetzt hier einfach unser Level zusammengeschrumpft.

**18:24** · Noch eindrucksvoller kann man das zeigen, was passiert, wenn man das hochsetzt. Nämlich, dass er dann hier ganz einfach unsere Teile nimmt und die dann hier entsprechend halt auf dieses Raster wieder verteilt. Dadurch haben wir diese Lücken. Also, wenn wir das Raster einmal eingestellt haben, wäre es unklug, da jetzt dran rumzufrischen. Wir haben hier gerade eine Grenze entdeckt, nämlich da, wo ein Teil ist, da kann kein anderes Teil hinkommen und macht ja auch Sinn. Ist ja in der Physik nicht anders. So ein Körper ist, kann kein zweiter sein. Das bloß mal so als Hinweis.

**18:52** · Das ist, sage ich mal, so die einzige Einschränkung, von der ich jetzt noch nicht weiß, wie ich jetzt um arbeit um umgehen könnte beim Arbeiten. Wie gesagt, den Origin woanders hinsetzen, ganz auf diese Halbschritte versetzen.

**19:09** · Problem ist halt nur gerade so ein x 1 m Raster, das wird dann halt relativ schnell, sehr stupide, sehr stumpf, sehr repetativ und deswegen war es halt schön, wenn man feinere Abstufungen hat, aber die müsste man dann wahrscheinlich halt über Level Details oder sowas einbauen. Ihr könnt ja hier abseits

**19:25** · dessen könnt ihr ja hier trotzdem Sachen einbauen, aber die funktionieren halt nicht mit dieser Gridmap oder was man probieren könnte, das ist jetzt nur gerade so ein spontaner Einfall. nagelt mich bitte nicht fest, dass man vielleicht auch ähm verschiedene Gridmaps miteinander kombiniert, also das Ganze eventuell über eine Kaskade mit unterschiedlichen Auflösungen aufbaut. Aber das würde jetzt zu weit ins Detail gehen. Die Folge ist jetzt schon recht lang. Wir schauen an der Stelle jetzt erstmal funktioniert das, was wir uns hier aufgebaut haben. Wir nehmen unseren Player, packen den jetzt hier in unsere Welt rein.

**19:54** · Ihr seht, so wie der Player da ist, springen wir aus dem Glit raus. Das Ganze hat unsere vertraute Ansicht, die wir kennen und wir gucken uns das jetzt an, damit wir das Ganze spielen können. Wir wissen ja, erstmal müssen wir das Ganze als Hauptszene auswählen, also Set main scene und dann wäre es ganz sinnvoll, wenn wir die ganze Geschichte auch noch mal kurz speichern. Wir drücken F5 und ja, was haben wir vergessen? Wir haben vergessen, das Licht anzuschalten. Also, wir fügen jetzt hier eine Sonne und wir fügen jetzt hier eine Atmosphäre ein.

**20:25** · Drücken wieder F5 und siehe, da können wir hier mit unserem Ei durch diesen Raum wetzen. Und hier, ihr seht, ich kann gegen die Wand donnern. Ich fall hier nicht aus dem Level raus. Ich kann gegen diese Säule dagegen schießen. Ich fall nicht aus dem Level raus. Ich kann mich auch hier, das müsst ihr mir jetzt glauben, dass das funktioniert, wenn ich mich jetzt hier zwischen diese Säulen quetsche. Also, die Abfrage ist tatsächlich auch so fein, dass ich da jetzt hier mich feststecken kann. Jetzt kann ich mich nicht links und rechts bewegen, solange ich nach vorne drücke.

**20:54** · Also, das passt soweit. Die die Abfrage, wie gesagt, die ist der Optik entsprechend.

**20:59** · Und das ist ja schon mal ein riesen Schritt nach vorn, wie ich finde. Ah, und hier fehlt jetzt halt unser Tunnel.

**21:06** · Also, wir können halt auch Selbstmord begehen. Wir können ja auch einfach rausfallen aus der Szene und das ist es dazu eigentlich auch schon. Ihr müsst jetzt, wenn ihr diesen Raster habt, dieses Raster habt natürlich nicht hier mit der Höhe immer nur einen Schritt gehen. Ihr könnt meine Teils, wir uns sind 3 m hoch. Ich habe das jetzt auf 3 m gestellt. Wenn ich jetzt in das in die nächste Ebene gehe, also Ebenen überlagern können wir bauen.

**21:32** · Das machen wir entweder mit Maustaste und Steuerung nach oben oder aber hier ganz einfach über die Feiltasten. Das sieht jetzt wahrscheinlich erstmal so ein bisschen so aus, als ob unser Raster höher und größer und kleiner wird, aber tatsächlich ist der Nullpunkt einfach nur nach oben gewandert. Wenn wir uns das von der Seite angucken, sehen wir das ganz gut. Und hier können wir dann jetzt ganz normal weiter oben drauf bauen. Das funktioniert.

**21:54** · Die Sache ist halt, wie ich es gerade schon gesagt habe, wir können jetzt aber nicht hier hingehen und sagen, okay, ich baue jetzt nicht hierhin, denn diese Raster Zuweisung, wo eins ist, kann kein zweites sein. Ich denke mal, das sollte damit jetzt klar sein.

**22:10** · Ihr könnt natürlich jetzt hier in feineren Schritten arbeiten und könnt da jetzt hier, was weiß ich, z.B. noch irgendwelche Blöcke reinbauen oder sowas, aber ja, persönlich muss ich sagen, das ist, wenn ihr jetzt irgendwelche Dungeons baut, wo ihr die immer gleichen Sachen Hunderte und tausende Male verwendet, also die immer gleichen Levelteile, dann ist das definitiv eine tolle Sache, diese Gridmaps.

### Nachgedanken und Abmoderation

**22:34** · Ich persönlich mag solche statischen Levels jetzt zumindest aber Ego Shooter schon lange nicht mehr sehen. Ich würde dann doch dazu raten, das dann lieber von Hand zu bauen und dann was weiß ich z.B. halt raumweise einzufügen und aneinander zu hängen und da dann so die Levels zu bauen. Wenn daran Interesse besteht, können wir uns das zusätzlich gerne noch mal angucken, wie man da dann halt mehrere Räume baut, die entsprechend in Blender vorbereitet und in Godo einfügt. Ob das bis zur nächsten Woche schon wird, weiß ich jetzt noch nicht.

**23:05** · Muss ein bisschen gucken, wie es in der nächsten Zeit mit der lieben Zeit klappt. Ansonsten bin ich offen für Vorschläge und Ideen, was wir uns demnächst angucken. Schreibt's in die Kommentare, wenn ihr was habt.

**23:18** · Wenn hier was wissen wollt. Mein erster Tipp wäre grundsätzlich ist zwar Englisch, guckt in die Dokumentation, die ist, was das hier alles betrifft wirklich sehr gut. Ihr bekommt auch hier die Möglichkeit beispielsweise diese Gridmap Starter Zip runterzuladen, zu entpacken und mit der mal so ein bisschen rumzuspielen. Wenn er jetzt sagt, ich habe da jetzt keinen Bock drauf, mir jetzt hier ein Blender irgendwie was zu bauen, da bekommt er so ein bisschen Gefühl dafür, wie halt dieses Mesh Library bzw. wie halt diese Gridmaps funktionieren. Ihr habt hier eine wirklich ganz einfache, ganz kurze Anleitung, wie ihr das Ganze erstellt.

**23:53** · Ihr seht, das sind die Schritte, die wir ja auch gerade abgegangen sind. mehr oder weniger Idioten sicher. Jetzt sind z.B. Navigation Mesh und Light Maps.

**24:02** · Damit müssen wir uns jetzt noch nicht befassen. Navigation Maps, da geht's dann später darum, dass z.B. halt die KI in der Lage ist durch das Level zu navigieren. Also, dass die weiß, da kann ich hin, da kann ich nicht hin. Wenn es dann darum geht, jetzt z.B. halt ein Weg Wegfinderalgorithmus nach Alpha oder Star Algorithmus da entsprechend abzufrühstücken und das Lightmapping, das gucken wir uns später auch noch mal an. Das soll jetzt hier auch noch nicht sein. Ja, und ich würde sagen, damit haben wir es geschafft, ein bisschen weniger als eine halbe Stunde.

**24:32** · Ich bedanke mich fürs Zusehen. Wenn es Spaß gemacht hat, wenn es geholfen hat, würde ich mich wie immer sehr über einen Daumen nach oben freuen. Wenn ihr irgendwas wissen wollt, wenn ihr irgendwelche Anregungen habt, wie immer gerne in die Kommentare. Ansonsten, wenn ihr in Zukunft nichts verpassen wollt, kennt ihr das Spiel. Wenn ihr noch nicht abonniert habt, seid so gut. Abonniert den Kanal, drückt das Glöckchen und wir sehen uns hoffentlich recht bald wieder.

**24:52** · Bis dahin, passt auf euch auf, bleibt gesund, macht's gut, tschüss.