
C
InputPlaceholder*
dtype0* 
shape:���������-
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
valueB:*
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
valueB"����   *
dtype0
�
)rnn/while/rnn/multi_rnn_cell/cell_0/SliceSlicernn/while/Identity_3/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/begin.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/size*
Index0*
T0
�>
/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelConst*�>
value�>B�=!<"�=��I�|>��]�.��=�ܗ>����1�|�|_�w�>�M�C#?���>R�,�b4k�J������I>ܕG=?���zV7>Y��>S�>/�w�(}�^�~>%��=_��>��h�.���,��S>�>��$C�=Z:�>(��`���D>?V<�Ǡ<п��V��<"��UUb>��3>T�Q����
��=Yz��(�>P<C��X���j��4]>% s>��<�j���:��j>	�>m��=@<�"&>lÏ��22>��!���Ѽv8�s�>Ҧ۽�[>G�>��4=�#�>�>������@�
�>�9��)>���=;����>�~�=��>�����A>���=L���l ��=�ˈ�{�ڻ$S�=��־������н>#K��r����}��*=f��T�4�0;i=���=ĺE>yL~>	��z�w>Y�=]�<1�X��k�=hҕ�f��[=����+��K�=G�.>�8����=���=a�� �<�D־,�:�J>���=	W���-���K>pݟ>�-:=&��=�>HH�=]F�-?��dN�Th	���W<����A�h�aǼ�f,� �>��E>�$��h>�4`�+>��6<�6�<�����>w���Ӭ���%��-P�g�N>	m��T��<(�k=T�=L��==���q����M�>*���#����������nQ�=G�5=��n>F�/�7��������>`>� �$��7�>b=�>B�k;���?>|�>n� >-����罵�>(
L>�{>�>�\��/�=j�J>���ͻ�)gi>�|w��1�=�$�=oA�=i�����e�)�zǫ<�/�QȾf�˽4�x�g��K��-�d�Z[�����l6�͊
���j85=_�>m0>':�>
0H�-��=X���z]�+�=��/g�=�UD>`��Ǜ�=^V>���<��f�g�=��>�ē>�Rd>8��<:]���C���b>W{R����>{ٽ�]=A�:��p���0�E��R��Zg:<�H��{�	=V��;Z��=�z�=�&�>��=�>)�]��<m�H� �=���N$�=C��=�ͳ�P%r>�AI�y�H���%�P���X�=H*�;�e] >dSl=�F���)�[�W���n�{1/��a��+= ̲����=ڿS���v�Sc��� >�R?>C5=�9�=��)>G��">�v=�N>����cP>Dg�'7����'�?��>��I�Ac�v���W\���Ƽ��s�CZ���%>�ҽ�6r>H��>�=!=�[����9�=]`J���=�A#���>1���">��?���>�I=�f�>b�Q�t'>�H>��;�dY���!@>��.����<u ܽ=������� 8�>yU>>��	>F�U=�.?<ۂ���r(�喢�����dj>�V�=��_<�v����>��=�U>/8t=���>Ɏ���>�>�-�>�_>�@�>��=x)�=�	�<��g<�@�(aK��&)>��>f��wXg>No��9�݊��ד����;=��>x<���?� 	@��)�>��,>Y��,�>ˑ�x>��^2C>��վ'�Ҿ�O��E+s�kv��p��=�佌eE;:c^>�I�=��D��⋾��h�����{�|��K���e�=G'=���=�">���=w�<�h�>%>�E ��Wx>�ܸ>>�6�>��>�E�c6�S�_���R>k��#+�<�3>�ו=cJI>�S\�='G���cx>�`�g,�=
 �hT9��� ��]��$��>K��O�7=��K>ܱR�{K�>��W>�>-��=�����P> &>2��q��<>�=��l>�4���c�����=˳�>e�=�eX>�#��Y"�3��������ߖ=��a��?���&Ľ�>��;E%�>)�Ƽ��>����J�<�ZX>}.=�uV=���[<ȗ�=H�X>�m�>�%�=��A>��>�;�=��=��%>0Rm���!>!'�>`rb=I���/`��Xǽ*[�{]�=�q0�z��g�d��ʊ=�mh>ƥ�<�cF;܂�=�a�=�ͥ=z*���3�9�j����=dmV�!1>5��;���05��eJ>�`���Һm)�jg5>�⛾��	>�l��el��V>Q��Y>-B�=��V>e.>e�>K�,>��=@�R����ר�q��=g׫>�>\'��3�<Ai�|��=���=�?>�s���h=V�>� �>s�#>v�\��$@>>��=�}u>T�=��c>����O=cw�>.�6=��׽/l������"b���Q>�Ж>Jg=����>�\�ؙ.�ܳ=����ZG>ٔ�=(*=M�
�	�%����>� ���r�=��wcM�sK�=[f=���>��;��*���Vs�5Q��B�;;��t��>�n`>*v�.ډ=�����M>�}"��b�>�U>*#�>����<��1=߀�=ϩ��~�Ž�>W_�=p��V)=Ke�#��=�PN�`�ϼ���=$�;���=�{�<A����>!�r>�*����>�p�W*�<k׎�>�����3>QL#�rs�<�!�B7`>8�$�҈�������>,i߼�SS����=���-�>e]����Q�e�8>�����V:XK(>��\�PG?�=�Wj=�{�z�*=��I>6A��9M3>�}>v)>��d����>��
>
�6��Š>��>��<-s�>U̕�~Fj�Pe`<�T�=�G��8,�@�!�r%��[7>��>�M���]>�L�<���=6N�>�V>5V���>�Up�>{�h�ఝ��J��0��b0>M��1Y>�b�������:�C��ɐ|��p����n����x>�2�=X�_=Y>��>�(�Ѡ�>H\�<�_T>ң�<l�d�y��ŵ>�*��cB��� >[�Y<����/Jw>��;��u��M�*��>�6w>z�>�h��HO��o���4�=�־����&�M��� �">��>K�]��s�>���=[i�>��I<Mk>��<��c�q�6�H=�	��,�=��j���׽դP�MN�>��>���`C�����>H�(�WWp>[Ga�<G��=��J��H�>�� >Q�=^��=fb$> w���4�C>�{�]����J���B>A@���U0>��=������h�B����q3��f�=wZk�LH�>|�y����>�E�=��>�� ���_>I����;=�'� ��>_�2�{�q>UX�=x7�z?k>��>(0'���>�c�=e�r�����B4k>�0��%��Q��.�;D!,>��6>�=>�yB��Ҿ�n�=�״=��̾� X>�=��?���)�`Շ>݃>+d�>K�h=T >3/����>��>2�r�t6>�k�;>�I/>m�4��kD>d�[�j=u�l����>g>nln�â�=)_�<���>�->sJ>췠=�v����p<]>[Z>���=-0 �a��>A�,=w$M>�S�>~�>H~�L�>>��={z =�{=�(4>eJ��E��=�ݞ=��J9�|��aڻ��C��$��;$���Tc< 5���}�Jc8>	�>��=�!=es�>2����9�>�*>��0�3Ն����=�t�<8|>K�����X.��]ӑ<ڟɽ<��ևD>Nrp=�%�>��>�5v=t���`�<{<��h>�]`>RE*>��=�����=�>��x����/+�g^�=����~A+=�}ƽ���<˦�w:>+l�=u���x���4ٰ�T��=�-�<c��>]�=3��mY>��~>l?�:Ry��􉾃�߽ԃ�=&Vx��G=�z�g�3>�=.s�>��;~�>�-?�iU�w>d�>��D:�RZ=r�ҽ��p���b>0��>����މ=3ʏ;���=R1����!>Z�B>���nǽVJ�<��Ľc�`>�z�>��U>9V���d!>͋>��m��3e��>.Ϲ=��q={j �A�><�J��E)�O�=@{�>�ٽ�)c=����r�� �nlD>���<m�@���/�@竽��>!꽆w=Z0<���н ��=�oU���?%�8(O>h��+�K���x?>�ϑ>�F>W��<ۛ�>������ԘN>Im=���=�H?���>�Wh>='����-%�=
�>�������H��p�=��1���=D�4>@�x>���>8�>�>oY����:>R>��j�<�6����Ž��[������޽�:�t�g>�`;펽����+冽Tƽ�ѳ=��%>˳�=��;�f��U�=l�p=�U��Mﴼ̣�=�ͅ�Th����=6�>��=�Љ>7f��Pfq��LE����<�<X9x�)�>H@���r�u���/��&>>+��=�=EE�=2x'>��.>�W�;��=�BA>q8�=&� ��>\�>��F>v��=Ib|>���<�|H<6S->R�[��3>�p��������>u����f��q>T=w��,���x>��o=�˽�[>� �=a>��>=���q�����W!�=���=��:>3��<L�\>��=i`ܽ��j=�ȟ�0&�>�W>x@�=��>��k>Dԙ=��I=�P>##���׽#�
��.>�J�>�R�<J><�5>�Ǭ=��o>](>o�.�>+�>�<a=J�
�,Dg>��r=�ϻ<K��>B�
>*��=j�U>��=ͅ�>(�"��cC�B����='�'�ܽIz�=�	���˓>���*�q>��������+���)�.�#�'�]Z���>�x=��j=%�>��
>�&��ts>��]�(�>�%��X�j=KS���h�>[�_����=���=�O�<w�=Q}?>�bt=ibe=�z��v��>�7>-�<��>a��H�Z�fd��:�@>1�#=��=��(>�q>>〽�C��=�g�<H��i�7>�0�v��:���nR�= G$>?[f�>���;0����m<�S��ה>"U�>g|�<��x�>Iݐ�(�Ⱥ�ǐ���~>.���P8=���>%>���=ڰ�����=�V��Nu>�f>�^�>>[�=o�4��t�==�Q�X�@>�}�=��� :��dG�ېN<�o-�t�-��}/;3�?>\������"Y�D	>��=C��<`\f>��=��,�x<�>t
p��r=�W~>���PҺ=�<��oP��)��� t���>��=�)��gf�<o�v=ϩ�<��ŻXE>��<�eP���g>]G��v[@��w�>�2,��s>,�0>�[�� ���L='0�Aa��'>�u_�5���Y
��4,5��:��6>��*>��g>L��>Ơ���%>:Jg; �>���c(-�pM!>s:���1�>��=�� =&�9�2l}�Tƅ�w��=�(8>>pE>"D<&f:3���^A�>>�=���;^���`=T�������k="�w=��/>�5W��a�H���l�;�/4<�Me�B~���|�>H˺Zڋ���>oE�>�F�>��J��>��ɽQ�>��>�9�=�7>�MZ=�N�<��`���c>Lr=ޢ��,�����,�Q>y��=����XL>��P=�#g>]���Д>��A�M��h�>��_�b�>��sR><KZ>�Kr>�Qo=}f��zX>��X��>���q�>d�W>-2�q�x1����)��
Y�V��s}T>ik�=?ڽ�U��v���,�=���=�/�=6�=$�^>�h���̼���}*>ٖý�%>�6g=	=_%�>�E���J�\O&>A&��w����R�}����<���B�>�V�<���>��2�'���:#>�$�bs�=GC�=ƫ>4Oａ�B>�/>��Y>�7w>Qx��w4Y>p��=zlJ��(>�xQ>3�d���[�G�/�Bd>`��b�>�7;��&>���-xľ}"�U��.�>��?�)!�=]&k=�K���3U=0���y�^��^`�w'�SQ�>ǿ�=��<"E4��O�=�k=��C>u`���_H��0��T*=RF�>�5><�	>?�O���I��kH>і�<UY�=��K�Ǩ�ݱ>�	j>��ܽx	h>�w�>�%��$�j>�=�>.=�h�8z�=������=��u>�
 >7�� ���)>Mc�=���>��[=�;=�q��>��Bvn��J>�o���_���S>����ԏ=lC]>�޻�K�{�Q�]������=Z�,=`�a�VIv>{��hE�+��F̴<�@V>d���H>D�F>���=_1=���>� Ի�*k���=�~���,�:�>:��=e��<E>H�=5=�[>Y5�>���4b� ��>�8[>�,�< �E�J�ƽ��'����=S&ڼv3�Ɏ>NQ��
v����>�v����=L��>r�k;Ƒ���U���n��6p >^U��\>YF�<�w���/�E>��a<�렾�'�/U>G�����>--&���j���L>��ܼ8Hν�X�>�5�����>~X\���=�ע>��.�WP~�P��>Q�>MQ��#*>+XU�Lq5>�e>�F�>�z���H�=g���*��=��p���x��y=������=�V>U��I�%=�>�q%�������=�$Z���ý���>�kf�ڲ���O>O7��\�==�����<��Ǽe!r>�Wn>e�5>�)3�3��>���==�5>Pɽ����6�m�ξ(->=*C�t�k�m0�=b�^>��q+�=�o��0�>-AK=HWK�Z$�>�f�>�;�=\�Y>����
��=Y����}>4���=,>)��=Gʔ>Xk�=��>6�+<.����x>Ͻ�i>'����ڲ=ͮ��:��������^w�=Q�<�սx6N>���=�F=S�\>s�p�>$�}���	� @��2Y1�l6�=S �=[D�=5�K���<���=��>tY��ic>��=�b7>��=��ܽH>d�.���W>ɃL�Z

��<^��G=9�>,�==��;�.>�>��ɽ�N.=�9�4bR�*��>s6=�����B�=1/>Y*>�_���M=	��>m�>R-5>�/?��"�$�=��=�j�=�+Q��3>��&>%J��Wr=z���2�>�t>5��g|-=�D�K��=_e ��6>M���爘����5�j>I�">�g<�&�N�P>��=�n���5=Hej�QAP���>�n>�>.֌�_��=��n>Oz>�\z>�A>>Y�?>���>�~a>��,��#�ӑ;#��=e�<��I�T�>LCT>̠>R��l�qo����=/=C�>b>�9���V>B4?����=��>�F0��ۃ>S!��W$V=�����D�< /S>�_ɼG+��*�ٽ{�=q����Ǽ���ep@�s�M>�<%>���=+�8=e��K@������~=�r>�,�>XH���`�68>{R��GX�<��=�H>.5��=_D*�"���IY��s7>�&>C�\�B%(����>��߽�\t�<�R>�XQ����=�>c�>��>x;e>���>w�>鉚=m��>�Ч;�k>�d>�8�>tܽ=��]=��u=�m.���=WeƾR�<��4���=��>��
��}�Ե�xK(���q> =.#i�6�ؽ$�D>
���ݼ��}��=�;Ձ�=Jʽ�v���T���'<��?�t���ipr=k�O>T>S�<��=Yͦ>����=E2�=��T�Ē~=@X�=յP>D#�>��������D<M�k�>Б4������;>_�=���>I�ؽߙG=�F;�����=��q�e�!>W�F�iB�=�t��ⷽ�F��o�o�� �>���a!�Nix�3޾��ӽ2�=�۽��>�zy�}q>>�>w��=���M�������U��={��Y>͒>��½>U�>�0��|۲=�V�=�_G>*
dtype0
z
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
T0
�
-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasConst*�
value�B�<"�fY�?qރ?�X�?�^�?]s�?<ʆ?�?⛆?���?Q�?���?KÅ?���?�z�?kÅ?�?[)�?-m�?���?�.�?*N�?s�~?
�?�a�?ن?d��?�^?�5�?ڝ�?��{?U?ſ�?��?(�>?��?��c?6��?�&y?:�j?�Qt?h�r?BCx?�ۂ?��t?��j?��?(�w?�T?��K?�P?��o?�z?EV�?�H�?�0}?ޅ?ʊ?:�?�/�?��=?*
dtype0
v
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
T0
�
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelConst*�
value�B�!"����>GNF���'���i>�A>G4>�Q�=��5�F`�fW�ahj>��=��=ҽ�W8�A}�����>ka�,ڼ�X�=��t=��>���=��W>���<�� ��y����=�Go��=�lW�2	h>��|w�=�+>؞6�҅>r)=��>��F>�P�>-�8f��<7������[�=-.J>B7~�;����S��q�&���>ޖ>>���� �Q�>���潕/R����D)����C��
�X�'�|�0�>�9��s���>�]D��D{>pW�< ��>�.����/���Ƚ�>���12�>�>j�e���=��T_��jy>��=y��=V{=e�ƾ�_k=��s�����|������䪾2T7>�A��R߿�Vg�<�>�=�X��v��.����> K�=�X��<<>`ך���=��Y�#>>���<>���{��>�j>ߙ��K�z�F�8>�*���U��Ɵf��q콶B�>�j�>���W@���G>׈u���m>]k=J��>b4�>+FT�W T���>e�>bF>B}>��>?(�>%3F>�J��A%;�}Rx�3>$�<�]1�.�N=%?Ƚ�k���+o���=�L�=l��]!�=G��=��M���>�>��>��h==2D��	d>(�&>?��=�PG�"����&�Y2=\E��hl>�jڽ�{@>�ǝ>�&=0��>��>��S>8I>�Ψ�Rf>?���j�1�I�>˔=@d׽���>���<�o]<s�>>q��>�6r�tk�>M�>��<�c���=�{�>��n�݂�>�ߩ��6S>�=�gݼsr9��V��	��T?����~=m⑽����!=;����=.f��0�>^L�=��*:�O�����>�Kl�:�w��v�������h��Q��6>
VG��;�����>wp(��+S>{�>��>P_�=�������>R1>�>�3�=��6������H>Ԓ�ߝܽ���>�L�>��5��8=�<���>�*>\���|����4��0�=y��=�������=@�l=%d�>[�>!^`���{<�<>�1^�]�v>��=�i�=�*�e[�nW��M۽s���
>�
f�q�߽ěK��/R>�4�_���}z���6��T�>��>��=��=ܴ)��|�;hN,>�����/>��>G��>�䀽��>+��>М>(�D�k\D>�|)>'PJ��`�>aM�>�K[���)=�!�<k����P�=��>���>E*>�/F>�@>>��s�cl�>6a��>�9�=�ƒ���>���j�u>s}���8|>Љ�<ؙ�����!>�B>z<$�IV2�(	2>w�$>���>��><���<�I�>zs>�L>Sn�>���>
aW���ݻ�=o�c>i�<����CB>Vͤ�'��=-*��M
�>~Ǯ<*c�=���<NS�Mf���� �ȦQ=����`��>C<f�=[X9>>���>s��=����(�>
��=.�̽8x<>�C�<��>A@y�dT2>B�м�i>I��=�:����#�c|�=^�j>�>20d=U�u>���=��p>�]�Uce�~�$>F�$=� 
>^d>���Ͳ=Ou>�������>�1>|=E>u�?� �>����$k���z�c�	�},>�3I->75[>!����U|�p��<��Y���?�INC>��>6|9>t��>،>r�4>ȡO=xvB=�7>�?>|�"��9�j�>H�>�<A���=	��<�^3>�Ͱ=X��=ƙ�>�+O>�
/�,`�=+�f@�
cd>�%���^>u��<�Wt>_�<�h�=_5���>%��u&>�c>��&�>U��`_>�c�>53]���M����JR>4V�=��Ӽ<0�=J*x�GL�>��U>� �<�X�>��������%Ok��>�?=�@�-�-�+Y!=�x�:���,'��YD0>?�S>3�߽�(M��O>�P��}��=NS=
qټ��>��#��ny���R����d�>p@��3#>��˼��=���=%��[�>'�Y='��Oj�=���+>,U���p<{�$<���W��>?��e�n��m�>y��=Q̫��[>� �>�u�=�]>�%�<�H��Y��D��>1�ٺ�/
>҂K>F<��t��s�=���=<��>ϠU������=~"�>�;+>N�>�2:��x=hq�@~=�9l8=>޼���">>4�:�>�w3>�,�>w���!�����ڄ>%�� m�>q�y>x�==��=7��=D?�>4����<D�z�>�~>���yy�<��>�E9>�%�7o�> ����*���.��Ƚ"j��r��录!���I���Ľ=�|����<�=���;4���;Rg>�u�=�ś>7��B�=
u�><Eg�L5S>�4�>��S��+�gM��$��>`��=�>e�=w\�>���>��Q>ZS~>�8a>s�=�+��!Xx<���>$�)>N哽b��;**=�	<�L���A@����>y���.�(��=-̾��>ȁ>�E^�1@>�D�>зw�ݏ�=yw�>օ�>g�>gq�=
#���Խl_�=9�=�6,>���=���>��<�j>�㫾�^Լ�b�=���=>�>��*���B�,x̽��@ސ�~�۽�v�7ъ�>j'c>�E>E>��M>3��>��>����+zɻG�>M���!gջ*���ZP��@�*�ӽ7!�<,5�� f��l�=�������a+�C�>���<�U>��{>H��>娀>��>ǐf>n.���n�<)n>�>� �>Iĳ>'�>�eG>�u'<��y=�w4>z#{>�v> `>����!�>l)�>�p;Z�ռ�˦�5�>Z����e>ρ>+^�=���=mt�=�`g=(�Q>g���\J���>�0�=z�=�N�����8�p�Ƚ5vX�>'�<r���5���:>��i>P�⽘� �k
$�+{�<��>��>S:p>I3�<���>����~v��c9�R�c��Ӡ>�F�=՜�>��(>Ε+���H�x�>w:!���<V؈<C�Y��Oe�?�U>R�[>Nv>?]�bǯ�0��R�3�^<ؓ�=m�5>�"��G>+�1��2>�U�8*>g�t��:/=�u >W�>�e�w�s���3�����e�H� >��>�����u> ��>kp�>�_4>m�8>&S维�R�VE�����=m�C>/��A�_>��A���n>XEo��"R>��>@2�>� ��MK=�X�>�{���ω=5�Z���=���=��>���J0�>�M^>�;�Ҩ�:{">�	k>�`s>�t�<NZ��0>��O��9�>�� >ڰ�>ƣ'����=k>�=h�>>� �<�Z>�>+��B�=5T
>∌���P>-(R���=�m>أg������v�=�]x�>�ɬ>�ͨ�9L��fvj�O��=!�>�?=3�D>U4>E�F������>8�U�!
Ͻ��>�`X>�߽��ӽ����l˞>�r$���A>%#>X��=Q�>No�>e*M>�~�<~�>��A<tr�=s/
>�C�c
t>�>��8��!w�YQ*>`&9��O=�i�=��>>d1]�iD=ۈ��j�=��)��ȉ�*e2� >�J>�>XHĽZ���M�����A>(��=x{k�r8=��d>,{'���G>; >a=k�Q�{Lc>tq>�'�>N=�>=�_�򰁾��>�&=a'��"��Z��vC�<�K.>��>��d�L�>���̩��f�>r3<�c�>���>(�6��W5>���=������VZ=<<�v���=��=[1㼏�	>� �oP�=C��=z��=r�[>�����^Ǿ0���ul>�|O=���'�%����=�};=*>�>{ny���=��>�?>�m���ѽ�w����-�7��=	D�=��><��E�}��Ȟ������2ն>����l0s��E}>*
dtype0
�
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
T0
�
1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasConst*�
value�B�"x�p =�\$=K7=�:�=��<��A��5�<�u�<z��=�����X<X�����=�S�<��<='݋<V��<{��<}[�<j������:���r�<99=�e�<~�<e�p�¸=��<3&<*
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
�
dense/kernelConst*�
value�B�"�>������Ko��b�>܌����1>��>8�6��K<�=��U>������Ѿ��=�\G>�;XA�`���� ?{'�������Xi�>zҍ���>Oч>O7>�+=�4��N�sZ^��M	�Oq=�(�>�Qt��+��8'�>zGþ�#�>�S�9�>e2��iZ��C���½U^�=�]�=w`�>�iϾ:�`���b�b�;;���>RDw������}>>��0�>�ӻ�h�*
dtype0
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
?

dense/biasConst*
valueB"�o ��o =*
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
)
OutputSoftmaxdense/BiasAdd*
T0 