
C
InputPlaceholder*
dtype0* 
shape:���������-
<
Keep_Prob/inputConst*
valueB
 *  �?*
dtype0
N
	Keep_ProbPlaceholderWithDefaultKeep_Prob/input*
dtype0*
shape: 
2
rnn/RankConst*
value	B :*
dtype0
9
rnn/range/startConst*
value	B :*
dtype0
9
rnn/range/deltaConst*
value	B :*
dtype0
J
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*

Tidx0
H
rnn/concat/values_0Const*
valueB"       *
dtype0
9
rnn/concat/axisConst*
value	B : *
dtype0
e

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
T0*
N*

Tidx0
C
rnn/transpose	TransposeInput
rnn/concat*
T0*
Tperm0
:
	rnn/ShapeShapernn/transpose*
out_type0*
T0
E
rnn/strided_slice/stackConst*
valueB:*
dtype0
G
rnn/strided_slice/stack_1Const*
valueB:*
dtype0
G
rnn/strided_slice/stack_2Const*
valueB:*
dtype0
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
ellipsis_mask 
h
>rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0
�
:rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims/dim*

Tdim0*
T0
c
5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ConstConst*
valueB:*
dtype0
e
;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concat/axisConst*
value	B : *
dtype0
�
6rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concatConcatV2:rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/Const;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concat/axis*
T0*
N*

Tidx0
h
;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0
�
5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zerosFill6rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concat;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zeros/Const*
T0*

