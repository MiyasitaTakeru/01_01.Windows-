#include "Basic.hlsli"

Texture2D<float4> tex : register(t0);  	// 0�ԃX���b�g�ɐݒ肳�ꂽ�e�N�X�`��
SamplerState smp : register(s0);      	// 0�ԃX���b�g�ɐݒ肳�ꂽ�T���v���[

float4 main(VSOutput input) : SV_TARGET{
    //return float4(tex.Sample(smp, input.uv)) * float4(1,1,1,1);
    //return float4(1,1,1,1);
    //RGB�����ꂼ��@����XYZ�AA��1�ŏo��
    //return float4(input.normal,1)

    //�E���� �����̃��C�g
    float3 light = normalize(float3(1, -1, 1));
    //diffuse��[0,1]�͈̔͂�Clamp����
    float diffuse = saturate(dot(-light, input.normal));
    //�A���r�G���g����0.3�Ƃ��Čv�Z
    float brightness = diffuse + 0.3f;
    //�e�N�X�`���}�b�s���O�ɂ��F����������ϐ��ɓ���Ă���
    float4 texcolor = float4(tex.Sample(smp, input.uv));
    //�P�x��RGB�ɑ�����ďo��
    return float4(texcolor.rgb * brightness, texcolor.a) * color;
}



