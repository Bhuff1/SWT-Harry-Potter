//
//  Question.swift
//  Practice HP app
//
//  Created by Ben's MacBook Pro on 3/7/17.
//  Copyright © 2017 Ben's MacBook Pro. All rights reserved.
//

import Foundation

class Question {
    
    var question : String? = nil
    var letterAnswer : String? = nil
    var optionA : String? = nil
    var optionB : String? = nil
    var optionC : String? = nil
    var optionD : String? = nil
    var sentenceAnswer : String? = nil
    
    
    init(_ question: String?, _ optionA: String?, _ optionB: String?, _ optionC: String?, _ optionD: String?, _ letterAnswer: String?, _ sentenceAnswer: String?){
        self.question = question
        self.letterAnswer = letterAnswer
        self.optionA = optionA
        self.optionB = optionB
        self.optionC = optionC
        self.optionD = optionD
        self.sentenceAnswer = sentenceAnswer
    }
    
    func getQuestion() -> String? {
        return question
    }
    
    func getAnswer() -> String? {
        return letterAnswer
    }
    func getOptionA() -> String? {
        return optionA
    }
    
    func getOptionB() -> String? {
        return optionB
    }
    
    func getOptionC() -> String? {
        return optionC
    }
    
    func getOptionD() -> String? {
        return optionD
    }
    
    func getSentenceAnswer() -> String? {
        return sentenceAnswer
    }
}

