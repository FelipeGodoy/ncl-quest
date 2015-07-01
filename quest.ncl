<ncl id="myNCLDocID">
	<head>
		<connectorBase id="connBaseId">
			<importBase alias="conn" documentURI="defaultConnBase.ncl">
			</importBase>
		</connectorBase>
		<regionBase id="regionBase0">
			<region height="100.00%" id="screenReg" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="28.96%" id="questionRegion" left="2.34%" top="6.04%" width="95.67%" zIndex="2">
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
			<property name="fontFamily" value="sans-serif">
			</property>
			<property name="fontSize" value="50pt">
			</property>
		</media>
		<link id="link0" xconnector="conn#onBeginStart">
			<bind component="video_atencao" role="onBegin">
			</bind>
			<bind component="question" role="start">
			</bind>
		</link>
	</body>
</ncl>
