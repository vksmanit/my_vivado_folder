; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_mul.str = internal unnamed_addr constant [11 x i8] c"matrix_mul\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define void @matrix_mul(double* %a, double* %b, double* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @matrix_mul.str) nounwind
  call void @llvm.dbg.value(metadata !{double* %a}, i64 0, metadata !38), !dbg !39 ; [debug line = 19:24] [debug variable = a]
  call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !40), !dbg !41 ; [debug line = 19:37] [debug variable = b]
  call void @llvm.dbg.value(metadata !{double* %out}, i64 0, metadata !42), !dbg !43 ; [debug line = 19:50] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %a, i32 4) nounwind, !dbg !44 ; [debug line = 20:2]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %b, i32 4) nounwind, !dbg !46 ; [debug line = 20:30]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %out, i32 4) nounwind, !dbg !47 ; [debug line = 20:58]
  br label %1, !dbg !48                           ; [debug line = 24:8]

; <label>:1                                       ; preds = %6, %0
  %i0 = phi i32 [ 0, %0 ], [ %i0.1, %6 ]          ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %i0, 2, !dbg !48       ; [#uses=1 type=i1] [debug line = 24:8]
  br i1 %exitcond2, label %7, label %.preheader.preheader, !dbg !48 ; [debug line = 24:8]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !50                  ; [debug line = 25:10]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i1 = phi i32 [ %i1.1, %5 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i1, 2, !dbg !50       ; [#uses=1 type=i1] [debug line = 25:10]
  br i1 %exitcond1, label %6, label %2, !dbg !50  ; [debug line = 25:10]

; <label>:2                                       ; preds = %.preheader
  %tmp = shl i32 %i1, 1, !dbg !53                 ; [#uses=2 type=i32] [debug line = 26:7]
  %tmp.1 = add nsw i32 %tmp, %i0, !dbg !53        ; [#uses=1 type=i32] [debug line = 26:7]
  %tmp.2 = sext i32 %tmp.1 to i64, !dbg !53       ; [#uses=1 type=i64] [debug line = 26:7]
  %out.addr = getelementptr inbounds double* %out, i64 %tmp.2, !dbg !53 ; [#uses=2 type=double*] [debug line = 26:7]
  store double 0.000000e+00, double* %out.addr, align 8, !dbg !53 ; [debug line = 26:7]
  br label %3, !dbg !55                           ; [debug line = 27:12]

; <label>:3                                       ; preds = %4, %2
  %tmp.3 = phi double [ 0.000000e+00, %2 ], [ %tmp.11, %4 ] ; [#uses=2 type=double]
  %i2 = phi i32 [ 0, %2 ], [ %i2.1, %4 ]          ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %i2, 2, !dbg !55        ; [#uses=1 type=i1] [debug line = 27:12]
  br i1 %exitcond, label %5, label %4, !dbg !55   ; [debug line = 27:12]

; <label>:4                                       ; preds = %3
  %tmp.5 = mul i32 %i2, 2, !dbg !57               ; [#uses=1 type=i32] [debug line = 28:9]
  %tmp.6 = add nsw i32 %tmp.5, %i0, !dbg !57      ; [#uses=1 type=i32] [debug line = 28:9]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !57       ; [#uses=1 type=i64] [debug line = 28:9]
  %a.addr = getelementptr inbounds double* %a, i64 %tmp.7, !dbg !57 ; [#uses=1 type=double*] [debug line = 28:9]
  %a.load = load double* %a.addr, align 8, !dbg !57 ; [#uses=2 type=double] [debug line = 28:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %a.load) nounwind
  %tmp.8 = add nsw i32 %i2, %tmp, !dbg !57        ; [#uses=1 type=i32] [debug line = 28:9]
  %tmp.9 = sext i32 %tmp.8 to i64, !dbg !57       ; [#uses=1 type=i64] [debug line = 28:9]
  %b.addr = getelementptr inbounds double* %b, i64 %tmp.9, !dbg !57 ; [#uses=1 type=double*] [debug line = 28:9]
  %b.load = load double* %b.addr, align 8, !dbg !57 ; [#uses=2 type=double] [debug line = 28:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %b.load) nounwind
  %tmp.10 = fmul double %a.load, %b.load, !dbg !57 ; [#uses=1 type=double] [debug line = 28:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %tmp.3) nounwind
  %tmp.11 = fadd double %tmp.3, %tmp.10, !dbg !57 ; [#uses=2 type=double] [debug line = 28:9]
  store double %tmp.11, double* %out.addr, align 8, !dbg !57 ; [debug line = 28:9]
  %i2.1 = add nsw i32 %i2, 1, !dbg !59            ; [#uses=1 type=i32] [debug line = 27:28]
  call void @llvm.dbg.value(metadata !{i32 %i2.1}, i64 0, metadata !60), !dbg !59 ; [debug line = 27:28] [debug variable = i2]
  br label %3, !dbg !59                           ; [debug line = 27:28]

; <label>:5                                       ; preds = %3
  %i1.1 = add nsw i32 %i1, 1, !dbg !62            ; [#uses=1 type=i32] [debug line = 25:26]
  call void @llvm.dbg.value(metadata !{i32 %i1.1}, i64 0, metadata !63), !dbg !62 ; [debug line = 25:26] [debug variable = i1]
  br label %.preheader, !dbg !62                  ; [debug line = 25:26]

; <label>:6                                       ; preds = %.preheader
  %i0.1 = add nsw i32 %i0, 1, !dbg !64            ; [#uses=1 type=i32] [debug line = 24:24]
  call void @llvm.dbg.value(metadata !{i32 %i0.1}, i64 0, metadata !65), !dbg !64 ; [debug line = 24:24] [debug variable = i0]
  br label %1, !dbg !64                           ; [debug line = 24:24]

; <label>:7                                       ; preds = %1
  ret void, !dbg !66                              ; [debug line = 32:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !11, !16}
!opencl.kernels = !{!25, !25, !32}
!hls.encrypted.func = !{}

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
!19 = metadata !{i32 786478, i32 0, metadata !20, metadata !"matrix_mul", metadata !"matrix_mul", metadata !"", metadata !20, i32 19, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double*, double*, double*)* @matrix_mul, null, null, metadata !9, i32 20} ; [ DW_TAG_subprogram ]
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
!32 = metadata !{void (double*, double*, double*)* @matrix_mul, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !31}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!38 = metadata !{i32 786689, metadata !19, metadata !"a", metadata !20, i32 16777235, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 19, i32 24, metadata !19, null}
!40 = metadata !{i32 786689, metadata !19, metadata !"b", metadata !20, i32 33554451, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 19, i32 37, metadata !19, null}
!42 = metadata !{i32 786689, metadata !19, metadata !"out", metadata !20, i32 50331667, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 19, i32 50, metadata !19, null}
!44 = metadata !{i32 20, i32 2, metadata !45, null}
!45 = metadata !{i32 786443, metadata !19, i32 20, i32 1, metadata !20, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 20, i32 30, metadata !45, null}
!47 = metadata !{i32 20, i32 58, metadata !45, null}
!48 = metadata !{i32 24, i32 8, metadata !49, null}
!49 = metadata !{i32 786443, metadata !45, i32 24, i32 3, metadata !20, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 25, i32 10, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 25, i32 5, metadata !20, i32 3} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !49, i32 24, i32 30, metadata !20, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 26, i32 7, metadata !54, null}
!54 = metadata !{i32 786443, metadata !51, i32 25, i32 32, metadata !20, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 27, i32 12, metadata !56, null}
!56 = metadata !{i32 786443, metadata !54, i32 27, i32 7, metadata !20, i32 5} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 28, i32 9, metadata !58, null}
!58 = metadata !{i32 786443, metadata !56, i32 27, i32 34, metadata !20, i32 6} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 27, i32 28, metadata !56, null}
!60 = metadata !{i32 786688, metadata !45, metadata !"i2", metadata !20, i32 23, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 25, i32 26, metadata !51, null}
!63 = metadata !{i32 786688, metadata !45, metadata !"i1", metadata !20, i32 22, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 24, i32 24, metadata !49, null}
!65 = metadata !{i32 786688, metadata !45, metadata !"i0", metadata !20, i32 21, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 32, i32 1, metadata !45, null}
