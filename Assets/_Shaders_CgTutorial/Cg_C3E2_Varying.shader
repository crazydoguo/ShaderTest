﻿Shader "Custom/Cg_C3E2_Varying" {
	Properties {
	_MainTex ("Particle Texture", 2D) = "black" {}
}
SubShader {
	Tags {
		"Queue"="Transparent"
		"IgnoreProjector"="True"
		"RenderType"="Transparent"
		"PreviewType"="Plane"
	}
	Cull Off Lighting Off ZWrite Off Ztest Always Fog { Mode Off }
	Blend One One

	Pass {	
		CGPROGRAM
		#pragma vertex vert
		#pragma fragment frag

		#include "UnityCG.cginc"

		sampler2D _MainTex;
		fixed4 _TintColor;
		
		struct appdata_t {
			float4 vertex : POSITION;
			fixed4 color : COLOR;
			float2 texcoord : TEXCOORD0;
		};

		struct v2f {
			float4 vertex : SV_POSITION;
			fixed4 color : COLOR;
			float2 texcoord : TEXCOORD0;
		};

		float4 _MainTex_ST;
		
		v2f vert (appdata_t v)
		{
			v2f o;
			o.vertex = v.vertex;
			o.color = v.color;
			o.texcoord = v.texcoord;
			return o;
		}

		fixed4 frag (v2f i) : SV_Target
		{
			fixed4 col;
			
			col = i.color;
			return col;
		}
		ENDCG 
	}
} 	
}
