//Povray V3.1 code generated by Open Babel
//Author: Steffen Reith <streit@streit.cc>
//Version: $Id$
//Date: Thu Mar 13 18:08:39 CST 2003

//Include header for povray
#include "babel31.inc"

#if (BAS | CST)"
#warning "Molecule without bonds!"
#warning "You should do a spacefill-model"
#end

//Use PovRay3.1
#version 3.1;

//Print name of molecule while rendering
#render "\b\b \n\n"

//Coodinates of atoms 1 - 0

//Povray-description of atoms 1 - 0


//All atoms of molecule InValid
#ifdef (TRANS)
#declare InValid_atoms = merge {
#else
#declare InValid_atoms = union {
#end //(End of TRANS)
	 }


//Definition of Molecule InValid (no bonds)
#declare InValid = object {InValid_atoms}

//Center of molecule InValid (bounding box)
#declare InValid_center = <-0,-0,-0>

