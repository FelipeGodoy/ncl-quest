<ncl id="myNCLDocID">
	<head>
		<connectorBase id="connBaseId">
			<causalConnector id="onSelectionSetStop">
				<connectorParam name="var">
				</connectorParam>
				<simpleCondition role="onSelection">
				</simpleCondition>
				<compoundAction operator="seq">
					<simpleAction role="set" value="$var">
					</simpleAction>
					<simpleAction delay="0.5s" role="stop">
					</simpleAction>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onEndStop">
				<simpleCondition role="onEnd">
				</simpleCondition>
				<simpleAction role="stop">
				</simpleAction>
			</causalConnector>
		</connectorBase>
		<regionBase id="regionBase0">
			<region height="100.00%" id="screenReg" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="28.96%" id="questionRegion" left="2.34%" top="6.04%" width="95.67%" zIndex="2">
				</region>
				<region height="13.33%" id="region1" left="2.00%" top="35.62%" width="95.55%" zIndex="3">
				</region>
				<region height="13.33%" id="region2" left="2.00%" top="50.62%" width="95.55%" zIndex="3">
				</region>
				<region height="13.33%" id="region3" left="2.00%" top="65.83%" width="95.55%" zIndex="3">
				</region>
				<region height="13.33%" id="region4" left="2.00%" top="82.71%" width="95.55%" zIndex="3">
				</region>
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dVideo" region="screenReg">
			</descriptor>
			<descriptor id="dQuestion" region="questionRegion">
			</descriptor>
			<descriptor id="d1" region="region1">
			</descriptor>
			<descriptor id="d2" region="region2">
			</descriptor>
			<descriptor id="d3" region="region3">
			</descriptor>
			<descriptor id="d4" region="region4">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="myBodyID">
		<media descriptor="dVideo" id="video" src="media/video.mp4">
		</media>
		<port component="video" id="p0">
		</port>
		<media id="answer" src="answer.lua">
			<property name="message">
			</property>
		</media>
		<media descriptor="dQuestion" id="question0" src="questions\question0.txt" type="text/plain">
			<property name="fontUri" value="model\vera.ttf"></property>
			<property name="fontSize" value="26"></property>
			<property name="fontColor" value="red"></property>
		</media>
		<media descriptor="d1" id="answer0" src="answers\answer0.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="d2" id="answer1" src="answers\answer1.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="d3" id="answer2" src="answers\answer2.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="d4" id="answer3" src="answers\answer3.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="dQuestion" id="question1" src="questions\question1.txt" type="text/plain">
			<property name="fontUri" value="model\vera.ttf"></property>
			<property name="fontSize" value="26"></property>
			<property name="fontColor" value="red"></property>
		</media>
		<media descriptor="d1" id="answer4" src="answers\answer4.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="d2" id="answer5" src="answers\answer5.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="d3" id="answer6" src="answers\answer6.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="d4" id="answer7" src="answers\answer7.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="dQuestion" id="question2" src="questions\question2.txt" type="text/plain">
			<property name="fontUri" value="model\vera.ttf"></property>
			<property name="fontSize" value="26"></property>
			<property name="fontColor" value="red"></property>
		</media>
		<media descriptor="d1" id="answer8" src="answers\answer8.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<media descriptor="d2" id="answer9" src="answers\answer9.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf"></property>
			<property name="fontSize" value="24"></property>
			<property name="fontColor" value="white"></property>
		</media>
		<link id="link0" xconnector="onEndStart">
			<bind component="video" role="onEnd"></bind>
			<bind component="question0" role="start"></bind>
		</link>
		<link id="link1" xconnector="onBeginStart">
			<bind component="question0" role="onBegin"></bind>
			<bind component="answer" role="start"></bind>
		</link>
		<link id="link2" xconnector="onEndStart">
			<bind component="question0" role="onEnd"></bind>
			<bind component="question1" role="start"></bind>
		</link>
		<link id="link3" xconnector="onEndStop">
			<bind component="answer" role="onEnd"></bind>
			<bind component="question0" role="stop"></bind>
		</link>
		<link id="link4" xconnector="onBeginStart">
			<bind component="question0" role="onBegin"></bind>
			<bind component="answer0" role="start"></bind>
		</link>
		<link id="link5" xconnector="onEndStop">
			<bind component="question0" role="onEnd"></bind>
			<bind component="answer0" role="stop"></bind>
		</link>
		<link id="link6" xconnector="onSelectionSetStop">
			<bind component="answer0" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_﻿O_que_você_achou_do_video?|R:_Ótimo"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link7" xconnector="onBeginStart">
			<bind component="question0" role="onBegin"></bind>
			<bind component="answer1" role="start"></bind>
		</link>
		<link id="link8" xconnector="onEndStop">
			<bind component="question0" role="onEnd"></bind>
			<bind component="answer1" role="stop"></bind>
		</link>
		<link id="link9" xconnector="onSelectionSetStop">
			<bind component="answer1" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_﻿O_que_você_achou_do_video?|R:_Muito_Bom"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link10" xconnector="onBeginStart">
			<bind component="question0" role="onBegin"></bind>
			<bind component="answer2" role="start"></bind>
		</link>
		<link id="link11" xconnector="onEndStop">
			<bind component="question0" role="onEnd"></bind>
			<bind component="answer2" role="stop"></bind>
		</link>
		<link id="link12" xconnector="onSelectionSetStop">
			<bind component="answer2" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_﻿O_que_você_achou_do_video?|R:_Regular"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link13" xconnector="onBeginStart">
			<bind component="question0" role="onBegin"></bind>
			<bind component="answer3" role="start"></bind>
		</link>
		<link id="link14" xconnector="onEndStop">
			<bind component="question0" role="onEnd"></bind>
			<bind component="answer3" role="stop"></bind>
		</link>
		<link id="link15" xconnector="onSelectionSetStop">
			<bind component="answer3" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_﻿O_que_você_achou_do_video?|R:_Ruim"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link16" xconnector="onBeginStart">
			<bind component="question1" role="onBegin"></bind>
			<bind component="answer" role="start"></bind>
		</link>
		<link id="link17" xconnector="onEndStart">
			<bind component="question1" role="onEnd"></bind>
			<bind component="question2" role="start"></bind>
		</link>
		<link id="link18" xconnector="onEndStop">
			<bind component="answer" role="onEnd"></bind>
			<bind component="question1" role="stop"></bind>
		</link>
		<link id="link19" xconnector="onBeginStart">
			<bind component="question1" role="onBegin"></bind>
			<bind component="answer4" role="start"></bind>
		</link>
		<link id="link20" xconnector="onEndStop">
			<bind component="question1" role="onEnd"></bind>
			<bind component="answer4" role="stop"></bind>
		</link>
		<link id="link21" xconnector="onSelectionSetStop">
			<bind component="answer4" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_O_Felipe_merece_tirar_10_no_trabalho?|R:_Sim"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link22" xconnector="onBeginStart">
			<bind component="question1" role="onBegin"></bind>
			<bind component="answer5" role="start"></bind>
		</link>
		<link id="link23" xconnector="onEndStop">
			<bind component="question1" role="onEnd"></bind>
			<bind component="answer5" role="stop"></bind>
		</link>
		<link id="link24" xconnector="onSelectionSetStop">
			<bind component="answer5" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_O_Felipe_merece_tirar_10_no_trabalho?|R:_Sim"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link25" xconnector="onBeginStart">
			<bind component="question1" role="onBegin"></bind>
			<bind component="answer6" role="start"></bind>
		</link>
		<link id="link26" xconnector="onEndStop">
			<bind component="question1" role="onEnd"></bind>
			<bind component="answer6" role="stop"></bind>
		</link>
		<link id="link27" xconnector="onSelectionSetStop">
			<bind component="answer6" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_O_Felipe_merece_tirar_10_no_trabalho?|R:_Sim"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link28" xconnector="onBeginStart">
			<bind component="question1" role="onBegin"></bind>
			<bind component="answer7" role="start"></bind>
		</link>
		<link id="link29" xconnector="onEndStop">
			<bind component="question1" role="onEnd"></bind>
			<bind component="answer7" role="stop"></bind>
		</link>
		<link id="link30" xconnector="onSelectionSetStop">
			<bind component="answer7" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_O_Felipe_merece_tirar_10_no_trabalho?|R:_Por_que_não?"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link31" xconnector="onBeginStart">
			<bind component="question2" role="onBegin"></bind>
			<bind component="answer" role="start"></bind>
		</link>
		<link id="link32" xconnector="onEndStop">
			<bind component="answer" role="onEnd"></bind>
			<bind component="question2" role="stop"></bind>
		</link>
		<link id="link33" xconnector="onBeginStart">
			<bind component="question2" role="onBegin"></bind>
			<bind component="answer8" role="start"></bind>
		</link>
		<link id="link34" xconnector="onEndStop">
			<bind component="question2" role="onEnd"></bind>
			<bind component="answer8" role="stop"></bind>
		</link>
		<link id="link35" xconnector="onSelectionSetStop">
			<bind component="answer8" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_Setembrochove?|R:_Sim"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
		<link id="link36" xconnector="onBeginStart">
			<bind component="question2" role="onBegin"></bind>
			<bind component="answer9" role="start"></bind>
		</link>
		<link id="link37" xconnector="onEndStop">
			<bind component="question2" role="onEnd"></bind>
			<bind component="answer9" role="stop"></bind>
		</link>
		<link id="link38" xconnector="onSelectionSetStop">
			<bind component="answer9" role="onSelection"></bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="P:_Setembrochove?|R:_Não"></bindParam>
			</bind>
			<bind component="answer" role="stop"></bind>
		</link>
	</body>
</ncl>
