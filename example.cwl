arguments:
- --
baseCommand: /app/cwl/bin/example
class: CommandLineTool
cwlVersion: v1.1
hints:
  DockerRequirement:
    dockerImageId: mosorio/r2d-2ftmp-2frepo2cwl-5ffwc54a0w-2frepo1602082874:latest
inputs:
  case:
    inputBinding:
      prefix: --case
    type: int
  example_file:
    inputBinding:
      prefix: --example_file
    type: File
  hydr:
    inputBinding:
      prefix: --hydr
    type: string
outputs:
  output_file:
    outputBinding:
      glob: return.txt
    type: File
