//Povray V3.1 code generated by Open Babel
//Author: Steffen Reith <streit@streit.cc>
//Version: $Id$
//Date: Fri Dec 06 19:49:54 CST 2002

//Include header for povray
#include "babel31.inc"

//Use PovRay3.1
#version 3.1;

//Print name of molecule while rendering
#render "\b\b \n\n"

//Coodinates of atoms 1 - 12
#declare InValid_pos_1 = <0,0,0>;
#declare InValid_pos_2 = <-1.43,0,0>;
#declare InValid_pos_3 = <0.904702,0,1.22393>;
#declare InValid_pos_4 = <1.80727,1.1038,1.33298>;
#declare InValid_pos_5 = <1.48615,1.08908,1.94554>;
#declare InValid_pos_6 = <0.524131,0.699147,0.832451>;
#declare InValid_pos_7 = <0.49064,1.94562,1.72251>;
#declare InValid_pos_8 = <1.4311,-0.424735,1.79786>;
#declare InValid_pos_9 = <-0.0640914,-0.0930113,1.83522>;
#declare InValid_pos_10 = <-1.44688,-0.10347,1.44073>;
#declare InValid_pos_11 = <-1.25466,0.709248,1.91753>;
#declare InValid_pos_12 = <-2.44149,0.97844,2.54015>;

//Povray-description of atoms 1 - 12
#declare InValid_atom1 = object {
	  Atom_O
	  translate InValid_pos_1
	 }
#declare InValid_atom2 = object {
	  Atom_C
	  translate InValid_pos_2
	 }
#declare InValid_atom3 = object {
	  Atom_C
	  translate InValid_pos_3
	 }
#declare InValid_atom4 = object {
	  Atom_O
	  translate InValid_pos_4
	 }
#declare InValid_atom5 = object {
	  Atom_C
	  translate InValid_pos_5
	 }
#declare InValid_atom6 = object {
	  Atom_C
	  translate InValid_pos_6
	 }
#declare InValid_atom7 = object {
	  Atom_O
	  translate InValid_pos_7
	 }
#declare InValid_atom8 = object {
	  Atom_O
	  translate InValid_pos_8
	 }
#declare InValid_atom9 = object {
	  Atom_C
	  translate InValid_pos_9
	 }
#declare InValid_atom10 = object {
	  Atom_O
	  translate InValid_pos_10
	 }
#declare InValid_atom11 = object {
	  Atom_C
	  translate InValid_pos_11
	 }
#declare InValid_atom12 = object {
	  Atom_O
	  translate InValid_pos_12
	 }

//Povray-description of bonds 1 - 15
#if (BAS)
#declare InValid_bond0 = object {
	  bond_1
	  scale <1.43,1.0000,1.0000>
	  rotate <0.0000,-180,0.0000>
	  translate InValid_pos_1
	 }
#declare InValid_bond1 = object {
	  bond_1
	  scale <1.20685,1.0000,1.0000>
	  rotate <0.0000,0.0000,35.4023>
	  rotate <0.0000,-57.8045,0.0000>
	  translate InValid_pos_1
	 }
#declare InValid_bond2 = object {
	  bond_1
	  scale <0.887072,1.0000,1.0000>
	  rotate <0.0000,0.0000,-52.0131>
	  rotate <0.0000,-45.8095,0.0000>
	  translate InValid_pos_6
	 }
#declare InValid_bond3 = object {
	  bond_1
	  scale <0.887068,1.0000,1.0000>
	  rotate <0.0000,0.0000,-28.6075>
	  rotate <0.0000,-47.4735,0.0000>
	  translate InValid_pos_3
	 }
#declare InValid_bond4 = object {
	  bond_1
	  scale <1.1493,1.0000,1.0000>
	  rotate <0.0000,0.0000,-4.64195>
	  rotate <0.0000,-147.749,0.0000>
	  translate InValid_pos_3
	 }
#declare InValid_bond5 = object {
	  bond_1
	  scale <0.691783,1.0000,1.0000>
	  rotate <0.0000,0.0000,-1.21926>
	  rotate <0.0000,-117.665,0.0000>
	  translate InValid_pos_4
	 }
#declare InValid_bond6 = object {
	  bond_1
	  scale <1.522,1.0000,1.0000>
	  rotate <0.0000,0.0000,-84.0562>
	  rotate <0.0000,110.444,0.0000>
	  translate InValid_pos_5
	 }
#declare InValid_bond7 = object {
	  bond_1
	  scale <1.33208,1.0000,1.0000>
	  rotate <0.0000,0.0000,-40.0165>
	  rotate <0.0000,-12.6278,0.0000>
	  translate InValid_pos_7
	 }
#declare InValid_bond8 = object {
	  bond_1
	  scale <1.40679,1.0000,1.0000>
	  rotate <0.0000,0.0000,-34.2701>
	  rotate <0.0000,-120.396,0.0000>
	  translate InValid_pos_6
	 }
