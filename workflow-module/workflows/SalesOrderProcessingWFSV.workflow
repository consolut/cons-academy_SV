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
			"condition": "${usertasks.usertask1.last.decision == \"Reject\"}",
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
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"84fd5269-d7f7-4fcb-9444-dd5f04edcc1a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "1d44fbf5-1e03-41ab-99a5-7ab7ec1e3255",
			"targetRef": "2ecdf390-183d-4802-a502-92a799ecff76"
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
				"116ed1ea-8897-4c82-8d84-7fd879ab49c7": {}
			}
		},
		"7156a248-5693-4da6-a5d8-ba66649c3ff5": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWFSV/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 637,
			"y": 118,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 229,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "6543e5ac-49a5-4228-a291-5ab9f006c255",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"6543e5ac-49a5-4228-a291-5ab9f006c255": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 179,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "8bb433f5-a38c-40f0-a818-fada54e08271"
		},
		"74c5b2f1-1bff-4359-bdd6-954806937069": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "229,118 359,118",
			"sourceSymbol": "6543e5ac-49a5-4228-a291-5ab9f006c255",
			"targetSymbol": "1fd71a31-74d2-4795-82c5-988e15dd5fc9",
			"object": "664b44b3-c23f-468b-bd28-9f78a3c8672b"
		},
		"1fd71a31-74d2-4795-82c5-988e15dd5fc9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 338,
			"y": 97,
			"object": "723fa5a3-6500-48a8-a2cc-64cd0b3121d1"
		},
		"dd5b7c07-4124-46d3-ab59-8c0ddffed343": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "359,118 359,-75 466,-75",
			"sourceSymbol": "1fd71a31-74d2-4795-82c5-988e15dd5fc9",
			"targetSymbol": "8c1f3e67-baca-467e-8875-2be4600c2944",
			"object": "75d5177c-fd0c-444a-9267-8c08934740ec"
		},
		"8c1f3e67-baca-467e-8875-2be4600c2944": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 416,
			"y": -99,
			"width": 100,
			"height": 60,
			"object": "1d44fbf5-1e03-41ab-99a5-7ab7ec1e3255"
		},
		"886c0b91-d062-4739-9f98-35957b5e4831": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "380,127 508.5,127 508.5,141 637,141",
			"sourceSymbol": "1fd71a31-74d2-4795-82c5-988e15dd5fc9",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "b7bb8314-9e2f-48d7-bc1f-de66e948634a"
		},
		"092eeb79-34ec-4fe6-8905-e015102e5f58": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 655,
			"y": -116,
			"width": 100,
			"height": 60,
			"object": "2ecdf390-183d-4802-a502-92a799ecff76"
		},
		"fddcb0f5-ef79-4354-844a-97269cd37ba5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "705,-86 705,31.25 654.5,31.25 654.5,135.5",
			"sourceSymbol": "092eeb79-34ec-4fe6-8905-e015102e5f58",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "3db3fbe7-0142-453f-b938-bf775c11d6e4"
		},
		"116ed1ea-8897-4c82-8d84-7fd879ab49c7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "511,-59 585.75,-59 585.75,-79 695,-79",
			"sourceSymbol": "8c1f3e67-baca-467e-8875-2be4600c2944",
			"targetSymbol": "092eeb79-34ec-4fe6-8905-e015102e5f58",
			"object": "84fd5269-d7f7-4fcb-9444-dd5f04edcc1a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 8,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 2,
			"scripttask": 1,
			"exclusivegateway": 1
		}
	}
}