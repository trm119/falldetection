
C
InputPlaceholder*
dtype0* 
shape:���������4
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
value�B�("�a�7�����X�=���>��#���l>��Q>��=��#�p[`>�%>ت'>����l��ŵ)��ˁ��Z�=?W���%����>��J��Ǩ>I��r�+���>N�#>�c�=^Qg>�>e(ɽ}lR�����w�ѫ�<�Z��ޤ=�׹����>������;��=A��> #>�2��h>�~#>�>>���V]I�_b���4�=dV=����_����>����k����ͽ-�Q�,ۀ�M�ѽs�>�f⽫�ƽd�"�8�>*�=n�y���!�����s�c�E��"
�b��>n�:>�i>ɳm=���E�>�(>�>@1�>?��>z>�1�>'�<�������>���=hG�=�_�<�>�A���G�K_����=W8���ڽ�>H�>@���B�G�㩊=�*�>yP=~>�3&<��Ƚ�"C�S��/�:GKv>��j> Ө��	S>�"�<MY����W>��p���(>�q�=��>�>�Xھ�w��UU��-�=�ù<|�ν���>>GT�I�>>5�c�~V�>����<O�>���=�t�>�<�%�;��8�{�=:$J>�l���h��r��>zG���>���>}�(����>�l+>�+�ı��ud��N'�	m������� �e��>t���V�>Jƕ��,9=�~'����� ������>�>��^=�o;>���>SG½�<?�Rf���6=���<+B��t��`���{�>nd�I�B�H�>�Jl<�§> �=���Y���/�0=���_>�MH>��=��@��9���>9�����>��>^Ų>'P��/�K���`�>5����'W>Ǻ�U�>=W��[G@>-��>�>�>,�0����=��>(9�>�V?�mh'=Mnl����=w�>_��\��\��������:��/�ɕ�<ny׽���<ғ��J>�[e>�B�>Ϳ���'�J�g��&C<�'�>��]>���=Z���
��y�>�=m��=r�>$�`>�e*=M��>���=�N�>��>e�2�^��>A�<|�>�e)��J�=fZ�� !���/>��>���<������>�D<=�F��s1>=�r�> ���.?��;E�<�w0>1
�!�N�&�">���
aY��|�=#���=W�b�r�E���J<�G>�:�>]ޓ����C_F�����<�=�l�>!N�>���>[=>�}�<Mq�>��=�=R=�~5>-�=cX��70>�����Cὐ����Ї>/t*�q}��IZ��������Z���i�=v<>�c���v�=�8<�#�)м��?=��->]y=�(�d��>�7�>-]>#I����v>[w�>��>ӤY�^9�>3��>�;��:F>�C�>�n��P،�r�>Mɝ�N�4�����}��>s��=tj>���5�=>��]>g�=�Ѱ�
Ľ������yY�>:���ϧ�>���=�n)�~�՚=��e>l�>�ٿ>P͟>��=�0Ƚ�	����>�_={7�>]I5�:Ϸ���Y>�/�����D�>���=y�"$�8Ĥ�>u�,>���=	���j:�>�욾��ս���:���=�r�-���($����=db��6n�=�=T��=gN�>����-r>�wr>�~k��U���]>1[�>�.��]r��w�8��el=��>�,�>䴮��>E�0>{U������<�$�=�J��HǕ>�7s<�M��Ge-�M�㾪��<�~��^K`>�r�>\�>zp����Ծ�E���>\�=�Y�=���=��� ۖ��ޭ��膾o}H>�8
�p���٨6��=�>V=e�$�U�ȼ}aC�.�M>�p�>��_K���>u碾wS$��/�=��a�Nכ�+v"�!3P��a��;E>1����^�N�A�YϬ>����lľ��i��T�=B7���ǽ1C��,�Y>�\���W>ʕc=b��
��~,>|����]?9>6��݃�>�@.��<z��>�r=}]<�H�=;�#>�l�>�Ǧ�����+&i�yrؽ�j>�t>M�>f/��GY0���}>�V�>VX�=L>����D�|�F>������}j>��F��P�'C�=Am>�=%>��=QZq>[A4��۾� i�>��>�h�>w�T>�Pa>�g&=W��>��-?����=3��=D^>D��>67>�5>���o���E�>�A�>ax�>0�=n��=#C��3
?}>.�;�>wrܽ�5��B�=I��>��Q���=�N�<���>�K>���=�x�>��=W�뽚w0�΂�=��3?�[=��=J���� ���=,�>�3��1~>oex<�?��Ǿg��v�����i<�*�=����a��_�7=�V���-��m�=S�>༽u7��n�X>��ƾ9����n���S���7��#=a�A�Yׅ>y �[y�=J6�>百�l>�sx=/'�>�Q�>Z7i>}m(>��=��A>��<��Y�%�d>��>���8½x��>��S>��b�����{�j�t-�=��=�M�Y|�=j�=��>�d>{!�>s{־�}Y��A���h= �5�5f>�%�>b[C���>���=t��R�3�R��rb��Ҩ�ܛ?lZ�=aw�>��=b�=��>�tQ��t�=�[q=�g>��
��e�>�Q�q{�=2��R�=s#D>��=��پ�8�Q�K<� =���>	�<0փ>a(�:�2>�C��ۚ>�d��ǜ��0����>>~�Q;�cn>۾N���> Tg>���>���>`�{��|>�x�=1�ڼ�|潲E�=�ka��,>�N���v�;*��=wv=絜��ż�<�>{��=�<��%��8E>-FL�GcO��L����>�ɸ=���=�g��4���9�k���7.>B-��)ئ>�F�����70�:+,�$>�F�C��>�j�>��=�lC��bD>����J��϶>��|��W�>R�־�՞>.!�V���{�=Y��>k��1�x>䮈>F���葾1I�=�ν���v���>!>k�<�^m�WO9��Y�=ҺQ>��ɽ�Q�M��=:�C>F:+>���>)�>��'��8�j�k>`M=��7��(���|>�8+����>O�>o�<P��:�=y[���>&��l���H�>�� ����o���嘾2�k�������>A>�xU>1Jr�]A�<�;�4B'��,��� >	�:>D�=aљ�H>�"�=�М=�ư>1@?��ýT%>����i}�=_�>�Œ��0�c��t��H�ݽE��<�%�L�>rȷ=���M��>�!�<��=k�E>�Y��^���>>*3>#�;=��>�/]=ų=iߪ>�s>��>8�>�]N>��K>��a��j>�r;\>%��"�=�~�aD����>�U�>���;L�>C�v�3�.�:rE>���<�%���V>�%>�k�񹤀�<�����>��&>�e>�VT>AV̽RЦ�f��>�Q)�T����Q�>
H�=js��,,�����>z���4���V>���>(K��ޒ>�ٶ>��a=�,�f�(>E�Z>T���ߞ'��a�>jiR>�;��9U>nT=���>�޽�v3�+ >}I)���%�+�>�޻Km�>U�>�<���E\�W�>I^���掾MI�=��b=8,�>��Ծ]����>/���.B'����*
dtype0
z
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
T0
�
-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasConst*�
value�B�("�]�?�h�?䧅?]ӏ?�}?6r?]h�?C��?dGt?�p�?�ʘ?DL�?���?a~?V�?�|�?&�?�@�?6��?��?"�e?�p�?yF�?�ބ?�x?�ؒ?e��?7|?br?��D?��D? �9?�
�?��Y?�0V?��]?�Qq?�dp?�?�?*
dtype0
v
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
T0
�
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelConst*�
value�B�"��M{�݂���ē��=��N�s ޾���>i��>^#�>ӽ�<� J�e:> ���v��>�a�>�,3>��<�b���ʾdUX=O�9���d=��Ҿ�]�=�)���݁��U!>��>I�Y> >�>t�㽳͵>�~=�|����>#�D�i&�=#[�S�� k����O>����[�; �5�>�4�>�2=�8���>�Qa>��Ͼ��<�Wa>��>bԼ�!��=��>�Q=��"��n�>,�sg�>��E���\=�_�>��=��>x<�>[�>4����A?>|o��y����Eb�н�6h� '�>���>��ֽ���(j>�q�=�kb>jMؽ�ˋ��a�>���>��0>�p?���>n)�> <���?�7������	��>W��>9	�=SJl>uw{�3>���>ґ�=��н0V�>�
����>��>�Xk>���J�<�_�>#7)�*�>��Z��P��H��n�:>�n�<MYw>�:�>�z���y��8�>���=*������=���$�ΐ>��>�y����!����=&��>^�,>������>���=�����q>"���o���=Y�/�ͼ�R���<��>�ȷ>��<�R7F���?=ϥ,>BȘ��?0�v>�1���½����缌�ɽ��������>}��>�����>�Z���?.>����S6H��XL� Ƚ��»�E��g���ol�������Z=�,�=u���9Z�>L�(>�}��簾��>mŵ�"�j>�J�>t*��K�>�v> jǾ����F:r>W�>Gঽ���9�p}�>X-���}�=�#s�G�v>��V���.��>�>�_�-��>"�n���">�]>=b��<}>�ۤ=Pc��`>���#N><ֳ���Q>D�>4��>Oြ�[+���>rc�=��=؋=�>�8���#�-����[�=@ }�雕>�
<���>���>�NN��F�>�@�>y�=��S�o��>�+��*9=_�E
��kC>9%n���н���>�S�'�1�J��>ɵ�񏶽_��=2�>�U�?3X>z����o*>�C>�{�=���=s6�>�Mg�g{�>�V-����b��>q;����R�A>���>�
�>���=b�>^r��B�=M�ؼB�+>��o>���>۱=Py���<B�>q H�9�߽�0�<��X>�����=G��=MÊ=!�=��U���L>P��������>ٍ��ݝ�sRb�8��>߅8��C?�>� ��gyN�|h>/L��0>���d�>������>�H�>��:<EQ������u�>!\k��꥾�B���~>�������=�͹�#�s�nr�>�ݶ��·>K���_Y�>�=�#>��;>��h��;�=6�����>tj��`��ї=�
?f<սT��_���E����z�>�����>O��=����ƻ��?>��D=<�>�O�>��>�L��y��v��8ܓ>s�d>9"7����������O>�s��/޴>�:�>Q"�n�M=�ۣ>��?����X��>�}��Irx>���>YXJ>��6�1I�>g�Լ%�>2y>���=Nj���Z�>W��=��%��0q>��!>+�>V�2��]T>�}��C���3C��(b>ϭI>��>Ȓ���݀>�!�=�G����=΁���WC�>��>�+r���Ҽ�lS>��>a��>���>�窽��y>קýU���>���>j���`�,>� ɽ����᪾��W�^��>�U�=�L��^[J=�&=r�н��>�H�=�ڒ>�>��>-=>E"\>�ܨ=(S=�<�>��Ԛ�>GӼ��>�xۼ*
dtype0
�
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
T0
�
1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasConst*e
value\BZ"P6��:�n�=7E�=n��ۃ�=���=|��<} =rO�<
<Ű=8_�;Cns=��=tDh<��=��\=v�¼B$�=�s�*
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
value�B�"�����M�>&����Wv�<�>�]�~㞾߄1��f���׼r=�lž���n`=7���3��F����>�S>�9����>2�8��5�#-����>���> �=3#�=u�>�>�X�>?���s0�>�ޞ�I�>��U>F^׽�����[�a��>�Ι�ϲA>3�
>�;������3�>�`����:��>�J�=9��>���><)Ͻ�+�>����NӋ�{�������޽稾����)EB�jL��aO>��ཏ"����#�=�B>+_ľ���>�> ON�"��D��gs�>"���ٟ=��̛�� �����	?K�v���ؾK����e�پ@�E>�9���M*>c_�>wt��>�o�L�X>c��;y�1>�pp����JL=GZ��%[9>@��>Z��=؞>[l�>��¾��W���=H�F�4>mW���@�>=�=BC�|e��𬵾��>��l=�L=*ażO��"ܐ=ǀ:>��g��^�M�H�؎�>��=LE�=I�I�n#����<�\�>���>�h�=/�>/�>v�E����&\D=4�,>���>3�\��u��р��=P>nP�>�S���>�Ӎ>��>��|=�<L>:ͽ�o>�ʸ=ǌ1�%��>
���ޕ�>�9g�L����=����ҋ�V�>A�'>vt�>��>x%�&s�>��>> 2�>W��>���>ϓ�>1�x>�^<���=bᮾv3S>xi>�8Ծ*۽��f۾��ھ�W��L{>��d>��!>���L�֛��/ll�rB�=bA�������=�_��^�>0��w�׽ dc��N����M�Z�AB/����=Yo?N��=g��>7�������̻|��>I��=�u½2�h�7S��,�=�Ǿ�:�M�A�]�:>)^->Zz?��7��E��U+�=��->9޴>�P�=�@׾�6=�S>-�q� l0���O>-6p<o����d>+�O�$��>��D�ź���t>⽔��~����R����3�����5�R�5���.rb�]�l<�P=�w�����>��>A�0�Jvl>S2>䗕>�u�>���<n>܏��#���>b�������>d�>�3ɾ(y�Ws�"U=�͏�,����A�>�q޾@���ξ({n�6H���w=�g>��j�A�>߼���!�>�{ �z�F�q��>��&�/����*�\���P?l���<=�(��h�|����>��¾�=A�">~�>M�{>�B�>"���a>���=�[Ӽ=�+>�_Ҿl*c>���>�����2C>���>�`l>�n�>��>-G��~mq>Fð���>�c�=�����Cr>l!`>��>?ۇ>Փɾ��0>�Ď>4~=U�½i��P��=ZY��.ͽ�RN�^x��F5��?>�4>mj����<�+N=�ئ=Nۚ<CB0��Ĕ��YE>��I���E<~P۽��
���=\*E>ʍ>	y!>!�s�J�:��[x>%�:��>��Ͻ��Ծ�p}�>�Z����Q��dO�=�IB>E�P��������b��^'4>U�f��Ѿ`��=�T�L|�<�ғ>��F>e
>k��;La|>){>�_�D3�><P��wo�>߆0�*
dtype0
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*e
value\BZ"P��<���=.��<#
=S�B=)\�L�=w��<Z��<���>��@;y�8=w�<���< �]����á=��9<*
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
�
dense_1/kernelConst*�
value�B�"��?�9%�>o�,?%u������?EϾ��9>��=~?3��<�&+��r�<�V?p%:=H3�>TI���Ӷ��b���Ҿ�z>��:�[dܾUks�1�?^��e	�Q�>�u�^5 >MH�>��>��>r���@�к؉����\�����u�>*
dtype0
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
valueB"w]߼y]�<*
dtype0
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
h
dense_1/MatMulMatMul
dense/Reludense_1/kernel/read*
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