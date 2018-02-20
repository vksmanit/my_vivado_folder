; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_mul_str = internal unnamed_addr constant [11 x i8] c"matrix_mul\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define void @matrix_mul([4 x double]* %a, [4 x double]* %b, [4 x double]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %a) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %b) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %out) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @matrix_mul_str) nounwind
  call void @llvm.dbg.value(metadata !{[4 x double]* %a}, i64 0, metadata !27), !dbg !39 ; [debug line = 19:24] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[4 x double]* %b}, i64 0, metadata !40), !dbg !41 ; [debug line = 19:37] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[4 x double]* %out}, i64 0, metadata !42), !dbg !43 ; [debug line = 19:50] [debug variable = out]
  br label %.loopexit, !dbg !44                   ; [debug line = 24:8]

.loopexit:                                        ; preds = %.preheader, %0
  %i0 = phi i2 [ 0, %0 ], [ %i0_1, %.preheader ]  ; [#uses=4 type=i2]
  %exitcond2 = icmp eq i2 %i0, -2, !dbg !44       ; [#uses=1 type=i1] [debug line = 24:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i0_1 = add i2 %i0, 1, !dbg !47                 ; [#uses=1 type=i2] [debug line = 24:24]
  call void @llvm.dbg.value(metadata !{i2 %i0_1}, i64 0, metadata !48), !dbg !47 ; [debug line = 24:24] [debug variable = i0]
  br i1 %exitcond2, label %4, label %.preheader, !dbg !44 ; [debug line = 24:8]

.preheader:                                       ; preds = %2, %.loopexit
  %i1 = phi i2 [ 0, %.loopexit ], [ %i1_1, %2 ]   ; [#uses=3 type=i2]
  %exitcond1 = icmp eq i2 %i1, -2, !dbg !50       ; [#uses=1 type=i1] [debug line = 25:10]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i1_1 = add i2 %i1, 1, !dbg !53                 ; [#uses=1 type=i2] [debug line = 25:26]
  call void @llvm.dbg.value(metadata !{i2 %i1_1}, i64 0, metadata !54), !dbg !53 ; [debug line = 25:26] [debug variable = i1]
  br i1 %exitcond1, label %.loopexit, label %1, !dbg !50 ; [debug line = 25:10]

; <label>:1                                       ; preds = %.preheader
  %tmp = shl i2 %i1, 1, !dbg !55                  ; [#uses=2 type=i2] [debug line = 26:7]
  %tmp_1 = add i2 %i0, %tmp, !dbg !55             ; [#uses=1 type=i2] [debug line = 26:7]
  %tmp_2 = zext i2 %tmp_1 to i64, !dbg !55        ; [#uses=1 type=i64] [debug line = 26:7]
  %out_addr = getelementptr [4 x double]* %out, i64 0, i64 %tmp_2, !dbg !55 ; [#uses=1 type=double*] [debug line = 26:7]
  br label %2, !dbg !57                           ; [debug line = 27:12]

; <label>:2                                       ; preds = %3, %1
  %storemerge = phi double [ 0.000000e+00, %1 ], [ %tmp_4, %3 ] ; [#uses=2 type=double]
  %i2 = phi i2 [ 0, %1 ], [ %i2_1, %3 ]           ; [#uses=4 type=i2]
  store double %storemerge, double* %out_addr, align 8, !dbg !59 ; [debug line = 28:9]
  %exitcond = icmp eq i2 %i2, -2, !dbg !57        ; [#uses=1 type=i1] [debug line = 27:12]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i2_1 = add i2 %i2, 1, !dbg !61                 ; [#uses=1 type=i2] [debug line = 27:28]
  br i1 %exitcond, label %.preheader, label %3, !dbg !57 ; [debug line = 27:12]

; <label>:3                                       ; preds = %2
  %tmp_3 = shl i2 %i2, 1, !dbg !59                ; [#uses=1 type=i2] [debug line = 28:9]
  %tmp_6 = add i2 %i0, %tmp_3, !dbg !59           ; [#uses=1 type=i2] [debug line = 28:9]
  %tmp_7 = zext i2 %tmp_6 to i64, !dbg !59        ; [#uses=1 type=i64] [debug line = 28:9]
  %a_addr = getelementptr [4 x double]* %a, i64 0, i64 %tmp_7, !dbg !59 ; [#uses=1 type=double*] [debug line = 28:9]
  %a_load = load double* %a_addr, align 8, !dbg !59 ; [#uses=1 type=double] [debug line = 28:9]
  %tmp_8 = add i2 %tmp, %i2, !dbg !59             ; [#uses=1 type=i2] [debug line = 28:9]
  %tmp_9 = zext i2 %tmp_8 to i64, !dbg !59        ; [#uses=1 type=i64] [debug line = 28:9]
  %b_addr = getelementptr [4 x double]* %b, i64 0, i64 %tmp_9, !dbg !59 ; [#uses=1 type=double*] [debug line = 28:9]
  %b_load = load double* %b_addr, align 8, !dbg !59 ; [#uses=1 type=double] [debug line = 28:9]
  %tmp_s = fmul double %a_load, %b_load, !dbg !59 ; [#uses=1 type=double] [debug line = 28:9]
  %tmp_4 = fadd double %storemerge, %tmp_s, !dbg !59 ; [#uses=1 type=double] [debug line = 28:9]
  call void @llvm.dbg.value(metadata !{i2 %i2_1}, i64 0, metadata !62), !dbg !61 ; [debug line = 27:28] [debug variable = i2]
  br label %2, !dbg !61                           ; [debug line = 27:28]

; <label>:4                                       ; preds = %.loopexit
  ret void, !dbg !63                              ; [debug line = 32:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_BitConcatenate.i2.i1.i1(i1, i1) nounwind readnone

!opencl.kernels = !{!0, !0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"a", metadata !17, metadata !"double", i32 0, i32 63}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 3, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 63, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"b", metadata !17, metadata !"double", i32 0, i32 63}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"out", metadata !17, metadata !"double", i32 0, i32 63}
!27 = metadata !{i32 786689, metadata !28, metadata !"a", null, i32 19, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"matrix_mul", metadata !"matrix_mul", metadata !"", metadata !29, i32 19, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 20} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"matrix_mul.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !32, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 64, i32 0, i32 0, metadata !33, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 19, i32 24, metadata !28, null}
!40 = metadata !{i32 786689, metadata !28, metadata !"b", null, i32 19, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 19, i32 37, metadata !28, null}
!42 = metadata !{i32 786689, metadata !28, metadata !"out", null, i32 19, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 19, i32 50, metadata !28, null}
!44 = metadata !{i32 24, i32 8, metadata !45, null}
!45 = metadata !{i32 786443, metadata !46, i32 24, i32 3, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !28, i32 20, i32 1, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 24, i32 24, metadata !45, null}
!48 = metadata !{i32 786688, metadata !46, metadata !"i0", metadata !29, i32 21, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 25, i32 10, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 25, i32 5, metadata !29, i32 3} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !45, i32 24, i32 30, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 25, i32 26, metadata !51, null}
!54 = metadata !{i32 786688, metadata !46, metadata !"i1", metadata !29, i32 22, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 26, i32 7, metadata !56, null}
!56 = metadata !{i32 786443, metadata !51, i32 25, i32 32, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 27, i32 12, metadata !58, null}
!58 = metadata !{i32 786443, metadata !56, i32 27, i32 7, metadata !29, i32 5} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 28, i32 9, metadata !60, null}
!60 = metadata !{i32 786443, metadata !58, i32 27, i32 34, metadata !29, i32 6} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 27, i32 28, metadata !58, null}
!62 = metadata !{i32 786688, metadata !46, metadata !"i2", metadata !29, i32 23, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 32, i32 1, metadata !46, null}
