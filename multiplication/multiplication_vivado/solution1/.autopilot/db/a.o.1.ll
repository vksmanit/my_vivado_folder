; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/a.g.1.bc'
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
define i32 @multiplication(i32 %a, i32 %b) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !139
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @multiplication.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !145), !dbg !146 ; [debug line = 21:24] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !147), !dbg !148 ; [debug line = 21:31] [debug variable = b]
  %tmp = sext i32 %a to i64, !dbg !149            ; [#uses=1 type=i64] [debug line = 24:3]
  %tmp.1 = sext i32 %b to i64, !dbg !149          ; [#uses=1 type=i64] [debug line = 24:3]
  %i0 = mul nsw i64 %tmp.1, %tmp, !dbg !149       ; [#uses=3 type=i64] [debug line = 24:3]
  call void @llvm.dbg.value(metadata !{i64 %i0}, i64 0, metadata !151), !dbg !149 ; [debug line = 24:3] [debug variable = i0]
  %tmp.3 = icmp sgt i64 %i0, 2147483647, !dbg !153 ; [#uses=1 type=i1] [debug line = 25:3]
  br i1 %tmp.3, label %._crit_edge, label %1, !dbg !153 ; [debug line = 25:3]

; <label>:1                                       ; preds = %0
  %tmp.4 = icmp slt i64 %i0, -2147483648, !dbg !154 ; [#uses=1 type=i1] [debug line = 28:5]
  %tmp.5 = trunc i64 %i0 to i32                   ; [#uses=1 type=i32]
  %phitmp = select i1 %tmp.4, i32 -2147483648, i32 %tmp.5 ; [#uses=1 type=i32]
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %0
  %i0.1 = phi i32 [ %phitmp, %1 ], [ 2147483647, %0 ], !dbg !156 ; [#uses=1 type=i32] [debug line = 33:3]
  ret i32 %i0.1, !dbg !156                        ; [debug line = 33:3]
}

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0, !42, !69, !95, !102, !107}
!opencl.kernels = !{!115, !122, !125, !122, !125, !127, !127, !127, !127, !127, !127, !127, !127, !133}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/rt_nonfinite.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !27} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !20, metadata !25, metadata !26}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rt_InitInfAndNaN", metadata !"rt_InitInfAndNaN", metadata !"", metadata !6, i32 32, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 33} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"rt_nonfinite.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786454, null, metadata !"size_t", metadata !6, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rtIsInf", metadata !"rtIsInf", metadata !"", metadata !6, i32 47, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 48} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !16, metadata !18}
!16 = metadata !{i32 786454, null, metadata !"boolean_T", metadata !6, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786454, null, metadata !"real_T", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rtIsInfF", metadata !"rtIsInfF", metadata !"", metadata !6, i32 56, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 57} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !16, metadata !23}
!23 = metadata !{i32 786454, null, metadata !"real32_T", metadata !6, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rtIsNaN", metadata !"rtIsNaN", metadata !"", metadata !6, i32 65, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 66} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rtIsNaNF", metadata !"rtIsNaNF", metadata !"", metadata !6, i32 84, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 85} ; [ DW_TAG_subprogram ]
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41}
!29 = metadata !{i32 786484, i32 0, null, metadata !"rtInf", metadata !"rtInf", metadata !"", metadata !6, i32 20, metadata !18, i32 0, i32 1, double* @rtInf} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInf", metadata !"rtMinusInf", metadata !"", metadata !6, i32 21, metadata !18, i32 0, i32 1, double* @rtMinusInf} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"rtNaN", metadata !"rtNaN", metadata !"", metadata !6, i32 22, metadata !18, i32 0, i32 1, double* @rtNaN} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"rtInfF", metadata !"rtInfF", metadata !"", metadata !6, i32 23, metadata !23, i32 0, i32 1, float* @rtInfF} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInfF", metadata !"rtMinusInfF", metadata !"", metadata !6, i32 24, metadata !23, i32 0, i32 1, float* @rtMinusInfF} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786484, i32 0, null, metadata !"rtNaNF", metadata !"rtNaNF", metadata !"", metadata !6, i32 25, metadata !23, i32 0, i32 1, float* @rtNaNF} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"rtInf", metadata !"rtInf", metadata !"", metadata !36, i32 20, metadata !18, i32 0, i32 1, double* @rtInf} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786473, metadata !"./rt_nonfinite.h", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInf", metadata !"rtMinusInf", metadata !"", metadata !36, i32 21, metadata !18, i32 0, i32 1, double* @rtMinusInf} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"rtNaN", metadata !"rtNaN", metadata !"", metadata !36, i32 22, metadata !18, i32 0, i32 1, double* @rtNaN} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"rtInfF", metadata !"rtInfF", metadata !"", metadata !36, i32 23, metadata !23, i32 0, i32 1, float* @rtInfF} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInfF", metadata !"rtMinusInfF", metadata !"", metadata !36, i32 24, metadata !23, i32 0, i32 1, float* @rtMinusInfF} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"rtNaNF", metadata !"rtNaNF", metadata !"", metadata !36, i32 25, metadata !23, i32 0, i32 1, float* @rtNaNF} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/rtGetNaN.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !43, metadata !1, metadata !59, metadata !61} ; [ DW_TAG_compile_unit ]
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !45, metadata !45, metadata !45, metadata !54, metadata !54, metadata !54}
!45 = metadata !{i32 786436, metadata !46, metadata !"", metadata !47, i32 31, i64 1, i64 1, i32 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!46 = metadata !{i32 786478, i32 0, metadata !47, metadata !"rtGetNaN", metadata !"rtGetNaN", metadata !"", metadata !47, i32 23, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 24} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786473, metadata !"rtGetNaN.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786454, null, metadata !"real_T", metadata !47, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!51 = metadata !{metadata !52, metadata !53}
!52 = metadata !{i32 786472, metadata !"LittleEndian", i64 0} ; [ DW_TAG_enumerator ]
!53 = metadata !{i32 786472, metadata !"BigEndian", i64 1} ; [ DW_TAG_enumerator ]
!54 = metadata !{i32 786436, metadata !55, metadata !"", metadata !47, i32 77, i64 1, i64 1, i32 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!55 = metadata !{i32 786478, i32 0, metadata !47, metadata !"rtGetNaNF", metadata !"rtGetNaNF", metadata !"", metadata !47, i32 72, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 73} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786454, null, metadata !"real32_T", metadata !47, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !46, metadata !55}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!63 = metadata !{i32 786484, i32 0, null, metadata !"rtInf", metadata !"rtInf", metadata !"", metadata !36, i32 20, metadata !50, i32 0, i32 1, double* @rtInf} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInf", metadata !"rtMinusInf", metadata !"", metadata !36, i32 21, metadata !50, i32 0, i32 1, double* @rtMinusInf} ; [ DW_TAG_variable ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"rtNaN", metadata !"rtNaN", metadata !"", metadata !36, i32 22, metadata !50, i32 0, i32 1, double* @rtNaN} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786484, i32 0, null, metadata !"rtInfF", metadata !"rtInfF", metadata !"", metadata !36, i32 23, metadata !58, i32 0, i32 1, float* @rtInfF} ; [ DW_TAG_variable ]
!67 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInfF", metadata !"rtMinusInfF", metadata !"", metadata !36, i32 24, metadata !58, i32 0, i32 1, float* @rtMinusInfF} ; [ DW_TAG_variable ]
!68 = metadata !{i32 786484, i32 0, null, metadata !"rtNaNF", metadata !"rtNaNF", metadata !"", metadata !36, i32 25, metadata !58, i32 0, i32 1, float* @rtNaNF} ; [ DW_TAG_variable ]
!69 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/rtGetInf.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !70, metadata !1, metadata !80, metadata !87} ; [ DW_TAG_compile_unit ]
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !72, metadata !72, metadata !72, metadata !78, metadata !78, metadata !78}
!72 = metadata !{i32 786436, metadata !73, metadata !"", metadata !74, i32 31, i64 1, i64 1, i32 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!73 = metadata !{i32 786478, i32 0, metadata !74, metadata !"rtGetInf", metadata !"rtGetInf", metadata !"", metadata !74, i32 23, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 24} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786473, metadata !"rtGetInf.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786454, null, metadata !"real_T", metadata !74, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!78 = metadata !{i32 786436, metadata !79, metadata !"", metadata !74, i32 92, i64 1, i64 1, i32 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!79 = metadata !{i32 786478, i32 0, metadata !74, metadata !"rtGetMinusInf", metadata !"rtGetMinusInf", metadata !"", metadata !74, i32 84, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 85} ; [ DW_TAG_subprogram ]
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !73, metadata !82, metadata !79, metadata !86}
!82 = metadata !{i32 786478, i32 0, metadata !74, metadata !"rtGetInfF", metadata !"rtGetInfF", metadata !"", metadata !74, i32 72, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 73} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786454, null, metadata !"real32_T", metadata !74, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!86 = metadata !{i32 786478, i32 0, metadata !74, metadata !"rtGetMinusInfF", metadata !"rtGetMinusInfF", metadata !"", metadata !74, i32 133, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 134} ; [ DW_TAG_subprogram ]
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94}
!89 = metadata !{i32 786484, i32 0, null, metadata !"rtInf", metadata !"rtInf", metadata !"", metadata !36, i32 20, metadata !77, i32 0, i32 1, double* @rtInf} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInf", metadata !"rtMinusInf", metadata !"", metadata !36, i32 21, metadata !77, i32 0, i32 1, double* @rtMinusInf} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786484, i32 0, null, metadata !"rtNaN", metadata !"rtNaN", metadata !"", metadata !36, i32 22, metadata !77, i32 0, i32 1, double* @rtNaN} ; [ DW_TAG_variable ]
!92 = metadata !{i32 786484, i32 0, null, metadata !"rtInfF", metadata !"rtInfF", metadata !"", metadata !36, i32 23, metadata !85, i32 0, i32 1, float* @rtInfF} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, null, metadata !"rtMinusInfF", metadata !"rtMinusInfF", metadata !"", metadata !36, i32 24, metadata !85, i32 0, i32 1, float* @rtMinusInfF} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786484, i32 0, null, metadata !"rtNaNF", metadata !"rtNaNF", metadata !"", metadata !36, i32 25, metadata !85, i32 0, i32 1, float* @rtNaNF} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/multiplication_terminate.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !96, metadata !1} ; [ DW_TAG_compile_unit ]
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786478, i32 0, metadata !99, metadata !"multiplication_terminate", metadata !"multiplication_terminate", metadata !"", metadata !99, i32 21, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 22} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786473, metadata !"multiplication_terminate.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null}
!102 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/multiplication_initialize.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !103, metadata !1} ; [ DW_TAG_compile_unit ]
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786478, i32 0, metadata !106, metadata !"multiplication_initialize", metadata !"multiplication_initialize", metadata !"", metadata !106, i32 21, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 22} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786473, metadata !"multiplication_initialize.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!107 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/multiplication.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !108, metadata !1} ; [ DW_TAG_compile_unit ]
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786478, i32 0, metadata !111, metadata !"multiplication", metadata !"multiplication", metadata !"", metadata !111, i32 21, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @multiplication, null, null, metadata !11, i32 22} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786473, metadata !"multiplication.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{metadata !114, metadata !114, metadata !114}
!114 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!115 = metadata !{null, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!116 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!117 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"size_t"}
!119 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"realSize"}
!121 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!122 = metadata !{null, metadata !116, metadata !117, metadata !123, metadata !119, metadata !124, metadata !121}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"real_T"}
!124 = metadata !{metadata !"kernel_arg_name", metadata !"value"}
!125 = metadata !{null, metadata !116, metadata !117, metadata !126, metadata !119, metadata !124, metadata !121}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"real32_T"}
!127 = metadata !{null, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !121}
!128 = metadata !{metadata !"kernel_arg_addr_space"}
!129 = metadata !{metadata !"kernel_arg_access_qual"}
!130 = metadata !{metadata !"kernel_arg_type"}
!131 = metadata !{metadata !"kernel_arg_type_qual"}
!132 = metadata !{metadata !"kernel_arg_name"}
!133 = metadata !{i32 (i32, i32)* @multiplication, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !121}
!134 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!135 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!137 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 31, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"return", metadata !143, metadata !"int", i32 0, i32 31}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 1, i32 0}
!145 = metadata !{i32 786689, metadata !110, metadata !"a", metadata !111, i32 16777237, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 21, i32 24, metadata !110, null}
!147 = metadata !{i32 786689, metadata !110, metadata !"b", metadata !111, i32 33554453, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 21, i32 31, metadata !110, null}
!149 = metadata !{i32 24, i32 3, metadata !150, null}
!150 = metadata !{i32 786443, metadata !110, i32 22, i32 1, metadata !111, i32 0} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786688, metadata !150, metadata !"i0", metadata !111, i32 23, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!153 = metadata !{i32 25, i32 3, metadata !150, null}
!154 = metadata !{i32 28, i32 5, metadata !155, null}
!155 = metadata !{i32 786443, metadata !150, i32 27, i32 10, metadata !111, i32 2} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 33, i32 3, metadata !150, null}
