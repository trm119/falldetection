
C
InputPlaceholder*
dtype0* 
shape:��������� 
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
value�+B�+2"�+7<������,�>R's>d����Db�x�.?��5>m�>I�6��z�����=P�>c[���=����,>D�>X��=��?>i���Qx;��=�%�>���fĬ�v�=���b�>��<>9�9>#���td��_�c����ͩ��cZ>,�Q>�g��4xd>MS�����>�][�l߷�)gq>9����<��$�>�0���> #>�n�>7��>��h������d<>��C>�U�>P���n��{���.>�h>?��͏V� ���Riu=���-�=�G��vM����>��K>�N>���ё��W�>��C����ou�=-��'����>��ʺ�>��=�$����=QzY��>�X���~�=-��<`�<�>!3�>{��=�6齐�7��(�>Hj��ls�=� ���������><������������ >�������
���e�����>�i��w�9�m�*> O�z��M\0>�=X�g>�5�����=���>���s�=��?\)�>1{��2�~�n����C���<7둾g�>����cA?�h?Y���p����>v��>��I= �>�z�UJ��?�費�\/�q��N�&��>>"s��p�K=2XS>�I	� ��'	>AF�����2�ѽ� +=/8E��D��0I�&�?��kR���Z>M�=Hl�<�?�i�0>�>$l�>5����[�}Ћ>�	��E:��i+>�>�}>��̬����D0V��<p=�w���C>t@�ϋ?���=j�>Ӂo>��,��\���.<o>c;�z�>y�����.�H���a+K�F;?s��>%P�=j�>�F����B>�>��.>ɡw>����5��>\%����>�+���t��>�q?�b����I� ľ3�>"����[����?:II>Dj���=��`�<AV���f>��?�&�>�ò>�=�Y?�2��Ҹ��9>/:0?y�r�����X��ah=mB[>��=h�=��w=�<�d���ƽoˌ�R<C=���>o�h>lڎ���>#���T���'2��ϲ2�.>?>?r�����=b�{>�	��N@�<E��:X�(�=���D(�tbf�?���>�._�4��"��<{��T�����d�X�.��Q>�S��┾�^>��,�z�*��/@�f_��x�=�^V>�a+��1Ѿ��>mz<*�>�=���<hrL��F�>kD6>.�M��;>ĸ�>��=.�Q=�?K>��#�%p��}g�;W(>�����
>߭�^�\�,�(�1~߾�f��hʾJ��x��:Ŵ�Pl�> �>Co���<����q�=�?�>V옾��*����<���-����;���g?��ٌ>-�>i�_=��?*E�-Ã>����Jٟ>O%�= �>/=7��Ѭ�O7��x`�_:�>���<$&v�d]d�27�>�6ֽ������=Ih$���>6�P�o�o>)L=��c=�f;���>�!���L>�AI>b�ҽ�Ђ>�T�>S&���	�k~�9�2�����o�>�˽�_����d>M���O��̦�=�P����>��ھtY>�qڽ��`�7B��;h۾�)@��3>pY~>��5>�ش=~M�=h�Z=	�A�@e��($>Co�>5)=��=z�۾��k�`oy>�d�>+�>4+I>q�=�)O="�=��@������>h���l�=J@���P=>�=!��<m�p��g����)�����D��Fܾ&d����=O����lľ+��4M�<v���ֽXw{�p��wԂ��n�E�1�=�|d�̶�>g��iO�>��Y��n�>${�>Yh=��ɽ	J+>$b1<w,�n >R=~�>^ǡ<><�>z����f=��+>�=}x�>oo?�cR�bP>=f�<�k=�b���9�l���x?�~*>������[>�N>� r�7�?- 4�F�Z?��>M�/>�>�O�OOs=b�q��"�>]�a�o�&>��(>�*-=�R��u�o2)>�LM>>0U>4*�>wW��%��*>���>�@��3��̽��>��>57q=9�<ȭ���(>Xؽp�p>d���)�>|�d��q�>�?���<�Z*�^��=� ���,�w"&�/���0�־�<��ԅﾗ������:�>	06��!�>����
B?>膻=��!>�j>��=���>��!>e�h���=0��"\�;��j�<�+�=kw>�̌��2pD>k�<��=\	��5-�>��a��bŽ�ӑ>D"�>�X>��?����Ew����=Ko>�?\:o(Q�hD�=�d=-k��U��>Q������=t�=��4�*�3��&>�U�����2�E�e>�+>f��Ƹ=E��=�#2=i��=�]�J�=�^>���j>��<>wtG�u�=�7��{(>ÓB>�H�>d@�=�>�<U%G;���I��B=>0�*(���� �CrD��黽�o=s�>��2=y1$��U�>�`>���>��F�4�3��Uھɤm>�:�=��Ľ�D�=�g5����=�Tf>�ּ�D�=��\~@>d���<u~��"a����<���>��>��A>R��>�Iy>���=�{-�K.=/�>_Q>)]Y=.k���pb>�=Z�a>L4=yw#>n�_�(6�;�k��.�����",>��*>�;i��=�B ��[4���������}��^�>�ۦ=�������ƕ=�]���?�=�/�yԥ�bPa�iv�=�[����<ȇ��_+��BF��h>�f9>�G��^��'���b��4�k��މ=*�F>;�C�9�>N\=6�];�>�ѽ�8]>�_=��=�#>����@=>�.2�m��>!����s�4�����������>�
>�D>�*=V�9�����7�>��l��rs���､U�����9e:9�A�������Z;��?Z5쾏�B��e���<�R>b���ӽ2 �S�=�C���[��]"k>l�>9�߽r2���z�mҋ>�������:��&!� ��>�P��z4�W-��ZQ�<N>���Z�V����=�7�>`]=*���|�=��;��/>����������=~~K>f�M�/�.>�����"��#��FrF�V���`P�>��,?`t4=S	���8G���'�� ����L>J>��
?V������>|	w>[~�>��@>�\::�f�>�a=�6T�)��o�>M����'׼G�>�����j۽F�I=)6�=��l����<:��p�~>\�>�ƾ[@&>���=:��?�=>j���=O{�>�;�<�g�<7<#�����Z�=�$->�S��o�����P�>`[�^���e�'���+>n�>�X�>�τ<,Gb>f7���(����ͬ)�a�>_��&	�%�#�E��=�9?f��<7�j6�>ٽ���>>沪�@2���A�>�]g��.�+g�>�F�>pN�>��|���E��e�cM��ɑ?Mq=�'����>��>$e �G㾧gR�s�ٿP���f>��9�R]>U��>�M?e4�>;��=S���ر����U������?��z��=J'>��h��c�>L�F��c�=�����;q�ɛ�>m蔾�iZ>?��>���>zut�gW��-r=�	�>�g�>|!�>���b��>$�G>uۡ���<�=�<i��>nN?��?嬠<^o⽾��r�O>����3�'�T����=Č�
�)�,�P�䚾���I �}q����^=���=@�v>M��%N6����=�����{�<�D>O�Ľ=Y�=�Y��$�>t��>���=� �����^H�:锽u|��C�=�?O�\?>�
>����>�6'>�Y�>"���>�(?n��>�Ƞ�oC��9p��{t>nק=r1�>����Ž�#b�8y�>�W���\���o�r��>Y�?>~?��A飾��F�ޗ��D?����cy���
�!��>PǽLY�>�r�>f�>�u����=�p>d�5�؉S>AE���P��&��>gb(>�=�#�Q>wA(�~ �N`5>k��>p�=��=n��>g�=� ��}��l���I='>�p�>�L2>����[_���>��>˩��Þ�>3�\�H,�g��3�>/z�����f��"�>s�$>t�L>��ʾ3�=��.��-<>�%O��e����>??x�B�ʾ[��=�n�=�<n�m���A���>p�>�ٻ���;�)�=i���3�t>#�<D�[>z��<��M=��	�3��9�
<�ɼWv�>�Ԓ��/����=��2>���)}��}���ㄾ�H>�~������%�
��)ƾO��>_�=�����Pc�_�����G��>�߻q���ˡ�Irm��r�>y����Z�>�ۡ�T>��>&]�=yY�>���>sW��.����>�����<�*�=��=�
u�jw����c�z�h=c��>������=�X�>�aS>��D>�Wq=�ѹ> m>��>�t=*��=}�E�,>�s�V�R�
@~����0%P����>C�V����ҽ���̚�ܕ��[�>��8�>����a=U����;���Z>3��=�r�>�A=�HX�$�=� 0>�f�>�߾T'=�\Q�����>c&>(ER��%��_�>8����<�T�=��8>�b2>n���M��> E=����Y�Ⱦ���������c�M;�8�:�*O��������z~�r好t�>x�A��S>0�=ٿ��$8�@�=�ؽsQ=�����,�c�N�D�>�%�>���=�ʇ��'>y���7�v>����qCj={ʯ�vV�ˉq��+0�4����I>��M=&�@���>#JϽޫ���:9?�.����>I=@6��ф�AD��'VϽ+�;�<h=��=W��>ݻ <�5��~�>���f��>�W@���?Ɏ:�?�=��@<�� �aT!�Ŀ=��8�ǟ�>��>m��o��}��惾��&=C�y�s	-��?�>�n��-X;�ɨ>#vn<�s>�%G?V�>#vb��o�>2�>Hw�>���>?G?e��>���>�g&>����%����1{��܏>~�=	��=�u>�,?�����x?���l?0���7?ZJ&=��P?t@:>l+̾��"�$�J��R�94%<`�>�׉>�_�:��(�����>���Ck>�>'q��H�>"怾O�s>�'&>~�w�zkk�dq����v:����j>B�B>?#>��B�̉?����&yH�M����>�]�p����~:�i�y>g�$��da��ܒ>�<��?��>�>�=ke����>��!>)��>~C��~5l�a۽�e>��Z��>�f0�j��=�7(�I	B>��;�5B�>bd>vq�=#4=�L� �Z��=&�ܻwm=���-�>ڪ;>Av��񇰽����7B�f� ��� >O�>��2>��W<�4B>�@�<���=�?��Ծs�8�:�p�D*�"?�/�=Na����h��4>�o��=Vd���D>��ҽB/>�7?��=wȪ��4�<^�
>�c>�+��*
dtype0
z
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
T0
�
-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasConst*�
value�B�2"��my?p�?ה�?Vˇ?t�?w,{?��?�Պ?�ދ?���?i��?�c�?��?�?�8�?��k?�=�?=܍?z��?>N�?l��?i�?L+�?1��?
c�?�T?T�1?EW?��W?�m{?��|?
�p?7�A?9?|-r?�f?k�|?��?pZ0?$V?�ϊ?��z?���?	��?@P�?�Lu?��?���?�p^?^�?*
dtype0
v
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
T0
�
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelConst*�
value�B�"��ʾn%�=������=<��>{X >�~�Y�>�����c�(�	>��w>��l��0�>�Z�<��">">��>G�?���	�>�Yq>�%����g��H��-e��x>�)>������>3[���d�>�:�>a�
��������>���$�凥�j���x�¾�}Y>� �=7x�>��<�Uq>��&+��G�y>g|���d�>p��N�c=�.>�9�-��=*�p>)�?Wu�>;�y>�W����>b������Q�R�ӻu�a�N��Z��<l0=vm?� �=1B=��C/�>9�>�8(�<5ý>�E�.7��R?�W���3:>�}�r��==�ս�U��.���t�>�>�3⽫Mb>yZ̾|9�>�4�>�R=���=�E���&�fƕ�teP���<�_��$�����=��>c~½u{\>�C<�sX>�n�=�Os�%�r��.>l��P|x�
�����>*�,>pp=�+����>u�>��>��>�D�>\�y>��@>�О>W��<��h>�1<^f�G�����Rg>���wV�>ei�B��������<�Rɾ"T�܆�=X�|�B>�%>ӱ
?n�4��>n4#?���=C��>�� >��X�-����(
?��>�\@>DS>��|>��m>��a;=�?̾�H�	>��? >&G���}Ƚ A=PԼ�q���gY)��1�=��g>�F�=\����U='u�>Q�>��ݾ{뮾n�6=LJ�=b?=�����<R��=*�>�Pؼ�P>V�D>K|��%�>���[�c7>�`*�5I>�ž�{R>�^����1�Zy�>�z����+��B�>��M=���<�g8= ��>�5��IY��A4����>�� �Ѐ ��+����?=ϱL�"�D�\��=��:=ma�<��%��ҾJЛ� ���{��>6�f>t-<M�T���.>�ģ���,���A���b�mߘ>�@�>\�=�3� >�����3�>%��=\��=`'H>�홻cSO>�ep>��>�1m�a>f�7>�>ar�8M�>��#��$�>�Ά>�ռ.i	��=U�ؔ>Տ>�2����];�ٍ��M˽�n�ŗ� ��.~>fD>�!�>��>��>��/>�_>���>[�̾��>��G�*z���.�>����C��>d�>T@�=����"�:�c���o�B�$�9��>P�>}5�����=2��=��)�?��vٽ���<�bg> ��>��.ξ�>_d�_7�=I�Q;�x��ǒϽ���>�_Ͼ F<T�K=t��>ђ̽dk>�x��#>�e�=^$U���H��$U>�ŭ>dQ�>L,u��<9x�j>�A�><��= �b��7�=g�����>v>�iU������^�f>�b&�=�N>g*j>x�A>��A>���>>Ͱ>�v>Z��>�ր��m��偎>�5ɽ.���e��>~�>4>l��>�<�H�z��>@>�4��MtM>�`>�=>IwY>� >�R���т>��p>[�۽J�>��>��7>!�Y���ҽ����^E�k�v�(}S>9<A>@��> �>/����1�Ѳ=��徢]۽�FC<�_�'~���G��,�>$g�>��\>D��>U3�>�쳼R�>0Ց>V�=ᙓ;�w�=�`=�ſ=Iѹ�:�н���u�,;^o=�r��>2�P>;�>�%�>��z>Pe�!�f�8�=0$�>E�>�h�>Z���ء>�Ǫ������z��x�>��<[�뺃�>]�$=� �>�Q�= >?��;a=��=BK�>N~�=�4|����=�Ǿ&�:>��<e>��h�<�fo���j�{�>�>VpR:�zr�jс>0'��}��d�ν�Z���^2�-͘�ƵL���=)�b�*0ʽu%��z�>�)�<P�N>/��J`L=�C��H>�49;-Z <)�� �>C+�=�Խb6�<嬾-۰=\�>�~S������L��_V�x?��� r=Q;�)��>������o���e>�0����8��Z}�4*�Ã4��(�>�48>>Z����="�ս�s>��̽7��>��
>�w�> ��>%�>7o�> ڄ>�3�>ld>�>�ʒ>.7��(ʽ�:Ƚ��x����fĂ>.�j���l>�L8��(�:w��>,�H>桗������4�æt>��=�]=RL�>�_>�>�(>�>|�4��<�3���b�~'�u�=!�u<��;򚽫:V>n��>�]�>��1�2��=.V�l�g�nj�ԝ�;Jx��2/�P���'��<-�O��E���<��>[N�>2I�=LF�Ff.�(����+켊�c���P>��=/�˽~P��6�=�d����>Zf0>��>}g�>�dl=���<�uº�u6�O`>��r>n�X���ʽu�r�>�T=*(�>*0?�?�xf��>/N�=!Q�>�[�>�p>���������>H��;-�>��$>���<vﲾCm�>�3潝s�>�+��i�U>8z}>��F=݄?��۱>j�5>�[��H��k<���*�>��9>M��=��g=����儾��c�YHž���;\�ھ"=	ZZ>.�>�o&��]�>MO�\�>nR�>j�}���<��)��������"�.��>۶+��sý��>«��!�=�)�>���>�ͭ=��<�F|=y|ǾB��}9S=ML�����9�>�3a>g��>I[=V0p>IZ?�`�>��U>0�=���>�>D��=	Y�>�c~��<�n�>���=
�>"L^=o{�<�>ig����T>�A?��j�Ʌ>�F>�	�ý�>Iul>*
dtype0
�
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
T0
�
1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasConst*y
valuepBn"dN%�R�߼ec�=du7<Ag=J6>�pɼK�;��;�;-�� =y��=bG�=T�r<9Z.��"�=X��=���=���=�[����=�Ѩ�#��<�: ���=*
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
value�B�"���V�䠾��?����L �=�TO=�ٻ>\�_[3=��>���"�U>QJ>���>�Qn>�����梾~��=��>�智�s%>�>��+�L�a�����ͫ��a��>e��=�9>��]>~�R>}�>��4��+�J��<��t�X��=�H���=�>�S�>�>�bJ�a�>��h�����������xqA�sQ%����>-/�=@�=TW�f��[>���>0r����|��2>D����5`>�)�>�9���'��9��=�8�ً�=�K�>��,�i���9�>�g�<��>>B���R��>�wL��h�>���=�yL���>a8�>d1�>͋��Q������V���X�-`j�����k{��Ъ������"�=���g��� ��>x?8 ?<ξ���>�-�>l��=�=�s�����b'/��0��U�<��>گѽ�{���2>s�>�P�>�sV�����B�>�闽s%>+l�>�hN���[�ex>��>b��=�۽�@�>�����w�<DVþ�5>uR���-�>��>Tp���~J=�%=`'=�@>(�|�F<-������=���=tu>�+��%e�~��l���>���=aP�=|�>�Y:>�����x��>�%>C��>cώ=
`>l�>L�=�>X\���lT>�"�>4��>1@@��_�>-v/>=ܪ��-�Jt�~��c��<�#�xK�b>���M�R�	?|.�>�H������o�>6琾4�a�W:�{=�b�
v�]�m�C|�>M�m<���={�>�K�>uX��%[�>��̾�K��+|>�^*>�Ds=1��>٠ü��ݽ��<��K=ʾy>
��>���ȱG�+����R>\1�Ȗ���e�O�	��w?����>���>�����>��>ON~�7�.����1�7>~h>i~��D����f�}��<cU�>�A�=Ā�>�_��;�v�!����<�� >
?�����=Tݽ/jD>��">���A�>zx>J.`>��;�����컾w@�>��*>��>���>���>!U�9���{>�L���2��v�˽�'Y��q�=���I�$�ߢ�;)>�d仡&P>D8H>�p�=�<�as>�顾Qk�'l���==��=��5>�I�t������fҽ-d>�K�o�n>W�>�˜�q`.�������>�q�����>��=h|>�bž��%?,��N >J���g?��B��M,<+5F�����|_;���>!��Eb�%pn��1�<[����<4������X�i��D��WG$?��3��ֽ-��>9e�=�t����>wv��ʴ����=�_�ȷ >�k=�����A���2�>��>��N>:�R>�>Z��Y
ž^�>D��P/d>�B�9-�>�ʕ���=�~.>�ƾx0�>�4����Ǽ]�r���&<μ��UV�>�p�<>;=�ǣ��,�@�a��k�>�19�L��=ӿ>��> �d�o�4?�$�=�S��wV>��->��a�(�>��>5Xh�����%�ؽDˋ>:��>']�>�ER>�>��G�hq�>��=nCY>;��g�y>~�;���>3^�������h:�:�>Y7�<�=R�	���QO�>��Իޠ�<����&�g��>�a���]�>�C�=Ө>��>�FF={�=��q��)�< }�<�1��=�����׏1>Q|���á<�A��)3>� ξ�̴�����x_,>x�¾ {�=�֓<��>8v��'>�%6= l����>ɓ>��?�	�7,5>0^=��>����o7�����˕s���@�?ֽ�#оw^=�%r=7�M����3>3�o>km��	oh��.��>��ߋ>G�>���=�.��@��=�ը��jt>��=&����ɾ�5��=C�<6�|>�>�A>N�>8��m�S=�-.�B���׋>�[>�GB>{)�=,����J>(���c�/�
?q"����>�G9��� >"�4��oپ��8��?">k$t���>�s����Q,>h�=9>�[|>�J�>O71=�����>G����>¥Ȼ��>B��)��>S���h�v�?.�>2���g� ��Q�=���>Tʁ��d(��>K����	}=x\x>�ܽ�5�h�ý��[��=�R�>R�#�������:�DQ��+V�
Ҿz&0����	�>̚�=�ג���J�e3�>p >�'�>b���O8><Ǿd6�߾�����3<�\>���>��H��� ��ܽ>����>���>p����>����t>ٚ>�,>0 6�/��+L�=�g�>�q�>b���f��>3���(H�"�r� ��w�Ǽ�;)�҆>��>������<R J�a+��!n�A>��B>m�=j�@�R�;ԌV��Ͻ"t>	�&��-��c�=�|�=A�>�at>�t��c*U����=�Qi�(�>ef��9Y >JN ��j�>/B�G���=,�����>�z��"��>{ć����=�9X>*��<*
dtype0
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*y
valuepBn"d��<���<F��;n�	����Û��v=��=%�2=�%���=�Ⱦ�%<�ڂ=B$=�������<{�7=6��<�z	�0�=�L���p�=ǯ=SE=*
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
value�B�"���t��?? [?`��<�}���=z(?�y�OT�>Pež3? [�W��?C*J�}u(�9��>gmW��_�>=�~?à��\I>��>Yln���e�"W?�&7�B��=�� >Ih?e����?$���?QH?�߾���>;(H=��?oF>x �>8E���D�>t?���S�>�0��������W>�y��*
dtype0
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
valueB"Տ�����<*
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