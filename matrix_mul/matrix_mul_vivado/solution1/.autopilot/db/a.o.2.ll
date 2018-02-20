; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_mul.str = internal unnamed_addr constant [11 x i8] c"matrix_mul\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define void @matrix_mul([4 x double]* %a, [4 x double]* %b, [4 x double]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %a) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %b) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %out) nounwind, !map !48
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @matrix_mul.str) nounwind
  call void @llvm.dbg.value(metadata !{[4 x double]* %a}, i64 0, metadata !52), !dbg !56 ; [debug line = 19:24] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[4 x double]* %b}, i64 0, metadata !57), !dbg !58 ; [debug line = 19:37] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[4 x double]* %out}, i64 0, metadata !59), !dbg !60 ; [debug line = 19:50] [debug variable = out]
  br label %1, !dbg !61                           ; [debug line = 24:8]

; <label>:1                                       ; preds = %9, %0
  %i0 = phi i2 [ 0, %0 ], [ %i0.1, %9 ]           ; [#uses=4 type=i2]
  %exitcond2 = icmp eq i2 %i0, -2, !dbg !61       ; [#uses=1 type=i1] [debug line = 24:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %10, label %.preheader.preheader, !dbg !61 ; [debug line = 24:8]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !64                  ; [debug line = 25:10]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %i1 = phi i2 [ %i1.1, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i2]
  %exitcond1 = icmp eq i2 %i1, -2, !dbg !64       ; [#uses=1 type=i1] [debug line = 25:10]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %9, label %4, !dbg !64  ; [debug line = 25:10]

; <label>:4                                       ; preds = %.preheader
  %tmp = shl i2 %i1, 1, !dbg !67                  ; [#uses=2 type=i2] [debug line = 26:7]
  %tmp.1 = add i2 %tmp, %i0, !dbg !67             ; [#uses=1 type=i2] [debug line = 26:7]
  %tmp.2 = zext i2 %tmp.1 to i64, !dbg !67        ; [#uses=1 type=i64] [debug line = 26:7]
  %out.addr = getelementptr [4 x double]* %out, i64 0, i64 %tmp.2, !dbg !67 ; [#uses=2 type=double*] [debug line = 26:7]
  store double 0.000000e+00, double* %out.addr, align 8, !dbg !67 ; [debug line = 26:7]
  br label %5, !dbg !69                           ; [debug line = 27:12]

; <label>:5                                       ; preds = %7, %4
  %tmp.3 = phi double [ 0.000000e+00, %4 ], [ %tmp.4, %7 ] ; [#uses=1 type=double]
  %i2 = phi i2 [ 0, %4 ], [ %i2.1, %7 ]           ; [#uses=4 type=i2]
  %exitcond = icmp eq i2 %i2, -2, !dbg !69        ; [#uses=1 type=i1] [debug line = 27:12]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %7, !dbg !69   ; [debug line = 27:12]

; <label>:7                                       ; preds = %5
  %tmp.5 = shl i2 %i2, 1, !dbg !71                ; [#uses=1 type=i2] [debug line = 28:9]
  %tmp.6 = add i2 %tmp.5, %i0, !dbg !71           ; [#uses=1 type=i2] [debug line = 28:9]
  %tmp.7 = zext i2 %tmp.6 to i64, !dbg !71        ; [#uses=1 type=i64] [debug line = 28:9]
  %a.addr = getelementptr [4 x double]* %a, i64 0, i64 %tmp.7, !dbg !71 ; [#uses=1 type=double*] [debug line = 28:9]
  %a.load = load double* %a.addr, align 8, !dbg !71 ; [#uses=1 type=double] [debug line = 28:9]
  %tmp.8 = add i2 %i2, %tmp, !dbg !71             ; [#uses=1 type=i2] [debug line = 28:9]
  %tmp.9 = zext i2 %tmp.8 to i64, !dbg !71        ; [#uses=1 type=i64] [debug line = 28:9]
  %b.addr = getelementptr [4 x double]* %b, i64 0, i64 %tmp.9, !dbg !71 ; [#uses=1 type=double*] [debug line = 28:9]
  %b.load = load double* %b.addr, align 8, !dbg !71 ; [#uses=1 type=double] [debug line = 28:9]
  %tmp. = fmul double %a.load, %b.load, !dbg !71  ; [#uses=1 type=double] [debug line = 28:9]
  %tmp.4 = fadd double %tmp.3, %tmp., !dbg !71    ; [#uses=2 type=double] [debug line = 28:9]
  store double %tmp.4, double* %out.addr, align 8, !dbg !71 ; [debug line = 28:9]
  %i2.1 = add i2 %i2, 1, !dbg !73                 ; [#uses=1 type=i2] [debug line = 27:28]
  call void @llvm.dbg.value(metadata !{i2 %i2.1}, i64 0, metadata !74), !dbg !73 ; [debug line = 27:28] [debug variable = i2]
  br label %5, !dbg !73                           ; [debug line = 27:28]

; <label>:8                                       ; preds = %5
  %i1.1 = add i2 %i1, 1, !dbg !76                 ; [#uses=1 type=i2] [debug line = 25:26]
  call void @llvm.dbg.value(metadata !{i2 %i1.1}, i64 0, metadata !77), !dbg !76 ; [debug line = 25:26] [debug variable = i1]
  br label %.preheader, !dbg !76                  ; [debug line = 25:26]

; <label>:9                                       ; preds = %.preheader
  %i0.1 = add i2 %i0, 1, !dbg !78                 ; [#uses=1 type=i2] [debug line = 24:24]
  call void @llvm.dbg.value(metadata !{i2 %i0.1}, i64 0, metadata !79), !dbg !78 ; [debug line = 24:24] [debug variable = i0]
  br label %1, !dbg !78                           ; [debug line = 24:24]

; <label>:10                                      ; preds = %1
  ret void, !dbg !80                              ; [debug line = 32:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0, !11, !16}
!opencl.kernels = !{!25, !25, !32}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/matrix_mul_terminate.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrix_mul_terminate", metadata !"matrix_mul_terminate", metadata !"", metadata !6, i32 18, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !9, i32 19} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"matrix_mul_terminate.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/matrix_mul_initialize.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !12, metadata !1} ; [ DW_TAG_compile_unit ]
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"matrix_mul_initialize", metadata !"matrix_mul_initialize", metadata !"", metadata !15, i32 18, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !9, i32 19} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"matrix_mul_initialize.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/matrix_mul.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !17, metadata !1} ; [ DW_TAG_compile_unit ]
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786478, i32 0, metadata !20, metadata !"matrix_mul", metadata !"matrix_mul", metadata !"", metadata !20, i32 19, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !9, i32 20} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786473, metadata !"matrix_mul.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/matrix_mul", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !23, metadata !23, metadata !23}
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{metadata !"kernel_arg_addr_space"}
!27 = metadata !{metadata !"kernel_arg_access_qual"}
!28 = metadata !{metadata !"kernel_arg_type"}
!29 = metadata !{metadata !"kernel_arg_type_qual"}
!30 = metadata !{metadata !"kernel_arg_name"}
!31 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!32 = metadata !{null, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !31}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 63, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"a", metadata !42, metadata !"double", i32 0, i32 63}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 3, i32 1}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 63, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"b", metadata !42, metadata !"double", i32 0, i32 63}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 63, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"out", metadata !42, metadata !"double", i32 0, i32 63}
!52 = metadata !{i32 786689, metadata !19, metadata !"a", null, i32 19, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 64, i32 0, i32 0, metadata !24, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!56 = metadata !{i32 19, i32 24, metadata !19, null}
!57 = metadata !{i32 786689, metadata !19, metadata !"b", null, i32 19, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 19, i32 37, metadata !19, null}
!59 = metadata !{i32 786689, metadata !19, metadata !"out", null, i32 19, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 19, i32 50, metadata !19, null}
!61 = metadata !{i32 24, i32 8, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 24, i32 3, metadata !20, i32 1} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !19, i32 20, i32 1, metadata !20, i32 0} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 25, i32 10, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 25, i32 5, metadata !20, i32 3} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !62, i32 24, i32 30, metadata !20, i32 2} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 26, i32 7, metadata !68, null}
!68 = metadata !{i32 786443, metadata !65, i32 25, i32 32, metadata !20, i32 4} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 27, i32 12, metadata !70, null}
!70 = metadata !{i32 786443, metadata !68, i32 27, i32 7, metadata !20, i32 5} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 28, i32 9, metadata !72, null}
!72 = metadata !{i32 786443, metadata !70, i32 27, i32 34, metadata !20, i32 6} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 27, i32 28, metadata !70, null}
!74 = metadata !{i32 786688, metadata !63, metadata !"i2", metadata !20, i32 23, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!76 = metadata !{i32 25, i32 26, metadata !65, null}
!77 = metadata !{i32 786688, metadata !63, metadata !"i1", metadata !20, i32 22, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 24, i32 24, metadata !62, null}
!79 = metadata !{i32 786688, metadata !63, metadata !"i0", metadata !20, i32 21, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 32, i32 1, metadata !63, null}
