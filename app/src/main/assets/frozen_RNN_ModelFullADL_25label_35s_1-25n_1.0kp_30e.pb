
C
InputPlaceholder*
dtype0* 
shape:���������#
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
valueB:*
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
valueB"����   *
dtype0
�
)rnn/while/rnn/multi_rnn_cell/cell_0/SliceSlicernn/while/Identity_3/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/begin.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/size*
Index0*
T0
�,
/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelConst*�+
value�+B�+2"�+Ays�z��� 8����%�N��\>�O==������ic=H��W&=��n=�ȣ�+�>�㖽�%���4[>;sB��b>��$>�ާ��R>@맽s�n>�b<���X�$�~��]e>�A�����=�<+>��K�w��<sp׽�e���>��=�P�H��]詼\�>��<��o�>�9�=��Ӿ�����>c*7>_0��l���9>�5`>t��OÆ=; >�H<=��>�A>�_^=gV����� j����������� >�����@=?��W]m>�L>$��=Y���N���K�[%>��f>Z|����">�e�=�fI>3R�>��=�K�<�B)�J|���9�>!J�R2)>��	�O>c�$��>Lܻ=��:��:�>����F&�3Å�����.'>�Ӂ=&�>���=�n=>X����0j��=�b[�Y|=XR�=����i>/�?����+>S��P�>!�>��Ǽ�rB>�,�=���>�>�T>c%�>��V>r/�=�q߽��=�4���n�=�h>�� �%�>7|��'����*��,>ȯ�9�*>�>�l����&�A�|��k,>;9>��*=� ν���<f�����6�	��<�Q:��F�<�����i�>S�f>>�	>�40>A0�=	ƹ;7?�=��>�>5�>�Z�ՠ'=��S>�Tǽ{�>����=��d�>8�+>Y�V�ʬ�<»彎d�mYL�v�!��"Ӽ�ױ;�*>L�=��k��l4=T�ߜ%�s]��pм�$G�i�>����>����n�;� T�]����ʽo�5����=Aal>"fl����=� G��>y�/���=I���2��D<�eb��|��_5۽#��=�������=9��L���G>�X=�y���>��E;ҏ��Y�8>��G=C�]���R>^֮>F�G�Ym�>��n�,�Ƽ1��.�Z=�wI���d��D�=��&=�k��aS,>\ ��,�=+&��d��!�J>�DC=�/y��a^���콤]~>u�����=�Ɋ>Y���g>b�� �&��"d��v>N�*>�@&=�±��-=[�)� �_�#�>��>�Z;p�*=B6��>�����r�a�%>gp��N��|�	�Nh���̈��h>arҽ�,�d�w���8>��}>v�j�RHt>����.->�^:2ͫ�mg�=1��ݓ��.�`���XLi>���=�B&=ZB�>�|=�><Ꚇ>dA�>q;>�-	�b���f�>��>ԣH��Ok�c��� 9m#��O������=7�>�:�Wj�>Q��=���=ACI����'�D>�o�=cd�9�f>��~>��4��=������+=��%>[><
>Ҝ>��`=� >�]��tF=$t���7=9�*>s%>�j>�2>V5�>�B1�=Y
��l>�!�,pļ�L�=]�H>�=*�\<�^7<!��=���>)j=n+�=n#`=�Ji<ƃ=�)F�� =��a�"7��>$��<,��{��>���J
�IQ�󧌾7K�>�z=ax����d�.���5X�o,�r��=���W*�= F[='&��F,>�i�=f@>!su��q�<&cF�%L��=MV>���>�X�� >�W����Yw9��F>y��>�G�> x^>�^�=X	�1i�=��>���<r����Do��Bq��a=�$]��	B�煅>�$���B�:�l>��=��4�cs���F>�F��{�Y����=�h���Z>w&B>��b����>�����,_��]"����>+�0�PW*�g�Z��=��̽�n>[9���=Z�]���%=�k���ѱ��B�=I��>Mh�<^ė>D���Oz>4�>������%�|Ķ=�A~>7>�J]�����>�P��_��+~>Pz3=�%>�!�>��C>/�>G5ӽ`���<�z>pT�=r�㽢�X�X��=Eϑ�۞%>!�r>@�����=��S>���>��I�%�P�w�}h)��!��m�>��Q����{�>z�%�� ��Ǳ�T�m>�_�=w����=	|>���>�n�C�:�೼UQ=F�	>%�+��|r>Mձ�`m8�'��4�u�L��= �>���>}����">@X�ˬ�>�Y>�U=�~��� {�3ç��Ju��>կm>�����gn>���ݠ<j�>�ye>�gN��S�>v�����<��=��&>z�>n)G=�(
�-��8�<v�&>�c�>�8>��;%׉>������>��]��=�j���F�g�>i�:<HHf�+�l<p�B��Q��/�#�
2��x콕��=��#��5�>�WG��e��>8t.=n�L�))�={W=��)f;����2՜=�Ѻ=@�q�2p��Q��<	S�=�^�>�?�>U�=ܒ�����P�<�˽�tx>Cg�<�@o�LK��	]�����C��K�=��e=[&��8�#k�>����%�>���F�;>��q>1
�=��	>ۘ/�/>>n!�#��tk#=���=p�+�oS�#C >˒��0<=Ih�֎�=�]�>xq>WYI>-ى>&��=��>��u>�[y���<��^���>5�@>�}g��U��L�=bX8���ܽ���9�{�=��=}Sd>*	��	6d������,��x>䀹�;5(>Dp�>x�>��>>kk��|!4=\"�l�m=r�KꇾC�K���{>E���!<y��}���W�X����u#��� =;=�=fY�=9�.<C�=�u��$3�O��>-/>fa�=/��<X����'���'>O(�>�1�i2�>�˳>�f����[���:��WK>{��<!��㢭=Tm���$>�4>��=��N>�q>T�>�9�;>a>8Ly�\-��dL�U��[�=aA>�6�;
����A�=���/�U��a�>��<������=0%�������>�'�"�=zP�==,�ʅݽ�哽ܺ�;�='�O>`�1�R�m> �u>��(=�1Z>���;�>�=3�.>7l���=�W���<>�a?>�L�<��=��j�&ǖ>ɑ��56�&����<Z��V�r>A���T�^�R=>��=~�>fn�rd�=�P��\�=>>�=�����w-���=��S>@�����x>=�>�>��=,����=|�/��AL>�D����þ��>�>9���\=b!e��S�x�#=�/�=F��jϽ�ؒ��� J���\�����X��-���6��¼j>v >Ȳi>1~�=�T>�[��}o>��B=p�K�
���ᑽ��j=�R<�<����K�0�=4>T��bQ>6_$�=l�=5�U>�I>�)!>����z;>�U����Y=*>��=�]B��PV���a>�
�=>��<c��n�ji>9ď>螈=FxN��F1>��E>����V�J��<�=�S�4�I��=�9�)��j�;�o�!����>=�=�\�=�2'�zFƽ�c�C�u>#�^�y�0>p�>>E)>n�=<��غd;�����>;e�=�\̽R�/>��+��}f<�~��3�>�n�ꅘ>�� ��9=S>J��<�⡾!���-I]>��.�>��/>���w)>]�a<�b>�i�>1��<i$�pnĽ���=��=�{>��>���=ߢ>�ߖ>�Z������>�&ƽ2��5� =�[�=��=t�'��U$�ɰ/>�>�	����)N:�>Hf>8꾽��=z
�=C�j>��L�¾2>(4T��+
��(�>�Ӛ��#��P�
���]о���O��=�y���ɝ�L�
�˚��� �~�7�h�E>�6>Q��=|�>���=6B{�%^`��\��ω<��>�=�T8���j>�{���G�>�l>ӑ>�w��]��>�As�i���\=���B���Y<A_X�����@
��d��M�=�0��0�;ݗ7���k�ڃ���솾�����r=�:�>��h="��=�T>l#�=9�=�l7���]>*U�=\}ǽ�P~�O�<>����U��'V潴�=�m֐���L��Rc�N'���o���9>/�<�>�>\r�>���=�o|�ٳ�hrW�Mt��f��_��^0��0�+�k�$�|�\>�o>�fE>}߸��k�>����^k>�h�>eFw>U3���헽���;t&&��TF=�<����՟=[>SN�͙�DN�)-�����k�����<��0�J��]���s=�@J�{<>�Ό>Z����;�9>��b>�n��Z�>E!=�y�k��>Q�S>UP���>8(�'[�����>�I$�yi>��ڽٛ#>3�>9M>F��`�<|��<h����g>f�o>��署�l=>�p>=Y>��߻6���/����pڽ�M���J>M�c>
/żm߼�`.=Z�*=[%�V�"�˯.>�������x�1�>8.<`�½�iJ��;��>�,�>��>��>�>$��= W>��=M	N>�CL>ȃ�<��޼�4'�9O>!�k��t���_�=�����c>��>v��=e�)��a=�0J�g�W�ԙ>��>��o�/R�"�Ƽm*�5�.>'��������ĻE?��w�;�³�Hsν+c��w�fX����w>h���@K>�g��+q���=ŧy�Xk=����[O>�N�>ѷ[�f�;�-=����p�hk=܀=|�W���e�;���������d��A{��Q>zw�ߑ�b��I>.<��=�c>4Q�=���=�` �ߌ�>L >�=R�~����X=^z>���N�=��p>�YR���M�-�ܽ.�>�L��#FĽI@=|��=�Ǿj���^ɽ�����V>�d���f�L!��l�>:�<d_?=���=��=�Q,>�>z�#:*�i>�HD>�v#=q.p=��>��B���=\���Dc>���>�iE��mG>`��c�	>��3�]������6^Z>�T=f��>�!�����=m��"r�=�o�� V�G"�C�<�
������.��>w��=0��=yN>8"潽���R=r$�)_F����=~%�>�Ч=�u�>��d>��-=p��<hs�=O7>��>�B����d=qi��p����P�>�� >���=݀�=����r��%�=�"=�%O>Q�<r$Y=����h�P>C�>wR�Mj>`c��y/�l>ØB=J烾��<��=�J�g섾�&�>Vϲ�<>��\��D>��f���I=������7>Z��>d��饀��͖=��[>��>��>��?>��J�u>愈����=��=�8��!�Ͻ\�=gP�=L>�uP;���x`�=�Vp>��^=��ֽ�`>�s�Y�<��=�)M��<�{R%��������S�=�T�� ,���c���2J^>=9r����b#}��5���">;��=��m<zқ��lI>"]�������<�K�3�>X	���~�>{I�=�ri>�8>��=sgZ�w�1���=�(�=!jC���s=���ג�o�U��<�>"���2�W����>D�G�Nɏ>���<¼�9�>�	o>
u���P>w>�`�����J{>N$��QD���{�sD��VCp�p��F>��=z�=�5ܼj��=g���?6�'����cK:*
dtype0
z
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
T0
�
-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasConst*�
value�B�2"�,�?^�?�#�?�#�?�u�?�E�? �?�Ď?�F�?���?��g?���?�F�?��?_2�?-|?�Z�?ߓ�?��|?C��?��t?2�?^��?vO�?i�?(�?��e?/�|?�A�?���?�_�?�W?�Q?��?��?��^?|�]?|?�wt?�n?I�?�Fx?C�l?��~?�u?s�u?�y?���?�#x?a�|?*
dtype0
v
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
T0
�
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelConst*�
value�B�"�v�E��B=�D���
m=⟽�NA⽶�M��?�=N���!*��Ҙ�G���X�z���P�>W�R>E���l��>wF/>�ۢ>;?B>�.�m�A>�N==rk0>���YUb��N��*]��)s=�����D�`��=ۃ�>CHJ=[R�=p��eA�񣐾	k�����=۲�����÷=�+��]X�����Y>%t>X��=�J>�v4>x��>����'���煾����O^��?尼sY���ǰ�aѾ�ކ��=+���-��=g�y>�Q���L���G>��>VB�
<�>�2�<U��>f>�p0�It��.ru=f�2>��c�!!|=+�I�r�F��+�=�sv����>d�=�5U�AG�<?�>��A�'�F�4���n>���>�9�>�k�=�E�=R��=7� <������9�O�>����5��=B��=l��{
����^�=p 6���P�pv��q��T �iC>՟�e@B���=��>S_�>���>2�½|�>�k�>
W_�G!=�ܒ�����
R>���>!KH���5�����|�}�>��<�X=o,(>��>[���W��䜢��=y�Y���>�pt>y�K�PA���.�)��>��">\���6C���M�l
��(J�>		�=t|w>>��<k�T�+\!>�P��D��>Z�=y*�>��>����P>���=�>��>���:��ｺqZ=L�Q�7#]>�Wa<�<m�y9b��Q����i>V*>T�O=���WR>��C>p宽.g>X��g���&�=h��=#D�>(��=��z���v��_�>�4�<1ɫ�����f>,���4��>���r.]>��=�e>�O����=.�������7��V:�>��׾O�4�\���-��=�W~>�`�>�>}�*>�G�>E�>� ���t����ݽ��l>g"{>S��=_���¶>)�������>�l�<N����j�=�y���&��3����뼈�
<�����>�~>bѳ�n����>�2���Ϛ=�<�=�A>��>�P� �j�,��=
�>:g���<Y��t"�kO~>x垾�>,%�=�]��f>Kj>��>�m(=�#�9�ت>Z
}��I.�"?/<��q��T�>�2�>'Ƚ��w>ۍ>��->p��>.��>k��>`�@>�޽�.��S�=����Ty�;M�=���>�1<>�s�>#��d,�=#BH�=�(��A9>RY��źW���&>�Fr>�7�/��݄>o(>n4��Ņ>��%>�-J>[�u��i>�o>� ����>�u�>˦>xAx��������>��P�%:J>PL>�}�<bt6��Vs�f���X�<���w��=�+���Q�i�P�.����BU���H>#�}�9�v>l@;�u�#>�c*�_�#�jY|����>W~����=鴧�?�I>�����9�=%�>~ >���p =1�>�\�e[�>��N=B�>��1��J��k|��1u�>�e��~l���>n�Q����<�=�=~%����G>�z>�O|���A>C��=�c�>S����<R��>�Y$��v|=��e>xA>$����O=�%�>ߚ��1>���<	��=�l!����>��
>+�V>V���y*c;@�>�H�>�5�)� >-�#��v�=��=�����-=Y�D>Ș�>q�x�cľRde��8h>5�c��H�|�
>2��>�79��+�>a��<���>��P>�ߴ=���>.!�>�����Zp>��R=�ے>�b�==u꼒�ޘ4>}��,>5��3���q�5��>&��>σ��>R��<+_��i��g��(ڽc⚽��#�`3��iLx�a,$���~�k�e>6��=vb=N_>|<%>>��=E��>�vO>H`�>J�|�)�½��*�HWz>눍�s��>sqv>'�os�>�Z<��;>�d�>߮��&�>�ř>�1ļ?��=i��=dn���7�>�%>.�=׏>Cp ==x���:%<˃�
��>��ܽ��V����=�[s��[����@��}N>
u�>ZF���B�3�>���=]�>�&<>F܎>���>)>�ص>�̬�5B<�,�<��ֽk�e�0�>3ʨ=�v��x����,,�~
8=���<<KH��A��aF��5�AJ���%_�=���ۯF�ɘ�=���@�����>Ò�=�����7�=��@<��;�XvR=:�����o����6������u�>�>p 8�A�G�XL>��>ֳ�=R��=e���7��@&�<���=��:�o�=�,>W��>�m�>�[�>�徽�9�=@Y>�7d=�q���`��=��=��>�Rt>례>�s�=u�">1��=�$=gi�4�1>��z>1's�Q>c�`>!�>o(���F�>ꏬ>/?U�$�*t\>��<x���>F�R=�P�>_,>�d>M�>�[i��>�<ýD��>����1	�>���ܡj>l/�������2=�B=�Zמ>ڸ8�z <�K�>�^>����9_<X�0��t���Ц=�6=
-2>���>�mZ�rx>�W�>ۆ���>�=gј�9ɫ>�wr>빪>SK->�؁�����74>���<�.�>�Ŝ>�Ƚ�8�>�|\�ܽ��0�>܄��2	f��P���.�����>i�=�>4>4�m>/a�ig>'��3���p@>��[�=Hl	>Z������>��<OF�=3z�>�;�>,���ꛘ>c���}X>�ԧ>jޯ>�4�>��=�m�=ڼT>��Q�=kX�� ��.XS���1�_�����>�&��"Q">WC����>��>*
dtype0
�
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
T0
�
1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasConst*y
valuepBn"d��#=܉�_��)7�<�X�<�N�=aU�=���<�jJ=��.=�C3��,�=M0`=OW�=�})=�S=�!=z�r=�f��Z=�Z�0:�<��D=��d<5��<*
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
�
dense/kernelConst*�
value�B�"��M'���VM������-��0�>3f�Q�I������|����V�>��>^�>�>>� ��ԁ����^�����>X���ݘ�=5�<>��Ƽ��4= J�^��;9�>��m�H>��3�νXr>���7��H�[�a>����u���KW>H4ӽ�e=h�<��S�q<0�=���=�n3>6Uս��=����}�]>�i�R���qa�+$ҽ�r*�1;�=l�=S/*>�b�> >����8>U~�>͢��>�]��������;�)#>�d���Z��
�5�>R'��;�<��>
����?I��Ƃ��L�=�{�>�O��0C�jҩ��I�Bڷ>�弑)k>J5��(<�p��ߏ>�{��I��d'���#�o��H
�k4)=�s�>�r|>���>�l���My>��:��=��ͼ=G�;d<g'�<q���^#>�u>�_�>pe�U��>�p���gx�F�=ޢ��|S��.�=*9���>�Z�=�㾧�Q��R�?~�>S>󜂾�"ɾ*o4�U-s�9X>��R>����|����<1M>��>�3���^9�Y`�>��=��1<�F���һ�<Np=��>��޽H��<�d><H�>�/(>H�\�C��cp�>�/�=�����7��iVQ>YD�>����z�>���J4ؼu��>灨���K>c��>hۋ�߂�<���>8��=�8�����n>��=%�{�Zq��+v�cz�>��;���=	^O=ӎ�=0V�>۬�h ��DY�Eg��u+�>�N��bI�>�>n����$ƾ��>�E'>+|����DDI>A�>�+����4����>�/�E�y���"�����Ւ��)�+�.���>G�=���-@��5=>�Ai�������ˡ�>YQ�>�E�>���QD���>;�M���P��p�=�Xn���=�>�;T=焾ά�>�45�G#�8oy>��>ڝ�=	��>�������=I��e�>K%�>����"�D%>K�'�' �>&k�����I���Ƹ�����Lս�I���k>��M>p�0>�!��L
���Ҡ���>��p��>-�>��h<�)�|��>�J��ܾpa�>�Ȁ��.4>�Ai>�C�ﲶ���>U�>Gܾ��G=ɚ,�1ɋ>*�6��v>u t��F>�������>q=�>������<�A�<�W��>��>ԗ�<�ٴ��*��DW��
�D>�f>왾���=3,��<����>{��>WM>�+>D,>I�X>�c?=2�}=��>�w.�ˍ�g��>-��|6���8��TO��>2h�>��=W.�>P�X=�����<ꄾo��>Ď����W��$���罟����=8B�~��>2u&��$���F���IC���> �;��o��xb�o�$�s,�a�l>g���V>������7>�$�������$>�=�\$�<���=��C��`w�d��=��0=O{�>��4���g��>Ya7>J�`>�E>�5b��i��H��E�>gk[>8�>rT�>jpY����
>^�=ൾ��N>��=̌��E�K=F[�>��>�2n��=��	>j�S��ի��?�ѹ�=3#�>�����Kin�	f��PY������m>^5� �>CCY<&ٔ=���*r�;߅>}�E>���=�ׂ<�3g>E�>L�x>���>㯰>@�=g\>x
>�i�>��>Y4>��0�$���<,I8>����)>��U>2�)>4ޏ>V�=xH�>h^�>V�1><���h�>�<N>aġ��
�;��T>�z�> �r����>i�}��Y^��<ƽ9ym>�=��қ�y�1�WX�>
_�>$�=�0���C}�޸�����=�E>TЕ>ĲJ>��z=����z}���=�ꢽ%m>~��E;<Y�o�p�4�za��[�,�q�E>�Gu>��=`#��2�Ž���=�A��B��>�p����,=[D�6�>��<��|½7��>³���2�:��>1����/��$>&r߽�8�0�&��ld=��پ���<9�h>���;�?���>l��r���Nz�=}�=z�g> �u�x"�f�Q��c�>oɳ�p�="Ŋ=c����ս\�=��>_�=I�>�������D���%#Q>^��>���2z��a�p�+�@�FE���5���L��B}��d>��/���@>�uM>�J=�ɉ����=�,]=��>g�=/�|>mA#=�2��͓��nJ=E�<{hJ�qV�k}�øF�)M���T�yY ��`�>�S>�؄=1J�}A?�S�
>,ؿ<$�l;��� ,8;�j���n�FC4���>��e>�af�F���O��?�0>��f�q����i7��&K=b��>��x>�a�w������>M���rz�>^x���������4Q���e��<��+@����J=|ɘ>̻����"=oO��!&�=�[U��<�>�QI����<��_�B�~>�o=���<�ha>*
dtype0
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*y
valuepBn"d�R��h� =�=�2��7)��<�6L<    ��=}Uʼ��[=��漱ʊ��}��\=��L��[=�Ј����Vy�������*h�5� =M=*
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
�
dense_1/kernelConst*�
value�B�"����>��s�������b>��þ�p�M�K�5`վ->¥��e�>s����kV���=�þ��>���<��>��f>"�
>��>�{M=澾~T�>�U�>"6=Q�= iؾ�Ϳ>\Y�;��>x!����^A � ?I��>M���4��ܾG�:��(�W�'����]�5��Ծ�%־��4�k[N>Į�>*
dtype0
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
valueB"6���6��<*
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