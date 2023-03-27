/*Produce a table consisting of the names and 
addresses of the subscribers and their phone numbers.*/

/*select name, address from subscribers join
 ( select areacode, officecode, stationcode from lines
   where orig in (select portid from lines)
	and term in (select portid from lines)) on subscribers.portid = lines.portid;*/
select  name, address , lines.areacode || lines.officecode || lines.stationcode as "Phone Number" from lines join

	subscribers on subscribers.portid = lines.portid
	group by name;


/*
Expectations
name            address                  Phone Number
--------------  -----------------------  ------------
Alex Mogily     1129 14th Ave.           9058190035
Babe Ruth       1 Old Kennedy.           8192270040
Barry Bonds     23 Hood Rd.              7052210038
Bart Simpson    155 Moodie Dr.           6135680019
Bobby Hull      23 Wellington St.        6137120024
Bobby Orr       48 Prince Edward St.     6136570023
Brooke Shields  69 College Ave.          4163340047
Bryan MacCabe   23 MacLeod St.           6132200004
Chris Bosh      46 Queens Ave.           9056570042
Chris Pronger   48 16th Ave.             9053470033
Ed Belfour      46 Fisher St.            6136450022
Eric Lindros    48 Elgin St.             6131560003
Eric Staal      423 Riverside Drive.     6133330013
Frank Thomas    14 Hull Ave.             8192270037
Gary Roberts    23 John St.              9056570034
George Bell     46 Colon By Dr.          6133220012
Gordie Howe     1129 Preston Dr.         6137280025
Hank Aaron      55 Denison Ave.          8192230039
Homer Simpson   123 Prince of Wales Dr.  6135230018
Jack Morris     23 Prince of Wales Dr.   6132260008
Jason Allison   46 Elgin St.             6131360002
Joe Carter      18 Summerset East.       6132290010
Joe Johnson     21 Sussex Dr.            6135780020
Kevin Garnett   59 Mike Myers Dr.        4163310045
Kobe Bryan      23 Bayview St.           4162190044
Larry Bird      1223 Warden Ave.         6137980026
Larry Brown     99 Blue Jays Ave.        4163330046
Mario Lemieux   1129 Bank Dr.            6133890015
Mark Messier    14 Finch Ave.            4162190027
Martin Brodeur  14 Baseline Ave.         6134890017
Mats Sundin     45 Elgin St.             6131340001
Matt Stajan     50 LakeShore Ave.        4167560048
Michael Jordan  1223 Carling Ave.        6132220006
Patrick Roy     1223 Greenbank Ave.      6134570016
Paul Kariya     45 Midland.              4167560031
Peter Forsberg  1 Kennedy Dr.            4163340030
Rob Blake       12 19th Ave.             7052210032
Roberto Alomar  55 Moodie Dr.            6132270009
Roger Clemens   14 Hopewell Ave.         6132230007
Roy Halladay    23 Ogilvie Rd.           6133340014
Scott Gomez     1223 Montreal Ave.       8192230036
Sidney Crosby   55 Sheppard Ave.         4163330029
Steve Nash      1129 Otterson Dr.        6132210005
Steve Sampras   448 St Clare Ave.        9058190043
Ted Williams    45 Birchmount Ave.       9053470041
Tevor Kidd      30 McCowan Ave.          8192270050
Tie Domi        89 Spidina Rd.           7052210049
Vince Carter    45 Hunt Club St.         6136230021
Wade Redden     23 Steeles Ave.          4163310028
Wayne Grekzy    45 Merviale.             6133100011
*/