#declare InValid_bond9 = object {
	  bond_1
	  scale <1.438,1.0000,1.0000>
	  rotate <0.0000,0.0000,-0.416717>
	  rotate <0.0000,164.077,0.0000>
	  translate InValid_pos_9
	 }
#declare InValid_bond10 = object {
	  bond_1
	  scale <1.438,1.0000,1.0000>
	  rotate <0.0000,0.0000,33.9106>
	  rotate <0.0000,-176.045,0.0000>
	  translate InValid_pos_9
	 }
#declare InValid_bond11 = object {
	  bond_1
	  scale <0.961664,1.0000,1.0000>
	  rotate <0.0000,0.0000,57.6844>
	  rotate <0.0000,-68.0434,0.0000>
	  translate InValid_pos_10
	 }
#declare InValid_bond12 = object {
	  bond_1
	  scale <1.367,1.0000,1.0000>
	  rotate <0.0000,0.0000,11.357>
	  rotate <0.0000,-152.318,0.0000>
	  translate InValid_pos_11
	 }
#declare InValid_bond13 = object {
	  bond_1
	  scale <1.522,1.0000,1.0000>
	  rotate <0.0000,0.0000,14.8445>
	  rotate <0.0000,-49.1638,0.0000>
	  translate InValid_pos_6
	 }
#declare InValid_bond14 = object {
	  bond_1
	  scale <1.43,1.0000,1.0000>
	  rotate <0.0000,0.0000,50.5238>
	  rotate <0.0000,-6.8892,0.0000>
	  translate InValid_pos_3
	 }
#end //(BAS-Bonds)

#if (CST)
#declare InValid_bond0 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.715,1.0000,1.0000>
	    rotate <0.0000,-180,0.0000>
	    translate InValid_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.715,1.0000,1.0000>
	    rotate <0.0000,0.0000,180>
	    rotate <0.0000,-180,0.0000>
	    translate InValid_pos_2
	   }
	  }
	 }

#declare InValid_bond1 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.603427,1.0000,1.0000>
	    rotate <0.0000,0.0000,35.4023>
	    rotate <0.0000,-57.8045,0.0000>
	    translate InValid_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.603427,1.0000,1.0000>
	    rotate <0.0000,0.0000,215.402>
	    rotate <0.0000,-57.8045,0.0000>
	    translate InValid_pos_6
	   }
	  }
	 }

#declare InValid_bond2 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.443536,1.0000,1.0000>
	    rotate <0.0000,0.0000,-52.0131>
	    rotate <0.0000,-45.8095,0.0000>
	    translate InValid_pos_6
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.443536,1.0000,1.0000>
	    rotate <0.0000,0.0000,127.987>
	    rotate <0.0000,-45.8095,0.0000>
	    translate InValid_pos_3
	   }
	  }
	 }

#declare InValid_bond3 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.443534,1.0000,1.0000>
	    rotate <0.0000,0.0000,-28.6075>
	    rotate <0.0000,-47.4735,0.0000>
	    translate InValid_pos_3
	   }
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.443534,1.0000,1.0000>
	    rotate <0.0000,0.0000,151.392>
	    rotate <0.0000,-47.4735,0.0000>
	    translate InValid_pos_8
	   }
	  }
	 }

#declare InValid_bond4 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.574649,1.0000,1.0000>
	    rotate <0.0000,0.0000,-4.64195>
	    rotate <0.0000,-147.749,0.0000>
	    translate InValid_pos_3
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.574649,1.0000,1.0000>
	    rotate <0.0000,0.0000,175.358>
	    rotate <0.0000,-147.749,0.0000>
	    translate InValid_pos_9
	   }
	  }
	 }

#declare InValid_bond5 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.345892,1.0000,1.0000>
	    rotate <0.0000,0.0000,-1.21926>
	    rotate <0.0000,-117.665,0.0000>
	    translate InValid_pos_4
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.345892,1.0000,1.0000>
	    rotate <0.0000,0.0000,178.781>
	    rotate <0.0000,-117.665,0.0000>
	    translate InValid_pos_5
	   }
	  }
	 }

#declare InValid_bond6 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.760999,1.0000,1.0000>
	    rotate <0.0000,0.0000,-84.0562>
	    rotate <0.0000,110.444,0.0000>
	    translate InValid_pos_5
	   }
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.760999,1.0000,1.0000>
	    rotate <0.0000,0.0000,95.9438>
	    rotate <0.0000,110.444,0.0000>
	    translate InValid_pos_8
	   }
	  }
	 }

#declare InValid_bond7 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.666041,1.0000,1.0000>
	    rotate <0.0000,0.0000,-40.0165>
	    rotate <0.0000,-12.6278,0.0000>
	    translate InValid_pos_7
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.666041,1.0000,1.0000>
	    rotate <0.0000,0.0000,139.984>
	    rotate <0.0000,-12.6278,0.0000>
	    translate InValid_pos_5
	   }
	  }
	 }

