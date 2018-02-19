; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtNaNF = common global float 0.000000e+00, align 4 ; [#uses=0 type=float*]
@rtNaN = common global double 0.000000e+00, align 8 ; [#uses=0 type=double*]
@rtMinusInfF = common global float 0.000000e+00, align 4 ; [#uses=0 type=float*]
@rtMinusInf = common global double 0.000000e+00, align 8 ; [#uses=0 type=double*]
@rtInfF = common global float 0.000000e+00, align 4 ; [#uses=0 type=float*]
@rtInf = common global double 0.000000e+00, align 8 ; [#uses=0 type=double*]
@multiplication_str = internal unnamed_addr constant [15 x i8] c"multiplication\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=0]
define i32 @multiplication(i32 %a, i32 %b) nounwind uwtable readnone {
_ifconv:
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @multiplication_str) nounwind
  %b_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_read}, i64 0, metadata !72), !dbg !80 ; [debug line = 21:31] [debug variable = b]
  %a_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %a) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %a_read}, i64 0, metadata !81), !dbg !82 ; [debug line = 21:24] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !81), !dbg !82 ; [debug line = 21:24] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !72), !dbg !80 ; [debug line = 21:31] [debug variable = b]
  %tmp = sext i32 %a_read to i64, !dbg !83        ; [#uses=1 type=i64] [debug line = 24:3]
  %tmp_1 = sext i32 %b_read to i64, !dbg !83      ; [#uses=1 type=i64] [debug line = 24:3]
  %i0 = mul nsw i64 %tmp, %tmp_1, !dbg !83        ; [#uses=3 type=i64] [debug line = 24:3]
  call void @llvm.dbg.value(metadata !{i64 %i0}, i64 0, metadata !85), !dbg !83 ; [debug line = 24:3] [debug variable = i0]
  %tmp_3 = call i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64 %i0, i32 31, i32 63), !dbg !87 ; [#uses=1 type=i33] [debug line = 25:3]
  %icmp = icmp sgt i33 %tmp_3, 0, !dbg !87        ; [#uses=2 type=i1] [debug line = 25:3]
  %tmp_4 = icmp slt i64 %i0, -2147483648, !dbg !88 ; [#uses=1 type=i1] [debug line = 28:5]
  %tmp_5 = trunc i64 %i0 to i32                   ; [#uses=1 type=i32]
  %phitmp = select i1 %icmp, i32 2147483647, i32 -2147483648, !dbg !90 ; [#uses=1 type=i32] [debug line = 33:3]
  %tmp_2 = or i1 %icmp, %tmp_4, !dbg !90          ; [#uses=1 type=i1] [debug line = 33:3]
  %i0_1 = select i1 %tmp_2, i32 %phitmp, i32 %tmp_5, !dbg !90 ; [#uses=1 type=i32] [debug line = 33:3]
  ret i32 %i0_1, !dbg !90                         ; [debug line = 33:3]
}

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_4 = trunc i64 %empty to i33              ; [#uses=1 type=i33]
  ret i33 %empty_4
}

; [#uses=0]
declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7, !10, !7, !10, !12, !12, !12, !12, !12, !12, !12, !12, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!24, !31, !36, !41, !46, !51}

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
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"a", metadata !60, metadata !"int", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, i32 0}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 31, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"b", metadata !60, metadata !"int", i32 0, i32 31}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 31, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"return", metadata !70, metadata !"int", i32 0, i32 31}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 1, i32 0}
!72 = metadata !{i32 786689, metadata !73, metadata !"b", metadata !74, i32 33554453, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 786478, i32 0, metadata !74, metadata !"multiplication", metadata !"multiplication", metadata !"", metadata !74, i32 21, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @multiplication, null, null, metadata !78, i32 22} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786473, metadata !"multiplication.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/multiplication", null} ; [ DW_TAG_file_type ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !77, metadata !77, metadata !77}
!77 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!80 = metadata !{i32 21, i32 31, metadata !73, null}
!81 = metadata !{i32 786689, metadata !73, metadata !"a", metadata !74, i32 16777237, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 21, i32 24, metadata !73, null}
!83 = metadata !{i32 24, i32 3, metadata !84, null}
!84 = metadata !{i32 786443, metadata !73, i32 22, i32 1, metadata !74, i32 0} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786688, metadata !84, metadata !"i0", metadata !74, i32 23, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!87 = metadata !{i32 25, i32 3, metadata !84, null}
!88 = metadata !{i32 28, i32 5, metadata !89, null}
!89 = metadata !{i32 786443, metadata !84, i32 27, i32 10, metadata !74, i32 2} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 33, i32 3, metadata !84, null}
