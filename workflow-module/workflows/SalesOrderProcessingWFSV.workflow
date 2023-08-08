{
	"contents": {
		"e8329c5f-264e-4519-8e8f-655f11c43083": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflowsv.salesorderprocessingwfsv",
			"subject": "SalesOrderProcessingWFSV",
			"name": "SalesOrderProcessingWFSV",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"8bb433f5-a38c-40f0-a818-fada54e08271": {
					"name": "Approval Form"
				},
				"723fa5a3-6500-48a8-a2cc-64cd0b3121d1": {
					"name": "ExclusiveGateway1"
				},
				"1d44fbf5-1e03-41ab-99a5-7ab7ec1e3255": {
					"name": "ScriptTask1"
				},
				"2ecdf390-183d-4802-a502-92a799ecff76": {
					"name": "ServiceTask2"
				},
				"716fc7f4-737a-431b-a519-d69f3b878bd8": {
					"name": "UserTask2.1.1 item details"
				},
				"64b0fd7c-c521-4489-908e-ee6d132675ff": {
					"name": "ExclusiveGateway2"
				},
				"509bf898-12a7-4bab-8f20-656cf45f0f5d": {
					"name": "ScriptTask2"
				},
				"be776fa9-f2d8-4909-bbd7-dc0b88033c55": {
					"name": "MailTask1"
				},
				"9c6cd504-1a29-4332-9c6b-a6adadc13f23": {
					"name": "ServiceTask3"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"664b44b3-c23f-468b-bd28-9f78a3c8672b": {
					"name": "SequenceFlow2"
				},
				"75d5177c-fd0c-444a-9267-8c08934740ec": {
					"name": "SequenceFlow3"
				},
				"b7bb8314-9e2f-48d7-bc1f-de66e948634a": {
					"name": "SequenceFlow4"
				},
				"3db3fbe7-0142-453f-b938-bf775c11d6e4": {
					"name": "SequenceFlow7"
				},
				"84fd5269-d7f7-4fcb-9444-dd5f04edcc1a": {
					"name": "SequenceFlow8"
				},
				"5eb2a3f2-d0c4-4741-b13c-4cbac64430ea": {
					"name": "SequenceFlow9"
				},
				"8541ec13-50c9-47b7-8077-ac5b7b398d69": {
					"name": "SequenceFlow11"
				},
				"fe2f60af-5294-4790-af3c-697ef982c872": {
					"name": "SequenceFlow13"
				},
				"f4d2ad6a-9249-4d91-9d14-c6f1f61cd31b": {
					"name": "SequenceFlow14"
				},
				"1c95924a-5796-4eea-a6ad-c75ee334599d": {
					"name": "SequenceFlow15"
				},
				"4c41e8be-b238-4987-aea8-883ee37bb14b": {
					"name": "SequenceFlow16"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"7156a248-5693-4da6-a5d8-ba66649c3ff5": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"8bb433f5-a38c-40f0-a818-fada54e08271": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval Form",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "stella.vasilakou@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWFSV/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Form"
		},
		"723fa5a3-6500-48a8-a2cc-64cd0b3121d1": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "75d5177c-fd0c-444a-9267-8c08934740ec"
		},
		"1d44fbf5-1e03-41ab-99a5-7ab7ec1e3255": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWFSV/CreateSalesOrderRequest.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"2ecdf390-183d-4802-a502-92a799ecff76": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderHeader.request}",
			"responseVariable": "${context.SalesOrderHeader.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "ServiceTask2"
		},
		"716fc7f4-737a-431b-a519-d69f3b878bd8": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Sales Order Number ",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "stella.vasilakou@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWFSV/ItemDetailsForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "itemdetailsform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "UserTask2.1.1 item details"
		},
		"64b0fd7c-c521-4489-908e-ee6d132675ff": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "fe2f60af-5294-4790-af3c-697ef982c872"
		},
		"509bf898-12a7-4bab-8f20-656cf45f0f5d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWFSV/GetSalesOrderItem.js",
			"id": "scripttask2",
			"name": "ScriptTask2"
		},
		"be776fa9-f2d8-4909-bbd7-dc0b88033c55": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "d643b8b9-41d8-40f1-ace8-9a1566585ec6"
		},
		"9c6cd504-1a29-4332-9c6b-a6adadc13f23": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder('{SalesOrder}')/to_Item",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderItem.request}",
			"responseVariable": "${context.SalesOrderItem.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask3",
			"name": "ServiceTask3"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "8bb433f5-a38c-40f0-a818-fada54e08271"
		},
		"664b44b3-c23f-468b-bd28-9f78a3c8672b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "8bb433f5-a38c-40f0-a818-fada54e08271",
			"targetRef": "723fa5a3-6500-48a8-a2cc-64cd0b3121d1"
		},
		"75d5177c-fd0c-444a-9267-8c08934740ec": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "723fa5a3-6500-48a8-a2cc-64cd0b3121d1",
			"targetRef": "1d44fbf5-1e03-41ab-99a5-7ab7ec1e3255"
		},
		"b7bb8314-9e2f-48d7-bc1f-de66e948634a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"reject\"}",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "723fa5a3-6500-48a8-a2cc-64cd0b3121d1",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"3db3fbe7-0142-453f-b938-bf775c11d6e4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "2ecdf390-183d-4802-a502-92a799ecff76",
			"targetRef": "716fc7f4-737a-431b-a519-d69f3b878bd8"
		},
		"84fd5269-d7f7-4fcb-9444-dd5f04edcc1a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "1d44fbf5-1e03-41ab-99a5-7ab7ec1e3255",
			"targetRef": "2ecdf390-183d-4802-a502-92a799ecff76"
		},
		"5eb2a3f2-d0c4-4741-b13c-4cbac64430ea": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "716fc7f4-737a-431b-a519-d69f3b878bd8",
			"targetRef": "64b0fd7c-c521-4489-908e-ee6d132675ff"
		},
		"8541ec13-50c9-47b7-8077-ac5b7b398d69": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision == \"reject\"}",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "64b0fd7c-c521-4489-908e-ee6d132675ff",
			"targetRef": "be776fa9-f2d8-4909-bbd7-dc0b88033c55"
		},
		"fe2f60af-5294-4790-af3c-697ef982c872": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "64b0fd7c-c521-4489-908e-ee6d132675ff",
			"targetRef": "509bf898-12a7-4bab-8f20-656cf45f0f5d"
		},
		"f4d2ad6a-9249-4d91-9d14-c6f1f61cd31b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "509bf898-12a7-4bab-8f20-656cf45f0f5d",
			"targetRef": "9c6cd504-1a29-4332-9c6b-a6adadc13f23"
		},
		"1c95924a-5796-4eea-a6ad-c75ee334599d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "9c6cd504-1a29-4332-9c6b-a6adadc13f23",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"4c41e8be-b238-4987-aea8-883ee37bb14b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "be776fa9-f2d8-4909-bbd7-dc0b88033c55",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"6543e5ac-49a5-4228-a291-5ab9f006c255": {},
				"74c5b2f1-1bff-4359-bdd6-954806937069": {},
				"1fd71a31-74d2-4795-82c5-988e15dd5fc9": {},
				"dd5b7c07-4124-46d3-ab59-8c0ddffed343": {},
				"8c1f3e67-baca-467e-8875-2be4600c2944": {},
				"886c0b91-d062-4739-9f98-35957b5e4831": {},
				"092eeb79-34ec-4fe6-8905-e015102e5f58": {},
				"fddcb0f5-ef79-4354-844a-97269cd37ba5": {},
				"116ed1ea-8897-4c82-8d84-7fd879ab49c7": {},
				"149b41c9-3ec2-4a12-aa40-023730a5b2e5": {},
				"614a65b9-b7be-4273-bd07-07bd599b86e2": {},
				"d9efeff8-3b62-4f94-a7d9-0299d63b878a": {},
				"d03234d5-91d0-4795-9d9e-974358bf046a": {},
				"53dbdb90-b645-4a54-a2ab-f513acb69aeb": {},
				"d16ff21a-347c-4775-801f-bbc1fadb9e76": {},
				"cd172922-8b7e-4ced-b9d9-0bc283415821": {},
				"51af18b6-0648-450f-8e97-475e83e79a2b": {},
				"5a73615b-aece-4939-8787-df75078514cd": {},
				"9037b6a4-3099-428b-91fe-b9de2b1bb2b8": {},
				"4f058083-e16a-4dd4-83b1-acb99b848394": {}
			}
		},
		"7156a248-5693-4da6-a5d8-ba66649c3ff5": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWFSV/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 25,
			"y": 102,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1168,
			"y": 240,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "41,118 153,118",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "6543e5ac-49a5-4228-a291-5ab9f006c255",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"6543e5ac-49a5-4228-a291-5ab9f006c255": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 103,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "8bb433f5-a38c-40f0-a818-fada54e08271"
		},
		"74c5b2f1-1bff-4359-bdd6-954806937069": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "153,118 286,118",
			"sourceSymbol": "6543e5ac-49a5-4228-a291-5ab9f006c255",
			"targetSymbol": "1fd71a31-74d2-4795-82c5-988e15dd5fc9",
			"object": "664b44b3-c23f-468b-bd28-9f78a3c8672b"
		},
		"1fd71a31-74d2-4795-82c5-988e15dd5fc9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 265,
			"y": 97,
			"object": "723fa5a3-6500-48a8-a2cc-64cd0b3121d1"
		},
		"dd5b7c07-4124-46d3-ab59-8c0ddffed343": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,118 286,14.5 336,14.5 336,-104",
			"sourceSymbol": "1fd71a31-74d2-4795-82c5-988e15dd5fc9",
			"targetSymbol": "8c1f3e67-baca-467e-8875-2be4600c2944",
			"object": "75d5177c-fd0c-444a-9267-8c08934740ec"
		},
		"8c1f3e67-baca-467e-8875-2be4600c2944": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 286,
			"y": -128,
			"width": 100,
			"height": 60,
			"object": "1d44fbf5-1e03-41ab-99a5-7ab7ec1e3255"
		},
		"886c0b91-d062-4739-9f98-35957b5e4831": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "307,128 737.5,128 737.5,252 1168,252",
			"sourceSymbol": "1fd71a31-74d2-4795-82c5-988e15dd5fc9",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "b7bb8314-9e2f-48d7-bc1f-de66e948634a"
		},
		"092eeb79-34ec-4fe6-8905-e015102e5f58": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 449,
			"y": -128,
			"width": 100,
			"height": 60,
			"object": "2ecdf390-183d-4802-a502-92a799ecff76"
		},
		"fddcb0f5-ef79-4354-844a-97269cd37ba5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "498.875,-97.875 666.875,-97.875",
			"sourceSymbol": "092eeb79-34ec-4fe6-8905-e015102e5f58",
			"targetSymbol": "149b41c9-3ec2-4a12-aa40-023730a5b2e5",
			"object": "3db3fbe7-0142-453f-b938-bf775c11d6e4"
		},
		"116ed1ea-8897-4c82-8d84-7fd879ab49c7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "381,-89.5 489,-89.5",
			"sourceSymbol": "8c1f3e67-baca-467e-8875-2be4600c2944",
			"targetSymbol": "092eeb79-34ec-4fe6-8905-e015102e5f58",
			"object": "84fd5269-d7f7-4fcb-9444-dd5f04edcc1a"
		},
		"149b41c9-3ec2-4a12-aa40-023730a5b2e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 616.75,
			"y": -127.75,
			"width": 100,
			"height": 60,
			"object": "716fc7f4-737a-431b-a519-d69f3b878bd8"
		},
		"614a65b9-b7be-4273-bd07-07bd599b86e2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "666.75,-97.9375 823.625,-97.9375",
			"sourceSymbol": "149b41c9-3ec2-4a12-aa40-023730a5b2e5",
			"targetSymbol": "d9efeff8-3b62-4f94-a7d9-0299d63b878a",
			"object": "5eb2a3f2-d0c4-4741-b13c-4cbac64430ea"
		},
		"d9efeff8-3b62-4f94-a7d9-0299d63b878a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 802.625,
			"y": -119.125,
			"object": "64b0fd7c-c521-4489-908e-ee6d132675ff"
		},
		"d03234d5-91d0-4795-9d9e-974358bf046a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 893.625,
			"y": -255.125,
			"width": 100,
			"height": 60,
			"object": "509bf898-12a7-4bab-8f20-656cf45f0f5d"
		},
		"53dbdb90-b645-4a54-a2ab-f513acb69aeb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "823.625,-98.125 872.375,-98.125 872.375,14.375 950.125,14.375",
			"sourceSymbol": "d9efeff8-3b62-4f94-a7d9-0299d63b878a",
			"targetSymbol": "d16ff21a-347c-4775-801f-bbc1fadb9e76",
			"object": "8541ec13-50c9-47b7-8077-ac5b7b398d69"
		},
		"d16ff21a-347c-4775-801f-bbc1fadb9e76": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 900.125,
			"y": -15.625,
			"width": 100,
			"height": 60,
			"object": "be776fa9-f2d8-4909-bbd7-dc0b88033c55"
		},
		"cd172922-8b7e-4ced-b9d9-0bc283415821": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "823.625,-98.125 823.625,-157.125 912,-157.125 912,-232",
			"sourceSymbol": "d9efeff8-3b62-4f94-a7d9-0299d63b878a",
			"targetSymbol": "d03234d5-91d0-4795-9d9e-974358bf046a",
			"object": "fe2f60af-5294-4790-af3c-697ef982c872"
		},
		"51af18b6-0648-450f-8e97-475e83e79a2b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1214.625,
			"y": -255.125,
			"width": 100,
			"height": 60,
			"object": "9c6cd504-1a29-4332-9c6b-a6adadc13f23"
		},
		"5a73615b-aece-4939-8787-df75078514cd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "943.625,-225.125 1264.625,-225.125",
			"sourceSymbol": "d03234d5-91d0-4795-9d9e-974358bf046a",
			"targetSymbol": "51af18b6-0648-450f-8e97-475e83e79a2b",
			"object": "f4d2ad6a-9249-4d91-9d14-c6f1f61cd31b"
		},
		"9037b6a4-3099-428b-91fe-b9de2b1bb2b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1262.15625,-225.125 1262.15625,249 1186.3125,249",
			"sourceSymbol": "51af18b6-0648-450f-8e97-475e83e79a2b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "1c95924a-5796-4eea-a6ad-c75ee334599d"
		},
		"4f058083-e16a-4dd4-83b1-acb99b848394": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "950.125,14.375 950.125,142.4375 1185.5,142.4375 1185.5,257.5",
			"sourceSymbol": "d16ff21a-347c-4775-801f-bbc1fadb9e76",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "4c41e8be-b238-4987-aea8-883ee37bb14b"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 16,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 3,
			"scripttask": 2,
			"mailtask": 1,
			"exclusivegateway": 2
		},
		"d643b8b9-41d8-40f1-ace8-9a1566585ec6": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "stella.vasilakou@consolut.com",
			"subject": "Rejection",
			"text": "Your order has been rejected.",
			"id": "maildefinition1"
		}
	}
}