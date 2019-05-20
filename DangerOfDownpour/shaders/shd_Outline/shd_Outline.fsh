//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//Shader variables
uniform float pixelH;
uniform float pixelW;

void main()
{
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	
	float alpha_org = alpha;
	
	alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + pixelW, v_vTexcoord.y)).a); //Offset to the right
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - pixelW, v_vTexcoord.y)).a); //Offset to the left
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + pixelH)).a); //Offset to the bottom
    alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - pixelH)).a); //Offset to the top
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.a = alpha;
	if (alpha_org!=alpha) gl_FragColor.rgb = vec3(1, 1, 1);
}
