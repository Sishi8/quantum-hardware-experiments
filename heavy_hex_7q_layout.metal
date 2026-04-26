
from qiskit_metal.qlibrary.sample_shapes.rectangle import Rectangle

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
 'pos_y': '1.5mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q1 = TransmonPocket(
design,
name='Q1',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '-2.0mm',
 'pos_y': '0mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q2 = TransmonPocket(
design,
name='Q2',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '2.0mm',
 'pos_y': '0mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q3 = TransmonPocket(
design,
name='Q3',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '-2.0mm',
 'pos_y': '-1.5mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q4 = TransmonPocket(
design,
name='Q4',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '0mm',
 'pos_y': '-3.0mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q5 = TransmonPocket(
design,
name='Q5',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '2.0mm',
 'pos_y': '-1.5mm'}
)





            # WARNING
#options_connection_pads failed to have a value
Q6 = TransmonPocket(
design,
name='Q6',
options={'pad_height': '250um',
 'pad_width': '400um',
 'pos_x': '0mm',
 'pos_y': '-4.5mm'}
)




b0 = Rectangle(
design,
name='b0',
options={'height': '0.1mm',
 'pos_x': '-1.0mm',
 'pos_y': '0.75mm',
 'width': '1.5mm'},

component_template=None,
)




b1 = Rectangle(
design,
name='b1',
options={'height': '0.1mm',
 'pos_x': '1.0mm',
 'pos_y': '0.75mm',
 'width': '1.5mm'},

component_template=None,
)




b2 = Rectangle(
design,
name='b2',
options={'height': '1.5mm',
 'pos_x': '-2.0mm',
 'pos_y': '-0.75mm',
 'width': '0.1mm'},

component_template=None,
)




b3 = Rectangle(
design,
name='b3',
options={'height': '1.5mm',
 'pos_x': '2.0mm',
 'pos_y': '-0.75mm',
 'width': '0.1mm'},

component_template=None,
)




b4 = Rectangle(
design,
name='b4',
options={'height': '0.1mm',
 'pos_x': '-1.0mm',
 'pos_y': '-1.5mm',
 'width': '1.5mm'},

component_template=None,
)




b5 = Rectangle(
design,
name='b5',
options={'height': '0.1mm',
 'pos_x': '1.0mm',
 'pos_y': '-1.5mm',
 'width': '1.5mm'},

component_template=None,
)




b6 = Rectangle(
design,
name='b6',
options={'height': '1.5mm',
 'pos_x': '0.0mm',
 'pos_y': '-3.0mm',
 'width': '0.1mm'},

component_template=None,
)



gui.rebuild()
gui.autoscale()
        