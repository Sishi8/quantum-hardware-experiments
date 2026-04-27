
from qiskit_metal.qlibrary.qubits.transmon_pocket import TransmonPocket

from qiskit_metal import designs, MetalGUI

design = designs.DesignPlanar()

gui = MetalGUI(design)



            # WARNING
#options_connection_pads failed to have a value
Q0 = TransmonPocket(
design,
name='Q0',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '0mm',
 'pos_y': '2mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q1 = TransmonPocket(
design,
name='Q1',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '-2mm',
 'pos_y': '1mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q2 = TransmonPocket(
design,
name='Q2',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '2mm',
 'pos_y': '1mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q3 = TransmonPocket(
design,
name='Q3',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '-2mm',
 'pos_y': '-1mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q4 = TransmonPocket(
design,
name='Q4',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '0mm',
 'pos_y': '-1mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q5 = TransmonPocket(
design,
name='Q5',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '2mm',
 'pos_y': '-1mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q6 = TransmonPocket(
design,
name='Q6',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '0mm',
 'pos_y': '-3mm'}
)



gui.rebuild()
gui.autoscale()
        