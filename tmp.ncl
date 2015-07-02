<ncl id="myNCLDocID">
	<head>
		<connectorBase id="connBaseId">
			<importBase alias="conn" documentURI="defaultConnBase.ncl">
			</importBase>
			<causalConnector id="onSelectionSet">
				<connectorParam name="var">
				</connectorParam>
				<simpleCondition role="onSelection">
				</simpleCondition>
				<simpleAction role="set" value="$var">
				</simpleAction>
			</causalConnector>
		</connectorBase>
		<regionBase id="regionBase0">
			<region height="100.00%" id="screenReg" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="28.96%" id="questionRegion" left="2.34%" top="6.04%" width="95.67%" zIndex="2">
				</region>
				<region bottom="51.04%" height="13.33%" id="region1" left="2.46%" right="1.99%" top="35.62%" width="95.55%" zIndex="3">
				</region>
				<region bottom="36.04%" height="13.33%" id="region2" left="2.58%" right="1.87%" top="50.62%" width="95.55%" zIndex="3">
				</region>
				<region bottom="20.83%" height="13.33%" id="region3" left="2.46%" right="1.99%" top="65.83%" width="95.55%" zIndex="3">
				</region>
				<region bottom="3.96%" height="13.33%" id="region4" left="2.46%" right="1.99%" top="82.71%" width="95.55%" zIndex="3">
				</region>
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dVideo" region="screenReg">
			</descriptor>
			<descriptor id="dQuestion" region="questionRegion">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="myBodyID">
		<media descriptor="dVideo" id="video_atencao" src="media/video_atencao.mp4">
		</media>
		<port component="video_atencao" id="p0">
		</port>
		<media descriptor="dQuestion" id="question" src="media/question.txt" type="text/plain">
			<property name="fontUri" value="vera.ttf">
			</property>
			<property name="fontSize" value="28">
			</property>
			<property name="fontColor" value="red">
			</property>
		</media>
		<link id="link0" xconnector="conn#onBeginStart">
			<bind component="video_atencao" role="onBegin">
			</bind>
			<bind component="question" role="start">
			</bind>
		</link>
		<media id="anwser" src="anwser.lua">
			<property name="message" value="aaaaa">
			</property>
		</media>
		<link id="link1" xconnector="onSelectionSet">
			<bind component="question" role="onSelection">
			</bind>
			<bind component="anwser" interface="message" role="set">
				<bindParam name="var" value="teste">
				</bindParam>
			</bind>
		</link>
	</body>
</ncl>
