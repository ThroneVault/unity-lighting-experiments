﻿Shader "Mobile/Diffuse (Albedo Only)" {

    Properties {
        _Color ("Albedo", color) = (1,1,1,1)
    }

    SubShader {
        Tags { "RenderType"="Opaque" }
 
        CGPROGRAM
        #pragma surface surf Lambert noforwardadd
 
        float4 _Color;
        
        struct Input {
            float3 viewDir;
        };
 
        void surf (Input IN, inout SurfaceOutput o) {
            o.Albedo = _Color;
            o.Alpha = _Color.a;
        }
        
        ENDCG
    }
 
    Fallback "Mobile/Diffuse"
}