; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtNaNF = common global float 0.000000e+00, align 4 ; [#uses=0 type=float*]
@rtNaN = common global double 0.000000e+00, align 8 ; [#uses=0 type=double*]
@rtMinusInfF = common global float 0.000000e+00, align 4 ; [#uses=0 type=float*]
@rtMinusInf = common global double 0.000000e+00, align 8 ; [#uses=0 type=double*]
@rtInfF = common global float 0.000000e+00, align 4 ; [#uses=0 type=float*]
@rtInf = common global double 0.000000e+00, align 8 ; [#uses=0 type=double*]
@multiplication.str = internal unnamed_addr constant [15 x i8] c"multiplication\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=0]
define i32 @multiplication(i32 %a, i32 %b) nounwind uwtable readnone {
_ifconv:
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a) nounwind, !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !81
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @multiplication.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !87), !dbg !95 ; [debug line = 21:24] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !96), !dbg !97 ; [debug line = 21:31] [debug variable = b]
  %tmp = sext i32 %a to i64, !dbg !98             ; [#uses=1 type=i64] [debug line = 24:3]
  %tmp.1 = sext i32 %b to i64, !dbg !98           ; [#uses=1 type=i64] [debug line = 24:3]
  %i0 = mul nsw i64 %tmp.1, %tmp, !dbg !98        ; [#uses=3 type=i64] [debug line = 24:3]
  call void @llvm.dbg.value(metadata !{i64 %i0}, i64 0, metadata !100), !dbg !98 ; [debug line = 24:3] [debug variable = i0]
  %tmp.3 = icmp sgt i64 %i0, 2147483647, !dbg !102 ; [#uses=2 type=i1] [debug line = 25:3]
  %tmp.4 = icmp slt i64 %i0, -2147483648, !dbg !103 ; [#uses=1 type=i1] [debug line = 28:5]
  %tmp.5 = trunc i64 %i0 to i32                   ; [#uses=1 type=i32]
  %phitmp = select i1 %tmp.3, i32 2147483647, i32 -2147483648, !dbg !105 ; [#uses=1 type=i32] [debug line = 33:3]
  %tmp.2 = or i1 %tmp.3, %tmp.4, !dbg !105        ; [#uses=1 type=i1] [debug line = 33:3]
  %i0.1 = select i1 %tmp.2, i32 %phitmp, i32 %tmp.5, !dbg !105 ; [#uses=1 type=i32] [debug line = 33:3]
  ret i32 %i0.1, !dbg !105                        ; [debug line = 33:3]
}

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!opencl.kernels = !{!0, !7, !10, !7, !10, !12, !12, !12, !12, !12, !12, !12, !12, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!24, !31, !36, !41, !46, !51}
!llvm.dbg.cu = !{!56}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"size_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"realSize"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"real_T"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"value"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !11, metadata !4, metadata !9, metadata !6}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"real32_T"}
!12 = metadata !{null, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !6}
!13 = metadata !{metadata !"kernel_arg_addr_space"}
!14 = metadata !{metadata !"kernel_arg_access_qual"}
!15 = metadata !{metadata !"kernel_arg_type"}
!16 = metadata !{metadata !"kernel_arg_type_qual"}
!17 = metadata !{metadata !"kernel_arg_name"}
!18 = metadata !{i32 (i32, i32)* @multiplication, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!24 = metadata !{metadata !25, float* @rtNaNF}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"rtNaNF", metadata !29, metadata !"float", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 1}
!31 = metadata !{metadata !32, double* @rtNaN}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 63, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"rtNaN", metadata !29, metadata !"double", i32 0, i32 63}
!36 = metadata !{metadata !37, float* @rtMinusInfF}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"rtMinusInfF", metadata !29, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !42, double* @rtMinusInf}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 63, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"rtMinusInf", metadata !29, metadata !"double", i32 0, i32 63}
!46 = metadata !{metadata !47, float* @rtInfF}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"rtInfF", metadata !29, metadata !"float", i32 0, i32 31}
!51 = metadata !{metadata !52, double* @rtInf}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 63, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"rtInf", metadata !29, metadata !"double", i32 0, i32 63}
!56 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/rtGetInf.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !57} ; [ DW_TAG_compile_unit ]
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !59, metadata !64, metadata !67, metadata !68, metadata !69, metadata !70}
!59 = metadata !{i32 786484, i32 0, null, metadata !"rtInfF", metadata !"rtInfF", metadata !"", metadata !60, i32 23, metadata !61, i32 0, i32 1, float* @rtInfF} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786473, metadata !"./rt_nonfinite.h", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786454, null, metadata !"real32_T", metadata !62, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 786473, metadata !"rtGetInf.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!63 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786484, i32 0, null, metadata !"rtNaN", metadata !"rtNaN", metadata !"", metadata !60, i32 22, metadata !65, i32 0, i32 1, double* @rtNaN} ; [ DW_TAG_variable ]
!65 = metadata !{i32 786454, null, metadata !"real_T", metadata !62, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 786484, i32 0, null, metadata !"rtNaNF", metadata !"rtNaNF", metadata !"", metadata !60, i32 25, metadata !61, i32 0, i32 1, float* @rtNaNF} ; [ DW_TAG_variable ]
!68 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInfF", metadata !"rtMinusInfF", metadata !"", metadata !60, i32 24, metadata !61, i32 0, i32 1, float* @rtMinusInfF} ; [ DW_TAG_variable ]
!69 = metadata !{i32 786484, i32 0, null, metadata !"rtInf", metadata !"rtInf", metadata !"", metadata !60, i32 20, metadata !65, i32 0, i32 1, double* @rtInf} ; [ DW_TAG_variable ]
!70 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInf", metadata !"rtMinusInf", metadata !"", metadata !60, i32 21, metadata !65, i32 0, i32 1, double* @rtMinusInf} ; [ DW_TAG_variable ]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"a", metadata !75, metadata !"int", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, i32 0}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"b", metadata !75, metadata !"int", i32 0, i32 31}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"return", metadata !85, metadata !"int", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 1, i32 0}
!87 = metadata !{i32 786689, metadata !88, metadata !"a", metadata !89, i32 16777237, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 786478, i32 0, metadata !89, metadata !"multiplication", metadata !"multiplication", metadata !"", metadata !89, i32 21, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @multiplication, null, null, metadata !93, i32 22} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786473, metadata !"multiplication.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{metadata !92, metadata !92, metadata !92}
!92 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!95 = metadata !{i32 21, i32 24, metadata !88, null}
!96 = metadata !{i32 786689, metadata !88, metadata !"b", metadata !89, i32 33554453, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 21, i32 31, metadata !88, null}
!98 = metadata !{i32 24, i32 3, metadata !99, null}
!99 = metadata !{i32 786443, metadata !88, i32 22, i32 1, metadata !89, i32 0} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786688, metadata !99, metadata !"i0", metadata !89, i32 23, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!102 = metadata !{i32 25, i32 3, metadata !99, null}
!103 = metadata !{i32 28, i32 5, metadata !104, null}
!104 = metadata !{i32 786443, metadata !99, i32 27, i32 10, metadata !89, i32 2} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 33, i32 3, metadata !99, null}
