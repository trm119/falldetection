
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
value�+B�+2"�+UgZ�� ���������v�i�G>ӹ�=" ������B�=ԏ<�"O�=??�=�p>���i����b>�u:�Po>�BC>������b>C��Rh>��:��İ��ü��V>�]þ�7�=�.>�ᇾ��e=��������>c-<ߔ˼R��U�<�� >~��;�>:�0=0'���/���>
r >� U��!�MD�=uv>�b���T=o�=q�(=��>��>�gg=#����%��&l����j���w4,>eE�=�T�Du>%��=���=(���L�R8@�iV>ɍf>0З�V^-><8�=R�>u8>�Ķ<�+��%$��O�-D�>�7H��J>@��x�6>Bj���~�=�_�=jw1�SU�>Ⱦ:�3�!�D\˽Dt��"3>W�,=|�>�*�=!'9>������޽��=5��)m=���<�0%�F=�=��f���G���?*�>��=G	߼��?>g;�=&θ>`�~>�A>���>&�>�H�=:?*��"�=[y����$>�>re�<���=_Rw���׶�<+�-���=� ���@>ŵ> ͆��Y��g�MKJ�@0>�?!>i��<�[���
=굥�i�5����<8�A��n�<�}���6�>��`>n>�\�=Zs�=�;=��>�̝>,z>�ډ>�G�T1v=�O>������>�?�A�.�>��,>��\�>�0=�K��+ݽ��]�HZ��%��\��;�4#>[Y>m���P=���뿻U�r�󶣼��M����>���a��>��	�fO�;�]T�~i����½�h:�]��=�x>U�|��
>լ���a@>�E���=��.�v�Լ�Ɏ:Bg�;�˼u���h�=)m��=���s���g�2��pL>`.=V����R
>�=F���T>A,=~]��˄>�"�>�{t�Ϳk>rhy�]�
���ƽ�	=�n�J�p��v�=wo=ש�;�`[>���\�=k*��Z��y{N>O�{=�~�[��������>b���� =�_>�u�=6��=�"�� �>o�"l>�>C&?=��O�u1=������>x?�>h{u���<��_��TW>��z��,�<a�T>��¾6�;�oǼ|ؾ��!�a>,���8(������4Z>{z�>��b����>g���v|:>�7�=�ﶾ�}R=.�<P㱼�s�,��er>#��=���<�0�>x�=�-=��>#��>x�;>'�������W�>�}>�\?��)=��e��vG;�6˼��m�x��=Ĥ#>1�/�Rd�> �=�u=�;O��)/��3>�HG=�$�
Ӆ>R��>oB���=7y���40=���= }�= ��=���=���<	k>�k���=�V��;{~<�"%><��=�Y>[K>kǈ>E�7��`ӽ(=u>P��N3:�u�=:[>�=�<0��<�9>kܥ>��b=_�Y=���=�ҍ;�=�k��/�<���;v�/�a>�U�<Ck�:�}>�uO�[0[��S_�����|�>l��=�J̾�(�=ʼ3�[�aYX���=�d��v�=�q�=2�v��c@>��=M�E>%�p�ݘ�<�:��p���L>g�>@��G>�,�����Vv<}bc>a��>�s�>�_>cQ��������z=��=��b=�ƾ?Xk�Mxn���\=��V���뽄��>�(���)��ύ>.:��%�����- >�K��t@�i��=�#���
>�>��J��Iq>�ǟ���;��0z�M`�>p�;�Ξ�ecd�,��<��齍��=��-�1b=�򻽮�=s�>�`oa�jo�=���>�r=�[�>�0=��>�7�>&�߽���jf�=�wu>���}����@�><k��zf��m>쒙=�+>��>#�:>�9>"oc�j-����>A�=wY齿�E�!�>!��D@>w�c>�^��'b=R�9>.¸>��Q����Wj3�V��B�����>�U����|i�>q��o�
��\��@>���=�er���=#C>Qp?ߠu=0'�=7�+���`���\>�r���>�ܟ� �d���仾�����=Ƅf>�Ӵ>2����?>�g����>!9>˩�<�	��<���7�G��ԃ�/��>�4�>����Nu[>�9��ǒ<f�>z��>y����>��ھ~g=ԡ�=�T�<��1>Ӷ;N��w�9���b,>�~>�0V>Y�(<�G�>�@���ڰ>��J��=Sʚ�&�#�)��>�RE;�IO��0�;���<�6ͽ������O�IH
>!�$��-�>p+D��U"��Ct>�{a<�-n�-+8=%�B���=U䒾���<�&�=Q�v��N��Xͼ��=p+��_�>��>Yˌ=2*�~Y��T-޻������t>�Z=�#|���#��]��N��v+���=��@=?���=#�lr�>�K�>H��:A>��c>D
�=K��=����2>gX��D=�J�<���=�"+�Tfټ��>����^���x��0^=�4�>9�h>?o>���>ԟ�<5�>�r>p^��+�u�m"���`>]:>�����B��͝=dz��Or��Od ��=��=�Gg>ϒ�Hk����(~���>.z��\�Z>[�>SA�>�؉>l���e�9�S�f��=��1��u�� �O�˜v>6ݦ���#��{���@=LZ��O��ոr<�6>l�=ʸٻ�1>�	E�zZ��B+�>o9>�Q=�xF�J���yh
�ݕ#>��>^I�<�م>A��>@���[�
����b�>��=����.��==R��u��=rq >L��=��Z>p{>��>vb⽇�\>�n�<�����o��購���=&��=��������.*�= ��I�5�ڛt>i��=.���Ԥ=���cD�0İ>���R�=7�>x�*��r��Y�~�N�@���=��G>�
-���P>da>�+&=�pR>kY)=t{�=E��>ű/��xR=�a����>�B>�%=X�=L�|�`��>aQy���/��D�#6e��S���Y�>�3>�5��#=>|ܪ=�Wn>�X��3{=��J��z�=S�>>Rr� !A�&\=��V>}��Er>S��>Z��=9lj=R)!���=�7�=�`>���:.��)�>Z�>۞��P:��ּU� ����<�P�=)�*��z���#��3���:c���W���3<�J�7���N᾽,o>-�=�1e>��=�Tk>:�f��6�>.�=�0_������➽�W�<%�}<M�b=�񛾤#����=0 2>S��{�>N]6����=5�D>p�1>�4h>��Tc>��C;�B�=���=H�=�v��Ww��)h>Ҧ�=]ɾ��Z�����om>l�>��=�f=�>,�->��E�6���=��3���D����=�x@�jW�-�;�!��X-��rǘ>��=y`K=�(���h�̽��g>ӽ=�{!)>ٖQ>Xm>�)>�q��{l﹇Sb��>�f >Mmͽ5�>J�T������󡽢��>��w���>�Zܽ�����ԇ>�ȿ<Qh����@�zS>�Aw���>UwK>b����>H�p���K>MA�>wB��k���̽��=���=lS`>���>���=1�>�Ь>�����֝��"�>��ýs��D9L=�GI=Ks�=�p6�'�S$>\�">/~ܽ ���2�\�\>�����>�Z�=��>�kj���$>�Le���0���>�/��sy�%�F�1s����=X���w�=%���"��TQ�_���>,��PV���!>��=��=�=>#r=�%��!�c�6v绶_�<��>���=� �V�e>�D��2z�>`>5->�0Ǽ3`s>��b��[�>�]���m���)<LNi��Ľ�[����=����@<�0�vv�!
�H4�����ۨ=�g�>!~<���=F�M>�4�=�l�<�CF�l>'��=ፉ���c��#����=JC��,3�\�ٽ04�fF��Y�D��\O�/�:�T��+�=>��<�C�>t�>�	>I�������J�e�b�)1��c2��E4	��[�M
/���u>l7>YI>�������>?H���Js>4�u>��0>XJ���,�vB���2�{��==�<ļE��o�=�hY>�Sq���H�պ�f�A�9�!br��Yؽ�s�:�2��1H.�4�Q�N�|=�C���>Ys>X^H�w�3��?�>�5b>���d�>�%= [��Ӎ>wj{>�CF��>wS��F����>���מy>��@��.>밉>�'&>Y5��N�/=��=�]���M>��1>�U��\��<��8>i�>��=US������@�`��=>L�P>�����d��<BO��>O���/��
>�����)�J p�e�>�I��t����W��e�F	�>f4�>0\6>�Ļ>89>ԓ�=��>�"q<�o>V�C>���=����w	��F>��Z�/ވ���=�~�ݎb>�-�>� �=�7���<ŵ��a���z=�>��>�%W�7 �M朽x<B�ý*>\>ν79��5��[�TF;NR��^"Խ+���`߼kjL���c>=��}IR>�r�ɷo�L��=Ȩ���=~	�6�C>�>�]�1�=pp�=���������֪=�!�<9�-��5��!3�K��j��<~e�Ւ\>�#`<Nڼ{,������Uг=�3L>*49=園=?�����>Ը�=�3�6۽�����S>M���k�=BQQ>����L��罚�>/��<ҽ�
�<"�2>Y�˾����ؽ���>q>6�AgE��"����>3L=%tQ=��>�X=�+(>�3�=� ;Ƌ]>l�P>o&=���=R�>�m7�0=>�9%��Rz>fm�>q)@��?>�+"��j�=��@�k��|���:X>|Ƿ=� �>ZJԾ:�=�i�98�~���Lf�]����.�;�꽐�3 �j�>�;�=�̟=i�K>��ҽ���|)=	���>�)4->��>�x�=D��>߀r>��=@$�<iB�=���=I}>�,���=z���.��C��>�0>_�=�p�=R﫾o/����=�$=��A>Y�)�\�<�S�<?A>��>W$��{>'~I�Pk$���>�u�<�*����<ݥc=���= j��Z�>ˊ��8��=��t�|�(>a�i�6�g=��ѽLL,>r{�>~���[i���N�=�BX>�q�>�u�>�0n>K����>P!��_��=8W�=������q��=��=��$>� =�䕽���=�|r>�+�='
߽��S>��2������>SY�jS�""��V ���$�V[�=�O[��tC�8�3�c���j`>�w���t��c���ֽ@
>��=QL<h���DQ>�bg������h�<�:X�U�H>9l��3�>u:>�v>4$i>W��="�U��������=�=�=�4�"*U=����<��R�F�B��<V�>o]��DM����>3�G����>w͎;X@̾P�E>�c>�X��>j>.[־��*u>e嗾Ǟ^�\�����s������>�/�=K��=�K���=�0��Ƥ3������:*
dtype0
z
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
T0
�
-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasConst*�
value�B�2"��Ά?�2�?�?���? ��?���?)��?���?��?~��?(F^?�'�?p�?m?�?�6�?��??�?t"�?\�?U#�?:�v?�.�?���?���?�+�?̐}?��b?�'?A��?�ʆ?\r}?�T?=Z@?��?%�?BX?��Q?٧|?�d^?�p?��~?c�x?c%h?��x?y�t?��h?f�{?(�?�Lw?��y?*
dtype0
v
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
T0
�
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelConst*�
value�B�"��WB�M#X=KR��$W|=Њ��+�Ž�|F��\>�g���W�ի��/���u�0s��_b>�k>�����>��9>��>��g>�-�<JP>�l={�2>Bk��)]�SN<@Z��d=�����A����=�ۮ>t�|=���=��$���\ğ������=������=k��2��"���.e>�2%>�Z>��>P�<>֮>��7����Z�����Z����,���8���榽.0Ͼ���������|�=�)>xa��������I>�>m���`�>J�=%�>w@
>J�,�A����H�=�2>W�u���X=a�Y���O���v=E⁾\��> ��=|�;#��<��>U@G�A�J�~	彰+w>�{>ն�>�*�=Ƽ�=��=���f$��9���/�'ȉ>��ѼIk�=���=r[�����r��R��=/�=�NV����D%��W�	�%�=>�n��������=;[>�l�>O�>A�ѽ���>�6�>+s`� �c=5���(����e9>���>��W��!:��`��q
���T�>�t<?�E=�:#>�@�><��77߾��l�'/U=������>���>�K^� Bؽc_����>d�.>o���/Q�+�\�:f��
֨>Y�=�`y>J�=zpB��Y'>�@ƽ?r�>;��={\�>��>4>q�E�>�`�=�>G>���;���Rv�=؄_�^]>!�< �l�s�r��:�nia>ߪ�=`4$=/����|H>=�C>���R�T>k��,���G�=;8�=�M�>$��=ކ�i�|��I�>�-=!����}��^>�gȽo��>�<?�$v>���<Y�=Zߜ�
��={Ct�m5��壾�q�>����R�0��J>,�>	��>���>�=c>S��>.ߝ>����b���=�oOj>��>>�>Ǐ��_[�>��$������>����B�������`=<�����3�hs������5<�(Ƚ�Є>��~>�D�ۼ�J��>���pP=��>��R>��L>"'�B}F���=���>����Z:���wɼ;��U�>�Ư���>��>%�^=��>E��>��>�u>���<,S�>��|��.��S:<5�r�Aړ>�n�>�eȽ�ix>Ŝ>�4>���>�{�>v}�>�G>N)ݽ�-����=6����fQ��G�=�s�>��@>�Y�>�E�=��B�ư4�P-6>ɨ�q��;���~ >�Sk>�0=�"��^�>��$>���L�>��>{>H>^Nl��a>un>��(��<�>�u�>�>�\���tt�Ln�>�P�`|G>��3>�&y;�b��-�����2I�<]�/C >�$'��W��.�r,��Dx_���:>��s�Jt>��4��@#>���
��ɝ��.�>"����{=34���Q>#*����=���>�>����F==q>���4��>11=� �>e�F�����&Խ��>5�����z��u>P�(�<Q�=�	=,8��8:D>� 8�D�轠�7>��={�>*bɽ�FE;M��>'�(�ߊm=o�k>�/>����i�g=�:�>U	���%>��i<���=��/�,��>O��=��Q>�Dܽ&U��D�>�]�>���'�>/F7�Y�=2�!>��O��D�=��7>Tއ>�~�ӛ۾����V>�qB�wg\��j�=�Vj>��e%�>ݰ�<3��>��N>�p�=���>��>Wn%����ó>�UK=��>���=����ă���A>�*��1>�祘�|�{��Ϯ>8ћ>����C�>|OJ=ƨu���`�0� ���Խ�N-��5������tt���#��]b���t>X%�=��=��	>��0>�h�=�>��V>��>�Ȃ�^ܽ7r%��z>���i�>JVz>����>p	�;{�>>'�>衟��4�>���>�X����=W��=�c��7��>�� >%o�=O�>�'�<�W�����;��R��>����x�S�*��=�y���w�kA��Q>��>TZ��zRf��'�>C��=� �>�k7>h&�>Ĥ�>:V">^��>�~���z�<j=[�ɽBkn���>���=@�������"���.=�E<<�H�?��Y���V���x����=0���م��� �=�FI�a�_�� �>�N�=�/��
�=��<�'ּ* ���A�=����s�;���i��5s��2��>�K�>�X-���D��Q>��>8Z�="��=5���=x�?�<z�=	K'�t��= X>�3�>h��>���>)�̽�t�=S>sx`=<:���S���>��;=�i�=W�>^Ǉ>��%>t�'>1��='�<��콜�9>�X>6����-#>!�^>��>?bk��V�>S��>;�?�c%�D-c>�X=h����Z�>�_[=���>]�*>��[>m��>R�a��#>�ѽ�P�>t������>�|�* j>	����:����'=�<�z�>�4d��\�;S@�>��Q>�ؼ�^��<��/����=��=�m6>I�>�d��$y>��>�*�U�콴��>z}=`G�1��>p>u��>��8>�E���R���c0>|�<W�>}e�>v����o�>�(K��q��Ƃ>S�����V@��׵��z�>	�=��3>�m>����F&e>��0�	��@>E �
�=��>(G��rw�>���<l-{=�A�>��>�ܽȿ�>��qQ>�M�>T�>��>T��=r��=��]>0�ir}=O3�I|�[O�M�*�-�v�ҥ�>P���B$>�&��d�>�k�>*
dtype0
�
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
T0
�
1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasConst*y
valuepBn"di�=bu7��U���<�B�<�P�=�>���<Y[D=fr=gt�k��=�y =���=��=1�T="*=��s={:di�<b���Έ<�:=��<�6
=*
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
value�B�"����.X��kӣ���x��(���>[f�Q�I������`�Q�$U�>��>��>>]����������㣾���>!˲�W��=��Q>n��;�=�~��^�<b��>��q�1p+>�A���dƽ�n>�����J��c[��f�>cE���p���>uսE�`=�=��X�q<���<�)�=��>> �����=m���
M_>�qj�ST����L�+$ҽK/�1;�=l�=+'>�b�>(�>�*��v9>��>��k���:��K����λ��;K�#>�d�S��*��><��N�c<�I�>�g��P�-�>恾���=M�>�O���'��	��ʊL����>{㼜�n>�����9нq�s����>�{���0ӽ%Z'�����_�s��M�a�0=�ł>h��>i��>�¾�z>G����(�=��ͼ�'���J<9�<�X�����$>�gr>K �>�5�M��>�p������
	�=V���UZ��4�=�b-�=��>�j�=�;�v�����O��2�>R>󜂾i�Ѿn���e���^>ϨR>����J�Ԉ<��a>&�>�3��Eo޼qi�>4�>B50=��O0��~�=���>P�콒$�=4Z	>]?X�&>H�\����H�>ii>��ľ:�����R>��>;���0��>����J4ؼ�t�>^��'�\>h��>�ȑ���z<%�
?��<����n�cN(>*�T>& ��Zq��Kբ�qf�>���4�u<i{>�i>���>��ƾ_`q��(��Eg����>=I����>�^>�ߋ��ݾI�> �">�>�|\�atJ>m��>�Χ���4����>89-��t�"�O���t������<�3�1�>y
�=������>=>�7<Kj�����>/_�>C��>�����G�6q >��<��LR��p�=͓���=C,>��n=�>���N�>�@1�����{{>FԳ>ڝ�=:�>	���������=*�Ľ�>FĆ>V	���n&�[�>%�.�>Y�k����ИվH����m��|��Y�>zM>*0>@뱽�K���Ҡ���=ʄ��n�>�q�>�#�;�C���>,.���9��(�>�E~��_v>�&h>�C�S��(Q�>���>���	J=�E�� �>s\���\k��@g>u t�(L>����FV�>���>7���q֝<��B���S�>	�p>���<�ǽ�7��DW�o �/�>�@>v���=�z+���=��A�>Zs�>��N>�+>�$>�X>�9=�Ax=[x�>S�+��"���R�>�2"�,��<�W���PE=�D>2h�>���=|��>��z=��]��<�������>�:��*xa�e���6t�]��=��!�I��>�1�l���/c��ZBB��s�>0�B��¾D�X���&�s,��Fw>Tjۼ�
V>9�F��07>mˮ���^�*>.2>�nL�<���=�6��Ew��=�=.=s��>��(��>g� g�>�'9>��U>�D>��'�����H��y1�>]�Y>�>ϙ�>aZ��現��>�I�=�㵾�rO>��=�>`�b�K=�N�>"�>0cn��<=�B>�0X����2�<�W+�=��>�P���Ĝ����k�%fT��L��_�m>l�3�Mi�>�tH<B¡=	�*r�/5z>��E>���=���<��a>Uv>{hq>���>�?�>�(�<��>e41>>��>�1V>Ԙ'��3*���D=�8> ���%,>�c>�V!>Y�>V�=�ڿ>kc�>��)>�L��5t�>��d>͕����<8Bc>;��>��v�xh�>k[~��Y^�%�K�b�i>T=��JPս��1�f_�>%,�>�I
>zu���$U�޸����>�F>�Q�>�S1> ��=On���x�!�=����Q}t>�m���%U=cNp�p�4��7<(�T�l�:�J>3u>�h8=5���V����q�=i�ĻB��>Z�7��-=%߽�V�>�WJ�0���Uj�>�����N�Ȥ�>(���սg�>&r߽��s���7�;��=٩�y =�Ww>@���žQ����>��r���0��=@�=���>��U�bOC��Pp��>܉����=�=�=莪��`佇��=��>��=�9�>㪰�� Ҽ�� ���V>��>U���g
����n�+�@��*���5��PL�m=�8�>�.�Lګ�k�>>��N>�^:=�����탼 �	=�,]=�g>�B�=/{~>�0=�u6��'��کP=�f�<	�=�-��k}�~H�UG����P�!Q���(�>/�T>\��=�M"��B�г>6��<d�=uⷾ ,8;��y��k��Q-�o�>+{f>��[��J⼒ꖽ&�:>��k�q����1�dK=W�>8V�>_��|^���6�>𲫾�B�>h���勾W���a<���e�Cu��⛝�Uss=���>���Y4u=v��ا=fwD���>�QI��w�=z�_�Ef�>���=��<�[>*
dtype0
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*y
valuepBn"d�����<�=�Ͷ�D���{�=�LF<    a��=�������>a$=��缅7������J=�������<�Ј������j���憼X�<���<�=*
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
value�B�"�'�>�f�x���R�f>�~˾����kE�lsؾ��>������>��@�S��ƥ=�þ��>a����>��p>
>	�>з<=ר��=�>�g�>��=h��=c�ؾO[�>"d�r�׾^�>����N��&k��+?I��>M����*��ᾋF�:�(��5
���y�A:ᾶvپ[.�� K>2L�>*
dtype0
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
valueB"~ۼ~�<*
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