index_type0
<
rnn/Shape_1Shapernn/transpose*
out_type0*
T0
G
rnn/strided_slice_1/stackConst*
valueB: *
dtype0
I
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0
I
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0
�
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
ellipsis_mask 
2
rnn/timeConst*
value	B : *
dtype0
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*
dynamic_size( *
identical_element_shapes(*$
element_shape:���������*
dtype0*.
tensor_array_namernn/dynamic_rnn/input_0*
clear_after_read(
M
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
out_type0*
T0
X
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
Z
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
Z
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*
new_axis_mask *

begin_mask *
ellipsis_mask 
L
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
L
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*

Tidx0
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose
7
rnn/Maximum/xConst*
value	B :*
dtype0
C
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
T0
A
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
T0
E
rnn/while/iteration_counterConst*
value	B : *
dtype0
�
rnn/while/EnterEnterrnn/while/iteration_counter*
parallel_iterations *
T0*
is_constant( *'

frame_namernn/while/while_context
�
rnn/while/Enter_1Enterrnn/time*
parallel_iterations *
T0*
is_constant( *'

frame_namernn/while/while_context
�
rnn/while/Enter_3Enter5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zeros*
parallel_iterations *
T0*
is_constant( *'

frame_namernn/while/while_context
T
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N
Z
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N
Z
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N
F
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
L
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0
�
rnn/while/Less_1/EnterEnterrnn/Minimum*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
D
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1
4
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd
l
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge
r
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1
r
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3
;
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0
?
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0
?
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0
N
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0
B
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
y
/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/beginConst^rnn/while/Identity*
valueB"        *
dtype0
x
.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/sizeConst^rnn/while/Identity*
valueB"����   *
dtype0
�
)rnn/while/rnn/multi_rnn_cell/cell_0/SliceSlicernn/while/Identity_3/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/begin.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/size*
Index0*
T0
�
/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelConst*�
value�B�("�ؽYR��Kt�<9�ƽW;����>Q`S=l�,���uf輑[T>V�:��='�|>�`�>L��u���R�>{�>�_�>I��>T���	��K��?�	6=��u'>�i�-ý�Y�=�o�>ͥ>z�m�xd!>�����^�L����'=����,Ǿf��=¾ǽ(
�=���9�>e��n��<u�W>�;��{#�J�>����>���<=��8�z�����>8��>ED�>R�^>��V>kg�=W�,��k����?��S>�\<>�T��*�����+>�O���y��ʒ�>^C�>Gu�gO�;�ch��x���5��F'>���򤽒��u��<�=�����۾�'>[��$�X>����z��>���>q4ɾ`#�(�>)5=���>t�����ྣ���о��"��ߢ����>��Ӿ�^?%{�Q!n��D��{>�"������,�>Tͧ�e�����}�z�>Y���F! �٢ɽ�>�6j>R�=��=pdc>��$�h^E=�ڗ��$�>?���>���<bg2>�^�>;hD=�Z����_ľ(���fG�d�h�������1W&�|�p��X�<M�>�s!���c���a��pO>2��=��O=�Z
�?�=�#�>̀j<(�>�	X�B�W>���=9�u>ጨ>@:�;��G뫽$2�;�c<�m=�q�q+�>gc���!���`>���1U�t<߾���>�P3>����We>r3>N@�>)f����6?i�<��>���>d_���R�~vξ6l>S�8�~t>�d7������Cr=λ�>�(�>J�����>q~�>�`�<�=>{%����>q�=J����*�>D�K��a=�22>�{��y+>�ҹ>�vݻ|��">���3j>V$g>m��=�qؾ����<h���ˆ��]�>���>? �>bt�驼r׵=��>lO��[���K¬�7[k=7�V>��=���=��=!�M>=�P�_��>�S=jX^>)���؎��:�>�ؤ��lH>]��=���>�4�>O"�>`��>ȿ��"�� 3=�잾��'�N"b��<</i��t�>�4������t(>��ٻ�9�=�<��ˤ<+���>��D�������,�>�5>���=���t�>��>�κ	/f>��<�{@��a
�j�r=��w�8��; ��X6�>���0\�3�>Sp���5�>2����&>�6Q>?29����)#a>���>?6��L�d����=���yQ��=0���=�G>�c��>kGX�h�+>�;O~�>cL>Dz&>[����\>"$�>K��=�7�>h����->��>ǅ�>s���>q(�>6�#>�4�=r�n=�:>Kܼ>]4�=�6���ԧ>�N>�`��ȝ����>�j?=e���_e>�����v<�7�<�X��֦>�λ 2g����S������)>����	�5��̴>����2��>h>��^>ȭ���W=[�X>�FE>�R���"���h�=ژ��c�=�ZO�����e�=��:��.��$��)O�<�|�=�����
�Y� �A�]���'=�;&>0��W�=��������+>{r���Y�ފ=,m>����-�j>�h��j"_����>&K>���>cu����F>�I��T7!>4Tv�D�i��q)>*ŭ=�<H0�V�
�o\> 
�=��>M�\>�+�=�O�=����>$s�	��Ɛ�=��Ǌ>�K>�"�xG��C�>�4�Kv6>�� >�R�=��վ���>��=���>�O�=o��".u>�<��̅�>�9h>���z��>� ��y��>�$�A�)�EiC�.�>�=��.!=f�l��Lt=z�m�[�Q�HAK�F�?�GP��>��+>��%=�:���H�sA?GX��v�>6�t����=p��_��;���p�-=����м'�ؽ��w>�����Rj=A�
>�C:>���>�2��q�<Z�->�hL���?�S_2��8�CA>��A���U>K|)��p>���>�Y��������|>�ؽM.�;#�>��=W�0>��8>�{��-�>����>�Eǽ�Ɗ�,���V��L�>�J��fV(�vt>,ʫ>��>�C���4��C=jqS>�tT�kj����>�y~>�H3�׉>�>f��>;ۃ>S>�'�j�(z�>�*X>Y�:=ڤM>���=�BӼ)�>H�>#s������6<:,=�P<c��>C��=R��>p8/���<������T=J쳼���>D��>I��<��a=6Aw>�9��Ŋ����^E>G�>�*ܼ���>�>�G$���>���WTŽ)k���>+8��h>�5��=i9���9�<K(��+��>�s��-��,�
<����$_x>�?���ڽRs��YLs�3
�>��>�ɮ=d�s>�k�=[�}�h���|��[�=������ƽ.�G>gD��K��=�A^�S��N|��1��5���W��b�>ۏh=Y:o�z"T>N*�!� >�Q#�x�?��e����<�u�1��=D���\�þ��׾�.F����=C<�1�>0>{l4=2���u>ڎ9?�B��&�>[F��?�}>̜?n[�>]��=we�>�	/>��>���Y� �k���r0��0[�kc;>���=� 1�,��>/��x~��`��׉��2�*ra>Ų��Y������>�E��Ⱦ��<�8��;���Hk>���=&;&��s�> N��� �􈚾�	<Yo��*��>��=�%U;1	<"��=e=;��{y��~����%-q>z�)���8>	�>-���'.>�J���z����<T�=l�<؎
>=O���d��I�>�`	?P;X�^F�=����f
0��C<>F��=�~ƽW�E>
��>�w�>1|F�+]
>�\�>��;>���>�y�ks;�b�=�������%�[��=5�p>$��>�h=!�����=���>7��=�z޻�����?��>Z�J>��x��>�h�=���t?A���=0�>������>�=��������ϲ�P��>�ƌ>��һ�!�=�7��;�=��!�9!���,�>�b>�ݤ>򩝾��ܻ����\�G��������)�>��>;־L��>�6�w��Q�>A��=YM0<���<;���A>��(<�: >2@�L6>�^0��,��E��=S�>�����>Ƙ��>�.a>xբ>�B�>��M�t�<��ƽq
=�'�9�י<+f=�&�>M�̽1�d>��½���=�6���X����=�ʐ�#ݩ=��>ה��~��(ޠ>���o�='�=���>j\V�^��&=A�{=�� �p#ؽ�t%>���>�5����>{�>H��<Ր
�i��>v?��-�!����hC�|��=`�#���A�cà��ͻ��[���=XO�=�1�n4��E[=NΗ>������M�<�>[�=㙛<�[>��>���X�&>��>��>&�J�8&H>���=Y"I>��>�*_>(O�=W�>��>���>��R><��>�����?�Ě��7+>�����.W>3���D��=ȫ��S�>~�R��Ԫ>+��
���=D�9>����	�&�'�F���=�]�e���	�ؽ`�d0=�+.=�/��L�[`Ӿ�S����侠d�1(���3���N<*
dtype0
z
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
T0
�
-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasConst*�
value�B�("�|�w?�?�i�?�߈?^?�?݀?Up�?��?�i|?��r?"�z?f�?b��?%��?R]�?lʀ?�2�?&ʁ?�:�?�͈?2�y?�~?N�2?��?9Ў?`|?8)U?� �?A�P?�|W?nU�?��?O�?
b?L:�?~�P?%��?ןy?�!t?�?*
dtype0
v
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
T0
�
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelConst*�
value�B�"��]�>o0�>��i>s�����>��ھ������=
>Ѓ����>2�>��Ծ��
��K�{�=�Π�I|�>�`�>Y�W=jeP<w���^;<�w/>M�*>�u���g=�z�x>�
p�d�`>�_��j�>�Խ�=
��s��]�=�m�%�d>"M=򺏾��?(����:��#�>�Nk>4ξ��.��l����>b�:��+�>�=�W�P">����"Z־�l��� �>�S>���>ը��=���#��$2��.��BeF�I��>�I�(�>��G���>3��>狾�j�>�;_�����X�E�;{+���x<�㼾0�>Z��y��=��c���>�>W� >αY�}Ѝ����>��Ƚ���=[��������̽�'�=��x٤>j3���:�>v^=č�<�v�=����
��_Q��w6���u��3��3��>�v&����=l��>:i�=,�>��=��u��+>N[k��r�>)�l>K�4�T55>8[�>hv��y�>�Ϻ>������>�𗾨Վ<�A�=XN�>(Ћ>��V��r�>-(���~c��ꪽ�x=z���W����>Z�u���o�jș< Ƌ>mV�>t�Ƽ;ô>�K����>@�h>�6>� �>TI�>";���m)=Y��<6�>�n >����nþ����ww�<կ�<?�>$���9�>J�T�9��>�?�> $W�j���C�>3����
?p׀�Q�>�w>���>�������>X�k>$&	>�!�==0��Ľ5R>�M'>]��=��<-�G�@�&�^>f� �>�qѽ�</���߽���<^w�;Zo����>o�����{�s!�����=���=����6�f9�>�>E�>.O�>��S��ӽYa>�f�>�Ⱦܿ���\=�K��g;�>C��<ĕ��V>6ý�C�>��?�A�<�X����l��O<%������>�׾Yc��ƛ��Q>�e�>U+�`7]��v>x�>I�)�YP��Ԅ=��=�̚�[���ݦ7;���>,>�W���e�>��;�'!��H�>$Y׽�4��<3��>$F�=K�=���9�2�>2����=+�K>�޼3�K>ǐo���� [��8��>�ڇ=�������~�=���<�&�> =>9C�>��>G����2><��<S��>b�
>jĥ��\(�=π>�1�>�S�72��V(4�ȟ�>�&�>
>�>�M=�T=&���=ξg��>�o�>cBY� �0�:�{��ϝ>
>Q��>�&���0�>J�d��F��D��>_�վ�T��S�=ˁN�	�0?�����j��M��:5�G��W���F'����>Ѭ��E��|J->`?�=&蝾
��ˠ$�Wϗ����>C��>�3l>V����C<V9!>M�>|��>/=�>���>t,�>t/���]�>n��=>��5>C] >�>�69��7�>�H�:��⮾���BDǼ��>t�>�\>�({=^;���������[����>}'���>p>��l�����v���q��F�>��>AYӾ�����<[����%�:�QA<B4�>���|2�>�[S>c���O^��m�zGA;
6�=�o�>�L�>�,�����="a�>��>��%�wΊ>��x���d�c0>��>j����NH�L���)2�;2���j�>�� �~t�>�ζ��ݙ>ј�>��>B��<��=o���{��#
��/|"�Ƿ\��a->xn�>1�Y�oA�����6��< C�t�>|��>Q��>���=�����=.P�=&nF�8��>.���Rٽ��ҽ$&��Z-z>��H>9H>�H<i�>D?þT	>z|�>�T��:��>*
dtype0
�
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
T0
�
1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasConst*e
value\BZ"P�q�=��t��@�;��`<26?���=(U>m�=,��;A��=��;gm>��<k*�=�H=N\h��<�A<�ӄ<���<*
dtype0
~
6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/readIdentity1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
T0
w
8rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concatConcatV2rnn/while/TensorArrayReadV3)rnn/while/rnn/multi_rnn_cell/cell_0/Slice8rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat/axis*
T0*
N*

Tidx0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMulMatMul3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat9rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter*
transpose_b( *
T0*
transpose_a( 
�
9rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/EnterEnter4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/read*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
�
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAddBiasAdd3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC
�
:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/EnterEnter2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/read*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
~
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/SigmoidSigmoid4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd*
T0
{
<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0
�
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/splitSplit<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split/split_dim4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid*
T0*
	num_split
�
0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mulMul2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split)rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
T0
y
:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1/axisConst^rnn/while/Identity*
value	B :*
dtype0
�
5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1ConcatV2rnn/while/TensorArrayReadV30rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1/axis*
T0*
N*

Tidx0
�
5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1MatMul5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1;rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter*
transpose_b( *
T0*
transpose_a( 
�
;rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/EnterEnter8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/read*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
�
6rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1BiasAdd5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC
�
<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/EnterEnter6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/read*
parallel_iterations *
T0*
is_constant(*'

frame_namernn/while/while_context
z
1rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/ReluRelu6rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1*
T0
�
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1Mul4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1)rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
T0
t
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub/xConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/subSub2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub/x4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1*
T0
�
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2Mul0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub1rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Relu*
T0
�
0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/addAdd2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_12rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2*
T0
j
#rnn/while/rnn/multi_rnn_cell/concatIdentity0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add*
T0
P
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0
H
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
T0
@
rnn/while/NextIterationNextIterationrnn/while/add*
T0
D
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0
X
rnn/while/NextIteration_3NextIteration#rnn/while/rnn/multi_rnn_cell/concat*
T0
5
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0
�
dense/kernelConst*�
value�B�"��F=)*8�sR�>�"o>V?$��>��Ͻ��|�ݸ����+�1�\�ݗ��#�X�r��>�rར�~>3�/���`���>g� ��־�^���4�>�Ѿ��ž��?��>2����o4��}�g��>|������h�G>�V���X+=;��>2�!���:<dY��]��>�¦>��m���?z��>�L���^g�7m��-���~��<��#��3�e���}>�`N�?m>����7p=���V��s�>ԃ�_JE>�l�>�k�����;�=�=�>��i�[����p�=׼g�I�Ծ�$��T��>/�>,o>��2�;(>��ɾTԾ��=MT(>򉾯,�=�ێ����>}d=镲��)T>҂�����=�Q7���ľ`�>qb����h>}�#=΃�=��]�t枾�s�>�ֽZ�>Rhk�k/�<�q�Wu;>S�>�@��~v>�> �� �l>&d�=���>^�E6z�}�n>TNe>� 3�9�=���>V睼�t�H��=MA�>�QK>������B���>7���Q���� ��� ��/)����h������|پW._>-�Ƽ�s���W=�{����>,�l>`�����>�8�>pξ �d<`��>c#s��ߩ>��f>�j����=��׽.;x>8��1�S<=������$��>�1?=L��l�>�3>�2�=�#�>[?�����!5d>�Yž=��վĿ�={�l��_P��Z=_M#��pT�heD��>�彌�o���A>�l>����b�>�R>d����LM=�w�=`ro>o �>�IھH�=H/�=��}>?y��/��=nY`����������>�D�>��>c��>0P�>ѻU��?���<��B��>p-��/�<��]:���w�=��<�l>���>�(f���>�>���j->>'��H�X�EwO=��>��=>��>���>���>��>�N����ɰ��&Ⱦx*�>-�'�?�٬�>T ����>�9�3�л�N>�X��5�~>
�V>�>>�S�����Վ�˒N��b��^]!�����|��>�r�����E��>>�+>�8�>������>��>8���&l����9E���N𾚵U:n��I�������?��l�>j���P���b>,ʂ�ek�>�Ծ=�r�>c���M��>�B׽�l���,	��R�>�>��&=�0D�C�>�Eھ,�=�Eh�ek>�8O>��%���c�$??��hP�Ӥ����o��5�;:���M>�Ό=�볽�C�>ZXp>%�>{>�g�+�c�����ά��[�=����ĽK�>������G>��>�>@P�=�%�<~��=���=�)�������Խ@l>y��>:��>�-����ڽ v6=`�>�fڻ�B��e�@�ë;��¾�����@�>�P�RD�#>�c:׎=�C���b�>3��>��;�;=>��}�|�^>���>u�<��'͠�x���3����t��A<��=��Խ�����F�_��=�˙��!�`��=Q�>0���b=ǐI>$ti>�%)>�,c>���&���Wy<�p�t.>�*D�5��>�=R�@Q��_k���zs�*
dtype0
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*e
value\BZ"P� =,.�<<}=���<���<�~�<|񁼄�>p�,=�&=��A=u� =�q���=!ټ�a�ed=;;�C=muo�*
dtype0
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
j
dense/MatMulMatMulrnn/while/Exit_3dense/kernel/read*
transpose_b( *
T0*
transpose_a( 
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC
*

dense/ReluReludense/BiasAdd*
T0
;
dropout/ShapeShape
dense/Relu*
out_type0*
T0
G
dropout/random_uniform/minConst*
valueB
 *    *
dtype0
G
dropout/random_uniform/maxConst*
valueB
 *  �?*
dtype0
s
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*
dtype0*
seed2 *

seed 
b
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0
l
dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0
^
dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0
>
dropout/addAdd	Keep_Probdropout/random_uniform*
T0
,
dropout/FloorFloordropout/add*
T0
6
dropout/divRealDiv
dense/Relu	Keep_Prob*
T0
7
dropout/mulMuldropout/divdropout/Floor*
T0
�
dense_1/kernelConst*�
value�B�"�0Eɽ���=�^5�N�>V,��{��>�<.����
�r����K�`;�>副>B�W�ڏ ?t�����P|���8���`^>��g}���N��S��^�>��F����'�>y�>��j>�U#�~�� m��?r!����s�Í�>M  ?�E�>���=*
dtype0
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
valueB"�J��J=*
dtype0
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
i
dense_1/MatMulMatMuldropout/muldense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC
+
OutputSoftmaxdense_1/BiasAdd*
T0 