#declare InValid_bond8 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.703396,1.0000,1.0000>
	    rotate <0.0000,0.0000,-34.2701>
	    rotate <0.0000,-120.396,0.0000>
	    translate InValid_pos_6
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.703396,1.0000,1.0000>
	    rotate <0.0000,0.0000,145.73>
	    rotate <0.0000,-120.396,0.0000>
	    translate InValid_pos_9
	   }
	  }
	 }

#declare InValid_bond9 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.718999,1.0000,1.0000>
	    rotate <0.0000,0.0000,-0.416717>
	    rotate <0.0000,164.077,0.0000>
	    translate InValid_pos_9
	   }
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.718999,1.0000,1.0000>
	    rotate <0.0000,0.0000,179.583>
	    rotate <0.0000,164.077,0.0000>
	    translate InValid_pos_10
	   }
	  }
	 }

#declare InValid_bond10 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.719001,1.0000,1.0000>
	    rotate <0.0000,0.0000,33.9106>
	    rotate <0.0000,-176.045,0.0000>
	    translate InValid_pos_9
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.719001,1.0000,1.0000>
	    rotate <0.0000,0.0000,213.911>
	    rotate <0.0000,-176.045,0.0000>
	    translate InValid_pos_11
	   }
	  }
	 }

#declare InValid_bond11 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.480832,1.0000,1.0000>
	    rotate <0.0000,0.0000,57.6844>
	    rotate <0.0000,-68.0434,0.0000>
	    translate InValid_pos_10
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.480832,1.0000,1.0000>
	    rotate <0.0000,0.0000,237.684>
	    rotate <0.0000,-68.0434,0.0000>
	    translate InValid_pos_11
	   }
	  }
	 }

#declare InValid_bond12 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.683499,1.0000,1.0000>
	    rotate <0.0000,0.0000,11.357>
	    rotate <0.0000,-152.318,0.0000>
	    translate InValid_pos_11
	   }
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.683499,1.0000,1.0000>
	    rotate <0.0000,0.0000,191.357>
	    rotate <0.0000,-152.318,0.0000>
	    translate InValid_pos_12
	   }
	  }
	 }

#declare InValid_bond13 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.761002,1.0000,1.0000>
	    rotate <0.0000,0.0000,14.8445>
	    rotate <0.0000,-49.1638,0.0000>
	    translate InValid_pos_6
	   }
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.761002,1.0000,1.0000>
	    rotate <0.0000,0.0000,194.845>
	    rotate <0.0000,-49.1638,0.0000>
	    translate InValid_pos_5
	   }
	  }
	 }

#declare InValid_bond14 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.714999,1.0000,1.0000>
	    rotate <0.0000,0.0000,50.5238>
	    rotate <0.0000,-6.8892,0.0000>
	    translate InValid_pos_3
	   }
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.714999,1.0000,1.0000>
	    rotate <0.0000,0.0000,230.524>
	    rotate <0.0000,-6.8892,0.0000>
	    translate InValid_pos_4
	   }
	  }
	 }

#end // (CST-Bonds)


//All atoms of molecule InValid
#ifdef (TRANS)
#declare InValid_atoms = merge {
#else
#declare InValid_atoms = union {
#end //(End of TRANS)
	  object{InValid_atom1}
	  object{InValid_atom2}
	  object{InValid_atom3}
	  object{InValid_atom4}
	  object{InValid_atom5}
	  object{InValid_atom6}
	  object{InValid_atom7}
	  object{InValid_atom8}
	  object{InValid_atom9}
	  object{InValid_atom10}
	  object{InValid_atom11}
	  object{InValid_atom12}
	 }

//Bonds only needed for ball and sticks or capped sticks models
#if (BAS | CST)
#declare InValid_bonds = union {
	  object{InValid_bond0}
	  object{InValid_bond1}
	  object{InValid_bond2}
	  object{InValid_bond3}
	  object{InValid_bond4}
	  object{InValid_bond5}
	  object{InValid_bond6}
	  object{InValid_bond7}
	  object{InValid_bond8}
	  object{InValid_bond9}
	  object{InValid_bond10}
	  object{InValid_bond11}
	  object{InValid_bond12}
	  object{InValid_bond13}
	  object{InValid_bond14}
	 }
#end


//Definition of molecule InValid
#if (SPF)
#declare InValid = object{
	  InValid_atoms
#else
#declare InValid = union {
	  object{InValid_atoms}
#if (BAS | CST)//(Not really needed at moment!)
#if (TRANS)
	  difference {
	   object{InValid_bonds}
	   object{InValid_atoms}
	  }
#else
	  object{InValid_bonds}
#end //(End of TRANS)
#end //(End of (BAS|CST))
#end //(End of SPF)
//	  bounded_by {
//	   box {
//	    <-5.44149,-3.42474,-3>
//	    <4.80727,4.94562,5.54015>
	 }

//Center of molecule InValid (bounding box)
#declare InValid_center = <0.31711,-0.760442,-1.27007>

