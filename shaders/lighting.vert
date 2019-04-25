
varying vec4 col;

varying vec3 View;
varying vec3 Light;
varying vec3 Normal;
varying vec4 Ambient;
varying vec3 ModelPos;

void main() {
	// //
	// //  Lighting values needed by fragment shader
	// //
	// //  Vertex location in modelview coordinates
	// vec3 P = vec3(gl_ModelViewMatrix * gl_Vertex);
	// //  Light direction
	// Light  = vec3(100.0,0.0,200.0);
	// // Light = lightPos;
	// //  Normal
	// Normal = gl_NormalMatrix * gl_Normal;
	// //  Eye position
	// View  = -P;
	// //  Ambient color
	// Ambient = gl_Color * 0.3;

	// //  Texture coordinate for fragment shader
	// gl_TexCoord[0] = gl_MultiTexCoord0;

	// ModelPos = gl_Vertex.xyz;

	// col = gl_Color;

	// gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
	
	//
	//  Lighting values needed by fragment shader
	//
	//  Vertex location in modelview coordinates
	vec3 P = vec3(gl_ModelViewMatrix * gl_Vertex);
	//  Light position
	Light  = vec3(gl_LightSource[0].position) - P;
	//  Normal
	Normal = gl_NormalMatrix * gl_Normal;
	//  Eye position
	View  = -P;
	//  Ambient color
	Ambient = gl_FrontMaterial.emission + gl_FrontLightProduct[0].ambient + gl_LightModel.ambient*gl_FrontMaterial.ambient;

	//  Texture coordinate for fragment shader
	gl_TexCoord[0] = gl_MultiTexCoord0;

	ModelPos = gl_Vertex.xyz;

	//  Set vertex position
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}