within IEEE14.Generation_Groups;
model GroupBus1
import PowerSystems = iPSL;
  PowerSystems.Electrical.Controls.PSAT.AVR.AVRTypeII AVR1(Ka = 200, Ta = 0.02, Kf = 0.002, Tf = 1, Ke = 1, Te = 0.2, Tr = 0.001, v0 = 1.06, vrmin = 0, vrmax = 7.32,
    vref0=1.065622531687790,
    vf0=1.122656195484140)                                                                                                     annotation(Placement(transformation(extent={{-52,-6},
            {0,42}})));
  iPSL.Electrical.Machines.PSAT.FifthOrder.Order5_Type2 Syn1(Sn = 615, Vn = 69000, V_b = 69000, fn = 60, ra = 0, xd = 0.8979, xq = 0.646, xd1 = 0.2998, xd2 = 0.23, xq2 = 0.4,
   Td10 = 7.4, Td20 = 0.03, Tq20 = 0.033, M = 2 * 5.148, D= 2,V_0 = 1.06, angle_0 = 0,
    P_0=3.520304175896800, Q_0=-0.281968127428243,Taa=0.002)                                                                                                     annotation(Placement(transformation(extent={{34,-32},
            {88,30}})));
  Modelica.Blocks.Sources.Constant const5(k=1.065622531687790)   annotation(Placement(transformation(extent = {{-12, -12}, {12, 12}}, rotation = 0, origin={-72,28})));
  PowerSystems.Connectors.PwPin pwPin annotation (Placement(
        transformation(extent={{100,-12},{120,8}}),  iconTransformation(
          extent={{100,-12},{120,8}})));
equation
  connect(AVR1.vf, Syn1.vf) annotation (Line(points={{-3.9,24.24},{12,24.24},{
          12,14.5},{34,14.5}},                 color={0,0,127}));
  connect(Syn1.v, AVR1.v) annotation (Line(points={{90.7,8.3},{96,8.3},{96,-56},
          {-82,-56},{-82,4},{-46.8,4},{-46.8,15.6}},
        color={0,0,127}));
  connect(const5.y, AVR1.vref) annotation (Line(points={{-58.8,28},{-54,
          28},{-54,30},{-54,30.96},{-46.8,30.96}}, color={0,0,127}));
  connect(Syn1.pm0, Syn1.pm) annotation (Line(points={{39.4,-35.1},{98,-35.1},{98,
          -30},{98,-44},{4,-44},{4,-16.5},{34,-16.5}},
        color={0,0,127}));
  connect(Syn1.p, pwPin) annotation (Line(points={{90.7,-0.846116},{100.35,-0.846116},
          {100.35,-2},{110,-2}},         color={0,0,255}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent=
            {{-100,-100},{100,100}})), Icon(coordinateSystem(extent={{-100,
            -100},{100,100}},      preserveAspectRatio=false), graphics={
        Text(
          extent={{-93,6},{-24,-12}},
          lineColor={0,0,255},
          textStyle={TextStyle.Italic},
          textString=""),
        Ellipse(extent={{-94,68},{98,-84}}, lineColor={28,108,200}),
        Line(points={{-28,-8},{-12,16}}, color={28,108,200}),
        Line(points={{-12,16},{14,-16},{32,10}}, color={28,108,200}),
        Text(
          extent={{-18,-32},{20,-64}},
          lineColor={28,108,200},
          textString="Gen1 5.2")}),
    Documentation(info="<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\">
<tr>
<td><p>Reference</p></td>
<td>PSAT Manual 2.1.8</td>
</tr>
<tr>
<td><p>Last update</p></td>
<td>13/07/2015</td>
</tr>
<tr>
<td><p>Author</p></td>
<td><p>MAA Murad,SmarTS Lab, KTH Royal Institute of Technology</p></td>
</tr>
<tr>
<td><p>Contact</p></td>
<td><p><a href=\"mailto:luigiv@kth.se\">luigiv@kth.se</a></p></td>
</tr>
</table>
<p><br><span style=\"font-family: MS Shell Dlg 2;\">&LT;iPSL: iTesla Power System Library&GT;</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Copyright 2015 RTE (France), AIA (Spain), KTH (Sweden) and DTU (Denmark)</span></p>
<ul>
<li><span style=\"font-family: MS Shell Dlg 2;\">RTE: http://www.rte-france.com/ </span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">AIA: http://www.aia.es/en/energy/</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">KTH: https://www.kth.se/en</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">DTU:http://www.dtu.dk/english</span></li>
</ul>
<p><span style=\"font-family: MS Shell Dlg 2;\">The authors can be contacted by email: info at itesla-ipsl dot org</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This package is part of the iTesla Power System Library (&QUOT;iPSL&QUOT;) .</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">You should have received a copy of the GNU Lesser General Public License along with the iPSL. If not, see &LT;http://www.gnu.org/licenses/&GT;.</span></p>
</html>"));
end GroupBus1;
