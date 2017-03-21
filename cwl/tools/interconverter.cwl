cwlVersion: v1.0
class: CommandLineTool
baseCommand: interconverter.sh
inputs:
	toconvert:
		type: File
		inputBinding:
			position: 1
outputs:
	converted:
		type: File
		outputBinding:
			glob "*.meth"
