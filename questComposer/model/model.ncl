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
				<region height="13.33%" id="region2" left="2.58%" top="50.62%" width="95.55%" zIndex="3">
				</region>
				<region height="13.33%" id="region3" left="2.46%" top="65.83%" width="95.55%" zIndex="3">
				</region>
				<region height="13.33%" id="region4" left="2.46%" top="82.71%" width="95.55%" zIndex="3">
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
		<media descriptor="dQuestion" id="question" src="media\question.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf">
			</property>
			<property name="fontSize" value="26">
			</property>
			<property name="fontColor" value="red">
			</property>
		</media>
		<link id="link0" xconnector="onBeginStart">
			<bind component="video" role="onBegin">
			</bind>
			<bind component="question" role="start">
			</bind>
		</link>
		<link id="link2" xconnector="onBeginStart">
			<bind component="question" role="onBegin">
			</bind>
			<bind component="answer" role="start">
			</bind>
		</link>
		<media descriptor="d1" id="resp1" src="media/resp1.txt" type="text/plain">
		</media>
		<media descriptor="d2" id="resp2" src="media/resp2.txt" type="text/plain">
		</media>
		<media descriptor="d3" id="resp3" src="media/resp3.txt" type="text/plain">
		</media>
		<link id="link1" xconnector="onBeginStart">
			<bind component="question" role="onBegin">
			</bind>
			<bind component="resp3" role="start">
			</bind>
		</link>
		<link id="link3" xconnector="onBeginStart">
			<bind component="question" role="onBegin">
			</bind>
			<bind component="resp2" role="start">
			</bind>
		</link>
		<link id="link4" xconnector="onBeginStart">
			<bind component="question" role="onBegin">
			</bind>
			<bind component="resp1" role="start">
			</bind>
		</link>
		<link id="link5" xconnector="onEndStop">
			<bind component="question" role="onEnd">
			</bind>
			<bind component="resp3" role="stop">
			</bind>
		</link>
		<link id="link6" xconnector="onEndStop">
			<bind component="question" role="onEnd">
			</bind>
			<bind component="resp2" role="stop">
			</bind>
		</link>
		<link id="link7" xconnector="onEndStop">
			<bind component="question" role="onEnd">
			</bind>
			<bind component="resp1" role="stop">
			</bind>
		</link>
		<link id="link8" xconnector="onEndStop">
			<bind component="answer" role="onEnd">
			</bind>
			<bind component="question" role="stop">
			</bind>
		</link>
		<link id="link9" xconnector="onSelectionSetStop">
			<bind component="resp3" role="onSelection">
			</bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="resp3">
				</bindParam>
			</bind>
			<bind component="answer" role="stop">
			</bind>
		</link>
		<link id="link10" xconnector="onSelectionSetStop">
			<bind component="resp2" role="onSelection">
			</bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="resp2">
				</bindParam>
			</bind>
			<bind component="answer" role="stop">
			</bind>
		</link>
		<link id="link11" xconnector="onSelectionSetStop">
			<bind component="resp1" role="onSelection">
			</bind>
			<bind component="answer" interface="message" role="set">
				<bindParam name="var" value="resp1">
				</bindParam>
			</bind>
			<bind component="answer" role="stop">
			</bind>
		</link>
	</body>
</ncl>