var questionDictionary = [
    
    "owl1" : [
        1:Question("What kind of candy did Professor Dumbledore offer Professor McGonagall on the garden wall?", "Taffy","Chocolate Frog","Peppermint Imp","Lemon Drop","D","Dumbledore offered McGonagall a Lemon Drop."),
        2:Question("What kind of pet does Hagrid get Harry for his birthday?","Owl","Toad","Rat","Cat","A","Hagrid got Harry an owl."),
        3:Question("What are the words that Professor Dumbledore says before the start of term feast?","nitwit, flubber, twang, fillibuster","nitwit, twit, boom, twerk","nitwit, blubber, oddity, tweak","nitwit, oddment, blubber, tweak","D","Dumbledore says, 'nitwit, oddment, blubber, tweak.'"),
        4:Question("What kind of dragon does Hagrid procure?","Welsh Green","Swedish Short-Snout","Norwegian Ridgeback","Hungarian Horntail","C","The dragon Hagrid procured was a Norwegian Ridgeback."),
        5:Question("Who does Professor McGonagall give detention to?","Harry, Ron, Hermione, and Malfoy","Harry, Hermione, Neville, and Malfoy","Harry, Ron, and Hermione","Harry, Neville, and Malfoy","B","Harry, Hermione, Neville, and Malfoy get detention from McGonagall."),
        6:Question("What spell does Hermione use on Neville when he tries to stop them from leaving Gryffindor tower?","Stupefy","Petrificus Totalus","Locomotor Mortis","Obscuro","B","Hermione used Petrificus Totalus on Neville."),
        7:Question("Where do Ron and Harry find Hermione after they find out about the troll on Halloween?","The Trophy Room","The girls bathroom","The dungeon","Third floor corridor","B","Harry and Ron find Hermione in the girls bathroom with the troll."),
        8:Question("What's the first obstacle Harry, Ron, and Hermione have to get past when trying to reach the Philosopher's Stone?","Devil's Snare","Chess Board","Fluffy","Charmed keys","C","Technically, the first obstacle Harry, Ron, and Hermione have to get past is Fluffy."),
        9:Question("What does Harry find in an empty classroom after visiting the Library's Restricted Section?","Peeves throwing chalk","The Room of Requirement","Fluffy","The Mirror of Erised","D","Harry finds the Mirror of Erised in an empty classroom, late at night."),
        10:Question("Who was attempting to steal the Philosopher's Stone?","Voldemort","Nicholas Flamel","Snape","Hagrid","A","At the end of the story, it is revealed that Voldemort was the one trying to steal the Philosopher's Stone."),
        11:Question("Who does Hagrid borrow the flying motorcycle from?","Sirius Black","Mad-eye Moody","Aberforth Dumbledore","Remus Lupin","A","Hagrid borrowed the flying motorcycle from Sirius Black."),
        12:Question("Who rescued Harry from the ruins of his parents' house in Godric's Hollow?","Sirius Black","Hagrid","Severus Snape","Dumbledore","B","Hagrid rescused Harry from the ruins of his parents' house in Godric's Hollow.")
    ],
    "newt1" : [
        1:Question("What are the names of Mrs. Figg's cats?","Mr. Tibbles, Snowball, Whiskers, and Cabbage","Mr. Snowy, Tiddles, Puffball, and Whinnie","Tibbles, Snowy, Mr. Paws, and Tufty","Snow Flake, Precious, Whiskers, and Fluffy","C","The names of Mrs. Figgs' cats are Tibbles, Snowy, Mr. Paws, and Tufty."),
        2:Question("Who wrote 'A Beginner's Guide to Transfiguration'?","Miranda Goshawk","Phyllida Spore","Arsenius Jigger","Emeric Switch","D","Emeric Switch wrote 'A Beginner's Guide to Transfiguration'."),
        3:Question("What two Chocolate Frog cards was Ron missing?","Ptolemy and Agrippa","Barnabus the Barmy and Agrippa","Nicholas Flamel and Agrippa","Quentin Trimble and Agrippa","A","Ron was missing Ptolemy and Agrippa."),
        4:Question("Where did Hagrid get Fluffy?","From a foreign traveler at the pub","From a bloke at the pub","A Greek chappie at the pub","A hooded person over a game of cards at the pub","C","Hagrid got Fluffy from a Greek chappie at the pub."),
        5:Question("What two kinds of Dragons are native to Great Britain?","Norwegian Ridgeback and Welsh Greens","Norwegian Risdgeback and Hebridean Blacks","Welsh Greens and Hebridean Blacks","Antipodean Opaleyes and Welsh Greens","C","According to Ron, Welsh Greens and Hebridean Blacks are native to Great Britain."),
        6:Question("How many staircases are there at Hogwarts?","142","147","83","104","A","There are 142 staircases at Hogwarts."),
        7:Question("What is Nicholas Flamel's wife's name?","Penelope","Perenelle","Priscilla","Phillipa","B","Nicholas Flamel's wife's name is Perenelle."),
        8:Question("What chess pieces do Harry, Hermione, and Ron step in as?","Pawn, Queen, and Bishop","Bishop, Castle, and Knight","Pawn, Bishop, and King","Knight, Pawn, and Castle","B","Harry, Hermione, and Ron were a Bishop, Castle, and Knight, respectively."),
        9:Question("How many potion bottles are on the table before the final room where the stone is hidden?","11","5","9","7","D","There were 7 bottles on the table before the final room where the stone was."),
        10:Question("What did Hagrid give to Harry at the end of the school year?","A Stoat Sandwich","A leatherbound photo album","A Chocolate Frog","A hug","B","Hagrid gave Harry a leatherbound photo album with pictures of his mum and dad in it."),
        11:Question("On what day of the week does the first book begin?","Thursday","Saturday","Sunday","Tuesday","D","The first book begins, as the book says, on a dull, gray Tuesday."),
        12:Question("Dumbledore has a scar above his left knee that looks like what?","The Hogwarts grounds","Downtown London","The London Underground","The British Isles","C","Dumbledore has a scar above his left knee of the London Underground."),
        13:Question("Who are the other members of Dudley's gang besides Piers?","Dennis, Malcom, and Gordon","Henry, Billy, and Alfie","Charlie, Oliver, and Thomas","George, William, and Dylan","A","The other members of Dudley's gang are Dennis, Malcom, and Gordon."),
        14:Question("Where does Aunt Marge send a postcard from?","Majorca","The Isle of Wight","Scottland","Isle of Arran","B","Aunt Marge sends a postcard from the Isle of Wight."),
        15:Question("What tune does Uncle Vernon hum as he boards up the house?","Three Blind Mice","Tip-toe Through the Tulips","Good Day Sunshine","Living in the Sunlight","B","Uncle Vernon hummed Tip Toe Through the Tulips."),
        16:Question("How many silver Sickles make a Galleon?","Twelve","Eleven","Twenty","Seventeen","D","Seventeen silver Sickles make a Galleon."),
        17:Question("How much was the apothecary charging per ounce of dragon liver on Harry's first visit to Diagon Alley?","fifteen sickles","nine sickles","sixteen sickles","one galleon","C","Dragon's liver was sixteen sickles per ounce on Harry's first visit to Diagon Alley; a witch outside was complaining."),
        18:Question("How much did Harry pay for his wand?","seven galleons","eight galleons","twelve galleons","sixteen galleons","A","Harry paid seven galleons for his wand."),
        19:Question("What year was Ollivander's established?","382 B.C.","412 B.C.","2 A.D.","608 A.D.","A","Ollivander's was established in 382 B.C."),
        20:Question("How long is Voldemort's Yew and Phoenix wand?","thirteen inches","thirteen and a half inches","twelve inches","fifteen and a quarter","B","Voldemort's wand is thirteen and a half inches long."),
        21:Question("Who finds Neville's toad?","Hermione","McGonagall","Hagrid","Snape","C","Hagrid found Neville's toad, Trevor, in the boat on the way to the castle."),
        22:Question("What house is Terry Boot sorted into?","Hufflepuff","Ravenclaw","Gryffindor","Slytherin","B","Terry Boot was sorted into Ravenclaw, and was the 3rd first year to be sorted."),
        23:Question("What do Asphodel and Wormwood make?","Antidote to most poisons","Pepperup Potion","Confusing Concoction","Draught of Living Death","D","According to Professor Snape Asphodel and Wormwood make the sleeping potion Draught of Living Death."),
        24:Question("What is the name of the Slytherin seeker that Harry plays against in Gryffindor's first Quidditch match?","Terrence Higgs","Marcus Flint","Adrian Pucey","Draco Malfoy","A","Terrence Higgs is the Slytherin team seeker in Harry's first year."),
        25:Question("How old are Nicholas Flamel and his wife respectively?","703 and 701","534 and 532","665 and 658","468 and 470","C","Nicholas Flamel is 665 and his wife is 658 years old."),
        26:Question("Where do Nicholas Flamel and his wife live?","Somerset","Sussex","Kent","Devon","D","Nicholas Flamel and his wife live in Devon."),
        27:Question("What year was dragon breeding outlawed?","1739","1709","1680","1534","B","Dragon breeding was outlawed at the Warlock Convention of 1709."),
        28:Question("What does a newly hatched dragon eat?","Single-Malt Whiskey","Flobberworms and Blood","Chicken blood and brandy","Firewhiskey and fish heads","C","According to Hagrid newly hatched dragons eat chicken blood and brandy."),
        29:Question("Who saved Harry from the hooded figure in the Forbidden Forest?","Fang","Firenze","Hagrid","Magorian","B","Firenze a centaur saved Harry from the hooded monster in the woods after Fang and Malfoy abandoned him."),
        30:Question("What color flames did Harry have to get past in the potions logic challenge?","Black","Purple","Green","Blue","A","The flames Harry had to get through to go forward to the last room were black."),
        
    ],
    
    "owl2" : [
        1:Question("Why did the Dursleys forget Harry’s Birthday?", "Harry was already at the Burrow","They had an important business dinner","Dudley was jealous and wanted Harry ignored","Harry was being punished for doing magic","B","The Dursleys forgot Harry's birthday because they were more concerne about having the Mason's over for dinner."),
        2:Question("Who showed up in Harry’s room and revealed that they had stopped his letters from getting to him?","Dudley Dursley","Dobby","Severus Snape","Draco Malfoy","B","Dobby shows up in Harry's bedroom."),
        3:Question("Who was signing books at Flourish and Blotts, and announced he would be teaching Defense Against the Dark Arts at Hogwarts?","Miranda Goshawk","Remus Lupin","Gilderoy Lockhart","Alastor Moody","C","Gilderoy Lockhart was at Flourish and Blotts signing books."),
        4:Question("Who was petrified by the basilisk first?", "Mrs. Norris","Filch","Justin Flinch-Fletchley","Hermione Granger","A","Mrs. Norris was the first victim of the basilisk."),
        5:Question("Who do Harry and Ron become when they take the Polyjuice potion?", "Narcissa and Lucius Malfoy","Graham Montague and Blaise Zabini","Vincent Crabbe and Blaise Zabini","Vincent Crabbe and Gregory Goyle","D","Harry and Ron become Crabbe and Goyle."),
        6:Question("Who was the owner of the diary?", "The Half-Blood Prince","Tom Riddle","Morfin Gaunt","Marvolo Gaunt","B","Tom Riddle is the owner of the diary."),
        7:Question("Who do Harry and Ron end up meeting in the forest after following Hagrid’s directions to follow the spiders?","Fang","Magorian","Grawp","Aragog","D","Harry and Ron meet Aragog in the forest."),
        8:Question("Who helps Harry and Ron figure out where the entrance to the Chamber of Secrets is?", "Professor McGonagall","Hermione","Moaning Myrtle","Professor Lockhart","C","Moaning Myrtle helps Harry and Ron figure out where the entrance to the Chamber of Secrets is."),
        9:Question("What helps Harry defeat the basilisk in the Chamber of Secrets?", "Ron’s backfiring wand, the Sword of Gryffindor, and Ginny","Harry’s quick wit, the Sorting Hat, and a rock","Fawkes, Ron’s backfiring wand, and the Sorting Hat","Fawkes, the Sorting Hat, and the Sword of Gryffindor","D","Fawkes, the Sorting Hat, and the Sword of Gryffindor help Harry defeat the basilisk."),
        10:Question("How did Harry, Ginny, Ron, and Lockhart get out of the Chamber of Secrets?","Broomsticks","Fawkes carried them out","Rode on the back of the blind basilisk","the Sorting Hat turned into a portkey","B","Harry, Ginny, and Ron escape the Chamber of Secrets by holding on to Fawkes's tail and flying out.")
    ],
    
    "newt2" : [
        1:Question("What is the name of the very important dinner guests?", "Aunt Marge and Ripper","Mr. and Mrs. Polkiss","Petunia’s friend Yvonne and her husband","Mr. and Mrs. Mason","D","Mr. and Mrs. Mason were the couple the Dursleys' had over."),
        2:Question("What department does Arthur Weasley work in at the Ministry of Magic?","Magical Law Enforcement","Misuse of Muggle Artifacts","Office for the Detection and Confiscation of Conterfeit Defensive Spells and Protective Objects","Magical Maitenance","B","Arthur Weasley works for the Misuse of Muggle Artifcats Office."),
        3:Question("What is the name of the shop they meet the twins in on the trip to Diagon Alley?","Zonko’s Joke Shop","Flourish and Blotts","Gambol and Japes Joke Shop","Borgin and Burkes","C","They meet the twins at Gambol and Japes."),
        4:Question("What is Gilderoy Lockhart’s favorite color?","Lilac","Perriwinkle","Gold","Violet","A","Gilderoy Lockhart's favorite color is Lilac."),
        5:Question("Who did Harry overhear talking in the library about him being the heir of Slytherin?","Ernie McMillan and Hannah Abbott","Pavarti and Padma Patil","Lavender Brown and Pavarti Patil","Hannah Abbott and Anthony Goldstein","A","Harry overheard Ernie McMillan and Hannah Abbott talking about the possibility of Harry being the heir of Slytherin."),
        6:Question("What did the Dursleys give Harry for Christmas?","A tissue","50 Pence Piece","A Pair of old Socks","A toothpick","D","The Dursleys gave Harry a toothpick for Christmas."),
        7:Question("What day does Tom Riddle show Harry in his diary?","October 30th","November 24th","February 24th","June 13th","D","The diary showed Harry the date June 13th."),
        8:Question("What is the name of the girl who always made fun of Moaning Myrtle?","Merope Clearwater","Olive Hornby","Cynthia Day","Hestia Jones","B","Olive Hornby was the person who teased Moaning Myrtle."),
        9:Question("How does Harry not die from basilisk venom?","Tom Riddle dying gives him life back","He had a bezoar with him","The sorting hat healed wound","Fawkes’s tears healed his wound","D","Harry does not die from the basilisk venom because Fawkes used his phoenix tears to heal Harry's wound."),
        10:Question("What do Harry, Hermione, Ron, and the twins find out from Ginny on the train ride home?","Ginny has been secretly dating Michael Corner","Harry is going to stay with the Weasley’s all summer","Percy is secretly dating Penelope Clearwater","Lucius was sacked from School Governors","C","Harry, Hermione, Ron, and the twins find out that Percy has been dating Penelope Clearwater.")
    ],
    
    "owl3" : [
        1:Question("Where did the Weasley's go on holiday after Arthur won the Annual Daily Prophet Grand Prize Galleon Draw?", "Romania","France","Egypt","Majorca","C","The Weasley's went to Egypt with the prize winnings."),
        2:Question("Who did Harry overhear arguing in the Leaky Cauldron over telling Harry about Sirius Black?","Fudge and Aruthur","Ron and Hermione","Fudge and Molly","Molly and Arthur","D","Harry overheard Molly and Arhtur Weasley arguing about whether or not to tell Harry about Sirius Black."),
        3:Question("What did the twins give Harry to brighten his mood?","His own chess set","Some butterbeer","The Marauder's Map","Sweets from Honeydukes","C","The twins gave Harry the Marauder's Map."),
        4:Question("Why does Hagrid have a hearing with the Department for Disposal of Dangerous Creatures?","Because of the incident with the blast-ended skrewts and Seamus","Because of the incident with the flobberworms and Goyle","Because of the incident with Buckbeak and Malfoy","Because of the incident with the bowtruckles and Crabbe","C","Hagrid has to go before the Committee for the Disposal of Dangerous Creates because of Malfoy and Buckbeak."),
        5:Question("What does Lupin use to help train Harry fend off dementors?","A boggart","A dementor","A hag in a black cloak","Peeves the poltegeist","A","Lupin uses a boggart to help teach Harry how to repel Dementors."),
        6:Question("What happens after Harry sits his Divination exam?","He sees Crookshanks and a big black dog skirting the forest","Trelawney gives an actual prediction","Harry collapses from pain in his scar","Hermione bursts in to tell him Hagrid lost the appeal for Buckbeak","B","After his Divnation exam, Harry witnesses Trelawney gives an actual prediction."),
        7:Question("What does Hermione find in Hagrid's milk jug when they go to visit him before Buckbeak's execution? ","A tooth","Crookshanks","Scabbers","A spider","C","Hermione finds Scabbers in a milk jug in Hagrid's cabin."),
        8:Question("Who shows up in the Shrieking Shack after Hermione and Harry follow the black dog and Ron?","Professor Dumbledore","Professor McGonagall","Fudge","Professor Lupin","D","Professor Lupin shows up in the Shrieking Shack."),
        9:Question("How many turns does Professor Dumbledore say to give the Time Turner in order to save two lives?","Three","Two","Four","One","A","Professor Dumbledore tells Harry and Hermione to give the Time Turner three turns."),
        10:Question("How do Harry and Hermione help Sirius escape from the castle before he is given the dementor's kiss?","Harry gives Sirius his broomstick.","Hermione gives Sirius the time turner.","Harry gives Sirius his invisibility cloak and the marauder's map","They give him Buckbeak to fly away on","D","Harry and Hermione help Sirius escape the castle with Buckbeak."),
    ],
    
    "newt3" : [
        1:Question("What is the name of the witch who liked being caught and burned so much she was caught 47 times in disguise?","Aldora the Awkward","Wendelin the Weird","Gwendolyn the Ghastly","Starling the Strange","B","Wendelin the Weird was caught 47 times in various disguises."),
        2:Question("What does Professor Trelawney see in Harry's tea leaves?","The clover, the hawk, the bleeding heart, and the grim","The club, the hawk, the cleaver, and the grim","The sword, the falcon, the heart, and the grim","The falcon, the club, the skull, and the grim","D","Professor Trelawney sees the falcon, club, skull, and the grim in Harry's tea leaves."),
        3:Question("What charm did Hermione use to help Harry see in the quidditch match against Hufflepuff?","Impervius","Reparo","Reducto","Anapneo","A","Hermione used the charm 'Impervius' on Harry's glasses to make them repel water."),
        4:Question("What does Professor Flitwick have to drink at the Three Broomsticks?","Cherry syrup and soda","Red currant rum","Gillywater","Mulled Meade","A","Flitwick orders a Cherry syrup and soda."),
        5:Question("What are the names of the Slytherin quidditch team Beaters?","Parkinson and Warrington","Crabbe and Derrick","Crabbe and Goyle","Bole and Derrick","D","The names of the Slytherin team beaters are Bole and Derrick."),
        6:Question("What was Hermione's last exam this year?","Muggle Studies","Divination","Arithmancy","Ancient Runes","A","Hermione's last exam was Muggle Studies."),
        7:Question("Who blocked Harry when he was about to kill Sirius?","Ron","Lupin","Crookshanks","Hermione","C","Crookshanks blocked Harry from killing Sirius."),
        8:Question("What did Harry and Sirius talk about just before they got out of the tunnel and Wormtail escaped?","James and Lily and why Sirius blames himself for their death","Harry coming to live with Sirius","How much Harry looks like his dad","Why Harry spared Peter's life","B","They were talking about Harry coming to live with Sirius."),
        9:Question("What does Harry say to his patronus after he saves himself, Hermione, and Sirius from the dementors?","Thanks","Good job","Cheers","Hello, Prongs","D","Harry says to his patronus, 'Hello, Prongs'."),
        10:Question("What classroom and floor was Sirius locked in?","Professor Binn's History of Magic classroom, 4th floor","Professor Lupin's Defense Against the Dark Arts classroom, 3rd floor","Professor McGonagall's Transfiguration Classroom, 1st floor.","Professor Flitwick's Charms classroom, 7th floor.","D","Sirus was locked in Professor Flitwick's Charms classroom on the 7th floor."),
    ],
    
    "owl4" : [
        1:Question("How did Frank Bryce die?","Nagini bit him","Old age","He fell down the stairs","Lord Voldemort murdered him","D","Voldemort killed Frank Bryce."),
        2:Question("Who is playing in the Quidditch World Cup?","Ireland and Bulgaria","Scotland and Brazil","Uganda and Japan","England and Peru","A","Ireland and Bulgaria played in the Quidditch World Cup."),
        3:Question("Why did Molly have to call three muggle taxis to take them to Kings Cross Station?","Arthur had to go take care of Moody's exploding trash can incident.","Arthur got called into work early to deal with a regurgitating toilet.","Arthur and Percy got called into work on urgent business.","She didn't; Arthur arranged Ministry of Magic cars to take them again.","C","Molly had to call three muggle taxis because Arthur and Percy got called into work."),
        4:Question("What other schools are involved in the Triwizard Tournament?","Ilvermorny and Uagadou","Durmstrang and Beauxbatons","Mahoutokoro and Castelobruxo","Durmstrang and Uagadou","B","The other schools involved in the Triwizard Tournament were Durmstrang and Beauxbatons."),
        5:Question("When is the Yule Ball?","Halloween","Valentine's day","Christmas","Easter","C","The Yule Ball took place on Christmas."),
        6:Question("Where does the Second Task take place?","The lake","The Forbiden Forest","Dungeons","Quidditch Pitch","A","The Second Task takes place in the lake."),
        7:Question("Who did Harry see on trial in the memory he fell into through the Pensieve?","Evan Rosier, Travers, and the Lestranges","Karkaroff, Ludo Bagman, Barty Crouch Jr., and the Lestranges","Antonin Dolohov, Karkaroff, and Mulciber","Rookwood, Barty Crouch Jr., the Lestranges, and Bagman","B","Harry saw Karkaroff, Ludo Bagman, Barty Crouch Jr., and the Lestranges on trial in the Pensieve."),
        8:Question("Who is the first to fall in the final maze challenge?","Viktor Krum","Cedric Diggoy","Harry Potter","Fleur Delacour","D","Fleur is the first person to get knocked out in the maze."),
        9:Question("What happens when Harry and Cedric grab the Triwizard Cup?","They win the tournament together","They fight over who should have won","They are transported to a graveyard","They are transported to the front of the maze","C","Harry and Cedric were transported to a graveyard."),
        10:Question("Who was impersonating Alastor Mad-Eye Moody? ","Wormtail","Barty Crouch Jr.","Mulciber","Winky","B","Barty Crouch Jr., thought to be dead by almost everyone, had been impersonating Mad-Eye Moody by usng Polyjuice Potion."),
    ],
    
    "newt4" : [
        1:Question("What is the name of the pub in Little Hangleton where townspeople gathered to discuss the mysterious deaths of the Riddle family?","London Inn","The Hanged Man","Hangleton Inn","Little Hangleton Inn","B","The name of the local pub in Little Hangleton is called the Hanged Man."),
        2:Question("What sweet did Dudley pick up and eat after Fred \"accidentally\" dropped it?","Nosebleed Nougat","Puking Pastille","Ton-Tongue Tofee","Canary Cream","C","Dudley picked up a Ton-Tongue Toffee that Fred intentionally dropped."),
        3:Question("How many years had it been since Great Britain hosted the Quidditch World Cup?","30","60","100","10","A","Great Britain had not hosted the Quidditch World Cup in 30 years."),
        4:Question("What color is the Beauxbatons carriage?","Pale Lapis","Robin's Egg Blue","Baby Blue","Powder-Blue","D","The Beauxbatons carriage was Powder-blue."),
        5:Question("What is the name of the other Durmstrang boy who wants mulled wine, but is refused by Karkaroff?","Poliakoff","Levski","Polonova","Ivanokoff","A","Poliakoff requested some wine."),
        6:Question("What is the date of the Second Task?","February 5th","February 17th","March 12th","February 24th","D","The date of the Second Task was February 24th."),
        7:Question("Who were the two students Snape caught snogging in the rose garden?","Davies and Delacour","Granger and Krum","Fawcett and Stebbins","Brown and Weasley","C","Snape caught Fawcett and Stebbins canoodling in the rose garden."),
        8:Question("What prize did Ron win for having the niffler that found the most gold in Care of Magical Creatures?","A box of Bertie Bott's Every Flavor Beans","The gold his niffler found","Some Chocolate Frogs","A slab of Honeyduke's chocolate","D","Ron won a slab of Honeyduke's chocolate."),
        9:Question("What does Rita Skeeter write about Harry in the Daily Prophet on the day of the last tournament?","POTTER POISED TO WIN","DISTRUBED AND DANGEROUS","STARVED FOR ATTENTION","DESTROYED BY LOVE","B","The headline from Rita Skeeter read 'DISTURBED AND DANGEROUS'."),
        10:Question("What came out of the end of Voldemort's wand when his and Harry's wands connected, and in what order?","A silver hand, Cedric, Frank Bryce, Bertha Jorkins, Lily and then James Potter","Barty Crouch, Cedric, Frank Bryce, Lily and then James Potter","A silver hand, Barty Crouch, Frank Bryce, Bertha Jorkins, Lily and then James Potter","Cedric, Barty Crouch, Frank Bryce, Bertha Jorkins, Lily and then James Potter","A","A silver hand, Cedric, Frank Bryce, Bertha Jorkins, Lily Potter, and James Potter came out of the end of Voldemort's wand in the form of smoke-like echoes."),
    ],
    
    "owl5" : [
        1:Question("What attacked Harry and Dudley over summer?","A warewolf","Mountain trolls","Dementors","Death Eaters","C","Harry and Dudley were attacked by two dementors in Little Whinging, but Harry saved them using a Patronus Charm."),
        2:Question("Who became prefects year 5 for Gryffindor?","Ron and Hermione","Ron and Pavarti","Harry and Lavender","Harry and Hermione","A","Professor Dumbledore selected Ron and Hermione to be the Gryffindor prefects."),
        3:Question("Where in Hogsmeade does Hermione tell everyone interested in learning Defense Against the Dark Arts to meet?","The Three Broomsticks","Hog's Head Inn","The Shrieking Shack","Honeyduke's","B", "Hermione thought it would make more sense to meet at the less visited Hog's Head Inn."),
        4:Question("Where does Dumbledore's Army have meetings?","The Room of Requirement","A Dungeon","Professor McGonagall's Transfiguration Classroom"," The Forbidden Forest","A","Dobby tells Harry about the Room of Requirement to use for the secret Defense classes."),
        5:Question("Who kissed Harry under the mistletoe in the room of requirement before Christmas break?","Ginny Weasley","Pavarti Patil","Cho Chang","Hermione Granger","C","Cho Chang kisses Harry underneath the Mistletoe."),
        6:Question("Which professor has been missing the majority of the year and why?","Trelawney because she was fired","Hagrid because he was put on probation","Burbage because she was captured by Death Eaters","Hagrid because he went to recruit Giants","D","Hagrid was not teaching his Care of Magical Creatures classes because Dumbledore had sent him and Olympe on a secret mission to recruit giants."),
        7:Question("What does Harry see in a dream, that he knows is true, just before Christmas break?","He sees Arthur Weasley attacked by nagini at the Ministry of Magic","He sees Sirius Black being tortured by Voldemort","He sees Broderick Bode strangled by Devil's Snare in St. Mungo's","He sees Cho being attacked by Professor Umbridge in the Room of Requirement","A","Harry dreams that he is a snake in the Ministry of Magic and sees himself attacking a sleeping Arthur Weasley."),
        8:Question("Who leaves Hogwarts after pranking Professor Umbridge with magic fireworks and portable swamps?","Lee Jordan and Fred Weasley","Fred and George Weasley","Peeves and the Weasley twins","Lee Jordan and the Weasley twins","B","Fred and George leave Hogwarts after successfully tortuting Umbridge for a few weeks."),
        9:Question("Why does Hagrid ask Hermione and Harry to leave the Qudditch match towards the end of the year?","To show them how to take care of Fang","To show them how to take care of thestrals","To introduce them to Magorian the centaur","To introduce them to Grawp","D","Hagrid convinces Harry and Hermione to leave during the match to introduce them to his half-brother Grawp."),
        10:Question("Who ends up dying in the Department of Mysteries?","Alastor Moody","Nymphadora Tonks","Neville Longbottom","Sirius Black","D","Tragically Harry loses his godfather Sirius Black after Bellatrix hits him with a spell and he falls through the veil in the Department of Mysteries.")
    ],
    
    "newt5" : [
        1:Question("What day is Harry's hearing on?","August 30th","July 30th","August 12th","July 20th","C","Harry's disciplinary hearing is on the 12th of August Question 2: Euan Abercrombie is the first student to be sorted in Harry's 5th year."),
        2:Question("Who is the first student to be sorted year 5?","Hannah Abbott","Andromeda Applebaum","Amelia Adams","Euan Abercrombie","D","Euan Abercrombie is the first student to be sorted year 5."),
        3:Question("Which of Cho's friends gets dragged to the first D.A. meeting?","Marietta Edgecombe","Henrietta Applebaum","Susan Bones","Marianne Edgewater","A","Marietta Edgecombe is Cho's friend who ends up snitching on Dumbledore's Army."),
        4:Question("What floor is the Room of Requirement located on?","9th Floor","7th Floor","3rd Floor","13th Floor","B","The room of requirement is located on the 7th Floor across from the tapestry of Barnabas the Barmy."),
        5:Question("What is the name of the second Gurg Hagrid and Olympe meet?","Karkus","Grawp","Golgomath","Krouk","C","Golgomath is the next Gurg after Karkus who they had begun to charm."),
        6:Question("What is the name of the Department store that St. Mungo's is hidden in?","Wold and Co.","Derwents and Co.","Llewelyn and Derwents","Purge and Dowes Ltd.","D","The name of the department store that St. Mungo’s is hidden in is Purge and Dowes Ltd."),
        7:Question("Who is the healer in training in Arthur's ward who agrees they should try muggle stitches on him?","Hippocrates Smethwyck","Augustus Pye","Janus Thickey","Anton Brott","B","Augustus Pye is the Healer in training in the Dai Llewelyn Ward."),
        8:Question("Who pinned Hermione against the wall when Professor Umbridge pulled Harry from her fireplace?","Millicent Bulstrode","Pansy Parkinson","Morag McDougal","Mandy brocklehurst","A","Millicent Bulstrode is the member of the Inquisitorial Squad that had Hermione pinned against the wall."),
        9:Question("What is the name of the Ministry of Magic employee who yells out that he saw Voldemort in the Ministry of Magic? ","Willoughsby","Willamson","Dawlish","Wilkens","B","Williamson shouted that he saw 'him' (Lord Voldemort) as he, Fudge, and other Aurors entered the Ministry of Magic."),
        10:Question("What beverage does Hagrid offer Harry when Harry goes to visit him at the end of the book? ","Firewhisky","Pumpkin Juice","Butterbeer","Dandelion Juice","D","Hagrid offered Harry some Dandelion Juice and tried to talk to him about Sirius's passing."),
    ],
    
    "owl6" : [
        1:Question("Where does the sixth book open?","On Harry in Privet Drive","On Voldemort and his Death Eaters at Malfoy Manor","On Fudge in the Ministry of Magic","The Prime Minister in his office","D","The story starts with the Prime Minister in his office trying to read a briefing waiting for a call."),
        2:Question("Who visits Snape at his home outside of Hogwarts?","Wormtail and Bellatrix Lestrange","Kreacher","Lucius and Narcissa Malfoy","Narcissa and Bellatrix","D","Narcissa is followed by Bellatrix to Snape's home to beg him for a favor."),
        3:Question("Who does Professor Dumbledore want to come out of retirement?","Bathilda Bagshot","Horace Slughorn","Armando Dippet","Herbert Beery","B","Dumbledore wishes for Horace Slughorn to come back and teach at Hogwarts."),
        4:Question("Why does Harry leave his train compartment where he was sitting with Neville and Luna?","Professor Slughorn invited him to lunch in his compartment.","To eavesdrop on Malfoy.","Neville accidentally dropped a dung bomb.","Romilda Vane invites him to sit with her and her friends.","A","Professor Slughorn invited him to lunch in compartment C along with some other students he's eyeing for his Slug Club."),
        5:Question("Who does Harry take to Professor Slughorn's Christmas Party?","Ginny Weasley","Romilda Vane","Luna Lovegood","Hermione Granger","C","Harry was forced to invite Luna because everyone else already had a date or was potentially dangerous (Romilda was going to try to use a love potion on him)."),
        6:Question("What happens in lessons with Professor Dumbledore?","Harry learns to defensive spells","Harry learns Occlumency","Harry and Professor Dumbledore study memories","Harry and Professor Dumbledore study Runes","C","Harry and Professor Dumbledore study memories in order to discover Voldemort's secret about Horcruxes."),
        7:Question("What is the surname of Tom Riddle's wizard family?","Prewett","Gaunt","Lestrange","Morfin","B","Gaunt was Voldemort's mother's family name."),
        8:Question("What extra lessons can sixth years who are 17, or going to be soon, sign up for? ","Apparition lessons","Auror training","Curse breaking","Dueling lessons","A","Apparition lessons are permitted to be taken by students who are 17 or will be in the coming months."),
        9:Question("Who does Gryffindor play against in the final Quidditch match that Harry misses due to Professor Snape’s detention?","Slytherin","Hufflepuff","They forfeit","Ravenclaw","D","Gryffindor won against Ravenclaw."),
        10:Question("Who kills Professor Dumbledore on top of the Astronomy tower?","Draco Malfoy","Severus Snape","Bellatrix Lestrange","Alecto Carrow","B","Severus Snape kills Dumbledore after Malfoy fails to."),
    ],
    
    "newt6" : [
        1:Question("What is the name of the bridge that prematurely and mysteriously collapsed?","London Bridge","Brockdale Bridge","Brookdale Bridge","Westminster Bridge","B","Brockdale Bridge was destroyed by Death Eaters, just having (what they think is) a bit of fun killing muggles."),
        2:Question("What is the name of the street and town where Snape has a home outside of Hogwarts?","Magnolia Crescent, Little Whinging","Dartford Crossing, London","Spinners End, Cokeworth","Kingston Drive, Ipswich","C","Severus Snape and Lily Potter are from Cokeworth, Snape lives on Spinners End in Cokeworth."),
        3:Question("What does Professor Dumbledore serve to drink in the Dursley's home when they do not offer him a beverage?","Madam Rosmerta's Finest Matured Mead","Butterbeer","Rosmerta’s Black Currant Rum","Mulled wine","A","Dumbledore pores some Madam Rosmerta's Finest Matured Mead for himself, Harry, and the Dursleys."),
        4:Question("What is the name of the shop assistant hired at Weasleys' Wizard Wheezes?","Charity","Aurora","Amortentia","Verity","D","The Weasley’s shop assistant’s name is Verity."),
        5:Question("What is the name of the child at the orphange that young Tom Riddle tormented by killing his pet rabbit?","Amy Benson","Dennis Bishop","Eric Whalley","Billy Stubbs","D","Billy Stubbs is the name of the boy whose rabbit mysteriously hung itself."),
        6:Question("What does Harry get from Kreacher for Christmas?","A bag of Doxie droppings","A garden gnome","A bottle of poison","A box of maggots","D","Kreacher sends Harry a box of maggots for Christmas."),
        7:Question("Who commentated for the Quidditch game that Ron missed because he was accidentally poisoned by Professor Slughorn?","Luna Lovegood","Zacharias Smith","Colin Creevey","Seamus Finnigan","A","Luna Lovegood commentated the game that Ron could not play in and listened to from the Hospital wing."),
        8:Question("Who taught Defense Against The Dark Arts when Tom Riddle was a student?","Bathseheda Babbling","Galatea Merrythought","Vindictus Viridian","Libatius Borage","B","Galatea Merrythought was the teacher that Professor Slughorn confirmed would be retiring in the memory provided to Professor Dumbledore."),
        9:Question("What is the name of the woman Tom Riddle went to visit when he worked for Borgin and Burke?","Hokey Huffling","Anancia Waffling","Hepzibah Smith","Beatrice Brown","C","The woman Tom Riddle visited frequently while working for Borgin and Burke was Hepzibah Smith a descendent of Helga Hufflepuff, whom he later killed for her treasures."),
        10:Question("Which Death Eaters egg Malfoy on to kill Professor Dumbledore at the top of the astronomy tower?","Bellatrix and Fenrir","Just Bellatrix Lestrange","The Carrow siblings, Fenrir, and Thorfinn Rowle","Alecto, Bellatrix, and Fenrir","C","Amycus and Alecto Carrow, Bellatrix Lestrange, and Fenrir Greyback all show up to watch Draco murder Professor Dumbledore, but he cannot do it."),
    ],
    
    "owl7" : [
        1:Question("Which Professor was captured and killed by Voldemort and the Death Eaters?","Sybil Trelawney","Charity Burbage","Severus Snape","Septima Vector","B","Charity Burbage was caught and killed for teaching Muggle Studies at Hogwarts."),
        2:Question("Who wrote The Life and Lies of Albus Dumbledore?","Bathilda Bagshot","Ivor Dillonsby","Elphias Doge","Rita Skeeter","D","Rita Skeeter wrote a biography about Dumbledore called The Life and Lies of Albus Dumbledore."),
        3:Question("Who was killed on the journey from the Dursley’s to the safe house?","Mundungus","Mad-eye Moody","Mad-Eye and Hedwig","Fred","C","Because they were attacked on going into the air both Mad-Eye Moody and Hedwig were killed."),
        4:Question("Who is headmaster of Hogwarts now?","Professor Snape","Professor McGonagall","Professor Umbridge","Professor Carrow","A","Professor Snape is now the headmaster at Hogwarts."),
        5:Question("Who has the real Slytherin locket horcrux when the trio can’t find it on Mundungus?","Kreacher","Voldemort","Umbridge","Runcorn","C","Ron, Hermione, and Harry find out from Mundungus that Umbridge took the locket from him, and has it now."),
        6:Question("Who was impersonating Bathilda Bagshot to trap Harry and Hermione in Godric’s Hollow?","Fenrir","Nagini","Voldemort","Bellatrix","B","Nagini was animating the dead body of Bathilda bagshot to trap Harry in Godric’s Hollow so Voldemort could come kill him."),
        7:Question("Once Ron returned to Harry and Hermione, who did the trio visit to ask about the triangle symbol?","Xenophilius Lovegood editor of the Quibbler","Phineas Nigellus former headmaster","Madam Pince the school Librarian","Bathsheda Babbling professor of Ancient Runes","A","Because Krum pointed out the symbol on Mr.Lovegood’s neck at Bill’s wedding, they decide to go ask him what it means."),
        8:Question("Where were Ron, Hermione, Harry, Luna, Griphook, Dean, and Ollivander held as prisoners?","The Ministry of Magic","Azkaban","Hogwarts","Malfoy Manor","D","Once caught by Snatchers and Death Eaters they find themselves trapped in a cellar at Malfoy Manor."),
        9:Question("How do Ron Hermione, and Harry escape from Gringotts?","Dobby","Dragon","Kreacher","Brooms","B","They use the dragon that was trapped down below the bank to help them escape."),
        10:Question("Who kills Nagini during the battle of Hogwarts?","Neville","Ron","Hermione","Harry","A","Neville kills Nagini with the sword of Gryffindor during the battle of Hogwarts."),
    ],
    
    "newt7" : [
        1:Question("Who does Snape meet outside of Malfoy Manor?","Greyback","Rookwood","Yaxley","Selwyn","C","Yaxley meets Snape outside of Malfoy Manor at the start of book seven."),
        2:Question("Albus Dumbledore succeeded in discovering the twelve uses of what?","Unicorn hair","Phoenix tears","Dragon heartstring","Dragon blood","D","Albus Dumbledore was awarded for discovering the twelve uses of Dragon’s blood."),
        3:Question("Voldemort took who to the cave by the sea as an adult?","Regulus Black","Kreacher","Bellatrix Lestrange","Wormtail","B","Kreacher was taken to the cave to drink the poison so that Voldemort could leave the locket there."),
        4:Question("Who is on trial when Ron, Harry, and Hermione sneak into the Ministry of Magic?","Ted Tonks","Louisa Anne Jorkins","Ellie Cattermole","Mary Elizabeth Cattermole","D","Reginald Cattermole’s wife Mary Elizabeth is on trial for being a muggle born witch under the new belief of the M.O.M. that all muggle-borns have stolen magic from real wizards and witches."),
        5:Question("What is the name of the other goblin with Griphook, Ted Tonks, and Dean Thomas?","Gornuk","Bogrod","Gnarlak","Ragnuk","A","The name of the other goblin with their friends Ted and Dean is Gornuk."),
        6:Question("What is the name of the prison that Grindelwald buildt?","Bilhorod","Nurmengard","Sergiyev","Uzhhorod","B","Grindelwald’s prison is called Nurmengard."),
        7:Question("What shape knocker does Xenophilius Lovegood have on his door?","Plimpy","Raddish","Snorckack","Eagle","D","The knocker on the front of Mr. Lovegood’s door is an eagle."),
        8:Question("What pseudo name does Fred or George - unknown as they are on the radio - demand to be called instead of ‘Rodent’?","Rapier","Royal","Romulus","Rudolphus","A","Whichever of the twins is on Pottwrwatch demands to be called 'Rapier' instead of 'Rodent'"),
        9:Question("What kind of Patronus does Ernie McMillan have?","Bear","Wolf","Boar","Ram","C","We find out that Ernie has a boar Patronus when Ernie and Seamus run to help Harry near the forst during the Battle of Hogwarts."),
        10:Question("Who do George and Lee Jordan take down in the Battle of Hogwarts?","Dolohov","Yaxley","Thicknesse","Rookwood","B","George and Lee Jordan took down Yaxley during the continued fight in the Great Hall."),
    ]
]
