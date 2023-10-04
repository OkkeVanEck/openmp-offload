; ModuleID = 'The Accel Module'
source_filename = "The Accel Module"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@reduc_share_ctl_c5_AMD_LDS_0 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t142_AMD_LDS_1" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32
@reduc_share_ctl_c5_AMD_LDS_2 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t142_AMD_LDS_3" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32
@reduc_share_ctl_c6_AMD_LDS_4 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t155_AMD_LDS_5" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32
@reduc_share_ctl_c6_AMD_LDS_6 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t155_AMD_LDS_7" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32
@reduc_share_ctl_c6_AMD_LDS_8 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t155_AMD_LDS_9" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32
@reduc_share_ctl_c6_AMD_LDS_10 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t155_AMD_LDS_11" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32
@reduc_share_ctl_c8_AMD_LDS_12 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t169_AMD_LDS_13" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32
@reduc_share_ctl_c8_AMD_LDS_14 = internal addrspace(3) externally_initialized global i32 undef, align 32
@"$$_redfold_t169_AMD_LDS_15" = internal addrspace(3) externally_initialized global [257 x double] undef, align 32

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams$jacobi_form_$ck_L224_9"(i64 %"$$arg_dvmbr_p13_t2281", i64 %"$$arg_dvmbr_p14_t2292", i64 %"$$arg_dvmbr_p16_t2303", i64 %"$$arg_dvmbr_p17_t2314", i64 %"$$arg_dvmbr_p19_t2325", i64 %"$$arg_dvmbr_p20_t2336", i64 %"$$arg_dvmbr_p22_t2347", i64 %"$$arg_dvmbr_p24_t2358", i64 %"$$arg_dvmbr_p25_t2369", i64 %"$$arg_ptr_acc_t_new_t53_t23710", i64 %"$$arg_ptr_acc_t_t55_t23811", i64 %"$$arg_ptr_acc_ncells_t57_t23912") #0 !dbg !14 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb24":
  %r15 = sub i64 2, %"$$arg_dvmbr_p14_t2292", !dbg !20 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226
  %r16 = mul i64 %"$$arg_dvmbr_p13_t2281", %r15, !dbg !20 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226
  %r17 = inttoptr i64 %"$$arg_ptr_acc_ncells_t57_t23912" to i32*, !dbg !20 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226
  %r18 = getelementptr i32, i32* %r17, i64 %r16, !dbg !20 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226
  %r19 = addrspacecast i32* %r18 to i32 addrspace(1)*, !dbg !20 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226
  %r20 = load i32, i32 addrspace(1)* %r19, align 4, !dbg !20, !CrayMri !21 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226
  %r22 = icmp sgt i32 %r20, 0, !dbg !20 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226
  br i1 %r22, label %"file Jacobi.f90, line 226, bb28", label %"file Jacobi.f90, line 233, bb46", !dbg !20 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:226

"file Jacobi.f90, line 226, bb28":                ; preds = %", bb24"
  %r28 = sub i64 1, %"$$arg_dvmbr_p14_t2292", !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r29 = mul i64 %"$$arg_dvmbr_p13_t2281", %r28, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r30 = inttoptr i64 %"$$arg_ptr_acc_ncells_t57_t23912" to i32*, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r31 = getelementptr i32, i32* %r30, i64 %r29, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r32 = addrspacecast i32* %r31 to i32 addrspace(1)*, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r33 = load i32, i32 addrspace(1)* %r32, align 4, !dbg !22, !CrayMri !23 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r35 = icmp sgt i32 %r33, 0, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  br i1 %r35, label %"file Jacobi.f90, line 227, bb32", label %"file Jacobi.f90, line 233, bb46", !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227

"file Jacobi.f90, line 227, bb32":                ; preds = %"file Jacobi.f90, line 226, bb28"
  %r38 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r39 = trunc i64 %r38 to i32, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r41 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r42 = trunc i64 %r41 to i32, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r43 = mul i32 %r39, %r42, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r45 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r46 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r47 = mul i32 %r45, %r39, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r48 = add i32 %r46, %r47, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r52 = mul i32 %r20, %r33, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r55.not = icmp slt i32 %r48, %r52, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  br i1 %r55.not, label %"file Jacobi.f90, line 228, bb34", label %"file Jacobi.f90, line 233, bb46", !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227

"file Jacobi.f90, line 228, bb34":                ; preds = %"file Jacobi.f90, line 227, bb32"
  %r64 = sub i64 1, %"$$arg_dvmbr_p20_t2336", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r65 = mul i64 %"$$arg_dvmbr_p19_t2325", %r64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r68 = sext i32 %r48 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r70 = sub i64 %r68, %"$$arg_dvmbr_p17_t2314", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r72 = mul i64 %"$$arg_dvmbr_p16_t2303", %r70, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r73 = add i64 %r65, %r72, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r76 = sub i64 2, %"$$arg_dvmbr_p17_t2314", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r78 = mul i64 %"$$arg_dvmbr_p16_t2303", %r76, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r79 = add i64 %r78, %r65, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r82 = sub i64 1, %"$$arg_dvmbr_p17_t2314", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r83 = mul i64 %"$$arg_dvmbr_p16_t2303", %r82, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r86 = sub i64 2, %"$$arg_dvmbr_p20_t2336", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r88 = mul i64 %"$$arg_dvmbr_p19_t2325", %r86, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r89 = add i64 %r83, %r88, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %0 = mul i64 %"$$arg_dvmbr_p19_t2325", %"$$arg_dvmbr_p20_t2336", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r95 = sub i64 %r83, %0, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r98 = sub i64 1, %"$$arg_dvmbr_p25_t2369", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r101 = mul i64 %"$$arg_dvmbr_p24_t2358", %r98, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r102 = sub i64 %r101, %"$$arg_dvmbr_p22_t2347", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r104 = sext i32 %r33 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r106 = mul i64 %"$$arg_dvmbr_p16_t2303", %r104, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r109 = sext i32 %r43 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r110 = mul i64 %"$$arg_dvmbr_p16_t2303", %r109, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r48.neg = sub i32 0, %r48
  %r116 = add i32 %r52, -1, !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  %r113 = add i32 %r116, %r48.neg, !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  %r117 = add i32 %r113, %r43, !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  %r119 = sdiv i32 %r117, %r43, !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  %r122 = icmp sgt i32 %r119, 3, !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  br i1 %r122, label %"file Jacobi.f90, line 227, bb36", label %"file Jacobi.f90, line 227, bb40", !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231

"file Jacobi.f90, line 227, bb36":                ; preds = %"file Jacobi.f90, line 228, bb34"
  %r129 = ashr i32 %r119, 1, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r130 = lshr i32 %r129, 30, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r131 = add i32 %r119, %r130, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r132 = and i32 %r131, -4, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r133.neg = sub i32 %r132, %r119, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r136 = mul i32 %r43, %r133.neg, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r137 = add i32 %r52, %r136, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r139 = shl i32 %r43, 2, !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  %r143 = mul i32 %r43, 3, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r145 = shl i32 %r43, 1, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  br label %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228

"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624": ; preds = %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624", %"file Jacobi.f90, line 227, bb36"
  %"$$induc_p41_t130.0" = phi i32 [ %r48, %"file Jacobi.f90, line 227, bb36" ], [ %r508, %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624" ], !dbg !26 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t133.0" = phi i64 [ %r73, %"file Jacobi.f90, line 227, bb36" ], [ %r502, %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624" ], !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r148 = sdiv i32 %"$$induc_p41_t130.0", %r33, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %1 = mul i32 %r33, %r148, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r154 = sub i32 %"$$induc_p41_t130.0", %1, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r155 = sext i32 %r154 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r158 = mul i64 %"$$arg_dvmbr_p16_t2303", %r155, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %2 = trunc i64 %"$$arg_dvmbr_p19_t2325" to i32, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r163 = mul i32 %2, %r148, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r168 = sext i32 %r148 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r169 = mul i64 %r106, %r168, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r170 = sub i64 %"$$sr_e5_t133.0", %r169, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r171 = mul i64 %r170, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r173 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r171, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r175 = inttoptr i64 %r173 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast = sext i32 %r163 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r176 = getelementptr double, double* %r175, i64 %cic-gep-idxcast, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r177 = addrspacecast double* %r176 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r178 = load double, double addrspace(1)* %r177, align 8, !dbg !24, !CrayMri !27, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r182 = add i64 %r79, %r158, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r183 = mul i64 %r182, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r184 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r183, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r186 = inttoptr i64 %r184 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast627 = sext i32 %r163 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r187 = getelementptr double, double* %r186, i64 %cic-gep-idxcast627, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r188 = addrspacecast double* %r187 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r189 = load double, double addrspace(1)* %r188, align 8, !dbg !24, !CrayMri !29, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r190 = fadd double %r178, %r189, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r194 = add i64 %r89, %r158, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r195 = mul i64 %r194, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r196 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r195, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r198 = inttoptr i64 %r196 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast628 = sext i32 %r163 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r199 = getelementptr double, double* %r198, i64 %cic-gep-idxcast628, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r200 = addrspacecast double* %r199 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r201 = load double, double addrspace(1)* %r200, align 8, !dbg !24, !CrayMri !30, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r205 = add i64 %r95, %r158, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r206 = mul i64 %r205, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r207 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r206, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r209 = inttoptr i64 %r207 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast629 = sext i32 %r163 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r210 = getelementptr double, double* %r209, i64 %cic-gep-idxcast629, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r211 = addrspacecast double* %r210 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r212 = load double, double addrspace(1)* %r211, align 8, !dbg !24, !CrayMri !31, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r213 = fadd double %r201, %r212, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r214 = fadd double %r190, %r213, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r215 = fmul double %r214, 2.500000e-01, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r219 = add i64 %r102, %r155, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r220 = mul i64 %r219, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r221 = add i64 %"$$arg_ptr_acc_t_new_t53_t23710", %r220, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r224 = sext i32 %r148 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r225 = mul i64 %"$$arg_dvmbr_p24_t2358", %r224, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r226 = inttoptr i64 %r221 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r227 = getelementptr double, double* %r226, i64 %r225, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r228 = getelementptr double, double* %r227, i64 1, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r229 = addrspacecast double* %r228 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  store double %r215, double addrspace(1)* %r229, align 8, !dbg !24, !CrayMri !32, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r232 = add i64 %r110, %"$$sr_e5_t133.0", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r235 = add i32 %r43, %"$$induc_p41_t130.0", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r238 = sdiv i32 %r235, %r33, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %3 = mul i32 %r33, %r238, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r244 = sub i32 %r235, %3, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r245 = sext i32 %r244 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r248 = mul i64 %"$$arg_dvmbr_p16_t2303", %r245, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %4 = trunc i64 %"$$arg_dvmbr_p19_t2325" to i32, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r253 = mul i32 %4, %r238, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r258 = sext i32 %r238 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r259 = mul i64 %r106, %r258, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r260 = sub i64 %r232, %r259, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r261 = mul i64 %r260, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r263 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r261, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r265 = inttoptr i64 %r263 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast630 = sext i32 %r253 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r266 = getelementptr double, double* %r265, i64 %cic-gep-idxcast630, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r267 = addrspacecast double* %r266 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r268 = load double, double addrspace(1)* %r267, align 8, !dbg !24, !CrayMri !33, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r272 = add i64 %r79, %r248, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r273 = mul i64 %r272, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r274 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r273, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r276 = inttoptr i64 %r274 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast631 = sext i32 %r253 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r277 = getelementptr double, double* %r276, i64 %cic-gep-idxcast631, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r278 = addrspacecast double* %r277 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r279 = load double, double addrspace(1)* %r278, align 8, !dbg !24, !CrayMri !34, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r280 = fadd double %r268, %r279, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r284 = add i64 %r89, %r248, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r285 = mul i64 %r284, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r286 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r285, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r288 = inttoptr i64 %r286 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast632 = sext i32 %r253 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r289 = getelementptr double, double* %r288, i64 %cic-gep-idxcast632, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r290 = addrspacecast double* %r289 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r291 = load double, double addrspace(1)* %r290, align 8, !dbg !24, !CrayMri !35, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r295 = add i64 %r95, %r248, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r296 = mul i64 %r295, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r297 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r296, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r299 = inttoptr i64 %r297 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast633 = sext i32 %r253 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r300 = getelementptr double, double* %r299, i64 %cic-gep-idxcast633, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r301 = addrspacecast double* %r300 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r302 = load double, double addrspace(1)* %r301, align 8, !dbg !24, !CrayMri !36, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r303 = fadd double %r291, %r302, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r304 = fadd double %r280, %r303, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r305 = fmul double %r304, 2.500000e-01, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r309 = add i64 %r102, %r245, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r310 = mul i64 %r309, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r311 = add i64 %"$$arg_ptr_acc_t_new_t53_t23710", %r310, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r314 = sext i32 %r238 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r315 = mul i64 %"$$arg_dvmbr_p24_t2358", %r314, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r316 = inttoptr i64 %r311 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r317 = getelementptr double, double* %r316, i64 %r315, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r318 = getelementptr double, double* %r317, i64 1, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r319 = addrspacecast double* %r318 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  store double %r305, double addrspace(1)* %r319, align 8, !dbg !24, !CrayMri !37, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r322 = add i64 %r110, %r232, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r325 = add i32 %r145, %"$$induc_p41_t130.0", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r328 = sdiv i32 %r325, %r33, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %5 = mul i32 %r33, %r328, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r334 = sub i32 %r325, %5, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r335 = sext i32 %r334 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r338 = mul i64 %"$$arg_dvmbr_p16_t2303", %r335, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %6 = trunc i64 %"$$arg_dvmbr_p19_t2325" to i32, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r343 = mul i32 %6, %r328, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r348 = sext i32 %r328 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r349 = mul i64 %r106, %r348, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r350 = sub i64 %r322, %r349, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r351 = mul i64 %r350, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r353 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r351, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r355 = inttoptr i64 %r353 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast634 = sext i32 %r343 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r356 = getelementptr double, double* %r355, i64 %cic-gep-idxcast634, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r357 = addrspacecast double* %r356 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r358 = load double, double addrspace(1)* %r357, align 8, !dbg !24, !CrayMri !38, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r362 = add i64 %r79, %r338, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r363 = mul i64 %r362, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r364 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r363, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r366 = inttoptr i64 %r364 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast635 = sext i32 %r343 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r367 = getelementptr double, double* %r366, i64 %cic-gep-idxcast635, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r368 = addrspacecast double* %r367 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r369 = load double, double addrspace(1)* %r368, align 8, !dbg !24, !CrayMri !39, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r370 = fadd double %r358, %r369, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r374 = add i64 %r89, %r338, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r375 = mul i64 %r374, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r376 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r375, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r378 = inttoptr i64 %r376 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast636 = sext i32 %r343 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r379 = getelementptr double, double* %r378, i64 %cic-gep-idxcast636, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r380 = addrspacecast double* %r379 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r381 = load double, double addrspace(1)* %r380, align 8, !dbg !24, !CrayMri !40, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r385 = add i64 %r95, %r338, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r386 = mul i64 %r385, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r387 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r386, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r389 = inttoptr i64 %r387 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast637 = sext i32 %r343 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r390 = getelementptr double, double* %r389, i64 %cic-gep-idxcast637, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r391 = addrspacecast double* %r390 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r392 = load double, double addrspace(1)* %r391, align 8, !dbg !24, !CrayMri !41, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r393 = fadd double %r381, %r392, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r394 = fadd double %r370, %r393, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r395 = fmul double %r394, 2.500000e-01, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r399 = add i64 %r102, %r335, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r400 = mul i64 %r399, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r401 = add i64 %"$$arg_ptr_acc_t_new_t53_t23710", %r400, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r404 = sext i32 %r328 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r405 = mul i64 %"$$arg_dvmbr_p24_t2358", %r404, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r406 = inttoptr i64 %r401 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r407 = getelementptr double, double* %r406, i64 %r405, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r408 = getelementptr double, double* %r407, i64 1, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r409 = addrspacecast double* %r408 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  store double %r395, double addrspace(1)* %r409, align 8, !dbg !24, !CrayMri !42, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r412 = add i64 %r110, %r322, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r415 = add i32 %r143, %"$$induc_p41_t130.0", !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %r418 = sdiv i32 %r415, %r33, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %7 = mul i32 %r33, %r418, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r424 = sub i32 %r415, %7, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r425 = sext i32 %r424 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r428 = mul i64 %"$$arg_dvmbr_p16_t2303", %r425, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %8 = trunc i64 %"$$arg_dvmbr_p19_t2325" to i32, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r433 = mul i32 %8, %r418, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r438 = sext i32 %r418 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r439 = mul i64 %r106, %r438, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r440 = sub i64 %r412, %r439, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r441 = mul i64 %r440, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r443 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r441, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r445 = inttoptr i64 %r443 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast638 = sext i32 %r433 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r446 = getelementptr double, double* %r445, i64 %cic-gep-idxcast638, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r447 = addrspacecast double* %r446 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r448 = load double, double addrspace(1)* %r447, align 8, !dbg !24, !CrayMri !43, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r452 = add i64 %r79, %r428, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r453 = mul i64 %r452, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r454 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r453, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r456 = inttoptr i64 %r454 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast639 = sext i32 %r433 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r457 = getelementptr double, double* %r456, i64 %cic-gep-idxcast639, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r458 = addrspacecast double* %r457 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r459 = load double, double addrspace(1)* %r458, align 8, !dbg !24, !CrayMri !44, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r460 = fadd double %r448, %r459, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r464 = add i64 %r89, %r428, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r465 = mul i64 %r464, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r466 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r465, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r468 = inttoptr i64 %r466 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast640 = sext i32 %r433 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r469 = getelementptr double, double* %r468, i64 %cic-gep-idxcast640, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r470 = addrspacecast double* %r469 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r471 = load double, double addrspace(1)* %r470, align 8, !dbg !24, !CrayMri !45, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r475 = add i64 %r95, %r428, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r476 = mul i64 %r475, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r477 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r476, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r479 = inttoptr i64 %r477 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast641 = sext i32 %r433 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r480 = getelementptr double, double* %r479, i64 %cic-gep-idxcast641, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r481 = addrspacecast double* %r480 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r482 = load double, double addrspace(1)* %r481, align 8, !dbg !24, !CrayMri !46, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r483 = fadd double %r471, %r482, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r484 = fadd double %r460, %r483, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r485 = fmul double %r484, 2.500000e-01, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r489 = add i64 %r102, %r425, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r490 = mul i64 %r489, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r491 = add i64 %"$$arg_ptr_acc_t_new_t53_t23710", %r490, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r494 = sext i32 %r418 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r495 = mul i64 %"$$arg_dvmbr_p24_t2358", %r494, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r496 = inttoptr i64 %r491 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r497 = getelementptr double, double* %r496, i64 %r495, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r498 = getelementptr double, double* %r497, i64 1, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r499 = addrspacecast double* %r498 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  store double %r485, double addrspace(1)* %r499, align 8, !dbg !24, !CrayMri !47, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r502 = add i64 %r110, %r412, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r508 = add i32 %r139, %"$$induc_p41_t130.0", !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  %r513.not = icmp slt i32 %r508, %r137, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  br i1 %r513.not, label %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624", label %"file Jacobi.f90, line 227, bb40", !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227

"file Jacobi.f90, line 227, bb40":                ; preds = %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624", %"file Jacobi.f90, line 228, bb34"
  %"$$induc_p41_t130.1" = phi i32 [ %r48, %"file Jacobi.f90, line 228, bb34" ], [ %r508, %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624" ], !dbg !26 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t133.1" = phi i64 [ %r73, %"file Jacobi.f90, line 228, bb34" ], [ %r502, %"file Jacobi.f90, line 228, in inner loop at depth 0, bb39624" ], !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r520.not = icmp slt i32 %"$$induc_p41_t130.1", %r52, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  br i1 %r520.not, label %"file Jacobi.f90, line 231, in inner loop at depth 0, bb45626", label %"file Jacobi.f90, line 233, bb46", !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227

"file Jacobi.f90, line 231, in inner loop at depth 0, bb45626": ; preds = %"file Jacobi.f90, line 227, bb40", %"file Jacobi.f90, line 231, in inner loop at depth 0, bb45626"
  %"$$induc_p41_t130.2" = phi i32 [ %r615, %"file Jacobi.f90, line 231, in inner loop at depth 0, bb45626" ], [ %"$$induc_p41_t130.1", %"file Jacobi.f90, line 227, bb40" ], !dbg !26 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t133.2" = phi i64 [ %r612, %"file Jacobi.f90, line 231, in inner loop at depth 0, bb45626" ], [ %"$$sr_e5_t133.1", %"file Jacobi.f90, line 227, bb40" ], !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r525 = sdiv i32 %"$$induc_p41_t130.2", %r33, !dbg !22 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:227
  %9 = mul i32 %r33, %r525, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r531 = sub i32 %"$$induc_p41_t130.2", %9, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r532 = sext i32 %r531 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r535 = mul i64 %"$$arg_dvmbr_p16_t2303", %r532, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %10 = trunc i64 %"$$arg_dvmbr_p19_t2325" to i32, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r540 = mul i32 %10, %r525, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r545 = sext i32 %r525 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r546 = mul i64 %r106, %r545, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r547 = sub i64 %"$$sr_e5_t133.2", %r546, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r548 = mul i64 %r547, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r550 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r548, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r552 = inttoptr i64 %r550 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast642 = sext i32 %r540 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r553 = getelementptr double, double* %r552, i64 %cic-gep-idxcast642, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r554 = addrspacecast double* %r553 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r555 = load double, double addrspace(1)* %r554, align 8, !dbg !24, !CrayMri !48, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r559 = add i64 %r79, %r535, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r560 = mul i64 %r559, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r561 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r560, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r563 = inttoptr i64 %r561 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast643 = sext i32 %r540 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r564 = getelementptr double, double* %r563, i64 %cic-gep-idxcast643, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r565 = addrspacecast double* %r564 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r566 = load double, double addrspace(1)* %r565, align 8, !dbg !24, !CrayMri !49, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r567 = fadd double %r555, %r566, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r571 = add i64 %r89, %r535, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r572 = mul i64 %r571, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r573 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r572, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r575 = inttoptr i64 %r573 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast644 = sext i32 %r540 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r576 = getelementptr double, double* %r575, i64 %cic-gep-idxcast644, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r577 = addrspacecast double* %r576 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r578 = load double, double addrspace(1)* %r577, align 8, !dbg !24, !CrayMri !50, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r582 = add i64 %r95, %r535, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r583 = mul i64 %r582, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r584 = add i64 %"$$arg_ptr_acc_t_t55_t23811", %r583, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r586 = inttoptr i64 %r584 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %cic-gep-idxcast645 = sext i32 %r540 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r587 = getelementptr double, double* %r586, i64 %cic-gep-idxcast645, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r588 = addrspacecast double* %r587 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r589 = load double, double addrspace(1)* %r588, align 8, !dbg !24, !CrayMri !51, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r590 = fadd double %r578, %r589, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r591 = fadd double %r567, %r590, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r592 = fmul double %r591, 2.500000e-01, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r596 = add i64 %r102, %r532, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r597 = mul i64 %r596, 8, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r598 = add i64 %"$$arg_ptr_acc_t_new_t53_t23710", %r597, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r601 = sext i32 %r525 to i64, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r602 = mul i64 %"$$arg_dvmbr_p24_t2358", %r601, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r603 = inttoptr i64 %r598 to double*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r604 = getelementptr double, double* %r603, i64 %r602, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r605 = getelementptr double, double* %r604, i64 1, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r606 = addrspacecast double* %r605 to double addrspace(1)*, !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  store double %r592, double addrspace(1)* %r606, align 8, !dbg !24, !CrayMri !52, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r612 = add i64 %r110, %"$$sr_e5_t133.2", !dbg !24 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:228
  %r615 = add i32 %r43, %"$$induc_p41_t130.2", !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  %r620.not = icmp slt i32 %r615, %r52, !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231
  br i1 %r620.not, label %"file Jacobi.f90, line 231, in inner loop at depth 0, bb45626", label %"file Jacobi.f90, line 233, bb46", !dbg !25 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:231

"file Jacobi.f90, line 233, bb46":                ; preds = %"file Jacobi.f90, line 231, in inner loop at depth 0, bb45626", %"file Jacobi.f90, line 227, bb40", %"file Jacobi.f90, line 227, bb32", %"file Jacobi.f90, line 226, bb28", %", bb24"
  ret void, !dbg !53 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:233
}

declare i64 @__ockl_get_local_size(i32)

declare i64 @__ockl_get_num_groups(i32)

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams$jacobi_form_$ck_L239_11"(i64 %"$$arg_dvmbr_p27_t2401", i64 %"$$arg_dvmbr_p28_t2412", i64 %"$$arg_dvmbr_p30_t2423", i64 %"$$arg_dvmbr_p31_t2434", i64 %"$$arg_dvmbr_p33_t2445", i64 %"$$arg_dvmbr_p34_t2456", i64 %"$$arg_dvmbr_p36_t2467", i64 %"$$arg_dvmbr_p38_t2478", i64 %"$$arg_dvmbr_p39_t2489", i64 %"$$arg_ptr_acc_residual_t59_t24910", i64 %"$$arg_ptr_acc_t_new_t61_t25011", i64 %"$$arg_ptr_acc_t_t63_t25112", i64 %"$$arg_ptr_acc_ncells_t65_t25213", i64 %"$$arg_ptr_reduc_ctl_t97_t25314", i64 %"$$arg_ptr_reduc_val_t101_t25515") #0 !dbg !54 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb48":
  %"$redfinal_t148" = alloca double, align 8, addrspace(5), !dbg !55 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:239
  %"$redfinal_t145" = alloca double, align 8, addrspace(5), !dbg !55 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:239
  %r19 = sub i64 2, %"$$arg_dvmbr_p28_t2412", !dbg !56 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242
  %r20 = mul i64 %"$$arg_dvmbr_p27_t2401", %r19, !dbg !56 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242
  %r21 = inttoptr i64 %"$$arg_ptr_acc_ncells_t65_t25213" to i32*, !dbg !56 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242
  %r22 = getelementptr i32, i32* %r21, i64 %r20, !dbg !56 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242
  %r23 = addrspacecast i32* %r22 to i32 addrspace(1)*, !dbg !56 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242
  %r24 = load i32, i32 addrspace(1)* %r23, align 4, !dbg !56, !CrayMri !57 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242
  %r25 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r27 = icmp sgt i32 %r24, 0, !dbg !56 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242
  br i1 %r27, label %"file Jacobi.f90, line 242, bb52", label %"file Jacobi.f90, line 248, bb95", !dbg !56 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:242

"file Jacobi.f90, line 242, bb52":                ; preds = %", bb48"
  %r33 = sub i64 1, %"$$arg_dvmbr_p28_t2412", !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r34 = mul i64 %"$$arg_dvmbr_p27_t2401", %r33, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r35 = inttoptr i64 %"$$arg_ptr_acc_ncells_t65_t25213" to i32*, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r36 = getelementptr i32, i32* %r35, i64 %r34, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r37 = addrspacecast i32* %r36 to i32 addrspace(1)*, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r38 = load i32, i32 addrspace(1)* %r37, align 4, !dbg !59, !CrayMri !60 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r40 = icmp sgt i32 %r38, 0, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  br i1 %r40, label %"file Jacobi.f90, line 243, bb56", label %"file Jacobi.f90, line 248, bb95", !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243

"file Jacobi.f90, line 243, bb56":                ; preds = %"file Jacobi.f90, line 242, bb52"
  %r43 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r44 = trunc i64 %r43 to i32, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r46 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r47 = trunc i64 %r46 to i32, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r48 = mul i32 %r44, %r47, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r49 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r51 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r53 = mul i32 %r51, %r44, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r54 = add i32 %r49, %r53, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r59 = mul i32 %r24, %r38, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r62.not = icmp slt i32 %r54, %r59, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  br i1 %r62.not, label %"file Jacobi.f90, line 244, bb58", label %"file Jacobi.f90, line 248, bb70", !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243

"file Jacobi.f90, line 244, bb58":                ; preds = %"file Jacobi.f90, line 243, bb56"
  %r67 = sub i64 1, %"$$arg_dvmbr_p34_t2456", !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r70 = sub i64 1, %"$$arg_dvmbr_p31_t2434", !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r71 = mul i64 %"$$arg_dvmbr_p30_t2423", %r70, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r72 = mul i64 %"$$arg_dvmbr_p33_t2445", %r67, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r73 = add i64 %r71, %r72, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r76 = sub i64 1, %"$$arg_dvmbr_p39_t2489", !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r79 = mul i64 %"$$arg_dvmbr_p38_t2478", %r76, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r80 = sub i64 %r79, %"$$arg_dvmbr_p36_t2467", !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r54.neg = sub i32 0, %r54
  %r86 = add i32 %r59, -1, !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  %r83 = add i32 %r86, %r54.neg, !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  %r87 = add i32 %r83, %r48, !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  %r89 = sdiv i32 %r87, %r48, !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  %r92 = icmp sgt i32 %r89, 3, !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  br i1 %r92, label %"file Jacobi.f90, line 243, bb60", label %"file Jacobi.f90, line 243, bb64", !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246

"file Jacobi.f90, line 243, bb60":                ; preds = %"file Jacobi.f90, line 244, bb58"
  %r99 = ashr i32 %r89, 1, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r100 = lshr i32 %r99, 30, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r101 = add i32 %r89, %r100, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r102 = and i32 %r101, -4, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r103.neg = sub i32 %r102, %r89, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r106 = mul i32 %r48, %r103.neg, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r107 = add i32 %r59, %r106, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r109 = shl i32 %r48, 2, !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  %r111 = mul i32 %r48, 3, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r113 = shl i32 %r48, 1, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  br label %", in inner reduction loop at depth 0, bb61", !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244

", in inner reduction loop at depth 0, bb61":     ; preds = %", in inner reduction loop at depth 0, bb61", %"file Jacobi.f90, line 243, bb60"
  %"$$induc_p45_t119.0" = phi i32 [ %r54, %"file Jacobi.f90, line 243, bb60" ], [ %r349, %", in inner reduction loop at depth 0, bb61" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$_pvt2_residual_t48_t81.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 243, bb60" ], [ %r340, %", in inner reduction loop at depth 0, bb61" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r116 = sdiv i32 %"$$induc_p45_t119.0", %r38, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %0 = mul i32 %r38, %r116, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r122 = sub i32 %"$$induc_p45_t119.0", %0, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r123 = sext i32 %r122 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r127 = add i64 %r80, %r123, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r128 = mul i64 %r127, 8, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r129 = add i64 %"$$arg_ptr_acc_t_new_t61_t25011", %r128, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r132 = sext i32 %r116 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r133 = mul i64 %"$$arg_dvmbr_p38_t2478", %r132, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r134 = inttoptr i64 %r129 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r135 = getelementptr double, double* %r134, i64 %r133, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r136 = getelementptr double, double* %r135, i64 1, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r137 = addrspacecast double* %r136 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r138 = load double, double addrspace(1)* %r137, align 8, !dbg !61, !CrayMri !64, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r143 = mul i64 %"$$arg_dvmbr_p30_t2423", %r123, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r144 = add i64 %r73, %r143, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r145 = shl i64 %r144, 3, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r146 = add i64 %"$$arg_ptr_acc_t_t63_t25112", %r145, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %1 = trunc i64 %"$$arg_dvmbr_p33_t2445" to i32, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r151 = mul i32 %1, %r116, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r156 = inttoptr i64 %r146 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %cic-gep-idxcast = sext i32 %r151 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r157 = getelementptr double, double* %r156, i64 %cic-gep-idxcast, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r158 = addrspacecast double* %r157 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r159 = load double, double addrspace(1)* %r158, align 8, !dbg !61, !CrayMri !65, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r160 = fsub double %r138, %r159, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r161 = tail call double @llvm.fabs.f64(double %r160), !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r162 = fcmp ogt double %"$$_pvt2_residual_t48_t81.0", %r161, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r163 = select i1 %r162, double %"$$_pvt2_residual_t48_t81.0", double %r161, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r167 = inttoptr i64 %r146 to double*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %cic-gep-idxcast821 = sext i32 %r151 to i64, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r168 = getelementptr double, double* %r167, i64 %cic-gep-idxcast821, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r169 = addrspacecast double* %r168 to double addrspace(1)*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  store double %r138, double addrspace(1)* %r169, align 8, !dbg !66, !CrayMri !67, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r172 = add i32 %r48, %"$$induc_p45_t119.0", !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r175 = sdiv i32 %r172, %r38, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %2 = mul i32 %r38, %r175, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r181 = sub i32 %r172, %2, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r182 = sext i32 %r181 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r186 = add i64 %r80, %r182, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r187 = mul i64 %r186, 8, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r188 = add i64 %"$$arg_ptr_acc_t_new_t61_t25011", %r187, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r191 = sext i32 %r175 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r192 = mul i64 %"$$arg_dvmbr_p38_t2478", %r191, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r193 = inttoptr i64 %r188 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r194 = getelementptr double, double* %r193, i64 %r192, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r195 = getelementptr double, double* %r194, i64 1, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r196 = addrspacecast double* %r195 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r197 = load double, double addrspace(1)* %r196, align 8, !dbg !61, !CrayMri !68, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r202 = mul i64 %"$$arg_dvmbr_p30_t2423", %r182, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r203 = add i64 %r73, %r202, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r204 = shl i64 %r203, 3, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r205 = add i64 %"$$arg_ptr_acc_t_t63_t25112", %r204, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %3 = trunc i64 %"$$arg_dvmbr_p33_t2445" to i32, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r210 = mul i32 %3, %r175, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r215 = inttoptr i64 %r205 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %cic-gep-idxcast822 = sext i32 %r210 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r216 = getelementptr double, double* %r215, i64 %cic-gep-idxcast822, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r217 = addrspacecast double* %r216 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r218 = load double, double addrspace(1)* %r217, align 8, !dbg !61, !CrayMri !69, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r219 = fsub double %r197, %r218, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r220 = tail call double @llvm.fabs.f64(double %r219), !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r221 = fcmp ogt double %r163, %r220, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r222 = select i1 %r221, double %r163, double %r220, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r226 = inttoptr i64 %r205 to double*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %cic-gep-idxcast823 = sext i32 %r210 to i64, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r227 = getelementptr double, double* %r226, i64 %cic-gep-idxcast823, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r228 = addrspacecast double* %r227 to double addrspace(1)*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  store double %r197, double addrspace(1)* %r228, align 8, !dbg !66, !CrayMri !70, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r231 = add i32 %r113, %"$$induc_p45_t119.0", !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r234 = sdiv i32 %r231, %r38, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %4 = mul i32 %r38, %r234, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r240 = sub i32 %r231, %4, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r241 = sext i32 %r240 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r245 = add i64 %r80, %r241, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r246 = mul i64 %r245, 8, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r247 = add i64 %"$$arg_ptr_acc_t_new_t61_t25011", %r246, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r250 = sext i32 %r234 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r251 = mul i64 %"$$arg_dvmbr_p38_t2478", %r250, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r252 = inttoptr i64 %r247 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r253 = getelementptr double, double* %r252, i64 %r251, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r254 = getelementptr double, double* %r253, i64 1, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r255 = addrspacecast double* %r254 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r256 = load double, double addrspace(1)* %r255, align 8, !dbg !61, !CrayMri !71, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r261 = mul i64 %"$$arg_dvmbr_p30_t2423", %r241, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r262 = add i64 %r73, %r261, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r263 = shl i64 %r262, 3, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r264 = add i64 %"$$arg_ptr_acc_t_t63_t25112", %r263, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %5 = trunc i64 %"$$arg_dvmbr_p33_t2445" to i32, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r269 = mul i32 %5, %r234, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r274 = inttoptr i64 %r264 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %cic-gep-idxcast824 = sext i32 %r269 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r275 = getelementptr double, double* %r274, i64 %cic-gep-idxcast824, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r276 = addrspacecast double* %r275 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r277 = load double, double addrspace(1)* %r276, align 8, !dbg !61, !CrayMri !72, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r278 = fsub double %r256, %r277, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r279 = tail call double @llvm.fabs.f64(double %r278), !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r280 = fcmp ogt double %r222, %r279, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r281 = select i1 %r280, double %r222, double %r279, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r285 = inttoptr i64 %r264 to double*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %cic-gep-idxcast825 = sext i32 %r269 to i64, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r286 = getelementptr double, double* %r285, i64 %cic-gep-idxcast825, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r287 = addrspacecast double* %r286 to double addrspace(1)*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  store double %r256, double addrspace(1)* %r287, align 8, !dbg !66, !CrayMri !73, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r290 = add i32 %r111, %"$$induc_p45_t119.0", !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %r293 = sdiv i32 %r290, %r38, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %6 = mul i32 %r38, %r293, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r299 = sub i32 %r290, %6, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r300 = sext i32 %r299 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r304 = add i64 %r80, %r300, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r305 = mul i64 %r304, 8, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r306 = add i64 %"$$arg_ptr_acc_t_new_t61_t25011", %r305, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r309 = sext i32 %r293 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r310 = mul i64 %"$$arg_dvmbr_p38_t2478", %r309, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r311 = inttoptr i64 %r306 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r312 = getelementptr double, double* %r311, i64 %r310, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r313 = getelementptr double, double* %r312, i64 1, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r314 = addrspacecast double* %r313 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r315 = load double, double addrspace(1)* %r314, align 8, !dbg !61, !CrayMri !74, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r320 = mul i64 %"$$arg_dvmbr_p30_t2423", %r300, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r321 = add i64 %r73, %r320, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r322 = shl i64 %r321, 3, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r323 = add i64 %"$$arg_ptr_acc_t_t63_t25112", %r322, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %7 = trunc i64 %"$$arg_dvmbr_p33_t2445" to i32, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r328 = mul i32 %7, %r293, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r333 = inttoptr i64 %r323 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %cic-gep-idxcast826 = sext i32 %r328 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r334 = getelementptr double, double* %r333, i64 %cic-gep-idxcast826, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r335 = addrspacecast double* %r334 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r336 = load double, double addrspace(1)* %r335, align 8, !dbg !61, !CrayMri !75, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r337 = fsub double %r315, %r336, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r338 = tail call double @llvm.fabs.f64(double %r337), !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r339 = fcmp ogt double %r281, %r338, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r340 = select i1 %r339, double %r281, double %r338, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r344 = inttoptr i64 %r323 to double*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %cic-gep-idxcast827 = sext i32 %r328 to i64, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r345 = getelementptr double, double* %r344, i64 %cic-gep-idxcast827, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r346 = addrspacecast double* %r345 to double addrspace(1)*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  store double %r315, double addrspace(1)* %r346, align 8, !dbg !66, !CrayMri !76, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r349 = add i32 %r109, %"$$induc_p45_t119.0", !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  %r354.not = icmp slt i32 %r349, %r107, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  br i1 %r354.not, label %", in inner reduction loop at depth 0, bb61", label %"file Jacobi.f90, line 243, bb64", !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243

"file Jacobi.f90, line 243, bb64":                ; preds = %", in inner reduction loop at depth 0, bb61", %"file Jacobi.f90, line 244, bb58"
  %"$$induc_p45_t119.1" = phi i32 [ %r54, %"file Jacobi.f90, line 244, bb58" ], [ %r349, %", in inner reduction loop at depth 0, bb61" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$_pvt2_residual_t48_t81.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 244, bb58" ], [ %r340, %", in inner reduction loop at depth 0, bb61" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r361.not = icmp slt i32 %"$$induc_p45_t119.1", %r59, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  br i1 %r361.not, label %"243utop1", label %"file Jacobi.f90, line 248, bb70", !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243

"243utop1":                                       ; preds = %"file Jacobi.f90, line 243, bb64", %"243utop1"
  %"$$induc_p45_t119.2" = phi i32 [ %r422, %"243utop1" ], [ %"$$induc_p45_t119.1", %"file Jacobi.f90, line 243, bb64" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$_pvt2_residual_t48_t81.2" = phi double [ %r413, %"243utop1" ], [ %"$$_pvt2_residual_t48_t81.1", %"file Jacobi.f90, line 243, bb64" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r366 = sdiv i32 %"$$induc_p45_t119.2", %r38, !dbg !59 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:243
  %8 = mul i32 %r38, %r366, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r372 = sub i32 %"$$induc_p45_t119.2", %8, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r373 = sext i32 %r372 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r377 = add i64 %r80, %r373, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r378 = mul i64 %r377, 8, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r379 = add i64 %"$$arg_ptr_acc_t_new_t61_t25011", %r378, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r382 = sext i32 %r366 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r383 = mul i64 %"$$arg_dvmbr_p38_t2478", %r382, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r384 = inttoptr i64 %r379 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r385 = getelementptr double, double* %r384, i64 %r383, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r386 = getelementptr double, double* %r385, i64 1, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r387 = addrspacecast double* %r386 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r388 = load double, double addrspace(1)* %r387, align 8, !dbg !61, !CrayMri !77, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r393 = mul i64 %"$$arg_dvmbr_p30_t2423", %r373, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r394 = add i64 %r73, %r393, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r395 = shl i64 %r394, 3, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r396 = add i64 %"$$arg_ptr_acc_t_t63_t25112", %r395, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %9 = trunc i64 %"$$arg_dvmbr_p33_t2445" to i32, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r401 = mul i32 %9, %r366, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r406 = inttoptr i64 %r396 to double*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %cic-gep-idxcast828 = sext i32 %r401 to i64, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r407 = getelementptr double, double* %r406, i64 %cic-gep-idxcast828, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r408 = addrspacecast double* %r407 to double addrspace(1)*, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r409 = load double, double addrspace(1)* %r408, align 8, !dbg !61, !CrayMri !78, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r410 = fsub double %r388, %r409, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r411 = tail call double @llvm.fabs.f64(double %r410), !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r412 = fcmp ogt double %"$$_pvt2_residual_t48_t81.2", %r411, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r413 = select i1 %r412, double %"$$_pvt2_residual_t48_t81.2", double %r411, !dbg !61 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:244
  %r417 = inttoptr i64 %r396 to double*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %cic-gep-idxcast829 = sext i32 %r401 to i64, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r418 = getelementptr double, double* %r417, i64 %cic-gep-idxcast829, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r419 = addrspacecast double* %r418 to double addrspace(1)*, !dbg !66 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  store double %r388, double addrspace(1)* %r419, align 8, !dbg !66, !CrayMri !79, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:245
  %r422 = add i32 %r48, %"$$induc_p45_t119.2", !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  %r427.not = icmp slt i32 %r422, %r59, !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246
  br i1 %r427.not, label %"243utop1", label %"file Jacobi.f90, line 248, bb70", !dbg !62 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:246

"file Jacobi.f90, line 248, bb70":                ; preds = %"243utop1", %"file Jacobi.f90, line 243, bb64", %"file Jacobi.f90, line 243, bb56"
  %"$$_pvt2_residual_t48_t81.3" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 243, bb56" ], [ %"$$_pvt2_residual_t48_t81.1", %"file Jacobi.f90, line 243, bb64" ], [ %r413, %"243utop1" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r431 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast830 = sext i32 %r431 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r432 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast830, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r433 = getelementptr double, double* %r432, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r434 = addrspacecast double* %r433 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %"$$_pvt2_residual_t48_t81.3", double addrspace(3)* %r434, align 8, !dbg !58, !CrayMri !80 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r435 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast831 = sext i32 %r435 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r436 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast831, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r437 = getelementptr double, double* %r436, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r438 = addrspacecast double* %r437 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r439 = load volatile double, double addrspace(3)* %r438, align 8, !dbg !58, !CrayMri !81 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r440 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r441 = icmp ult i32 %r440, 128, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r441, label %"file Jacobi.f90, line 248, bb72", label %"file Jacobi.f90, line 248, bb73", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb72":                ; preds = %"file Jacobi.f90, line 248, bb70"
  %r444 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast832 = sext i32 %r444 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r445 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast832, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r446 = getelementptr double, double* %r445, i64 129, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r447 = addrspacecast double* %r446 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r448 = load volatile double, double addrspace(3)* %r447, align 8, !dbg !58, !CrayMri !82 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r451 = fcmp ogt double %r439, %r448, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r452 = select i1 %r451, double %r439, double %r448, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r454 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast833 = sext i32 %r454 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r455 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast833, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r456 = getelementptr double, double* %r455, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r457 = addrspacecast double* %r456 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r452, double addrspace(3)* %r457, align 8, !dbg !58, !CrayMri !83 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb73", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb73":                ; preds = %"file Jacobi.f90, line 248, bb72", %"file Jacobi.f90, line 248, bb70"
  %"$redfold_left_temp_t143.0" = phi double [ %r439, %"file Jacobi.f90, line 248, bb70" ], [ %r452, %"file Jacobi.f90, line 248, bb72" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r458 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r459 = icmp ult i32 %r458, 64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r459, label %"file Jacobi.f90, line 248, bb75", label %"file Jacobi.f90, line 248, bb76", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb75":                ; preds = %"file Jacobi.f90, line 248, bb73"
  %r462 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast834 = sext i32 %r462 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r463 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast834, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r464 = getelementptr double, double* %r463, i64 65, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r465 = addrspacecast double* %r464 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r466 = load volatile double, double addrspace(3)* %r465, align 8, !dbg !58, !CrayMri !84 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r469 = fcmp ogt double %"$redfold_left_temp_t143.0", %r466, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r470 = select i1 %r469, double %"$redfold_left_temp_t143.0", double %r466, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r472 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast835 = sext i32 %r472 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r473 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast835, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r474 = getelementptr double, double* %r473, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r475 = addrspacecast double* %r474 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r470, double addrspace(3)* %r475, align 8, !dbg !58, !CrayMri !85 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb76", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb76":                ; preds = %"file Jacobi.f90, line 248, bb75", %"file Jacobi.f90, line 248, bb73"
  %"$redfold_left_temp_t143.1" = phi double [ %"$redfold_left_temp_t143.0", %"file Jacobi.f90, line 248, bb73" ], [ %r470, %"file Jacobi.f90, line 248, bb75" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r476 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r477 = icmp ult i32 %r476, 32, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r477, label %"file Jacobi.f90, line 248, bb78", label %"file Jacobi.f90, line 248, bb79", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb78":                ; preds = %"file Jacobi.f90, line 248, bb76"
  %r480 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast836 = sext i32 %r480 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r481 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast836, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r482 = getelementptr double, double* %r481, i64 33, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r483 = addrspacecast double* %r482 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r484 = load volatile double, double addrspace(3)* %r483, align 8, !dbg !58, !CrayMri !86 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r487 = fcmp ogt double %"$redfold_left_temp_t143.1", %r484, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r488 = select i1 %r487, double %"$redfold_left_temp_t143.1", double %r484, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r490 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast837 = sext i32 %r490 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r491 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast837, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r492 = getelementptr double, double* %r491, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r493 = addrspacecast double* %r492 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r488, double addrspace(3)* %r493, align 8, !dbg !58, !CrayMri !87 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb79", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb79":                ; preds = %"file Jacobi.f90, line 248, bb78", %"file Jacobi.f90, line 248, bb76"
  %"$redfold_left_temp_t143.2" = phi double [ %"$redfold_left_temp_t143.1", %"file Jacobi.f90, line 248, bb76" ], [ %r488, %"file Jacobi.f90, line 248, bb78" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r494 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r495 = icmp ult i32 %r494, 16, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r495, label %"file Jacobi.f90, line 248, bb81", label %"file Jacobi.f90, line 248, bb82", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb81":                ; preds = %"file Jacobi.f90, line 248, bb79"
  %r498 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast838 = sext i32 %r498 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r499 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast838, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r500 = getelementptr double, double* %r499, i64 17, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r501 = addrspacecast double* %r500 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r502 = load volatile double, double addrspace(3)* %r501, align 8, !dbg !58, !CrayMri !88 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r505 = fcmp ogt double %"$redfold_left_temp_t143.2", %r502, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r506 = select i1 %r505, double %"$redfold_left_temp_t143.2", double %r502, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r508 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast839 = sext i32 %r508 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r509 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast839, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r510 = getelementptr double, double* %r509, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r511 = addrspacecast double* %r510 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r506, double addrspace(3)* %r511, align 8, !dbg !58, !CrayMri !89 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb82", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb82":                ; preds = %"file Jacobi.f90, line 248, bb81", %"file Jacobi.f90, line 248, bb79"
  %"$redfold_left_temp_t143.3" = phi double [ %"$redfold_left_temp_t143.2", %"file Jacobi.f90, line 248, bb79" ], [ %r506, %"file Jacobi.f90, line 248, bb81" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r512 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r513 = icmp ult i32 %r512, 8, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r513, label %"file Jacobi.f90, line 248, bb84", label %"file Jacobi.f90, line 248, bb85", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb84":                ; preds = %"file Jacobi.f90, line 248, bb82"
  %r516 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast840 = sext i32 %r516 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r517 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast840, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r518 = getelementptr double, double* %r517, i64 9, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r519 = addrspacecast double* %r518 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r520 = load volatile double, double addrspace(3)* %r519, align 8, !dbg !58, !CrayMri !90 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r523 = fcmp ogt double %"$redfold_left_temp_t143.3", %r520, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r524 = select i1 %r523, double %"$redfold_left_temp_t143.3", double %r520, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r526 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast841 = sext i32 %r526 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r527 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast841, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r528 = getelementptr double, double* %r527, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r529 = addrspacecast double* %r528 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r524, double addrspace(3)* %r529, align 8, !dbg !58, !CrayMri !91 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb85", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb85":                ; preds = %"file Jacobi.f90, line 248, bb84", %"file Jacobi.f90, line 248, bb82"
  %"$redfold_left_temp_t143.4" = phi double [ %"$redfold_left_temp_t143.3", %"file Jacobi.f90, line 248, bb82" ], [ %r524, %"file Jacobi.f90, line 248, bb84" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r530 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r531 = icmp ult i32 %r530, 4, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r531, label %"file Jacobi.f90, line 248, bb87", label %"file Jacobi.f90, line 248, bb88", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb87":                ; preds = %"file Jacobi.f90, line 248, bb85"
  %r534 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast842 = sext i32 %r534 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r535 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast842, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r536 = getelementptr double, double* %r535, i64 5, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r537 = addrspacecast double* %r536 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r538 = load volatile double, double addrspace(3)* %r537, align 8, !dbg !58, !CrayMri !92 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r541 = fcmp ogt double %"$redfold_left_temp_t143.4", %r538, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r542 = select i1 %r541, double %"$redfold_left_temp_t143.4", double %r538, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r544 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast843 = sext i32 %r544 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r545 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast843, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r546 = getelementptr double, double* %r545, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r547 = addrspacecast double* %r546 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r542, double addrspace(3)* %r547, align 8, !dbg !58, !CrayMri !93 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb88", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb88":                ; preds = %"file Jacobi.f90, line 248, bb87", %"file Jacobi.f90, line 248, bb85"
  %"$redfold_left_temp_t143.5" = phi double [ %"$redfold_left_temp_t143.4", %"file Jacobi.f90, line 248, bb85" ], [ %r542, %"file Jacobi.f90, line 248, bb87" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r548 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r549 = icmp ult i32 %r548, 2, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r549, label %"file Jacobi.f90, line 248, bb90", label %"file Jacobi.f90, line 248, bb91", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb90":                ; preds = %"file Jacobi.f90, line 248, bb88"
  %r552 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast844 = sext i32 %r552 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r553 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast844, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r554 = getelementptr double, double* %r553, i64 3, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r555 = addrspacecast double* %r554 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r556 = load volatile double, double addrspace(3)* %r555, align 8, !dbg !58, !CrayMri !94 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r559 = fcmp ogt double %"$redfold_left_temp_t143.5", %r556, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r560 = select i1 %r559, double %"$redfold_left_temp_t143.5", double %r556, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r562 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast845 = sext i32 %r562 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r563 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast845, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r564 = getelementptr double, double* %r563, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r565 = addrspacecast double* %r564 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r560, double addrspace(3)* %r565, align 8, !dbg !58, !CrayMri !95 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb91", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb91":                ; preds = %"file Jacobi.f90, line 248, bb90", %"file Jacobi.f90, line 248, bb88"
  %"$redfold_left_temp_t143.6" = phi double [ %"$redfold_left_temp_t143.5", %"file Jacobi.f90, line 248, bb88" ], [ %r560, %"file Jacobi.f90, line 248, bb90" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r566 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r567.not = icmp eq i32 %r566, 0, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r567.not, label %"file Jacobi.f90, line 248, bb93", label %"file Jacobi.f90, line 248, bb94", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb93":                ; preds = %"file Jacobi.f90, line 248, bb91"
  %r570 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast846 = sext i32 %r570 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r571 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast846, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r572 = getelementptr double, double* %r571, i64 2, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r573 = addrspacecast double* %r572 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r574 = load volatile double, double addrspace(3)* %r573, align 8, !dbg !58, !CrayMri !96 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r577 = fcmp ogt double %"$redfold_left_temp_t143.6", %r574, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r578 = select i1 %r577, double %"$redfold_left_temp_t143.6", double %r574, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r580 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast847 = sext i32 %r580 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r581 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast847, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r582 = getelementptr double, double* %r581, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r583 = addrspacecast double* %r582 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r578, double addrspace(3)* %r583, align 8, !dbg !58, !CrayMri !97 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb94", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb94":                ; preds = %"file Jacobi.f90, line 248, bb93", %"file Jacobi.f90, line 248, bb91"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r584 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !58, !CrayMri !98 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r584, double addrspace(5)* %"$redfinal_t145", align 8, !dbg !58, !CrayMri !99 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r585 = load volatile double, double addrspace(5)* %"$redfinal_t145", align 8, !dbg !58, !CrayMri !100 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r587 = fcmp ogt double %r585, 0xFFF0000000000000, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r588 = select i1 %r587, double %r585, double 0xFFF0000000000000, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb95", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb95":                ; preds = %"file Jacobi.f90, line 248, bb94", %"file Jacobi.f90, line 242, bb52", %", bb48"
  %"$$pre_186_t152.0" = phi i32 [ %r25, %", bb48" ], [ %r25, %"file Jacobi.f90, line 242, bb52" ], [ %r49, %"file Jacobi.f90, line 248, bb94" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt2_residual_t48.0" = phi double [ 0xFFF0000000000000, %", bb48" ], [ 0xFFF0000000000000, %"file Jacobi.f90, line 242, bb52" ], [ %r588, %"file Jacobi.f90, line 248, bb94" ], !dbg !63 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r590.not = icmp eq i32 %"$$pre_186_t152.0", 0, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r590.not, label %"file Jacobi.f90, line 248, bb97", label %"file Jacobi.f90, line 248, bb101.critedge", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb97":                ; preds = %"file Jacobi.f90, line 248, bb95"
  %r596 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r597 = zext i32 %r596 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r598 = inttoptr i64 %"$$arg_ptr_reduc_val_t101_t25515" to double*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r599 = getelementptr double, double* %r598, i64 %r597, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r600 = addrspacecast double* %r599 to double addrspace(1)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %"$_pvt2_residual_t48.0", double addrspace(1)* %r600, align 8, !dbg !58, !CrayMri !101 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  fence syncscope("agent") seq_cst, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r603 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r604 = trunc i64 %r603 to i32, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r605 = sub i32 1, %r604, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r606 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r607 = icmp eq i32 %r606, 0, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r610 = select i1 %r607, i32 %r605, i32 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r612 = inttoptr i64 %"$$arg_ptr_reduc_ctl_t97_t25314" to i32 addrspace(1)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r613 = addrspacecast i32 addrspace(1)* %r612 to i32*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %10 = atomicrmw add i32* %r613, i32 %r610 syncscope("agent") seq_cst, align 4, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r617 = add i32 %10, %r610, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store i32 %r617, i32 addrspace(3)* @reduc_share_ctl_c5_AMD_LDS_2, align 32, !dbg !58, !CrayMri !102 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb101", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb101.critedge":      ; preds = %"file Jacobi.f90, line 248, bb95"
  fence syncscope("agent") seq_cst, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb101", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb101":               ; preds = %"file Jacobi.f90, line 248, bb101.critedge", %"file Jacobi.f90, line 248, bb97"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r618 = load volatile i32, i32 addrspace(3)* @reduc_share_ctl_c5_AMD_LDS_2, align 32, !dbg !58, !CrayMri !103 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r619.not = icmp eq i32 %r618, 0, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r619.not, label %"file Jacobi.f90, line 248, bb103", label %"file Jacobi.f90, line 248, bb139", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb103":               ; preds = %"file Jacobi.f90, line 248, bb101"
  %r624 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r625 = trunc i64 %r624 to i32, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r628.not = icmp ult i32 %"$$pre_186_t152.0", %r625, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r628.not, label %"file Jacobi.f90, line 248, bb107", label %"file Jacobi.f90, line 248, bb112", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb107":               ; preds = %"file Jacobi.f90, line 248, bb103"
  %r632 = and i64 %r624, 4294967295, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r633 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r634 = trunc i64 %r633 to i32, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820": ; preds = %"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820", %"file Jacobi.f90, line 248, bb107"
  %"$$reduc_pvt_t100_t254.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 248, bb107" ], [ %r644, %"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %"$$induc_p60_t120.0" = phi i32 [ %"$$pre_186_t152.0", %"file Jacobi.f90, line 248, bb107" ], [ %r647, %"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r638 = sext i32 %"$$induc_p60_t120.0" to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r639 = inttoptr i64 %"$$arg_ptr_reduc_val_t101_t25515" to double*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r640 = getelementptr double, double* %r639, i64 %r638, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r641 = addrspacecast double* %r640 to double addrspace(1)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r642 = load double, double addrspace(1)* %r641, align 8, !dbg !58, !CrayMri !104, !looptrips !19, !autoprefetch !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r643 = fcmp ogt double %"$$reduc_pvt_t100_t254.0", %r642, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r644 = select i1 %r643, double %"$$reduc_pvt_t100_t254.0", double %r642, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r647 = add i32 %r634, %"$$induc_p60_t120.0", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r649 = sext i32 %r647 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r651.not = icmp sgt i64 %r632, %r649, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r651.not, label %"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820", label %"file Jacobi.f90, line 248, bb112", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb112":               ; preds = %"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820", %"file Jacobi.f90, line 248, bb103"
  %"$$reduc_pvt_t100_t254.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 248, bb103" ], [ %r644, %"file Jacobi.f90, line 248, in inner loop at depth 0, bb111820" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r655 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast848 = sext i32 %r655 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r656 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast848, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r657 = getelementptr double, double* %r656, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r658 = addrspacecast double* %r657 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %"$$reduc_pvt_t100_t254.1", double addrspace(3)* %r658, align 8, !dbg !58, !CrayMri !105 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r659 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast849 = sext i32 %r659 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r660 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast849, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r661 = getelementptr double, double* %r660, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r662 = addrspacecast double* %r661 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r663 = load volatile double, double addrspace(3)* %r662, align 8, !dbg !58, !CrayMri !106 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r664 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r665 = icmp ult i32 %r664, 128, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r665, label %"file Jacobi.f90, line 248, bb114", label %"file Jacobi.f90, line 248, bb115", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb114":               ; preds = %"file Jacobi.f90, line 248, bb112"
  %r668 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast850 = sext i32 %r668 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r669 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast850, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r670 = getelementptr double, double* %r669, i64 129, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r671 = addrspacecast double* %r670 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r672 = load volatile double, double addrspace(3)* %r671, align 8, !dbg !58, !CrayMri !107 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r675 = fcmp ogt double %r663, %r672, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r676 = select i1 %r675, double %r663, double %r672, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r678 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast851 = sext i32 %r678 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r679 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast851, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r680 = getelementptr double, double* %r679, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r681 = addrspacecast double* %r680 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r676, double addrspace(3)* %r681, align 8, !dbg !58, !CrayMri !108 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb115", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb115":               ; preds = %"file Jacobi.f90, line 248, bb114", %"file Jacobi.f90, line 248, bb112"
  %"$redfold_left_temp_t146.0" = phi double [ %r663, %"file Jacobi.f90, line 248, bb112" ], [ %r676, %"file Jacobi.f90, line 248, bb114" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r682 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r683 = icmp ult i32 %r682, 64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r683, label %"file Jacobi.f90, line 248, bb117", label %"file Jacobi.f90, line 248, bb118", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb117":               ; preds = %"file Jacobi.f90, line 248, bb115"
  %r686 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast852 = sext i32 %r686 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r687 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast852, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r688 = getelementptr double, double* %r687, i64 65, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r689 = addrspacecast double* %r688 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r690 = load volatile double, double addrspace(3)* %r689, align 8, !dbg !58, !CrayMri !109 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r693 = fcmp ogt double %"$redfold_left_temp_t146.0", %r690, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r694 = select i1 %r693, double %"$redfold_left_temp_t146.0", double %r690, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r696 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast853 = sext i32 %r696 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r697 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast853, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r698 = getelementptr double, double* %r697, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r699 = addrspacecast double* %r698 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r694, double addrspace(3)* %r699, align 8, !dbg !58, !CrayMri !110 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb118", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb118":               ; preds = %"file Jacobi.f90, line 248, bb117", %"file Jacobi.f90, line 248, bb115"
  %"$redfold_left_temp_t146.1" = phi double [ %"$redfold_left_temp_t146.0", %"file Jacobi.f90, line 248, bb115" ], [ %r694, %"file Jacobi.f90, line 248, bb117" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r700 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r701 = icmp ult i32 %r700, 32, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r701, label %"file Jacobi.f90, line 248, bb120", label %"file Jacobi.f90, line 248, bb121", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb120":               ; preds = %"file Jacobi.f90, line 248, bb118"
  %r704 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast854 = sext i32 %r704 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r705 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast854, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r706 = getelementptr double, double* %r705, i64 33, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r707 = addrspacecast double* %r706 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r708 = load volatile double, double addrspace(3)* %r707, align 8, !dbg !58, !CrayMri !111 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r711 = fcmp ogt double %"$redfold_left_temp_t146.1", %r708, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r712 = select i1 %r711, double %"$redfold_left_temp_t146.1", double %r708, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r714 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast855 = sext i32 %r714 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r715 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast855, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r716 = getelementptr double, double* %r715, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r717 = addrspacecast double* %r716 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r712, double addrspace(3)* %r717, align 8, !dbg !58, !CrayMri !112 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb121", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb121":               ; preds = %"file Jacobi.f90, line 248, bb120", %"file Jacobi.f90, line 248, bb118"
  %"$redfold_left_temp_t146.2" = phi double [ %"$redfold_left_temp_t146.1", %"file Jacobi.f90, line 248, bb118" ], [ %r712, %"file Jacobi.f90, line 248, bb120" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r718 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r719 = icmp ult i32 %r718, 16, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r719, label %"file Jacobi.f90, line 248, bb123", label %"file Jacobi.f90, line 248, bb124", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb123":               ; preds = %"file Jacobi.f90, line 248, bb121"
  %r722 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast856 = sext i32 %r722 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r723 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast856, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r724 = getelementptr double, double* %r723, i64 17, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r725 = addrspacecast double* %r724 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r726 = load volatile double, double addrspace(3)* %r725, align 8, !dbg !58, !CrayMri !113 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r729 = fcmp ogt double %"$redfold_left_temp_t146.2", %r726, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r730 = select i1 %r729, double %"$redfold_left_temp_t146.2", double %r726, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r732 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast857 = sext i32 %r732 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r733 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast857, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r734 = getelementptr double, double* %r733, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r735 = addrspacecast double* %r734 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r730, double addrspace(3)* %r735, align 8, !dbg !58, !CrayMri !114 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb124", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb124":               ; preds = %"file Jacobi.f90, line 248, bb123", %"file Jacobi.f90, line 248, bb121"
  %"$redfold_left_temp_t146.3" = phi double [ %"$redfold_left_temp_t146.2", %"file Jacobi.f90, line 248, bb121" ], [ %r730, %"file Jacobi.f90, line 248, bb123" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r736 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r737 = icmp ult i32 %r736, 8, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r737, label %"file Jacobi.f90, line 248, bb126", label %"file Jacobi.f90, line 248, bb127", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb126":               ; preds = %"file Jacobi.f90, line 248, bb124"
  %r740 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast858 = sext i32 %r740 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r741 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast858, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r742 = getelementptr double, double* %r741, i64 9, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r743 = addrspacecast double* %r742 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r744 = load volatile double, double addrspace(3)* %r743, align 8, !dbg !58, !CrayMri !115 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r747 = fcmp ogt double %"$redfold_left_temp_t146.3", %r744, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r748 = select i1 %r747, double %"$redfold_left_temp_t146.3", double %r744, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r750 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast859 = sext i32 %r750 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r751 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast859, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r752 = getelementptr double, double* %r751, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r753 = addrspacecast double* %r752 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r748, double addrspace(3)* %r753, align 8, !dbg !58, !CrayMri !116 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb127", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb127":               ; preds = %"file Jacobi.f90, line 248, bb126", %"file Jacobi.f90, line 248, bb124"
  %"$redfold_left_temp_t146.4" = phi double [ %"$redfold_left_temp_t146.3", %"file Jacobi.f90, line 248, bb124" ], [ %r748, %"file Jacobi.f90, line 248, bb126" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r754 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r755 = icmp ult i32 %r754, 4, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r755, label %"file Jacobi.f90, line 248, bb129", label %"file Jacobi.f90, line 248, bb130", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb129":               ; preds = %"file Jacobi.f90, line 248, bb127"
  %r758 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast860 = sext i32 %r758 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r759 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast860, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r760 = getelementptr double, double* %r759, i64 5, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r761 = addrspacecast double* %r760 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r762 = load volatile double, double addrspace(3)* %r761, align 8, !dbg !58, !CrayMri !117 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r765 = fcmp ogt double %"$redfold_left_temp_t146.4", %r762, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r766 = select i1 %r765, double %"$redfold_left_temp_t146.4", double %r762, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r768 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast861 = sext i32 %r768 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r769 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast861, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r770 = getelementptr double, double* %r769, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r771 = addrspacecast double* %r770 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r766, double addrspace(3)* %r771, align 8, !dbg !58, !CrayMri !118 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb130", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb130":               ; preds = %"file Jacobi.f90, line 248, bb129", %"file Jacobi.f90, line 248, bb127"
  %"$redfold_left_temp_t146.5" = phi double [ %"$redfold_left_temp_t146.4", %"file Jacobi.f90, line 248, bb127" ], [ %r766, %"file Jacobi.f90, line 248, bb129" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r772 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r773 = icmp ult i32 %r772, 2, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r773, label %"file Jacobi.f90, line 248, bb132", label %"file Jacobi.f90, line 248, bb133", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb132":               ; preds = %"file Jacobi.f90, line 248, bb130"
  %r776 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast862 = sext i32 %r776 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r777 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast862, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r778 = getelementptr double, double* %r777, i64 3, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r779 = addrspacecast double* %r778 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r780 = load volatile double, double addrspace(3)* %r779, align 8, !dbg !58, !CrayMri !119 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r783 = fcmp ogt double %"$redfold_left_temp_t146.5", %r780, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r784 = select i1 %r783, double %"$redfold_left_temp_t146.5", double %r780, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r786 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast863 = sext i32 %r786 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r787 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast863, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r788 = getelementptr double, double* %r787, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r789 = addrspacecast double* %r788 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r784, double addrspace(3)* %r789, align 8, !dbg !58, !CrayMri !120 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb133", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb133":               ; preds = %"file Jacobi.f90, line 248, bb132", %"file Jacobi.f90, line 248, bb130"
  %"$redfold_left_temp_t146.6" = phi double [ %"$redfold_left_temp_t146.5", %"file Jacobi.f90, line 248, bb130" ], [ %r784, %"file Jacobi.f90, line 248, bb132" ], !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r790 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r791.not = icmp eq i32 %r790, 0, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r791.not, label %"file Jacobi.f90, line 248, bb135", label %"file Jacobi.f90, line 248, bb136", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb135":               ; preds = %"file Jacobi.f90, line 248, bb133"
  %r794 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast864 = sext i32 %r794 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r795 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast864, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r796 = getelementptr double, double* %r795, i64 2, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r797 = addrspacecast double* %r796 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r798 = load volatile double, double addrspace(3)* %r797, align 8, !dbg !58, !CrayMri !121 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r801 = fcmp ogt double %"$redfold_left_temp_t146.6", %r798, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r802 = select i1 %r801, double %"$redfold_left_temp_t146.6", double %r798, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r804 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %cic-gep-idxcast865 = sext i32 %r804 to i64, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r805 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 %cic-gep-idxcast865, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r806 = getelementptr double, double* %r805, i64 1, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r807 = addrspacecast double* %r806 to double addrspace(3)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r802, double addrspace(3)* %r807, align 8, !dbg !58, !CrayMri !122 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb136", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb136":               ; preds = %"file Jacobi.f90, line 248, bb135", %"file Jacobi.f90, line 248, bb133"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r808 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t142_AMD_LDS_3" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !58, !CrayMri !123 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r808, double addrspace(5)* %"$redfinal_t148", align 8, !dbg !58, !CrayMri !124 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  tail call void @llvm.amdgcn.s.barrier(), !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r809 = load volatile double, double addrspace(5)* %"$redfinal_t148", align 8, !dbg !58, !CrayMri !125 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br i1 %r590.not, label %"file Jacobi.f90, line 248, bb138", label %"file Jacobi.f90, line 248, bb139", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb138":               ; preds = %"file Jacobi.f90, line 248, bb136"
  %r812 = load volatile double, double addrspace(5)* %"$redfinal_t148", align 8, !dbg !58, !CrayMri !126 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r814 = inttoptr i64 %"$$arg_ptr_acc_residual_t59_t24910" to double addrspace(1)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r815 = load double, double addrspace(1)* %r814, align 8, !dbg !58, !CrayMri !127 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r816 = fcmp ogt double %r812, %r815, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r817 = select i1 %r816, double %r812, double %r815, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  %r819 = inttoptr i64 %"$$arg_ptr_acc_residual_t59_t24910" to double addrspace(1)*, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  store double %r817, double addrspace(1)* %r819, align 8, !dbg !58, !CrayMri !128 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
  br label %"file Jacobi.f90, line 248, bb139", !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248

"file Jacobi.f90, line 248, bb139":               ; preds = %"file Jacobi.f90, line 248, bb138", %"file Jacobi.f90, line 248, bb136", %"file Jacobi.f90, line 248, bb101"
  ret void, !dbg !58 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:248
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: convergent nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #3

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L280_17"(i64 %"$$arg_dvmbr_p21_t2451", i64 %"$$arg_dvmbr_p22_t2462", i64 %"$$arg_dvmbr_p24_t2473", i64 %"$$arg_dvmbr_p25_t2484", i64 %"$$arg_dvmbr_p27_t2495", i64 %"$$arg_dvmbr_p28_t2506", i64 %"$$arg_dvmbr_p30_t2517", i64 %"$$arg_dvmbr_p32_t2528", i64 %"$$arg_dvmbr_p33_t2539", i64 %"$$arg_ptr_acc_t_new_t56_t25410", i64 %"$$arg_ptr_acc_t_t58_t25511", i64 %"$$arg_ptr_acc_ncells_t60_t25612") #0 !dbg !129 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb233":
  %r15 = sub i64 2, %"$$arg_dvmbr_p22_t2462", !dbg !130 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282
  %r16 = mul i64 %"$$arg_dvmbr_p21_t2451", %r15, !dbg !130 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282
  %r17 = inttoptr i64 %"$$arg_ptr_acc_ncells_t60_t25612" to i32*, !dbg !130 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282
  %r18 = getelementptr i32, i32* %r17, i64 %r16, !dbg !130 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282
  %r19 = addrspacecast i32* %r18 to i32 addrspace(1)*, !dbg !130 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282
  %r20 = load i32, i32 addrspace(1)* %r19, align 4, !dbg !130, !CrayMri !131 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282
  %r22 = icmp sgt i32 %r20, 0, !dbg !130 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282
  br i1 %r22, label %"file Jacobi.f90, line 282, bb13", label %"file Jacobi.f90, line 289, bb300", !dbg !130 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:282

"file Jacobi.f90, line 282, bb13":                ; preds = %", bb233"
  %r28 = sub i64 1, %"$$arg_dvmbr_p22_t2462", !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r29 = mul i64 %"$$arg_dvmbr_p21_t2451", %r28, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r30 = inttoptr i64 %"$$arg_ptr_acc_ncells_t60_t25612" to i32*, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r31 = getelementptr i32, i32* %r30, i64 %r29, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r32 = addrspacecast i32* %r31 to i32 addrspace(1)*, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r33 = load i32, i32 addrspace(1)* %r32, align 4, !dbg !132, !CrayMri !133 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r35 = icmp sgt i32 %r33, 0, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  br i1 %r35, label %"file Jacobi.f90, line 283, bb17", label %"file Jacobi.f90, line 289, bb300", !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283

"file Jacobi.f90, line 283, bb17":                ; preds = %"file Jacobi.f90, line 282, bb13"
  %r38 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r39 = trunc i64 %r38 to i32, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r41 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r42 = trunc i64 %r41 to i32, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r43 = mul i32 %r39, %r42, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r45 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r46 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r47 = mul i32 %r45, %r39, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r48 = add i32 %r46, %r47, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r52 = mul i32 %r20, %r33, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r55.not = icmp slt i32 %r48, %r52, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  br i1 %r55.not, label %"file Jacobi.f90, line 284, bb19", label %"file Jacobi.f90, line 289, bb300", !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283

"file Jacobi.f90, line 284, bb19":                ; preds = %"file Jacobi.f90, line 283, bb17"
  %r64 = sub i64 1, %"$$arg_dvmbr_p28_t2506", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r65 = mul i64 %"$$arg_dvmbr_p27_t2495", %r64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r68 = sext i32 %r48 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r70 = sub i64 %r68, %"$$arg_dvmbr_p25_t2484", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r72 = mul i64 %"$$arg_dvmbr_p24_t2473", %r70, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r73 = add i64 %r65, %r72, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r76 = sub i64 2, %"$$arg_dvmbr_p25_t2484", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r78 = mul i64 %"$$arg_dvmbr_p24_t2473", %r76, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r79 = add i64 %r78, %r65, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r82 = sub i64 1, %"$$arg_dvmbr_p25_t2484", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r83 = mul i64 %"$$arg_dvmbr_p24_t2473", %r82, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r86 = sub i64 2, %"$$arg_dvmbr_p28_t2506", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r88 = mul i64 %"$$arg_dvmbr_p27_t2495", %r86, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r89 = add i64 %r83, %r88, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %0 = mul i64 %"$$arg_dvmbr_p27_t2495", %"$$arg_dvmbr_p28_t2506", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r95 = sub i64 %r83, %0, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r98 = sub i64 1, %"$$arg_dvmbr_p33_t2539", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r101 = mul i64 %"$$arg_dvmbr_p32_t2528", %r98, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r102 = sub i64 %r101, %"$$arg_dvmbr_p30_t2517", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r104 = sext i32 %r33 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r106 = mul i64 %"$$arg_dvmbr_p24_t2473", %r104, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r109 = sext i32 %r43 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r110 = mul i64 %"$$arg_dvmbr_p24_t2473", %r109, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r48.neg = sub i32 0, %r48
  %r116 = add i32 %r52, -1, !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  %r113 = add i32 %r116, %r48.neg, !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  %r117 = add i32 %r113, %r43, !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  %r119 = sdiv i32 %r117, %r43, !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  %r122 = icmp sgt i32 %r119, 3, !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  br i1 %r122, label %"file Jacobi.f90, line 283, bb21", label %"file Jacobi.f90, line 283, bb25", !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287

"file Jacobi.f90, line 283, bb21":                ; preds = %"file Jacobi.f90, line 284, bb19"
  %r129 = ashr i32 %r119, 1, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r130 = lshr i32 %r129, 30, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r131 = add i32 %r119, %r130, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r132 = and i32 %r131, -4, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r133.neg = sub i32 %r132, %r119, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r136 = mul i32 %r43, %r133.neg, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r137 = add i32 %r52, %r136, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r139 = shl i32 %r43, 2, !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  %r143 = mul i32 %r43, 3, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r145 = shl i32 %r43, 1, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  br label %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284

"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624": ; preds = %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624", %"file Jacobi.f90, line 283, bb21"
  %"$$induc_p49_t143.0" = phi i32 [ %r48, %"file Jacobi.f90, line 283, bb21" ], [ %r508, %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624" ], !dbg !136 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t146.0" = phi i64 [ %r73, %"file Jacobi.f90, line 283, bb21" ], [ %r502, %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624" ], !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r148 = sdiv i32 %"$$induc_p49_t143.0", %r33, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %1 = mul i32 %r33, %r148, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r154 = sub i32 %"$$induc_p49_t143.0", %1, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r155 = sext i32 %r154 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r158 = mul i64 %"$$arg_dvmbr_p24_t2473", %r155, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %2 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r163 = mul i32 %2, %r148, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r168 = sext i32 %r148 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r169 = mul i64 %r106, %r168, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r170 = sub i64 %"$$sr_e5_t146.0", %r169, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r171 = mul i64 %r170, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r173 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r171, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r175 = inttoptr i64 %r173 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast = sext i32 %r163 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r176 = getelementptr double, double* %r175, i64 %cic-gep-idxcast, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r177 = addrspacecast double* %r176 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r178 = load double, double addrspace(1)* %r177, align 8, !dbg !134, !CrayMri !137, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r182 = add i64 %r79, %r158, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r183 = mul i64 %r182, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r184 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r183, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r186 = inttoptr i64 %r184 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast627 = sext i32 %r163 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r187 = getelementptr double, double* %r186, i64 %cic-gep-idxcast627, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r188 = addrspacecast double* %r187 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r189 = load double, double addrspace(1)* %r188, align 8, !dbg !134, !CrayMri !138, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r190 = fadd double %r178, %r189, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r194 = add i64 %r89, %r158, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r195 = mul i64 %r194, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r196 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r195, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r198 = inttoptr i64 %r196 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast628 = sext i32 %r163 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r199 = getelementptr double, double* %r198, i64 %cic-gep-idxcast628, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r200 = addrspacecast double* %r199 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r201 = load double, double addrspace(1)* %r200, align 8, !dbg !134, !CrayMri !139, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r205 = add i64 %r95, %r158, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r206 = mul i64 %r205, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r207 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r206, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r209 = inttoptr i64 %r207 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast629 = sext i32 %r163 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r210 = getelementptr double, double* %r209, i64 %cic-gep-idxcast629, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r211 = addrspacecast double* %r210 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r212 = load double, double addrspace(1)* %r211, align 8, !dbg !134, !CrayMri !140, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r213 = fadd double %r201, %r212, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r214 = fadd double %r190, %r213, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r215 = fmul double %r214, 2.500000e-01, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r219 = add i64 %r102, %r155, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r220 = mul i64 %r219, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r221 = add i64 %"$$arg_ptr_acc_t_new_t56_t25410", %r220, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r224 = sext i32 %r148 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r225 = mul i64 %"$$arg_dvmbr_p32_t2528", %r224, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r226 = inttoptr i64 %r221 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r227 = getelementptr double, double* %r226, i64 %r225, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r228 = getelementptr double, double* %r227, i64 1, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r229 = addrspacecast double* %r228 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  store double %r215, double addrspace(1)* %r229, align 8, !dbg !134, !CrayMri !141, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r232 = add i64 %r110, %"$$sr_e5_t146.0", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r235 = add i32 %r43, %"$$induc_p49_t143.0", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r238 = sdiv i32 %r235, %r33, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %3 = mul i32 %r33, %r238, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r244 = sub i32 %r235, %3, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r245 = sext i32 %r244 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r248 = mul i64 %"$$arg_dvmbr_p24_t2473", %r245, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %4 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r253 = mul i32 %4, %r238, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r258 = sext i32 %r238 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r259 = mul i64 %r106, %r258, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r260 = sub i64 %r232, %r259, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r261 = mul i64 %r260, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r263 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r261, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r265 = inttoptr i64 %r263 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast630 = sext i32 %r253 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r266 = getelementptr double, double* %r265, i64 %cic-gep-idxcast630, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r267 = addrspacecast double* %r266 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r268 = load double, double addrspace(1)* %r267, align 8, !dbg !134, !CrayMri !142, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r272 = add i64 %r79, %r248, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r273 = mul i64 %r272, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r274 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r273, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r276 = inttoptr i64 %r274 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast631 = sext i32 %r253 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r277 = getelementptr double, double* %r276, i64 %cic-gep-idxcast631, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r278 = addrspacecast double* %r277 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r279 = load double, double addrspace(1)* %r278, align 8, !dbg !134, !CrayMri !143, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r280 = fadd double %r268, %r279, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r284 = add i64 %r89, %r248, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r285 = mul i64 %r284, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r286 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r285, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r288 = inttoptr i64 %r286 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast632 = sext i32 %r253 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r289 = getelementptr double, double* %r288, i64 %cic-gep-idxcast632, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r290 = addrspacecast double* %r289 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r291 = load double, double addrspace(1)* %r290, align 8, !dbg !134, !CrayMri !144, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r295 = add i64 %r95, %r248, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r296 = mul i64 %r295, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r297 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r296, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r299 = inttoptr i64 %r297 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast633 = sext i32 %r253 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r300 = getelementptr double, double* %r299, i64 %cic-gep-idxcast633, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r301 = addrspacecast double* %r300 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r302 = load double, double addrspace(1)* %r301, align 8, !dbg !134, !CrayMri !145, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r303 = fadd double %r291, %r302, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r304 = fadd double %r280, %r303, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r305 = fmul double %r304, 2.500000e-01, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r309 = add i64 %r102, %r245, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r310 = mul i64 %r309, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r311 = add i64 %"$$arg_ptr_acc_t_new_t56_t25410", %r310, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r314 = sext i32 %r238 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r315 = mul i64 %"$$arg_dvmbr_p32_t2528", %r314, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r316 = inttoptr i64 %r311 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r317 = getelementptr double, double* %r316, i64 %r315, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r318 = getelementptr double, double* %r317, i64 1, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r319 = addrspacecast double* %r318 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  store double %r305, double addrspace(1)* %r319, align 8, !dbg !134, !CrayMri !146, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r322 = add i64 %r110, %r232, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r325 = add i32 %r145, %"$$induc_p49_t143.0", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r328 = sdiv i32 %r325, %r33, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %5 = mul i32 %r33, %r328, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r334 = sub i32 %r325, %5, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r335 = sext i32 %r334 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r338 = mul i64 %"$$arg_dvmbr_p24_t2473", %r335, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %6 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r343 = mul i32 %6, %r328, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r348 = sext i32 %r328 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r349 = mul i64 %r106, %r348, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r350 = sub i64 %r322, %r349, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r351 = mul i64 %r350, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r353 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r351, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r355 = inttoptr i64 %r353 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast634 = sext i32 %r343 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r356 = getelementptr double, double* %r355, i64 %cic-gep-idxcast634, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r357 = addrspacecast double* %r356 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r358 = load double, double addrspace(1)* %r357, align 8, !dbg !134, !CrayMri !147, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r362 = add i64 %r79, %r338, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r363 = mul i64 %r362, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r364 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r363, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r366 = inttoptr i64 %r364 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast635 = sext i32 %r343 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r367 = getelementptr double, double* %r366, i64 %cic-gep-idxcast635, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r368 = addrspacecast double* %r367 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r369 = load double, double addrspace(1)* %r368, align 8, !dbg !134, !CrayMri !148, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r370 = fadd double %r358, %r369, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r374 = add i64 %r89, %r338, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r375 = mul i64 %r374, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r376 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r375, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r378 = inttoptr i64 %r376 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast636 = sext i32 %r343 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r379 = getelementptr double, double* %r378, i64 %cic-gep-idxcast636, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r380 = addrspacecast double* %r379 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r381 = load double, double addrspace(1)* %r380, align 8, !dbg !134, !CrayMri !149, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r385 = add i64 %r95, %r338, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r386 = mul i64 %r385, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r387 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r386, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r389 = inttoptr i64 %r387 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast637 = sext i32 %r343 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r390 = getelementptr double, double* %r389, i64 %cic-gep-idxcast637, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r391 = addrspacecast double* %r390 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r392 = load double, double addrspace(1)* %r391, align 8, !dbg !134, !CrayMri !150, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r393 = fadd double %r381, %r392, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r394 = fadd double %r370, %r393, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r395 = fmul double %r394, 2.500000e-01, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r399 = add i64 %r102, %r335, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r400 = mul i64 %r399, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r401 = add i64 %"$$arg_ptr_acc_t_new_t56_t25410", %r400, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r404 = sext i32 %r328 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r405 = mul i64 %"$$arg_dvmbr_p32_t2528", %r404, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r406 = inttoptr i64 %r401 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r407 = getelementptr double, double* %r406, i64 %r405, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r408 = getelementptr double, double* %r407, i64 1, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r409 = addrspacecast double* %r408 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  store double %r395, double addrspace(1)* %r409, align 8, !dbg !134, !CrayMri !151, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r412 = add i64 %r110, %r322, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r415 = add i32 %r143, %"$$induc_p49_t143.0", !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %r418 = sdiv i32 %r415, %r33, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %7 = mul i32 %r33, %r418, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r424 = sub i32 %r415, %7, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r425 = sext i32 %r424 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r428 = mul i64 %"$$arg_dvmbr_p24_t2473", %r425, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %8 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r433 = mul i32 %8, %r418, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r438 = sext i32 %r418 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r439 = mul i64 %r106, %r438, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r440 = sub i64 %r412, %r439, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r441 = mul i64 %r440, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r443 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r441, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r445 = inttoptr i64 %r443 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast638 = sext i32 %r433 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r446 = getelementptr double, double* %r445, i64 %cic-gep-idxcast638, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r447 = addrspacecast double* %r446 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r448 = load double, double addrspace(1)* %r447, align 8, !dbg !134, !CrayMri !152, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r452 = add i64 %r79, %r428, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r453 = mul i64 %r452, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r454 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r453, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r456 = inttoptr i64 %r454 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast639 = sext i32 %r433 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r457 = getelementptr double, double* %r456, i64 %cic-gep-idxcast639, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r458 = addrspacecast double* %r457 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r459 = load double, double addrspace(1)* %r458, align 8, !dbg !134, !CrayMri !153, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r460 = fadd double %r448, %r459, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r464 = add i64 %r89, %r428, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r465 = mul i64 %r464, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r466 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r465, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r468 = inttoptr i64 %r466 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast640 = sext i32 %r433 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r469 = getelementptr double, double* %r468, i64 %cic-gep-idxcast640, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r470 = addrspacecast double* %r469 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r471 = load double, double addrspace(1)* %r470, align 8, !dbg !134, !CrayMri !154, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r475 = add i64 %r95, %r428, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r476 = mul i64 %r475, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r477 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r476, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r479 = inttoptr i64 %r477 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast641 = sext i32 %r433 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r480 = getelementptr double, double* %r479, i64 %cic-gep-idxcast641, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r481 = addrspacecast double* %r480 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r482 = load double, double addrspace(1)* %r481, align 8, !dbg !134, !CrayMri !155, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r483 = fadd double %r471, %r482, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r484 = fadd double %r460, %r483, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r485 = fmul double %r484, 2.500000e-01, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r489 = add i64 %r102, %r425, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r490 = mul i64 %r489, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r491 = add i64 %"$$arg_ptr_acc_t_new_t56_t25410", %r490, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r494 = sext i32 %r418 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r495 = mul i64 %"$$arg_dvmbr_p32_t2528", %r494, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r496 = inttoptr i64 %r491 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r497 = getelementptr double, double* %r496, i64 %r495, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r498 = getelementptr double, double* %r497, i64 1, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r499 = addrspacecast double* %r498 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  store double %r485, double addrspace(1)* %r499, align 8, !dbg !134, !CrayMri !156, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r502 = add i64 %r110, %r412, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r508 = add i32 %r139, %"$$induc_p49_t143.0", !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  %r513.not = icmp slt i32 %r508, %r137, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  br i1 %r513.not, label %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624", label %"file Jacobi.f90, line 283, bb25", !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283

"file Jacobi.f90, line 283, bb25":                ; preds = %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624", %"file Jacobi.f90, line 284, bb19"
  %"$$induc_p49_t143.1" = phi i32 [ %r48, %"file Jacobi.f90, line 284, bb19" ], [ %r508, %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624" ], !dbg !136 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t146.1" = phi i64 [ %r73, %"file Jacobi.f90, line 284, bb19" ], [ %r502, %"file Jacobi.f90, line 284, in inner loop at depth 0, bb24624" ], !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r520.not = icmp slt i32 %"$$induc_p49_t143.1", %r52, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  br i1 %r520.not, label %"file Jacobi.f90, line 287, in inner loop at depth 0, bb30626", label %"file Jacobi.f90, line 289, bb300", !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283

"file Jacobi.f90, line 287, in inner loop at depth 0, bb30626": ; preds = %"file Jacobi.f90, line 283, bb25", %"file Jacobi.f90, line 287, in inner loop at depth 0, bb30626"
  %"$$induc_p49_t143.2" = phi i32 [ %r615, %"file Jacobi.f90, line 287, in inner loop at depth 0, bb30626" ], [ %"$$induc_p49_t143.1", %"file Jacobi.f90, line 283, bb25" ], !dbg !136 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t146.2" = phi i64 [ %r612, %"file Jacobi.f90, line 287, in inner loop at depth 0, bb30626" ], [ %"$$sr_e5_t146.1", %"file Jacobi.f90, line 283, bb25" ], !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r525 = sdiv i32 %"$$induc_p49_t143.2", %r33, !dbg !132 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:283
  %9 = mul i32 %r33, %r525, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r531 = sub i32 %"$$induc_p49_t143.2", %9, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r532 = sext i32 %r531 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r535 = mul i64 %"$$arg_dvmbr_p24_t2473", %r532, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %10 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r540 = mul i32 %10, %r525, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r545 = sext i32 %r525 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r546 = mul i64 %r106, %r545, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r547 = sub i64 %"$$sr_e5_t146.2", %r546, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r548 = mul i64 %r547, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r550 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r548, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r552 = inttoptr i64 %r550 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast642 = sext i32 %r540 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r553 = getelementptr double, double* %r552, i64 %cic-gep-idxcast642, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r554 = addrspacecast double* %r553 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r555 = load double, double addrspace(1)* %r554, align 8, !dbg !134, !CrayMri !157, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r559 = add i64 %r79, %r535, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r560 = mul i64 %r559, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r561 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r560, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r563 = inttoptr i64 %r561 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast643 = sext i32 %r540 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r564 = getelementptr double, double* %r563, i64 %cic-gep-idxcast643, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r565 = addrspacecast double* %r564 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r566 = load double, double addrspace(1)* %r565, align 8, !dbg !134, !CrayMri !158, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r567 = fadd double %r555, %r566, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r571 = add i64 %r89, %r535, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r572 = mul i64 %r571, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r573 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r572, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r575 = inttoptr i64 %r573 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast644 = sext i32 %r540 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r576 = getelementptr double, double* %r575, i64 %cic-gep-idxcast644, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r577 = addrspacecast double* %r576 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r578 = load double, double addrspace(1)* %r577, align 8, !dbg !134, !CrayMri !159, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r582 = add i64 %r95, %r535, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r583 = mul i64 %r582, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r584 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r583, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r586 = inttoptr i64 %r584 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %cic-gep-idxcast645 = sext i32 %r540 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r587 = getelementptr double, double* %r586, i64 %cic-gep-idxcast645, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r588 = addrspacecast double* %r587 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r589 = load double, double addrspace(1)* %r588, align 8, !dbg !134, !CrayMri !160, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r590 = fadd double %r578, %r589, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r591 = fadd double %r567, %r590, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r592 = fmul double %r591, 2.500000e-01, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r596 = add i64 %r102, %r532, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r597 = mul i64 %r596, 8, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r598 = add i64 %"$$arg_ptr_acc_t_new_t56_t25410", %r597, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r601 = sext i32 %r525 to i64, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r602 = mul i64 %"$$arg_dvmbr_p32_t2528", %r601, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r603 = inttoptr i64 %r598 to double*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r604 = getelementptr double, double* %r603, i64 %r602, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r605 = getelementptr double, double* %r604, i64 1, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r606 = addrspacecast double* %r605 to double addrspace(1)*, !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  store double %r592, double addrspace(1)* %r606, align 8, !dbg !134, !CrayMri !161, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r612 = add i64 %r110, %"$$sr_e5_t146.2", !dbg !134 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:284
  %r615 = add i32 %r43, %"$$induc_p49_t143.2", !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  %r620.not = icmp slt i32 %r615, %r52, !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287
  br i1 %r620.not, label %"file Jacobi.f90, line 287, in inner loop at depth 0, bb30626", label %"file Jacobi.f90, line 289, bb300", !dbg !135 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:287

"file Jacobi.f90, line 289, bb300":               ; preds = %"file Jacobi.f90, line 287, in inner loop at depth 0, bb30626", %"file Jacobi.f90, line 283, bb25", %"file Jacobi.f90, line 283, bb17", %"file Jacobi.f90, line 282, bb13", %", bb233"
  ret void, !dbg !162 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:289
}

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L295_20"(i64 %"$$arg_dvmbr_p35_t2571", i64 %"$$arg_dvmbr_p36_t2582", i64 %"$$arg_dvmbr_p38_t2593", i64 %"$$arg_dvmbr_p39_t2604", i64 %"$$arg_dvmbr_p41_t2615", i64 %"$$arg_dvmbr_p42_t2626", i64 %"$$arg_dvmbr_p44_t2637", i64 %"$$arg_dvmbr_p46_t2648", i64 %"$$arg_dvmbr_p47_t2659", i64 %"$$arg_ptr_acc_residual_t62_t26610", i64 %"$$arg_ptr_acc_t_new_t64_t26711", i64 %"$$arg_ptr_acc_t_t66_t26812", i64 %"$$arg_ptr_acc_ncells_t68_t26913", i64 %"$$arg_ptr_reduc_ctl_t110_t27014", i64 %"$$arg_ptr_reduc_val_t114_t27215") #0 !dbg !163 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb239":
  %"$redfinal_t161" = alloca double, align 8, addrspace(5), !dbg !164 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:295
  %"$redfinal_t158" = alloca double, align 8, addrspace(5), !dbg !164 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:295
  %r19 = sub i64 2, %"$$arg_dvmbr_p36_t2582", !dbg !165 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298
  %r20 = mul i64 %"$$arg_dvmbr_p35_t2571", %r19, !dbg !165 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298
  %r21 = inttoptr i64 %"$$arg_ptr_acc_ncells_t68_t26913" to i32*, !dbg !165 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298
  %r22 = getelementptr i32, i32* %r21, i64 %r20, !dbg !165 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298
  %r23 = addrspacecast i32* %r22 to i32 addrspace(1)*, !dbg !165 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298
  %r24 = load i32, i32 addrspace(1)* %r23, align 4, !dbg !165, !CrayMri !166 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298
  %r25 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r27 = icmp sgt i32 %r24, 0, !dbg !165 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298
  br i1 %r27, label %"file Jacobi.f90, line 298, bb88", label %"file Jacobi.f90, line 295, bb106", !dbg !165 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:298

"file Jacobi.f90, line 298, bb88":                ; preds = %", bb239"
  %r33 = sub i64 1, %"$$arg_dvmbr_p36_t2582", !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r34 = mul i64 %"$$arg_dvmbr_p35_t2571", %r33, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r35 = inttoptr i64 %"$$arg_ptr_acc_ncells_t68_t26913" to i32*, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r36 = getelementptr i32, i32* %r35, i64 %r34, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r37 = addrspacecast i32* %r36 to i32 addrspace(1)*, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r38 = load i32, i32 addrspace(1)* %r37, align 4, !dbg !168, !CrayMri !169 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r40 = icmp sgt i32 %r38, 0, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  br i1 %r40, label %"file Jacobi.f90, line 299, bb92", label %"file Jacobi.f90, line 295, bb106", !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299

"file Jacobi.f90, line 299, bb92":                ; preds = %"file Jacobi.f90, line 298, bb88"
  %r43 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r44 = trunc i64 %r43 to i32, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r46 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r47 = trunc i64 %r46 to i32, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r48 = mul i32 %r44, %r47, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r49 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r51 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r53 = mul i32 %r51, %r44, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r54 = add i32 %r49, %r53, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r58 = mul i32 %r24, %r38, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r61.not = icmp slt i32 %r54, %r58, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  br i1 %r61.not, label %"file Jacobi.f90, line 300, bb94", label %"file Jacobi.f90, line 295, bb106", !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299

"file Jacobi.f90, line 300, bb94":                ; preds = %"file Jacobi.f90, line 299, bb92"
  %r66 = sub i64 1, %"$$arg_dvmbr_p42_t2626", !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r69 = sub i64 1, %"$$arg_dvmbr_p39_t2604", !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r70 = mul i64 %"$$arg_dvmbr_p38_t2593", %r69, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r71 = mul i64 %"$$arg_dvmbr_p41_t2615", %r66, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r72 = add i64 %r70, %r71, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r75 = sub i64 1, %"$$arg_dvmbr_p47_t2659", !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r78 = mul i64 %"$$arg_dvmbr_p46_t2648", %r75, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r79 = sub i64 %r78, %"$$arg_dvmbr_p44_t2637", !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r54.neg = sub i32 0, %r54
  %r85 = add i32 %r58, -1, !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  %r82 = add i32 %r85, %r54.neg, !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  %r86 = add i32 %r82, %r48, !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  %r88 = sdiv i32 %r86, %r48, !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  %r91 = icmp sgt i32 %r88, 3, !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  br i1 %r91, label %"file Jacobi.f90, line 299, bb96", label %"file Jacobi.f90, line 299, bb100", !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302

"file Jacobi.f90, line 299, bb96":                ; preds = %"file Jacobi.f90, line 300, bb94"
  %r98 = ashr i32 %r88, 1, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r99 = lshr i32 %r98, 30, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r100 = add i32 %r88, %r99, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r101 = and i32 %r100, -4, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r102.neg = sub i32 %r101, %r88, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r105 = mul i32 %r48, %r102.neg, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r106 = add i32 %r58, %r105, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r108 = shl i32 %r48, 2, !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  %r110 = mul i32 %r48, 3, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r112 = shl i32 %r48, 1, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  br label %", in inner reduction loop at depth 0, bb97", !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300

", in inner reduction loop at depth 0, bb97":     ; preds = %", in inner reduction loop at depth 0, bb97", %"file Jacobi.f90, line 299, bb96"
  %"$$induc_p53_t132.0" = phi i32 [ %r54, %"file Jacobi.f90, line 299, bb96" ], [ %r348, %", in inner reduction loop at depth 0, bb97" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 299, bb96" ], [ %r339, %", in inner reduction loop at depth 0, bb97" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r115 = sdiv i32 %"$$induc_p53_t132.0", %r38, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %0 = mul i32 %r38, %r115, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r121 = sub i32 %"$$induc_p53_t132.0", %0, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r122 = sext i32 %r121 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r126 = add i64 %r79, %r122, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r127 = mul i64 %r126, 8, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r128 = add i64 %"$$arg_ptr_acc_t_new_t64_t26711", %r127, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r131 = sext i32 %r115 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r132 = mul i64 %"$$arg_dvmbr_p46_t2648", %r131, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r133 = inttoptr i64 %r128 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r134 = getelementptr double, double* %r133, i64 %r132, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r135 = getelementptr double, double* %r134, i64 1, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r136 = addrspacecast double* %r135 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r137 = load double, double addrspace(1)* %r136, align 8, !dbg !170, !CrayMri !173, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r142 = mul i64 %"$$arg_dvmbr_p38_t2593", %r122, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r143 = add i64 %r72, %r142, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r144 = shl i64 %r143, 3, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r145 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r144, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %1 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r150 = mul i32 %1, %r115, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r155 = inttoptr i64 %r145 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %cic-gep-idxcast = sext i32 %r150 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r156 = getelementptr double, double* %r155, i64 %cic-gep-idxcast, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r157 = addrspacecast double* %r156 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r158 = load double, double addrspace(1)* %r157, align 8, !dbg !170, !CrayMri !174, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r159 = fsub double %r137, %r158, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r160 = tail call double @llvm.fabs.f64(double %r159), !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r161 = fcmp ogt double %"$_pvt3_residual_t48.0", %r160, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r162 = select i1 %r161, double %"$_pvt3_residual_t48.0", double %r160, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r166 = inttoptr i64 %r145 to double*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %cic-gep-idxcast822 = sext i32 %r150 to i64, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r167 = getelementptr double, double* %r166, i64 %cic-gep-idxcast822, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r168 = addrspacecast double* %r167 to double addrspace(1)*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  store double %r137, double addrspace(1)* %r168, align 8, !dbg !175, !CrayMri !176, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r171 = add i32 %r48, %"$$induc_p53_t132.0", !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r174 = sdiv i32 %r171, %r38, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %2 = mul i32 %r38, %r174, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r180 = sub i32 %r171, %2, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r181 = sext i32 %r180 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r185 = add i64 %r79, %r181, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r186 = mul i64 %r185, 8, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r187 = add i64 %"$$arg_ptr_acc_t_new_t64_t26711", %r186, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r190 = sext i32 %r174 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r191 = mul i64 %"$$arg_dvmbr_p46_t2648", %r190, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r192 = inttoptr i64 %r187 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r193 = getelementptr double, double* %r192, i64 %r191, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r194 = getelementptr double, double* %r193, i64 1, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r195 = addrspacecast double* %r194 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r196 = load double, double addrspace(1)* %r195, align 8, !dbg !170, !CrayMri !177, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r201 = mul i64 %"$$arg_dvmbr_p38_t2593", %r181, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r202 = add i64 %r72, %r201, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r203 = shl i64 %r202, 3, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r204 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r203, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %3 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r209 = mul i32 %3, %r174, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r214 = inttoptr i64 %r204 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %cic-gep-idxcast823 = sext i32 %r209 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r215 = getelementptr double, double* %r214, i64 %cic-gep-idxcast823, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r216 = addrspacecast double* %r215 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r217 = load double, double addrspace(1)* %r216, align 8, !dbg !170, !CrayMri !178, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r218 = fsub double %r196, %r217, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r219 = tail call double @llvm.fabs.f64(double %r218), !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r220 = fcmp ogt double %r162, %r219, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r221 = select i1 %r220, double %r162, double %r219, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r225 = inttoptr i64 %r204 to double*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %cic-gep-idxcast824 = sext i32 %r209 to i64, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r226 = getelementptr double, double* %r225, i64 %cic-gep-idxcast824, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r227 = addrspacecast double* %r226 to double addrspace(1)*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  store double %r196, double addrspace(1)* %r227, align 8, !dbg !175, !CrayMri !179, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r230 = add i32 %r112, %"$$induc_p53_t132.0", !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r233 = sdiv i32 %r230, %r38, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %4 = mul i32 %r38, %r233, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r239 = sub i32 %r230, %4, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r240 = sext i32 %r239 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r244 = add i64 %r79, %r240, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r245 = mul i64 %r244, 8, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r246 = add i64 %"$$arg_ptr_acc_t_new_t64_t26711", %r245, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r249 = sext i32 %r233 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r250 = mul i64 %"$$arg_dvmbr_p46_t2648", %r249, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r251 = inttoptr i64 %r246 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r252 = getelementptr double, double* %r251, i64 %r250, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r253 = getelementptr double, double* %r252, i64 1, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r254 = addrspacecast double* %r253 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r255 = load double, double addrspace(1)* %r254, align 8, !dbg !170, !CrayMri !180, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r260 = mul i64 %"$$arg_dvmbr_p38_t2593", %r240, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r261 = add i64 %r72, %r260, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r262 = shl i64 %r261, 3, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r263 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r262, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %5 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r268 = mul i32 %5, %r233, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r273 = inttoptr i64 %r263 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %cic-gep-idxcast825 = sext i32 %r268 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r274 = getelementptr double, double* %r273, i64 %cic-gep-idxcast825, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r275 = addrspacecast double* %r274 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r276 = load double, double addrspace(1)* %r275, align 8, !dbg !170, !CrayMri !181, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r277 = fsub double %r255, %r276, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r278 = tail call double @llvm.fabs.f64(double %r277), !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r279 = fcmp ogt double %r221, %r278, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r280 = select i1 %r279, double %r221, double %r278, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r284 = inttoptr i64 %r263 to double*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %cic-gep-idxcast826 = sext i32 %r268 to i64, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r285 = getelementptr double, double* %r284, i64 %cic-gep-idxcast826, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r286 = addrspacecast double* %r285 to double addrspace(1)*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  store double %r255, double addrspace(1)* %r286, align 8, !dbg !175, !CrayMri !182, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r289 = add i32 %r110, %"$$induc_p53_t132.0", !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %r292 = sdiv i32 %r289, %r38, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %6 = mul i32 %r38, %r292, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r298 = sub i32 %r289, %6, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r299 = sext i32 %r298 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r303 = add i64 %r79, %r299, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r304 = mul i64 %r303, 8, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r305 = add i64 %"$$arg_ptr_acc_t_new_t64_t26711", %r304, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r308 = sext i32 %r292 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r309 = mul i64 %"$$arg_dvmbr_p46_t2648", %r308, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r310 = inttoptr i64 %r305 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r311 = getelementptr double, double* %r310, i64 %r309, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r312 = getelementptr double, double* %r311, i64 1, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r313 = addrspacecast double* %r312 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r314 = load double, double addrspace(1)* %r313, align 8, !dbg !170, !CrayMri !183, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r319 = mul i64 %"$$arg_dvmbr_p38_t2593", %r299, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r320 = add i64 %r72, %r319, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r321 = shl i64 %r320, 3, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r322 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r321, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %7 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r327 = mul i32 %7, %r292, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r332 = inttoptr i64 %r322 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %cic-gep-idxcast827 = sext i32 %r327 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r333 = getelementptr double, double* %r332, i64 %cic-gep-idxcast827, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r334 = addrspacecast double* %r333 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r335 = load double, double addrspace(1)* %r334, align 8, !dbg !170, !CrayMri !184, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r336 = fsub double %r314, %r335, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r337 = tail call double @llvm.fabs.f64(double %r336), !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r338 = fcmp ogt double %r280, %r337, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r339 = select i1 %r338, double %r280, double %r337, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r343 = inttoptr i64 %r322 to double*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %cic-gep-idxcast828 = sext i32 %r327 to i64, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r344 = getelementptr double, double* %r343, i64 %cic-gep-idxcast828, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r345 = addrspacecast double* %r344 to double addrspace(1)*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  store double %r314, double addrspace(1)* %r345, align 8, !dbg !175, !CrayMri !185, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r348 = add i32 %r108, %"$$induc_p53_t132.0", !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  %r353.not = icmp slt i32 %r348, %r106, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  br i1 %r353.not, label %", in inner reduction loop at depth 0, bb97", label %"file Jacobi.f90, line 299, bb100", !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299

"file Jacobi.f90, line 299, bb100":               ; preds = %", in inner reduction loop at depth 0, bb97", %"file Jacobi.f90, line 300, bb94"
  %"$$induc_p53_t132.1" = phi i32 [ %r54, %"file Jacobi.f90, line 300, bb94" ], [ %r348, %", in inner reduction loop at depth 0, bb97" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 300, bb94" ], [ %r339, %", in inner reduction loop at depth 0, bb97" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r360.not = icmp slt i32 %"$$induc_p53_t132.1", %r58, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  br i1 %r360.not, label %"299utop1", label %"file Jacobi.f90, line 295, bb106", !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299

"299utop1":                                       ; preds = %"file Jacobi.f90, line 299, bb100", %"299utop1"
  %"$$induc_p53_t132.2" = phi i32 [ %r421, %"299utop1" ], [ %"$$induc_p53_t132.1", %"file Jacobi.f90, line 299, bb100" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.2" = phi double [ %r412, %"299utop1" ], [ %"$_pvt3_residual_t48.1", %"file Jacobi.f90, line 299, bb100" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r365 = sdiv i32 %"$$induc_p53_t132.2", %r38, !dbg !168 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:299
  %8 = mul i32 %r38, %r365, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r371 = sub i32 %"$$induc_p53_t132.2", %8, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r372 = sext i32 %r371 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r376 = add i64 %r79, %r372, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r377 = mul i64 %r376, 8, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r378 = add i64 %"$$arg_ptr_acc_t_new_t64_t26711", %r377, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r381 = sext i32 %r365 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r382 = mul i64 %"$$arg_dvmbr_p46_t2648", %r381, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r383 = inttoptr i64 %r378 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r384 = getelementptr double, double* %r383, i64 %r382, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r385 = getelementptr double, double* %r384, i64 1, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r386 = addrspacecast double* %r385 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r387 = load double, double addrspace(1)* %r386, align 8, !dbg !170, !CrayMri !186, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r392 = mul i64 %"$$arg_dvmbr_p38_t2593", %r372, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r393 = add i64 %r72, %r392, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r394 = shl i64 %r393, 3, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r395 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r394, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %9 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r400 = mul i32 %9, %r365, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r405 = inttoptr i64 %r395 to double*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %cic-gep-idxcast829 = sext i32 %r400 to i64, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r406 = getelementptr double, double* %r405, i64 %cic-gep-idxcast829, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r407 = addrspacecast double* %r406 to double addrspace(1)*, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r408 = load double, double addrspace(1)* %r407, align 8, !dbg !170, !CrayMri !187, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r409 = fsub double %r387, %r408, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r410 = tail call double @llvm.fabs.f64(double %r409), !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r411 = fcmp ogt double %"$_pvt3_residual_t48.2", %r410, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r412 = select i1 %r411, double %"$_pvt3_residual_t48.2", double %r410, !dbg !170 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:300
  %r416 = inttoptr i64 %r395 to double*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %cic-gep-idxcast830 = sext i32 %r400 to i64, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r417 = getelementptr double, double* %r416, i64 %cic-gep-idxcast830, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r418 = addrspacecast double* %r417 to double addrspace(1)*, !dbg !175 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  store double %r387, double addrspace(1)* %r418, align 8, !dbg !175, !CrayMri !188, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:301
  %r421 = add i32 %r48, %"$$induc_p53_t132.2", !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  %r426.not = icmp slt i32 %r421, %r58, !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302
  br i1 %r426.not, label %"299utop1", label %"file Jacobi.f90, line 295, bb106", !dbg !171 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:302

"file Jacobi.f90, line 295, bb106":               ; preds = %"299utop1", %"file Jacobi.f90, line 299, bb100", %"file Jacobi.f90, line 299, bb92", %"file Jacobi.f90, line 298, bb88", %", bb239"
  %"$$pre_195_t168.0" = phi i32 [ %r25, %", bb239" ], [ %r25, %"file Jacobi.f90, line 298, bb88" ], [ %r49, %"file Jacobi.f90, line 299, bb92" ], [ %r49, %"file Jacobi.f90, line 299, bb100" ], [ %r49, %"299utop1" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.3" = phi double [ 0xFFF0000000000000, %", bb239" ], [ 0xFFF0000000000000, %"file Jacobi.f90, line 298, bb88" ], [ 0xFFF0000000000000, %"file Jacobi.f90, line 299, bb92" ], [ %"$_pvt3_residual_t48.1", %"file Jacobi.f90, line 299, bb100" ], [ %r412, %"299utop1" ], !dbg !172 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r431 = fcmp ogt double %"$_pvt3_residual_t48.3", 0xFFF0000000000000, !dbg !164 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:295
  %r432 = select i1 %r431, double %"$_pvt3_residual_t48.3", double 0xFFF0000000000000, !dbg !164 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:295
  %r435 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast831 = sext i32 %r435 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r436 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast831, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r437 = getelementptr double, double* %r436, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r438 = addrspacecast double* %r437 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r432, double addrspace(3)* %r438, align 8, !dbg !167, !CrayMri !189 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r439 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast832 = sext i32 %r439 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r440 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast832, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r441 = getelementptr double, double* %r440, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r442 = addrspacecast double* %r441 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r443 = load volatile double, double addrspace(3)* %r442, align 8, !dbg !167, !CrayMri !190 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r444 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r445 = icmp ult i32 %r444, 128, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r445, label %"file Jacobi.f90, line 304, bb108", label %"file Jacobi.f90, line 304, bb109", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb108":               ; preds = %"file Jacobi.f90, line 295, bb106"
  %r448 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast833 = sext i32 %r448 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r449 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast833, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r450 = getelementptr double, double* %r449, i64 129, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r451 = addrspacecast double* %r450 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r452 = load volatile double, double addrspace(3)* %r451, align 8, !dbg !167, !CrayMri !191 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r455 = fcmp ogt double %r443, %r452, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r456 = select i1 %r455, double %r443, double %r452, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r458 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast834 = sext i32 %r458 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r459 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast834, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r460 = getelementptr double, double* %r459, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r461 = addrspacecast double* %r460 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r456, double addrspace(3)* %r461, align 8, !dbg !167, !CrayMri !192 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb109", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb109":               ; preds = %"file Jacobi.f90, line 304, bb108", %"file Jacobi.f90, line 295, bb106"
  %"$redfold_left_temp_t156.0" = phi double [ %r443, %"file Jacobi.f90, line 295, bb106" ], [ %r456, %"file Jacobi.f90, line 304, bb108" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r462 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r463 = icmp ult i32 %r462, 64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r463, label %"file Jacobi.f90, line 304, bb111", label %"file Jacobi.f90, line 304, bb112", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb111":               ; preds = %"file Jacobi.f90, line 304, bb109"
  %r466 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast835 = sext i32 %r466 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r467 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast835, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r468 = getelementptr double, double* %r467, i64 65, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r469 = addrspacecast double* %r468 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r470 = load volatile double, double addrspace(3)* %r469, align 8, !dbg !167, !CrayMri !193 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r473 = fcmp ogt double %"$redfold_left_temp_t156.0", %r470, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r474 = select i1 %r473, double %"$redfold_left_temp_t156.0", double %r470, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r476 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast836 = sext i32 %r476 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r477 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast836, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r478 = getelementptr double, double* %r477, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r479 = addrspacecast double* %r478 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r474, double addrspace(3)* %r479, align 8, !dbg !167, !CrayMri !194 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb112", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb112":               ; preds = %"file Jacobi.f90, line 304, bb111", %"file Jacobi.f90, line 304, bb109"
  %"$redfold_left_temp_t156.1" = phi double [ %"$redfold_left_temp_t156.0", %"file Jacobi.f90, line 304, bb109" ], [ %r474, %"file Jacobi.f90, line 304, bb111" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r480 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r481 = icmp ult i32 %r480, 32, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r481, label %"file Jacobi.f90, line 304, bb114", label %"file Jacobi.f90, line 304, bb115", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb114":               ; preds = %"file Jacobi.f90, line 304, bb112"
  %r484 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast837 = sext i32 %r484 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r485 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast837, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r486 = getelementptr double, double* %r485, i64 33, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r487 = addrspacecast double* %r486 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r488 = load volatile double, double addrspace(3)* %r487, align 8, !dbg !167, !CrayMri !195 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r491 = fcmp ogt double %"$redfold_left_temp_t156.1", %r488, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r492 = select i1 %r491, double %"$redfold_left_temp_t156.1", double %r488, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r494 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast838 = sext i32 %r494 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r495 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast838, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r496 = getelementptr double, double* %r495, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r497 = addrspacecast double* %r496 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r492, double addrspace(3)* %r497, align 8, !dbg !167, !CrayMri !196 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb115", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb115":               ; preds = %"file Jacobi.f90, line 304, bb114", %"file Jacobi.f90, line 304, bb112"
  %"$redfold_left_temp_t156.2" = phi double [ %"$redfold_left_temp_t156.1", %"file Jacobi.f90, line 304, bb112" ], [ %r492, %"file Jacobi.f90, line 304, bb114" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r498 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r499 = icmp ult i32 %r498, 16, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r499, label %"file Jacobi.f90, line 304, bb117", label %"file Jacobi.f90, line 304, bb118", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb117":               ; preds = %"file Jacobi.f90, line 304, bb115"
  %r502 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast839 = sext i32 %r502 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r503 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast839, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r504 = getelementptr double, double* %r503, i64 17, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r505 = addrspacecast double* %r504 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r506 = load volatile double, double addrspace(3)* %r505, align 8, !dbg !167, !CrayMri !197 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r509 = fcmp ogt double %"$redfold_left_temp_t156.2", %r506, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r510 = select i1 %r509, double %"$redfold_left_temp_t156.2", double %r506, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r512 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast840 = sext i32 %r512 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r513 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast840, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r514 = getelementptr double, double* %r513, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r515 = addrspacecast double* %r514 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r510, double addrspace(3)* %r515, align 8, !dbg !167, !CrayMri !198 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb118", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb118":               ; preds = %"file Jacobi.f90, line 304, bb117", %"file Jacobi.f90, line 304, bb115"
  %"$redfold_left_temp_t156.3" = phi double [ %"$redfold_left_temp_t156.2", %"file Jacobi.f90, line 304, bb115" ], [ %r510, %"file Jacobi.f90, line 304, bb117" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r516 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r517 = icmp ult i32 %r516, 8, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r517, label %"file Jacobi.f90, line 304, bb120", label %"file Jacobi.f90, line 304, bb121", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb120":               ; preds = %"file Jacobi.f90, line 304, bb118"
  %r520 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast841 = sext i32 %r520 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r521 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast841, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r522 = getelementptr double, double* %r521, i64 9, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r523 = addrspacecast double* %r522 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r524 = load volatile double, double addrspace(3)* %r523, align 8, !dbg !167, !CrayMri !199 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r527 = fcmp ogt double %"$redfold_left_temp_t156.3", %r524, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r528 = select i1 %r527, double %"$redfold_left_temp_t156.3", double %r524, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r530 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast842 = sext i32 %r530 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r531 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast842, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r532 = getelementptr double, double* %r531, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r533 = addrspacecast double* %r532 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r528, double addrspace(3)* %r533, align 8, !dbg !167, !CrayMri !200 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb121", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb121":               ; preds = %"file Jacobi.f90, line 304, bb120", %"file Jacobi.f90, line 304, bb118"
  %"$redfold_left_temp_t156.4" = phi double [ %"$redfold_left_temp_t156.3", %"file Jacobi.f90, line 304, bb118" ], [ %r528, %"file Jacobi.f90, line 304, bb120" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r534 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r535 = icmp ult i32 %r534, 4, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r535, label %"file Jacobi.f90, line 304, bb123", label %"file Jacobi.f90, line 304, bb124", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb123":               ; preds = %"file Jacobi.f90, line 304, bb121"
  %r538 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast843 = sext i32 %r538 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r539 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast843, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r540 = getelementptr double, double* %r539, i64 5, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r541 = addrspacecast double* %r540 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r542 = load volatile double, double addrspace(3)* %r541, align 8, !dbg !167, !CrayMri !201 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r545 = fcmp ogt double %"$redfold_left_temp_t156.4", %r542, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r546 = select i1 %r545, double %"$redfold_left_temp_t156.4", double %r542, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r548 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast844 = sext i32 %r548 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r549 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast844, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r550 = getelementptr double, double* %r549, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r551 = addrspacecast double* %r550 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r546, double addrspace(3)* %r551, align 8, !dbg !167, !CrayMri !202 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb124", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb124":               ; preds = %"file Jacobi.f90, line 304, bb123", %"file Jacobi.f90, line 304, bb121"
  %"$redfold_left_temp_t156.5" = phi double [ %"$redfold_left_temp_t156.4", %"file Jacobi.f90, line 304, bb121" ], [ %r546, %"file Jacobi.f90, line 304, bb123" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r552 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r553 = icmp ult i32 %r552, 2, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r553, label %"file Jacobi.f90, line 304, bb126", label %"file Jacobi.f90, line 304, bb127", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb126":               ; preds = %"file Jacobi.f90, line 304, bb124"
  %r556 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast845 = sext i32 %r556 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r557 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast845, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r558 = getelementptr double, double* %r557, i64 3, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r559 = addrspacecast double* %r558 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r560 = load volatile double, double addrspace(3)* %r559, align 8, !dbg !167, !CrayMri !203 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r563 = fcmp ogt double %"$redfold_left_temp_t156.5", %r560, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r564 = select i1 %r563, double %"$redfold_left_temp_t156.5", double %r560, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r566 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast846 = sext i32 %r566 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r567 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast846, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r568 = getelementptr double, double* %r567, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r569 = addrspacecast double* %r568 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r564, double addrspace(3)* %r569, align 8, !dbg !167, !CrayMri !204 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb127", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb127":               ; preds = %"file Jacobi.f90, line 304, bb126", %"file Jacobi.f90, line 304, bb124"
  %"$redfold_left_temp_t156.6" = phi double [ %"$redfold_left_temp_t156.5", %"file Jacobi.f90, line 304, bb124" ], [ %r564, %"file Jacobi.f90, line 304, bb126" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r570 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r571.not = icmp eq i32 %r570, 0, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r571.not, label %"file Jacobi.f90, line 304, bb129", label %"file Jacobi.f90, line 304, bb130", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb129":               ; preds = %"file Jacobi.f90, line 304, bb127"
  %r574 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast847 = sext i32 %r574 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r575 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast847, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r576 = getelementptr double, double* %r575, i64 2, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r577 = addrspacecast double* %r576 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r578 = load volatile double, double addrspace(3)* %r577, align 8, !dbg !167, !CrayMri !205 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r581 = fcmp ogt double %"$redfold_left_temp_t156.6", %r578, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r582 = select i1 %r581, double %"$redfold_left_temp_t156.6", double %r578, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r584 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast848 = sext i32 %r584 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r585 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast848, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r586 = getelementptr double, double* %r585, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r587 = addrspacecast double* %r586 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r582, double addrspace(3)* %r587, align 8, !dbg !167, !CrayMri !206 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb130", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb130":               ; preds = %"file Jacobi.f90, line 304, bb129", %"file Jacobi.f90, line 304, bb127"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r588 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !167, !CrayMri !207 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r588, double addrspace(5)* %"$redfinal_t158", align 8, !dbg !167, !CrayMri !208 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r589 = load volatile double, double addrspace(5)* %"$redfinal_t158", align 8, !dbg !167, !CrayMri !209 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r591.not = icmp eq i32 %"$$pre_195_t168.0", 0, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r591.not, label %"file Jacobi.f90, line 304, bb275", label %"file Jacobi.f90, line 304, bb136.critedge", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb275":               ; preds = %"file Jacobi.f90, line 304, bb130"
  %r595 = load volatile double, double addrspace(5)* %"$redfinal_t158", align 8, !dbg !167, !CrayMri !210 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r597 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r598 = zext i32 %r597 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r599 = inttoptr i64 %"$$arg_ptr_reduc_val_t114_t27215" to double*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r600 = getelementptr double, double* %r599, i64 %r598, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r601 = addrspacecast double* %r600 to double addrspace(1)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r595, double addrspace(1)* %r601, align 8, !dbg !167, !CrayMri !211 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  fence syncscope("agent") seq_cst, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r604 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r605 = trunc i64 %r604 to i32, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r606 = sub i32 1, %r605, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r607 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r608 = icmp eq i32 %r607, 0, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r611 = select i1 %r608, i32 %r606, i32 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r613 = inttoptr i64 %"$$arg_ptr_reduc_ctl_t110_t27014" to i32 addrspace(1)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r614 = addrspacecast i32 addrspace(1)* %r613 to i32*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %10 = atomicrmw add i32* %r614, i32 %r611 syncscope("agent") seq_cst, align 4, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r618 = add i32 %10, %r611, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store i32 %r618, i32 addrspace(3)* @reduc_share_ctl_c6_AMD_LDS_6, align 32, !dbg !167, !CrayMri !212 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb136", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb136.critedge":      ; preds = %"file Jacobi.f90, line 304, bb130"
  fence syncscope("agent") seq_cst, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb136", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb136":               ; preds = %"file Jacobi.f90, line 304, bb136.critedge", %"file Jacobi.f90, line 304, bb275"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r619 = load volatile i32, i32 addrspace(3)* @reduc_share_ctl_c6_AMD_LDS_6, align 32, !dbg !167, !CrayMri !213 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r620.not = icmp eq i32 %r619, 0, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r620.not, label %"file Jacobi.f90, line 304, bb138", label %"file Jacobi.f90, line 304, bb302", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb138":               ; preds = %"file Jacobi.f90, line 304, bb136"
  %r625 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r626 = trunc i64 %r625 to i32, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r629.not = icmp ult i32 %"$$pre_195_t168.0", %r626, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r629.not, label %"file Jacobi.f90, line 304, bb142", label %"file Jacobi.f90, line 304, bb147", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb142":               ; preds = %"file Jacobi.f90, line 304, bb138"
  %r633 = and i64 %r625, 4294967295, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r634 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r635 = trunc i64 %r634 to i32, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821": ; preds = %"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821", %"file Jacobi.f90, line 304, bb142"
  %"$$reduc_pvt_t113_t271.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 304, bb142" ], [ %r645, %"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %"$$induc_p68_t133.0" = phi i32 [ %"$$pre_195_t168.0", %"file Jacobi.f90, line 304, bb142" ], [ %r648, %"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r639 = sext i32 %"$$induc_p68_t133.0" to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r640 = inttoptr i64 %"$$arg_ptr_reduc_val_t114_t27215" to double*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r641 = getelementptr double, double* %r640, i64 %r639, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r642 = addrspacecast double* %r641 to double addrspace(1)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r643 = load double, double addrspace(1)* %r642, align 8, !dbg !167, !CrayMri !214, !looptrips !19, !autoprefetch !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r644 = fcmp ogt double %"$$reduc_pvt_t113_t271.0", %r643, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r645 = select i1 %r644, double %"$$reduc_pvt_t113_t271.0", double %r643, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r648 = add i32 %r635, %"$$induc_p68_t133.0", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r650 = sext i32 %r648 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r652.not = icmp sgt i64 %r633, %r650, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r652.not, label %"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821", label %"file Jacobi.f90, line 304, bb147", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb147":               ; preds = %"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821", %"file Jacobi.f90, line 304, bb138"
  %"$$reduc_pvt_t113_t271.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 304, bb138" ], [ %r645, %"file Jacobi.f90, line 304, in inner loop at depth 0, bb146821" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r656 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast849 = sext i32 %r656 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r657 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast849, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r658 = getelementptr double, double* %r657, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r659 = addrspacecast double* %r658 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %"$$reduc_pvt_t113_t271.1", double addrspace(3)* %r659, align 8, !dbg !167, !CrayMri !215 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r660 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast850 = sext i32 %r660 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r661 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast850, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r662 = getelementptr double, double* %r661, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r663 = addrspacecast double* %r662 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r664 = load volatile double, double addrspace(3)* %r663, align 8, !dbg !167, !CrayMri !216 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r665 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r666 = icmp ult i32 %r665, 128, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r666, label %"file Jacobi.f90, line 304, bb149", label %"file Jacobi.f90, line 304, bb150", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb149":               ; preds = %"file Jacobi.f90, line 304, bb147"
  %r669 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast851 = sext i32 %r669 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r670 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast851, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r671 = getelementptr double, double* %r670, i64 129, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r672 = addrspacecast double* %r671 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r673 = load volatile double, double addrspace(3)* %r672, align 8, !dbg !167, !CrayMri !217 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r676 = fcmp ogt double %r664, %r673, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r677 = select i1 %r676, double %r664, double %r673, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r679 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast852 = sext i32 %r679 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r680 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast852, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r681 = getelementptr double, double* %r680, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r682 = addrspacecast double* %r681 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r677, double addrspace(3)* %r682, align 8, !dbg !167, !CrayMri !218 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb150", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb150":               ; preds = %"file Jacobi.f90, line 304, bb149", %"file Jacobi.f90, line 304, bb147"
  %"$redfold_left_temp_t159.0" = phi double [ %r664, %"file Jacobi.f90, line 304, bb147" ], [ %r677, %"file Jacobi.f90, line 304, bb149" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r683 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r684 = icmp ult i32 %r683, 64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r684, label %"file Jacobi.f90, line 304, bb152", label %"file Jacobi.f90, line 304, bb153", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb152":               ; preds = %"file Jacobi.f90, line 304, bb150"
  %r687 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast853 = sext i32 %r687 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r688 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast853, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r689 = getelementptr double, double* %r688, i64 65, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r690 = addrspacecast double* %r689 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r691 = load volatile double, double addrspace(3)* %r690, align 8, !dbg !167, !CrayMri !219 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r694 = fcmp ogt double %"$redfold_left_temp_t159.0", %r691, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r695 = select i1 %r694, double %"$redfold_left_temp_t159.0", double %r691, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r697 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast854 = sext i32 %r697 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r698 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast854, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r699 = getelementptr double, double* %r698, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r700 = addrspacecast double* %r699 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r695, double addrspace(3)* %r700, align 8, !dbg !167, !CrayMri !220 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb153", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb153":               ; preds = %"file Jacobi.f90, line 304, bb152", %"file Jacobi.f90, line 304, bb150"
  %"$redfold_left_temp_t159.1" = phi double [ %"$redfold_left_temp_t159.0", %"file Jacobi.f90, line 304, bb150" ], [ %r695, %"file Jacobi.f90, line 304, bb152" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r701 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r702 = icmp ult i32 %r701, 32, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r702, label %"file Jacobi.f90, line 304, bb155", label %"file Jacobi.f90, line 304, bb156", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb155":               ; preds = %"file Jacobi.f90, line 304, bb153"
  %r705 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast855 = sext i32 %r705 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r706 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast855, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r707 = getelementptr double, double* %r706, i64 33, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r708 = addrspacecast double* %r707 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r709 = load volatile double, double addrspace(3)* %r708, align 8, !dbg !167, !CrayMri !221 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r712 = fcmp ogt double %"$redfold_left_temp_t159.1", %r709, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r713 = select i1 %r712, double %"$redfold_left_temp_t159.1", double %r709, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r715 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast856 = sext i32 %r715 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r716 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast856, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r717 = getelementptr double, double* %r716, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r718 = addrspacecast double* %r717 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r713, double addrspace(3)* %r718, align 8, !dbg !167, !CrayMri !222 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb156", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb156":               ; preds = %"file Jacobi.f90, line 304, bb155", %"file Jacobi.f90, line 304, bb153"
  %"$redfold_left_temp_t159.2" = phi double [ %"$redfold_left_temp_t159.1", %"file Jacobi.f90, line 304, bb153" ], [ %r713, %"file Jacobi.f90, line 304, bb155" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r719 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r720 = icmp ult i32 %r719, 16, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r720, label %"file Jacobi.f90, line 304, bb158", label %"file Jacobi.f90, line 304, bb159", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb158":               ; preds = %"file Jacobi.f90, line 304, bb156"
  %r723 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast857 = sext i32 %r723 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r724 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast857, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r725 = getelementptr double, double* %r724, i64 17, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r726 = addrspacecast double* %r725 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r727 = load volatile double, double addrspace(3)* %r726, align 8, !dbg !167, !CrayMri !223 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r730 = fcmp ogt double %"$redfold_left_temp_t159.2", %r727, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r731 = select i1 %r730, double %"$redfold_left_temp_t159.2", double %r727, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r733 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast858 = sext i32 %r733 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r734 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast858, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r735 = getelementptr double, double* %r734, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r736 = addrspacecast double* %r735 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r731, double addrspace(3)* %r736, align 8, !dbg !167, !CrayMri !224 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb159", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb159":               ; preds = %"file Jacobi.f90, line 304, bb158", %"file Jacobi.f90, line 304, bb156"
  %"$redfold_left_temp_t159.3" = phi double [ %"$redfold_left_temp_t159.2", %"file Jacobi.f90, line 304, bb156" ], [ %r731, %"file Jacobi.f90, line 304, bb158" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r737 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r738 = icmp ult i32 %r737, 8, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r738, label %"file Jacobi.f90, line 304, bb161", label %"file Jacobi.f90, line 304, bb162", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb161":               ; preds = %"file Jacobi.f90, line 304, bb159"
  %r741 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast859 = sext i32 %r741 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r742 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast859, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r743 = getelementptr double, double* %r742, i64 9, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r744 = addrspacecast double* %r743 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r745 = load volatile double, double addrspace(3)* %r744, align 8, !dbg !167, !CrayMri !225 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r748 = fcmp ogt double %"$redfold_left_temp_t159.3", %r745, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r749 = select i1 %r748, double %"$redfold_left_temp_t159.3", double %r745, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r751 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast860 = sext i32 %r751 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r752 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast860, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r753 = getelementptr double, double* %r752, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r754 = addrspacecast double* %r753 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r749, double addrspace(3)* %r754, align 8, !dbg !167, !CrayMri !226 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb162", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb162":               ; preds = %"file Jacobi.f90, line 304, bb161", %"file Jacobi.f90, line 304, bb159"
  %"$redfold_left_temp_t159.4" = phi double [ %"$redfold_left_temp_t159.3", %"file Jacobi.f90, line 304, bb159" ], [ %r749, %"file Jacobi.f90, line 304, bb161" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r755 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r756 = icmp ult i32 %r755, 4, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r756, label %"file Jacobi.f90, line 304, bb164", label %"file Jacobi.f90, line 304, bb165", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb164":               ; preds = %"file Jacobi.f90, line 304, bb162"
  %r759 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast861 = sext i32 %r759 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r760 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast861, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r761 = getelementptr double, double* %r760, i64 5, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r762 = addrspacecast double* %r761 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r763 = load volatile double, double addrspace(3)* %r762, align 8, !dbg !167, !CrayMri !227 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r766 = fcmp ogt double %"$redfold_left_temp_t159.4", %r763, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r767 = select i1 %r766, double %"$redfold_left_temp_t159.4", double %r763, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r769 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast862 = sext i32 %r769 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r770 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast862, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r771 = getelementptr double, double* %r770, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r772 = addrspacecast double* %r771 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r767, double addrspace(3)* %r772, align 8, !dbg !167, !CrayMri !228 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb165", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb165":               ; preds = %"file Jacobi.f90, line 304, bb164", %"file Jacobi.f90, line 304, bb162"
  %"$redfold_left_temp_t159.5" = phi double [ %"$redfold_left_temp_t159.4", %"file Jacobi.f90, line 304, bb162" ], [ %r767, %"file Jacobi.f90, line 304, bb164" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r773 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r774 = icmp ult i32 %r773, 2, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r774, label %"file Jacobi.f90, line 304, bb167", label %"file Jacobi.f90, line 304, bb168", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb167":               ; preds = %"file Jacobi.f90, line 304, bb165"
  %r777 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast863 = sext i32 %r777 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r778 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast863, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r779 = getelementptr double, double* %r778, i64 3, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r780 = addrspacecast double* %r779 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r781 = load volatile double, double addrspace(3)* %r780, align 8, !dbg !167, !CrayMri !229 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r784 = fcmp ogt double %"$redfold_left_temp_t159.5", %r781, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r785 = select i1 %r784, double %"$redfold_left_temp_t159.5", double %r781, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r787 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast864 = sext i32 %r787 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r788 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast864, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r789 = getelementptr double, double* %r788, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r790 = addrspacecast double* %r789 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r785, double addrspace(3)* %r790, align 8, !dbg !167, !CrayMri !230 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb168", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb168":               ; preds = %"file Jacobi.f90, line 304, bb167", %"file Jacobi.f90, line 304, bb165"
  %"$redfold_left_temp_t159.6" = phi double [ %"$redfold_left_temp_t159.5", %"file Jacobi.f90, line 304, bb165" ], [ %r785, %"file Jacobi.f90, line 304, bb167" ], !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r791 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r792.not = icmp eq i32 %r791, 0, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r792.not, label %"file Jacobi.f90, line 304, bb170", label %"file Jacobi.f90, line 304, bb280", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb170":               ; preds = %"file Jacobi.f90, line 304, bb168"
  %r795 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast865 = sext i32 %r795 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r796 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast865, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r797 = getelementptr double, double* %r796, i64 2, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r798 = addrspacecast double* %r797 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r799 = load volatile double, double addrspace(3)* %r798, align 8, !dbg !167, !CrayMri !231 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r802 = fcmp ogt double %"$redfold_left_temp_t159.6", %r799, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r803 = select i1 %r802, double %"$redfold_left_temp_t159.6", double %r799, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r805 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %cic-gep-idxcast866 = sext i32 %r805 to i64, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r806 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 %cic-gep-idxcast866, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r807 = getelementptr double, double* %r806, i64 1, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r808 = addrspacecast double* %r807 to double addrspace(3)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r803, double addrspace(3)* %r808, align 8, !dbg !167, !CrayMri !232 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb280", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb280":               ; preds = %"file Jacobi.f90, line 304, bb170", %"file Jacobi.f90, line 304, bb168"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r809 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_7" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !167, !CrayMri !233 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r809, double addrspace(5)* %"$redfinal_t161", align 8, !dbg !167, !CrayMri !234 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  tail call void @llvm.amdgcn.s.barrier(), !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r810 = load volatile double, double addrspace(5)* %"$redfinal_t161", align 8, !dbg !167, !CrayMri !235 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br i1 %r591.not, label %"file Jacobi.f90, line 304, bb283", label %"file Jacobi.f90, line 304, bb302", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb283":               ; preds = %"file Jacobi.f90, line 304, bb280"
  %r813 = load volatile double, double addrspace(5)* %"$redfinal_t161", align 8, !dbg !167, !CrayMri !236 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r815 = inttoptr i64 %"$$arg_ptr_acc_residual_t62_t26610" to double addrspace(1)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r816 = load double, double addrspace(1)* %r815, align 8, !dbg !167, !CrayMri !237 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r817 = fcmp ogt double %r813, %r816, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r818 = select i1 %r817, double %r813, double %r816, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  %r820 = inttoptr i64 %"$$arg_ptr_acc_residual_t62_t26610" to double addrspace(1)*, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  store double %r818, double addrspace(1)* %r820, align 8, !dbg !167, !CrayMri !238 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
  br label %"file Jacobi.f90, line 304, bb302", !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304

"file Jacobi.f90, line 304, bb302":               ; preds = %"file Jacobi.f90, line 304, bb283", %"file Jacobi.f90, line 304, bb280", %"file Jacobi.f90, line 304, bb136"
  ret void, !dbg !167 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:304
}

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L336_29"(i64 %"$$arg_dvmbr_p21_t2451", i64 %"$$arg_dvmbr_p22_t2462", i64 %"$$arg_dvmbr_p24_t2473", i64 %"$$arg_dvmbr_p25_t2484", i64 %"$$arg_dvmbr_p27_t2495", i64 %"$$arg_dvmbr_p28_t2506", i64 %"$$arg_dvmbr_p30_t2517", i64 %"$$arg_dvmbr_p32_t2528", i64 %"$$arg_dvmbr_p33_t2539", i64 %"$$arg_ptr_acc_ncells_t56_t25410", i64 %"$$arg_ptr_acc_t_t58_t25511", i64 %"$$arg_ptr_acc_t_new_t60_t25612") #0 !dbg !239 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb233":
  %r15 = sub i64 2, %"$$arg_dvmbr_p22_t2462", !dbg !240 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337
  %r16 = mul i64 %"$$arg_dvmbr_p21_t2451", %r15, !dbg !240 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337
  %r17 = inttoptr i64 %"$$arg_ptr_acc_ncells_t56_t25410" to i32*, !dbg !240 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337
  %r18 = getelementptr i32, i32* %r17, i64 %r16, !dbg !240 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337
  %r19 = addrspacecast i32* %r18 to i32 addrspace(1)*, !dbg !240 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337
  %r20 = load i32, i32 addrspace(1)* %r19, align 4, !dbg !240, !CrayMri !131 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337
  %r22 = icmp sgt i32 %r20, 0, !dbg !240 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337
  br i1 %r22, label %"file Jacobi.f90, line 337, bb13", label %"file Jacobi.f90, line 344, bb300", !dbg !240 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:337

"file Jacobi.f90, line 337, bb13":                ; preds = %", bb233"
  %r28 = sub i64 1, %"$$arg_dvmbr_p22_t2462", !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r29 = mul i64 %"$$arg_dvmbr_p21_t2451", %r28, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r30 = inttoptr i64 %"$$arg_ptr_acc_ncells_t56_t25410" to i32*, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r31 = getelementptr i32, i32* %r30, i64 %r29, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r32 = addrspacecast i32* %r31 to i32 addrspace(1)*, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r33 = load i32, i32 addrspace(1)* %r32, align 4, !dbg !241, !CrayMri !133 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r35 = icmp sgt i32 %r33, 0, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  br i1 %r35, label %"file Jacobi.f90, line 338, bb17", label %"file Jacobi.f90, line 344, bb300", !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338

"file Jacobi.f90, line 338, bb17":                ; preds = %"file Jacobi.f90, line 337, bb13"
  %r38 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r39 = trunc i64 %r38 to i32, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r41 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r42 = trunc i64 %r41 to i32, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r43 = mul i32 %r39, %r42, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r45 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r46 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r47 = mul i32 %r45, %r39, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r48 = add i32 %r46, %r47, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r52 = mul i32 %r20, %r33, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r55.not = icmp slt i32 %r48, %r52, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  br i1 %r55.not, label %"file Jacobi.f90, line 339, bb19", label %"file Jacobi.f90, line 344, bb300", !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338

"file Jacobi.f90, line 339, bb19":                ; preds = %"file Jacobi.f90, line 338, bb17"
  %r64 = sub i64 1, %"$$arg_dvmbr_p28_t2506", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r65 = mul i64 %"$$arg_dvmbr_p27_t2495", %r64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r68 = sext i32 %r48 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r70 = sub i64 %r68, %"$$arg_dvmbr_p25_t2484", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r72 = mul i64 %"$$arg_dvmbr_p24_t2473", %r70, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r73 = add i64 %r65, %r72, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r76 = sub i64 2, %"$$arg_dvmbr_p25_t2484", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r78 = mul i64 %"$$arg_dvmbr_p24_t2473", %r76, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r79 = add i64 %r78, %r65, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r82 = sub i64 1, %"$$arg_dvmbr_p25_t2484", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r83 = mul i64 %"$$arg_dvmbr_p24_t2473", %r82, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r86 = sub i64 2, %"$$arg_dvmbr_p28_t2506", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r88 = mul i64 %"$$arg_dvmbr_p27_t2495", %r86, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r89 = add i64 %r83, %r88, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %0 = mul i64 %"$$arg_dvmbr_p27_t2495", %"$$arg_dvmbr_p28_t2506", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r95 = sub i64 %r83, %0, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r98 = sub i64 1, %"$$arg_dvmbr_p33_t2539", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r101 = mul i64 %"$$arg_dvmbr_p32_t2528", %r98, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r102 = sub i64 %r101, %"$$arg_dvmbr_p30_t2517", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r104 = sext i32 %r33 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r106 = mul i64 %"$$arg_dvmbr_p24_t2473", %r104, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r109 = sext i32 %r43 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r110 = mul i64 %"$$arg_dvmbr_p24_t2473", %r109, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r48.neg = sub i32 0, %r48
  %r116 = add i32 %r52, -1, !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  %r113 = add i32 %r116, %r48.neg, !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  %r117 = add i32 %r113, %r43, !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  %r119 = sdiv i32 %r117, %r43, !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  %r122 = icmp sgt i32 %r119, 3, !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  br i1 %r122, label %"file Jacobi.f90, line 338, bb21", label %"file Jacobi.f90, line 338, bb25", !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342

"file Jacobi.f90, line 338, bb21":                ; preds = %"file Jacobi.f90, line 339, bb19"
  %r129 = ashr i32 %r119, 1, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r130 = lshr i32 %r129, 30, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r131 = add i32 %r119, %r130, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r132 = and i32 %r131, -4, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r133.neg = sub i32 %r132, %r119, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r136 = mul i32 %r43, %r133.neg, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r137 = add i32 %r52, %r136, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r139 = shl i32 %r43, 2, !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  %r143 = mul i32 %r43, 3, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r145 = shl i32 %r43, 1, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  br label %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339

"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624": ; preds = %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624", %"file Jacobi.f90, line 338, bb21"
  %"$$induc_p49_t143.0" = phi i32 [ %r48, %"file Jacobi.f90, line 338, bb21" ], [ %r508, %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624" ], !dbg !244 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t146.0" = phi i64 [ %r73, %"file Jacobi.f90, line 338, bb21" ], [ %r502, %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624" ], !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r148 = sdiv i32 %"$$induc_p49_t143.0", %r33, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %1 = mul i32 %r33, %r148, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r154 = sub i32 %"$$induc_p49_t143.0", %1, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r155 = sext i32 %r154 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r158 = mul i64 %"$$arg_dvmbr_p24_t2473", %r155, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %2 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r163 = mul i32 %2, %r148, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r168 = sext i32 %r148 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r169 = mul i64 %r106, %r168, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r170 = sub i64 %"$$sr_e5_t146.0", %r169, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r171 = mul i64 %r170, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r173 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r171, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r175 = inttoptr i64 %r173 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast = sext i32 %r163 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r176 = getelementptr double, double* %r175, i64 %cic-gep-idxcast, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r177 = addrspacecast double* %r176 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r178 = load double, double addrspace(1)* %r177, align 8, !dbg !242, !CrayMri !137, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r182 = add i64 %r79, %r158, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r183 = mul i64 %r182, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r184 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r183, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r186 = inttoptr i64 %r184 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast627 = sext i32 %r163 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r187 = getelementptr double, double* %r186, i64 %cic-gep-idxcast627, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r188 = addrspacecast double* %r187 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r189 = load double, double addrspace(1)* %r188, align 8, !dbg !242, !CrayMri !138, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r190 = fadd double %r178, %r189, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r194 = add i64 %r89, %r158, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r195 = mul i64 %r194, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r196 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r195, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r198 = inttoptr i64 %r196 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast628 = sext i32 %r163 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r199 = getelementptr double, double* %r198, i64 %cic-gep-idxcast628, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r200 = addrspacecast double* %r199 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r201 = load double, double addrspace(1)* %r200, align 8, !dbg !242, !CrayMri !139, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r205 = add i64 %r95, %r158, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r206 = mul i64 %r205, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r207 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r206, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r209 = inttoptr i64 %r207 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast629 = sext i32 %r163 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r210 = getelementptr double, double* %r209, i64 %cic-gep-idxcast629, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r211 = addrspacecast double* %r210 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r212 = load double, double addrspace(1)* %r211, align 8, !dbg !242, !CrayMri !140, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r213 = fadd double %r201, %r212, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r214 = fadd double %r190, %r213, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r215 = fmul double %r214, 2.500000e-01, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r219 = add i64 %r102, %r155, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r220 = mul i64 %r219, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r221 = add i64 %"$$arg_ptr_acc_t_new_t60_t25612", %r220, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r224 = sext i32 %r148 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r225 = mul i64 %"$$arg_dvmbr_p32_t2528", %r224, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r226 = inttoptr i64 %r221 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r227 = getelementptr double, double* %r226, i64 %r225, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r228 = getelementptr double, double* %r227, i64 1, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r229 = addrspacecast double* %r228 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  store double %r215, double addrspace(1)* %r229, align 8, !dbg !242, !CrayMri !141, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r232 = add i64 %r110, %"$$sr_e5_t146.0", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r235 = add i32 %r43, %"$$induc_p49_t143.0", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r238 = sdiv i32 %r235, %r33, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %3 = mul i32 %r33, %r238, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r244 = sub i32 %r235, %3, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r245 = sext i32 %r244 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r248 = mul i64 %"$$arg_dvmbr_p24_t2473", %r245, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %4 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r253 = mul i32 %4, %r238, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r258 = sext i32 %r238 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r259 = mul i64 %r106, %r258, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r260 = sub i64 %r232, %r259, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r261 = mul i64 %r260, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r263 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r261, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r265 = inttoptr i64 %r263 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast630 = sext i32 %r253 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r266 = getelementptr double, double* %r265, i64 %cic-gep-idxcast630, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r267 = addrspacecast double* %r266 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r268 = load double, double addrspace(1)* %r267, align 8, !dbg !242, !CrayMri !142, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r272 = add i64 %r79, %r248, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r273 = mul i64 %r272, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r274 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r273, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r276 = inttoptr i64 %r274 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast631 = sext i32 %r253 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r277 = getelementptr double, double* %r276, i64 %cic-gep-idxcast631, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r278 = addrspacecast double* %r277 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r279 = load double, double addrspace(1)* %r278, align 8, !dbg !242, !CrayMri !143, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r280 = fadd double %r268, %r279, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r284 = add i64 %r89, %r248, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r285 = mul i64 %r284, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r286 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r285, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r288 = inttoptr i64 %r286 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast632 = sext i32 %r253 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r289 = getelementptr double, double* %r288, i64 %cic-gep-idxcast632, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r290 = addrspacecast double* %r289 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r291 = load double, double addrspace(1)* %r290, align 8, !dbg !242, !CrayMri !144, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r295 = add i64 %r95, %r248, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r296 = mul i64 %r295, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r297 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r296, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r299 = inttoptr i64 %r297 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast633 = sext i32 %r253 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r300 = getelementptr double, double* %r299, i64 %cic-gep-idxcast633, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r301 = addrspacecast double* %r300 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r302 = load double, double addrspace(1)* %r301, align 8, !dbg !242, !CrayMri !145, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r303 = fadd double %r291, %r302, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r304 = fadd double %r280, %r303, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r305 = fmul double %r304, 2.500000e-01, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r309 = add i64 %r102, %r245, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r310 = mul i64 %r309, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r311 = add i64 %"$$arg_ptr_acc_t_new_t60_t25612", %r310, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r314 = sext i32 %r238 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r315 = mul i64 %"$$arg_dvmbr_p32_t2528", %r314, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r316 = inttoptr i64 %r311 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r317 = getelementptr double, double* %r316, i64 %r315, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r318 = getelementptr double, double* %r317, i64 1, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r319 = addrspacecast double* %r318 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  store double %r305, double addrspace(1)* %r319, align 8, !dbg !242, !CrayMri !146, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r322 = add i64 %r110, %r232, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r325 = add i32 %r145, %"$$induc_p49_t143.0", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r328 = sdiv i32 %r325, %r33, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %5 = mul i32 %r33, %r328, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r334 = sub i32 %r325, %5, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r335 = sext i32 %r334 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r338 = mul i64 %"$$arg_dvmbr_p24_t2473", %r335, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %6 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r343 = mul i32 %6, %r328, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r348 = sext i32 %r328 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r349 = mul i64 %r106, %r348, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r350 = sub i64 %r322, %r349, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r351 = mul i64 %r350, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r353 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r351, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r355 = inttoptr i64 %r353 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast634 = sext i32 %r343 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r356 = getelementptr double, double* %r355, i64 %cic-gep-idxcast634, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r357 = addrspacecast double* %r356 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r358 = load double, double addrspace(1)* %r357, align 8, !dbg !242, !CrayMri !147, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r362 = add i64 %r79, %r338, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r363 = mul i64 %r362, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r364 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r363, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r366 = inttoptr i64 %r364 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast635 = sext i32 %r343 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r367 = getelementptr double, double* %r366, i64 %cic-gep-idxcast635, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r368 = addrspacecast double* %r367 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r369 = load double, double addrspace(1)* %r368, align 8, !dbg !242, !CrayMri !148, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r370 = fadd double %r358, %r369, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r374 = add i64 %r89, %r338, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r375 = mul i64 %r374, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r376 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r375, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r378 = inttoptr i64 %r376 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast636 = sext i32 %r343 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r379 = getelementptr double, double* %r378, i64 %cic-gep-idxcast636, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r380 = addrspacecast double* %r379 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r381 = load double, double addrspace(1)* %r380, align 8, !dbg !242, !CrayMri !149, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r385 = add i64 %r95, %r338, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r386 = mul i64 %r385, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r387 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r386, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r389 = inttoptr i64 %r387 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast637 = sext i32 %r343 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r390 = getelementptr double, double* %r389, i64 %cic-gep-idxcast637, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r391 = addrspacecast double* %r390 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r392 = load double, double addrspace(1)* %r391, align 8, !dbg !242, !CrayMri !150, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r393 = fadd double %r381, %r392, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r394 = fadd double %r370, %r393, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r395 = fmul double %r394, 2.500000e-01, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r399 = add i64 %r102, %r335, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r400 = mul i64 %r399, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r401 = add i64 %"$$arg_ptr_acc_t_new_t60_t25612", %r400, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r404 = sext i32 %r328 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r405 = mul i64 %"$$arg_dvmbr_p32_t2528", %r404, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r406 = inttoptr i64 %r401 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r407 = getelementptr double, double* %r406, i64 %r405, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r408 = getelementptr double, double* %r407, i64 1, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r409 = addrspacecast double* %r408 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  store double %r395, double addrspace(1)* %r409, align 8, !dbg !242, !CrayMri !151, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r412 = add i64 %r110, %r322, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r415 = add i32 %r143, %"$$induc_p49_t143.0", !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %r418 = sdiv i32 %r415, %r33, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %7 = mul i32 %r33, %r418, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r424 = sub i32 %r415, %7, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r425 = sext i32 %r424 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r428 = mul i64 %"$$arg_dvmbr_p24_t2473", %r425, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %8 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r433 = mul i32 %8, %r418, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r438 = sext i32 %r418 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r439 = mul i64 %r106, %r438, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r440 = sub i64 %r412, %r439, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r441 = mul i64 %r440, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r443 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r441, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r445 = inttoptr i64 %r443 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast638 = sext i32 %r433 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r446 = getelementptr double, double* %r445, i64 %cic-gep-idxcast638, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r447 = addrspacecast double* %r446 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r448 = load double, double addrspace(1)* %r447, align 8, !dbg !242, !CrayMri !152, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r452 = add i64 %r79, %r428, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r453 = mul i64 %r452, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r454 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r453, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r456 = inttoptr i64 %r454 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast639 = sext i32 %r433 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r457 = getelementptr double, double* %r456, i64 %cic-gep-idxcast639, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r458 = addrspacecast double* %r457 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r459 = load double, double addrspace(1)* %r458, align 8, !dbg !242, !CrayMri !153, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r460 = fadd double %r448, %r459, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r464 = add i64 %r89, %r428, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r465 = mul i64 %r464, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r466 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r465, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r468 = inttoptr i64 %r466 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast640 = sext i32 %r433 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r469 = getelementptr double, double* %r468, i64 %cic-gep-idxcast640, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r470 = addrspacecast double* %r469 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r471 = load double, double addrspace(1)* %r470, align 8, !dbg !242, !CrayMri !154, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r475 = add i64 %r95, %r428, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r476 = mul i64 %r475, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r477 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r476, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r479 = inttoptr i64 %r477 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast641 = sext i32 %r433 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r480 = getelementptr double, double* %r479, i64 %cic-gep-idxcast641, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r481 = addrspacecast double* %r480 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r482 = load double, double addrspace(1)* %r481, align 8, !dbg !242, !CrayMri !155, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r483 = fadd double %r471, %r482, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r484 = fadd double %r460, %r483, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r485 = fmul double %r484, 2.500000e-01, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r489 = add i64 %r102, %r425, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r490 = mul i64 %r489, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r491 = add i64 %"$$arg_ptr_acc_t_new_t60_t25612", %r490, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r494 = sext i32 %r418 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r495 = mul i64 %"$$arg_dvmbr_p32_t2528", %r494, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r496 = inttoptr i64 %r491 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r497 = getelementptr double, double* %r496, i64 %r495, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r498 = getelementptr double, double* %r497, i64 1, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r499 = addrspacecast double* %r498 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  store double %r485, double addrspace(1)* %r499, align 8, !dbg !242, !CrayMri !156, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r502 = add i64 %r110, %r412, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r508 = add i32 %r139, %"$$induc_p49_t143.0", !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  %r513.not = icmp slt i32 %r508, %r137, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  br i1 %r513.not, label %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624", label %"file Jacobi.f90, line 338, bb25", !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338

"file Jacobi.f90, line 338, bb25":                ; preds = %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624", %"file Jacobi.f90, line 339, bb19"
  %"$$induc_p49_t143.1" = phi i32 [ %r48, %"file Jacobi.f90, line 339, bb19" ], [ %r508, %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624" ], !dbg !244 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t146.1" = phi i64 [ %r73, %"file Jacobi.f90, line 339, bb19" ], [ %r502, %"file Jacobi.f90, line 339, in inner loop at depth 0, bb24624" ], !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r520.not = icmp slt i32 %"$$induc_p49_t143.1", %r52, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  br i1 %r520.not, label %"file Jacobi.f90, line 342, in inner loop at depth 0, bb30626", label %"file Jacobi.f90, line 344, bb300", !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338

"file Jacobi.f90, line 342, in inner loop at depth 0, bb30626": ; preds = %"file Jacobi.f90, line 338, bb25", %"file Jacobi.f90, line 342, in inner loop at depth 0, bb30626"
  %"$$induc_p49_t143.2" = phi i32 [ %r615, %"file Jacobi.f90, line 342, in inner loop at depth 0, bb30626" ], [ %"$$induc_p49_t143.1", %"file Jacobi.f90, line 338, bb25" ], !dbg !244 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t146.2" = phi i64 [ %r612, %"file Jacobi.f90, line 342, in inner loop at depth 0, bb30626" ], [ %"$$sr_e5_t146.1", %"file Jacobi.f90, line 338, bb25" ], !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r525 = sdiv i32 %"$$induc_p49_t143.2", %r33, !dbg !241 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:338
  %9 = mul i32 %r33, %r525, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r531 = sub i32 %"$$induc_p49_t143.2", %9, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r532 = sext i32 %r531 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r535 = mul i64 %"$$arg_dvmbr_p24_t2473", %r532, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %10 = trunc i64 %"$$arg_dvmbr_p27_t2495" to i32, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r540 = mul i32 %10, %r525, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r545 = sext i32 %r525 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r546 = mul i64 %r106, %r545, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r547 = sub i64 %"$$sr_e5_t146.2", %r546, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r548 = mul i64 %r547, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r550 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r548, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r552 = inttoptr i64 %r550 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast642 = sext i32 %r540 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r553 = getelementptr double, double* %r552, i64 %cic-gep-idxcast642, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r554 = addrspacecast double* %r553 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r555 = load double, double addrspace(1)* %r554, align 8, !dbg !242, !CrayMri !157, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r559 = add i64 %r79, %r535, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r560 = mul i64 %r559, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r561 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r560, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r563 = inttoptr i64 %r561 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast643 = sext i32 %r540 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r564 = getelementptr double, double* %r563, i64 %cic-gep-idxcast643, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r565 = addrspacecast double* %r564 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r566 = load double, double addrspace(1)* %r565, align 8, !dbg !242, !CrayMri !158, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r567 = fadd double %r555, %r566, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r571 = add i64 %r89, %r535, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r572 = mul i64 %r571, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r573 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r572, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r575 = inttoptr i64 %r573 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast644 = sext i32 %r540 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r576 = getelementptr double, double* %r575, i64 %cic-gep-idxcast644, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r577 = addrspacecast double* %r576 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r578 = load double, double addrspace(1)* %r577, align 8, !dbg !242, !CrayMri !159, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r582 = add i64 %r95, %r535, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r583 = mul i64 %r582, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r584 = add i64 %"$$arg_ptr_acc_t_t58_t25511", %r583, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r586 = inttoptr i64 %r584 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %cic-gep-idxcast645 = sext i32 %r540 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r587 = getelementptr double, double* %r586, i64 %cic-gep-idxcast645, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r588 = addrspacecast double* %r587 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r589 = load double, double addrspace(1)* %r588, align 8, !dbg !242, !CrayMri !160, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r590 = fadd double %r578, %r589, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r591 = fadd double %r567, %r590, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r592 = fmul double %r591, 2.500000e-01, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r596 = add i64 %r102, %r532, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r597 = mul i64 %r596, 8, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r598 = add i64 %"$$arg_ptr_acc_t_new_t60_t25612", %r597, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r601 = sext i32 %r525 to i64, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r602 = mul i64 %"$$arg_dvmbr_p32_t2528", %r601, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r603 = inttoptr i64 %r598 to double*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r604 = getelementptr double, double* %r603, i64 %r602, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r605 = getelementptr double, double* %r604, i64 1, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r606 = addrspacecast double* %r605 to double addrspace(1)*, !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  store double %r592, double addrspace(1)* %r606, align 8, !dbg !242, !CrayMri !161, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r612 = add i64 %r110, %"$$sr_e5_t146.2", !dbg !242 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:339
  %r615 = add i32 %r43, %"$$induc_p49_t143.2", !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  %r620.not = icmp slt i32 %r615, %r52, !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342
  br i1 %r620.not, label %"file Jacobi.f90, line 342, in inner loop at depth 0, bb30626", label %"file Jacobi.f90, line 344, bb300", !dbg !243 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:342

"file Jacobi.f90, line 344, bb300":               ; preds = %"file Jacobi.f90, line 342, in inner loop at depth 0, bb30626", %"file Jacobi.f90, line 338, bb25", %"file Jacobi.f90, line 338, bb17", %"file Jacobi.f90, line 337, bb13", %", bb233"
  ret void, !dbg !245 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:344
}

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L350_32"(i64 %"$$arg_dvmbr_p35_t2571", i64 %"$$arg_dvmbr_p36_t2582", i64 %"$$arg_dvmbr_p38_t2593", i64 %"$$arg_dvmbr_p39_t2604", i64 %"$$arg_dvmbr_p41_t2615", i64 %"$$arg_dvmbr_p42_t2626", i64 %"$$arg_dvmbr_p44_t2637", i64 %"$$arg_dvmbr_p46_t2648", i64 %"$$arg_dvmbr_p47_t2659", i64 %"$$arg_ptr_acc_residual_t62_t26610", i64 %"$$arg_ptr_acc_ncells_t64_t26711", i64 %"$$arg_ptr_acc_t_t66_t26812", i64 %"$$arg_ptr_acc_t_new_t68_t26913", i64 %"$$arg_ptr_reduc_ctl_t110_t27014", i64 %"$$arg_ptr_reduc_val_t114_t27215") #0 !dbg !246 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb239":
  %"$redfinal_t161" = alloca double, align 8, addrspace(5), !dbg !247 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:350
  %"$redfinal_t158" = alloca double, align 8, addrspace(5), !dbg !247 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:350
  %r19 = sub i64 2, %"$$arg_dvmbr_p36_t2582", !dbg !248 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352
  %r20 = mul i64 %"$$arg_dvmbr_p35_t2571", %r19, !dbg !248 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352
  %r21 = inttoptr i64 %"$$arg_ptr_acc_ncells_t64_t26711" to i32*, !dbg !248 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352
  %r22 = getelementptr i32, i32* %r21, i64 %r20, !dbg !248 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352
  %r23 = addrspacecast i32* %r22 to i32 addrspace(1)*, !dbg !248 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352
  %r24 = load i32, i32 addrspace(1)* %r23, align 4, !dbg !248, !CrayMri !166 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352
  %r25 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r27 = icmp sgt i32 %r24, 0, !dbg !248 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352
  br i1 %r27, label %"file Jacobi.f90, line 352, bb88", label %"file Jacobi.f90, line 350, bb106", !dbg !248 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:352

"file Jacobi.f90, line 352, bb88":                ; preds = %", bb239"
  %r33 = sub i64 1, %"$$arg_dvmbr_p36_t2582", !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r34 = mul i64 %"$$arg_dvmbr_p35_t2571", %r33, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r35 = inttoptr i64 %"$$arg_ptr_acc_ncells_t64_t26711" to i32*, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r36 = getelementptr i32, i32* %r35, i64 %r34, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r37 = addrspacecast i32* %r36 to i32 addrspace(1)*, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r38 = load i32, i32 addrspace(1)* %r37, align 4, !dbg !250, !CrayMri !169 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r40 = icmp sgt i32 %r38, 0, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  br i1 %r40, label %"file Jacobi.f90, line 353, bb92", label %"file Jacobi.f90, line 350, bb106", !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353

"file Jacobi.f90, line 353, bb92":                ; preds = %"file Jacobi.f90, line 352, bb88"
  %r43 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r44 = trunc i64 %r43 to i32, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r46 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r47 = trunc i64 %r46 to i32, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r48 = mul i32 %r44, %r47, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r49 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r51 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r53 = mul i32 %r51, %r44, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r54 = add i32 %r49, %r53, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r58 = mul i32 %r24, %r38, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r61.not = icmp slt i32 %r54, %r58, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  br i1 %r61.not, label %"file Jacobi.f90, line 354, bb94", label %"file Jacobi.f90, line 350, bb106", !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353

"file Jacobi.f90, line 354, bb94":                ; preds = %"file Jacobi.f90, line 353, bb92"
  %r66 = sub i64 1, %"$$arg_dvmbr_p42_t2626", !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r69 = sub i64 1, %"$$arg_dvmbr_p39_t2604", !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r70 = mul i64 %"$$arg_dvmbr_p38_t2593", %r69, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r71 = mul i64 %"$$arg_dvmbr_p41_t2615", %r66, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r72 = add i64 %r70, %r71, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r75 = sub i64 1, %"$$arg_dvmbr_p47_t2659", !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r78 = mul i64 %"$$arg_dvmbr_p46_t2648", %r75, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r79 = sub i64 %r78, %"$$arg_dvmbr_p44_t2637", !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r54.neg = sub i32 0, %r54
  %r85 = add i32 %r58, -1, !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  %r82 = add i32 %r85, %r54.neg, !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  %r86 = add i32 %r82, %r48, !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  %r88 = sdiv i32 %r86, %r48, !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  %r91 = icmp sgt i32 %r88, 3, !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  br i1 %r91, label %"file Jacobi.f90, line 353, bb96", label %"file Jacobi.f90, line 353, bb100", !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356

"file Jacobi.f90, line 353, bb96":                ; preds = %"file Jacobi.f90, line 354, bb94"
  %r98 = ashr i32 %r88, 1, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r99 = lshr i32 %r98, 30, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r100 = add i32 %r88, %r99, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r101 = and i32 %r100, -4, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r102.neg = sub i32 %r101, %r88, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r105 = mul i32 %r48, %r102.neg, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r106 = add i32 %r58, %r105, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r108 = shl i32 %r48, 2, !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  %r110 = mul i32 %r48, 3, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r112 = shl i32 %r48, 1, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  br label %", in inner reduction loop at depth 0, bb97", !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354

", in inner reduction loop at depth 0, bb97":     ; preds = %", in inner reduction loop at depth 0, bb97", %"file Jacobi.f90, line 353, bb96"
  %"$$induc_p53_t132.0" = phi i32 [ %r54, %"file Jacobi.f90, line 353, bb96" ], [ %r348, %", in inner reduction loop at depth 0, bb97" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 353, bb96" ], [ %r339, %", in inner reduction loop at depth 0, bb97" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r115 = sdiv i32 %"$$induc_p53_t132.0", %r38, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %0 = mul i32 %r38, %r115, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r121 = sub i32 %"$$induc_p53_t132.0", %0, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r122 = sext i32 %r121 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r126 = add i64 %r79, %r122, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r127 = mul i64 %r126, 8, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r128 = add i64 %"$$arg_ptr_acc_t_new_t68_t26913", %r127, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r131 = sext i32 %r115 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r132 = mul i64 %"$$arg_dvmbr_p46_t2648", %r131, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r133 = inttoptr i64 %r128 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r134 = getelementptr double, double* %r133, i64 %r132, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r135 = getelementptr double, double* %r134, i64 1, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r136 = addrspacecast double* %r135 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r137 = load double, double addrspace(1)* %r136, align 8, !dbg !251, !CrayMri !173, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r142 = mul i64 %"$$arg_dvmbr_p38_t2593", %r122, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r143 = add i64 %r72, %r142, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r144 = shl i64 %r143, 3, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r145 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r144, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %1 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r150 = mul i32 %1, %r115, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r155 = inttoptr i64 %r145 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %cic-gep-idxcast = sext i32 %r150 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r156 = getelementptr double, double* %r155, i64 %cic-gep-idxcast, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r157 = addrspacecast double* %r156 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r158 = load double, double addrspace(1)* %r157, align 8, !dbg !251, !CrayMri !174, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r159 = fsub double %r137, %r158, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r160 = tail call double @llvm.fabs.f64(double %r159), !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r161 = fcmp ogt double %"$_pvt3_residual_t48.0", %r160, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r162 = select i1 %r161, double %"$_pvt3_residual_t48.0", double %r160, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r166 = inttoptr i64 %r145 to double*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %cic-gep-idxcast822 = sext i32 %r150 to i64, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r167 = getelementptr double, double* %r166, i64 %cic-gep-idxcast822, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r168 = addrspacecast double* %r167 to double addrspace(1)*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  store double %r137, double addrspace(1)* %r168, align 8, !dbg !254, !CrayMri !176, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r171 = add i32 %r48, %"$$induc_p53_t132.0", !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r174 = sdiv i32 %r171, %r38, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %2 = mul i32 %r38, %r174, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r180 = sub i32 %r171, %2, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r181 = sext i32 %r180 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r185 = add i64 %r79, %r181, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r186 = mul i64 %r185, 8, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r187 = add i64 %"$$arg_ptr_acc_t_new_t68_t26913", %r186, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r190 = sext i32 %r174 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r191 = mul i64 %"$$arg_dvmbr_p46_t2648", %r190, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r192 = inttoptr i64 %r187 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r193 = getelementptr double, double* %r192, i64 %r191, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r194 = getelementptr double, double* %r193, i64 1, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r195 = addrspacecast double* %r194 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r196 = load double, double addrspace(1)* %r195, align 8, !dbg !251, !CrayMri !177, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r201 = mul i64 %"$$arg_dvmbr_p38_t2593", %r181, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r202 = add i64 %r72, %r201, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r203 = shl i64 %r202, 3, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r204 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r203, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %3 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r209 = mul i32 %3, %r174, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r214 = inttoptr i64 %r204 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %cic-gep-idxcast823 = sext i32 %r209 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r215 = getelementptr double, double* %r214, i64 %cic-gep-idxcast823, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r216 = addrspacecast double* %r215 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r217 = load double, double addrspace(1)* %r216, align 8, !dbg !251, !CrayMri !178, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r218 = fsub double %r196, %r217, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r219 = tail call double @llvm.fabs.f64(double %r218), !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r220 = fcmp ogt double %r162, %r219, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r221 = select i1 %r220, double %r162, double %r219, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r225 = inttoptr i64 %r204 to double*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %cic-gep-idxcast824 = sext i32 %r209 to i64, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r226 = getelementptr double, double* %r225, i64 %cic-gep-idxcast824, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r227 = addrspacecast double* %r226 to double addrspace(1)*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  store double %r196, double addrspace(1)* %r227, align 8, !dbg !254, !CrayMri !179, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r230 = add i32 %r112, %"$$induc_p53_t132.0", !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r233 = sdiv i32 %r230, %r38, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %4 = mul i32 %r38, %r233, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r239 = sub i32 %r230, %4, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r240 = sext i32 %r239 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r244 = add i64 %r79, %r240, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r245 = mul i64 %r244, 8, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r246 = add i64 %"$$arg_ptr_acc_t_new_t68_t26913", %r245, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r249 = sext i32 %r233 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r250 = mul i64 %"$$arg_dvmbr_p46_t2648", %r249, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r251 = inttoptr i64 %r246 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r252 = getelementptr double, double* %r251, i64 %r250, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r253 = getelementptr double, double* %r252, i64 1, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r254 = addrspacecast double* %r253 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r255 = load double, double addrspace(1)* %r254, align 8, !dbg !251, !CrayMri !180, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r260 = mul i64 %"$$arg_dvmbr_p38_t2593", %r240, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r261 = add i64 %r72, %r260, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r262 = shl i64 %r261, 3, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r263 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r262, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %5 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r268 = mul i32 %5, %r233, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r273 = inttoptr i64 %r263 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %cic-gep-idxcast825 = sext i32 %r268 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r274 = getelementptr double, double* %r273, i64 %cic-gep-idxcast825, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r275 = addrspacecast double* %r274 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r276 = load double, double addrspace(1)* %r275, align 8, !dbg !251, !CrayMri !181, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r277 = fsub double %r255, %r276, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r278 = tail call double @llvm.fabs.f64(double %r277), !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r279 = fcmp ogt double %r221, %r278, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r280 = select i1 %r279, double %r221, double %r278, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r284 = inttoptr i64 %r263 to double*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %cic-gep-idxcast826 = sext i32 %r268 to i64, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r285 = getelementptr double, double* %r284, i64 %cic-gep-idxcast826, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r286 = addrspacecast double* %r285 to double addrspace(1)*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  store double %r255, double addrspace(1)* %r286, align 8, !dbg !254, !CrayMri !182, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r289 = add i32 %r110, %"$$induc_p53_t132.0", !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %r292 = sdiv i32 %r289, %r38, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %6 = mul i32 %r38, %r292, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r298 = sub i32 %r289, %6, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r299 = sext i32 %r298 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r303 = add i64 %r79, %r299, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r304 = mul i64 %r303, 8, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r305 = add i64 %"$$arg_ptr_acc_t_new_t68_t26913", %r304, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r308 = sext i32 %r292 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r309 = mul i64 %"$$arg_dvmbr_p46_t2648", %r308, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r310 = inttoptr i64 %r305 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r311 = getelementptr double, double* %r310, i64 %r309, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r312 = getelementptr double, double* %r311, i64 1, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r313 = addrspacecast double* %r312 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r314 = load double, double addrspace(1)* %r313, align 8, !dbg !251, !CrayMri !183, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r319 = mul i64 %"$$arg_dvmbr_p38_t2593", %r299, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r320 = add i64 %r72, %r319, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r321 = shl i64 %r320, 3, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r322 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r321, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %7 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r327 = mul i32 %7, %r292, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r332 = inttoptr i64 %r322 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %cic-gep-idxcast827 = sext i32 %r327 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r333 = getelementptr double, double* %r332, i64 %cic-gep-idxcast827, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r334 = addrspacecast double* %r333 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r335 = load double, double addrspace(1)* %r334, align 8, !dbg !251, !CrayMri !184, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r336 = fsub double %r314, %r335, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r337 = tail call double @llvm.fabs.f64(double %r336), !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r338 = fcmp ogt double %r280, %r337, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r339 = select i1 %r338, double %r280, double %r337, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r343 = inttoptr i64 %r322 to double*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %cic-gep-idxcast828 = sext i32 %r327 to i64, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r344 = getelementptr double, double* %r343, i64 %cic-gep-idxcast828, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r345 = addrspacecast double* %r344 to double addrspace(1)*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  store double %r314, double addrspace(1)* %r345, align 8, !dbg !254, !CrayMri !185, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r348 = add i32 %r108, %"$$induc_p53_t132.0", !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  %r353.not = icmp slt i32 %r348, %r106, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  br i1 %r353.not, label %", in inner reduction loop at depth 0, bb97", label %"file Jacobi.f90, line 353, bb100", !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353

"file Jacobi.f90, line 353, bb100":               ; preds = %", in inner reduction loop at depth 0, bb97", %"file Jacobi.f90, line 354, bb94"
  %"$$induc_p53_t132.1" = phi i32 [ %r54, %"file Jacobi.f90, line 354, bb94" ], [ %r348, %", in inner reduction loop at depth 0, bb97" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 354, bb94" ], [ %r339, %", in inner reduction loop at depth 0, bb97" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r360.not = icmp slt i32 %"$$induc_p53_t132.1", %r58, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  br i1 %r360.not, label %"353utop1", label %"file Jacobi.f90, line 350, bb106", !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353

"353utop1":                                       ; preds = %"file Jacobi.f90, line 353, bb100", %"353utop1"
  %"$$induc_p53_t132.2" = phi i32 [ %r421, %"353utop1" ], [ %"$$induc_p53_t132.1", %"file Jacobi.f90, line 353, bb100" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.2" = phi double [ %r412, %"353utop1" ], [ %"$_pvt3_residual_t48.1", %"file Jacobi.f90, line 353, bb100" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r365 = sdiv i32 %"$$induc_p53_t132.2", %r38, !dbg !250 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:353
  %8 = mul i32 %r38, %r365, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r371 = sub i32 %"$$induc_p53_t132.2", %8, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r372 = sext i32 %r371 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r376 = add i64 %r79, %r372, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r377 = mul i64 %r376, 8, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r378 = add i64 %"$$arg_ptr_acc_t_new_t68_t26913", %r377, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r381 = sext i32 %r365 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r382 = mul i64 %"$$arg_dvmbr_p46_t2648", %r381, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r383 = inttoptr i64 %r378 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r384 = getelementptr double, double* %r383, i64 %r382, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r385 = getelementptr double, double* %r384, i64 1, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r386 = addrspacecast double* %r385 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r387 = load double, double addrspace(1)* %r386, align 8, !dbg !251, !CrayMri !186, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r392 = mul i64 %"$$arg_dvmbr_p38_t2593", %r372, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r393 = add i64 %r72, %r392, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r394 = shl i64 %r393, 3, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r395 = add i64 %"$$arg_ptr_acc_t_t66_t26812", %r394, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %9 = trunc i64 %"$$arg_dvmbr_p41_t2615" to i32, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r400 = mul i32 %9, %r365, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r405 = inttoptr i64 %r395 to double*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %cic-gep-idxcast829 = sext i32 %r400 to i64, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r406 = getelementptr double, double* %r405, i64 %cic-gep-idxcast829, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r407 = addrspacecast double* %r406 to double addrspace(1)*, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r408 = load double, double addrspace(1)* %r407, align 8, !dbg !251, !CrayMri !187, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r409 = fsub double %r387, %r408, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r410 = tail call double @llvm.fabs.f64(double %r409), !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r411 = fcmp ogt double %"$_pvt3_residual_t48.2", %r410, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r412 = select i1 %r411, double %"$_pvt3_residual_t48.2", double %r410, !dbg !251 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:354
  %r416 = inttoptr i64 %r395 to double*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %cic-gep-idxcast830 = sext i32 %r400 to i64, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r417 = getelementptr double, double* %r416, i64 %cic-gep-idxcast830, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r418 = addrspacecast double* %r417 to double addrspace(1)*, !dbg !254 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  store double %r387, double addrspace(1)* %r418, align 8, !dbg !254, !CrayMri !188, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:355
  %r421 = add i32 %r48, %"$$induc_p53_t132.2", !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  %r426.not = icmp slt i32 %r421, %r58, !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356
  br i1 %r426.not, label %"353utop1", label %"file Jacobi.f90, line 350, bb106", !dbg !252 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:356

"file Jacobi.f90, line 350, bb106":               ; preds = %"353utop1", %"file Jacobi.f90, line 353, bb100", %"file Jacobi.f90, line 353, bb92", %"file Jacobi.f90, line 352, bb88", %", bb239"
  %"$$pre_195_t168.0" = phi i32 [ %r25, %", bb239" ], [ %r25, %"file Jacobi.f90, line 352, bb88" ], [ %r49, %"file Jacobi.f90, line 353, bb92" ], [ %r49, %"file Jacobi.f90, line 353, bb100" ], [ %r49, %"353utop1" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t48.3" = phi double [ 0xFFF0000000000000, %", bb239" ], [ 0xFFF0000000000000, %"file Jacobi.f90, line 352, bb88" ], [ 0xFFF0000000000000, %"file Jacobi.f90, line 353, bb92" ], [ %"$_pvt3_residual_t48.1", %"file Jacobi.f90, line 353, bb100" ], [ %r412, %"353utop1" ], !dbg !253 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r431 = fcmp ogt double %"$_pvt3_residual_t48.3", 0xFFF0000000000000, !dbg !247 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:350
  %r432 = select i1 %r431, double %"$_pvt3_residual_t48.3", double 0xFFF0000000000000, !dbg !247 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:350
  %r435 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast831 = sext i32 %r435 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r436 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast831, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r437 = getelementptr double, double* %r436, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r438 = addrspacecast double* %r437 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r432, double addrspace(3)* %r438, align 8, !dbg !249, !CrayMri !189 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r439 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast832 = sext i32 %r439 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r440 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast832, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r441 = getelementptr double, double* %r440, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r442 = addrspacecast double* %r441 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r443 = load volatile double, double addrspace(3)* %r442, align 8, !dbg !249, !CrayMri !190 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r444 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r445 = icmp ult i32 %r444, 128, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r445, label %"file Jacobi.f90, line 358, bb108", label %"file Jacobi.f90, line 358, bb109", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb108":               ; preds = %"file Jacobi.f90, line 350, bb106"
  %r448 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast833 = sext i32 %r448 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r449 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast833, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r450 = getelementptr double, double* %r449, i64 129, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r451 = addrspacecast double* %r450 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r452 = load volatile double, double addrspace(3)* %r451, align 8, !dbg !249, !CrayMri !191 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r455 = fcmp ogt double %r443, %r452, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r456 = select i1 %r455, double %r443, double %r452, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r458 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast834 = sext i32 %r458 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r459 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast834, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r460 = getelementptr double, double* %r459, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r461 = addrspacecast double* %r460 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r456, double addrspace(3)* %r461, align 8, !dbg !249, !CrayMri !192 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb109", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb109":               ; preds = %"file Jacobi.f90, line 358, bb108", %"file Jacobi.f90, line 350, bb106"
  %"$redfold_left_temp_t156.0" = phi double [ %r443, %"file Jacobi.f90, line 350, bb106" ], [ %r456, %"file Jacobi.f90, line 358, bb108" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r462 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r463 = icmp ult i32 %r462, 64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r463, label %"file Jacobi.f90, line 358, bb111", label %"file Jacobi.f90, line 358, bb112", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb111":               ; preds = %"file Jacobi.f90, line 358, bb109"
  %r466 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast835 = sext i32 %r466 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r467 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast835, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r468 = getelementptr double, double* %r467, i64 65, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r469 = addrspacecast double* %r468 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r470 = load volatile double, double addrspace(3)* %r469, align 8, !dbg !249, !CrayMri !193 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r473 = fcmp ogt double %"$redfold_left_temp_t156.0", %r470, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r474 = select i1 %r473, double %"$redfold_left_temp_t156.0", double %r470, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r476 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast836 = sext i32 %r476 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r477 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast836, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r478 = getelementptr double, double* %r477, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r479 = addrspacecast double* %r478 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r474, double addrspace(3)* %r479, align 8, !dbg !249, !CrayMri !194 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb112", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb112":               ; preds = %"file Jacobi.f90, line 358, bb111", %"file Jacobi.f90, line 358, bb109"
  %"$redfold_left_temp_t156.1" = phi double [ %"$redfold_left_temp_t156.0", %"file Jacobi.f90, line 358, bb109" ], [ %r474, %"file Jacobi.f90, line 358, bb111" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r480 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r481 = icmp ult i32 %r480, 32, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r481, label %"file Jacobi.f90, line 358, bb114", label %"file Jacobi.f90, line 358, bb115", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb114":               ; preds = %"file Jacobi.f90, line 358, bb112"
  %r484 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast837 = sext i32 %r484 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r485 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast837, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r486 = getelementptr double, double* %r485, i64 33, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r487 = addrspacecast double* %r486 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r488 = load volatile double, double addrspace(3)* %r487, align 8, !dbg !249, !CrayMri !195 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r491 = fcmp ogt double %"$redfold_left_temp_t156.1", %r488, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r492 = select i1 %r491, double %"$redfold_left_temp_t156.1", double %r488, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r494 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast838 = sext i32 %r494 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r495 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast838, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r496 = getelementptr double, double* %r495, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r497 = addrspacecast double* %r496 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r492, double addrspace(3)* %r497, align 8, !dbg !249, !CrayMri !196 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb115", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb115":               ; preds = %"file Jacobi.f90, line 358, bb114", %"file Jacobi.f90, line 358, bb112"
  %"$redfold_left_temp_t156.2" = phi double [ %"$redfold_left_temp_t156.1", %"file Jacobi.f90, line 358, bb112" ], [ %r492, %"file Jacobi.f90, line 358, bb114" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r498 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r499 = icmp ult i32 %r498, 16, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r499, label %"file Jacobi.f90, line 358, bb117", label %"file Jacobi.f90, line 358, bb118", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb117":               ; preds = %"file Jacobi.f90, line 358, bb115"
  %r502 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast839 = sext i32 %r502 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r503 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast839, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r504 = getelementptr double, double* %r503, i64 17, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r505 = addrspacecast double* %r504 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r506 = load volatile double, double addrspace(3)* %r505, align 8, !dbg !249, !CrayMri !197 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r509 = fcmp ogt double %"$redfold_left_temp_t156.2", %r506, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r510 = select i1 %r509, double %"$redfold_left_temp_t156.2", double %r506, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r512 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast840 = sext i32 %r512 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r513 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast840, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r514 = getelementptr double, double* %r513, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r515 = addrspacecast double* %r514 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r510, double addrspace(3)* %r515, align 8, !dbg !249, !CrayMri !198 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb118", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb118":               ; preds = %"file Jacobi.f90, line 358, bb117", %"file Jacobi.f90, line 358, bb115"
  %"$redfold_left_temp_t156.3" = phi double [ %"$redfold_left_temp_t156.2", %"file Jacobi.f90, line 358, bb115" ], [ %r510, %"file Jacobi.f90, line 358, bb117" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r516 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r517 = icmp ult i32 %r516, 8, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r517, label %"file Jacobi.f90, line 358, bb120", label %"file Jacobi.f90, line 358, bb121", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb120":               ; preds = %"file Jacobi.f90, line 358, bb118"
  %r520 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast841 = sext i32 %r520 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r521 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast841, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r522 = getelementptr double, double* %r521, i64 9, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r523 = addrspacecast double* %r522 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r524 = load volatile double, double addrspace(3)* %r523, align 8, !dbg !249, !CrayMri !199 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r527 = fcmp ogt double %"$redfold_left_temp_t156.3", %r524, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r528 = select i1 %r527, double %"$redfold_left_temp_t156.3", double %r524, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r530 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast842 = sext i32 %r530 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r531 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast842, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r532 = getelementptr double, double* %r531, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r533 = addrspacecast double* %r532 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r528, double addrspace(3)* %r533, align 8, !dbg !249, !CrayMri !200 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb121", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb121":               ; preds = %"file Jacobi.f90, line 358, bb120", %"file Jacobi.f90, line 358, bb118"
  %"$redfold_left_temp_t156.4" = phi double [ %"$redfold_left_temp_t156.3", %"file Jacobi.f90, line 358, bb118" ], [ %r528, %"file Jacobi.f90, line 358, bb120" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r534 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r535 = icmp ult i32 %r534, 4, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r535, label %"file Jacobi.f90, line 358, bb123", label %"file Jacobi.f90, line 358, bb124", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb123":               ; preds = %"file Jacobi.f90, line 358, bb121"
  %r538 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast843 = sext i32 %r538 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r539 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast843, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r540 = getelementptr double, double* %r539, i64 5, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r541 = addrspacecast double* %r540 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r542 = load volatile double, double addrspace(3)* %r541, align 8, !dbg !249, !CrayMri !201 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r545 = fcmp ogt double %"$redfold_left_temp_t156.4", %r542, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r546 = select i1 %r545, double %"$redfold_left_temp_t156.4", double %r542, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r548 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast844 = sext i32 %r548 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r549 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast844, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r550 = getelementptr double, double* %r549, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r551 = addrspacecast double* %r550 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r546, double addrspace(3)* %r551, align 8, !dbg !249, !CrayMri !202 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb124", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb124":               ; preds = %"file Jacobi.f90, line 358, bb123", %"file Jacobi.f90, line 358, bb121"
  %"$redfold_left_temp_t156.5" = phi double [ %"$redfold_left_temp_t156.4", %"file Jacobi.f90, line 358, bb121" ], [ %r546, %"file Jacobi.f90, line 358, bb123" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r552 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r553 = icmp ult i32 %r552, 2, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r553, label %"file Jacobi.f90, line 358, bb126", label %"file Jacobi.f90, line 358, bb127", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb126":               ; preds = %"file Jacobi.f90, line 358, bb124"
  %r556 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast845 = sext i32 %r556 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r557 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast845, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r558 = getelementptr double, double* %r557, i64 3, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r559 = addrspacecast double* %r558 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r560 = load volatile double, double addrspace(3)* %r559, align 8, !dbg !249, !CrayMri !203 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r563 = fcmp ogt double %"$redfold_left_temp_t156.5", %r560, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r564 = select i1 %r563, double %"$redfold_left_temp_t156.5", double %r560, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r566 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast846 = sext i32 %r566 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r567 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast846, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r568 = getelementptr double, double* %r567, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r569 = addrspacecast double* %r568 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r564, double addrspace(3)* %r569, align 8, !dbg !249, !CrayMri !204 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb127", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb127":               ; preds = %"file Jacobi.f90, line 358, bb126", %"file Jacobi.f90, line 358, bb124"
  %"$redfold_left_temp_t156.6" = phi double [ %"$redfold_left_temp_t156.5", %"file Jacobi.f90, line 358, bb124" ], [ %r564, %"file Jacobi.f90, line 358, bb126" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r570 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r571.not = icmp eq i32 %r570, 0, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r571.not, label %"file Jacobi.f90, line 358, bb129", label %"file Jacobi.f90, line 358, bb130", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb129":               ; preds = %"file Jacobi.f90, line 358, bb127"
  %r574 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast847 = sext i32 %r574 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r575 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast847, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r576 = getelementptr double, double* %r575, i64 2, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r577 = addrspacecast double* %r576 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r578 = load volatile double, double addrspace(3)* %r577, align 8, !dbg !249, !CrayMri !205 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r581 = fcmp ogt double %"$redfold_left_temp_t156.6", %r578, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r582 = select i1 %r581, double %"$redfold_left_temp_t156.6", double %r578, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r584 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast848 = sext i32 %r584 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r585 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast848, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r586 = getelementptr double, double* %r585, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r587 = addrspacecast double* %r586 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r582, double addrspace(3)* %r587, align 8, !dbg !249, !CrayMri !206 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb130", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb130":               ; preds = %"file Jacobi.f90, line 358, bb129", %"file Jacobi.f90, line 358, bb127"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r588 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !249, !CrayMri !207 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r588, double addrspace(5)* %"$redfinal_t158", align 8, !dbg !249, !CrayMri !208 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r589 = load volatile double, double addrspace(5)* %"$redfinal_t158", align 8, !dbg !249, !CrayMri !209 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r591.not = icmp eq i32 %"$$pre_195_t168.0", 0, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r591.not, label %"file Jacobi.f90, line 358, bb275", label %"file Jacobi.f90, line 358, bb136.critedge", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb275":               ; preds = %"file Jacobi.f90, line 358, bb130"
  %r595 = load volatile double, double addrspace(5)* %"$redfinal_t158", align 8, !dbg !249, !CrayMri !210 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r597 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r598 = zext i32 %r597 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r599 = inttoptr i64 %"$$arg_ptr_reduc_val_t114_t27215" to double*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r600 = getelementptr double, double* %r599, i64 %r598, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r601 = addrspacecast double* %r600 to double addrspace(1)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r595, double addrspace(1)* %r601, align 8, !dbg !249, !CrayMri !211 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  fence syncscope("agent") seq_cst, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r604 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r605 = trunc i64 %r604 to i32, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r606 = sub i32 1, %r605, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r607 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r608 = icmp eq i32 %r607, 0, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r611 = select i1 %r608, i32 %r606, i32 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r613 = inttoptr i64 %"$$arg_ptr_reduc_ctl_t110_t27014" to i32 addrspace(1)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r614 = addrspacecast i32 addrspace(1)* %r613 to i32*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %10 = atomicrmw add i32* %r614, i32 %r611 syncscope("agent") seq_cst, align 4, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r618 = add i32 %10, %r611, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store i32 %r618, i32 addrspace(3)* @reduc_share_ctl_c6_AMD_LDS_10, align 32, !dbg !249, !CrayMri !212 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb136", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb136.critedge":      ; preds = %"file Jacobi.f90, line 358, bb130"
  fence syncscope("agent") seq_cst, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb136", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb136":               ; preds = %"file Jacobi.f90, line 358, bb136.critedge", %"file Jacobi.f90, line 358, bb275"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r619 = load volatile i32, i32 addrspace(3)* @reduc_share_ctl_c6_AMD_LDS_10, align 32, !dbg !249, !CrayMri !213 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r620.not = icmp eq i32 %r619, 0, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r620.not, label %"file Jacobi.f90, line 358, bb138", label %"file Jacobi.f90, line 358, bb302", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb138":               ; preds = %"file Jacobi.f90, line 358, bb136"
  %r625 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r626 = trunc i64 %r625 to i32, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r629.not = icmp ult i32 %"$$pre_195_t168.0", %r626, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r629.not, label %"file Jacobi.f90, line 358, bb142", label %"file Jacobi.f90, line 358, bb147", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb142":               ; preds = %"file Jacobi.f90, line 358, bb138"
  %r633 = and i64 %r625, 4294967295, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r634 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r635 = trunc i64 %r634 to i32, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821": ; preds = %"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821", %"file Jacobi.f90, line 358, bb142"
  %"$$reduc_pvt_t113_t271.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 358, bb142" ], [ %r645, %"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %"$$induc_p68_t133.0" = phi i32 [ %"$$pre_195_t168.0", %"file Jacobi.f90, line 358, bb142" ], [ %r648, %"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r639 = sext i32 %"$$induc_p68_t133.0" to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r640 = inttoptr i64 %"$$arg_ptr_reduc_val_t114_t27215" to double*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r641 = getelementptr double, double* %r640, i64 %r639, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r642 = addrspacecast double* %r641 to double addrspace(1)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r643 = load double, double addrspace(1)* %r642, align 8, !dbg !249, !CrayMri !214, !looptrips !19, !autoprefetch !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r644 = fcmp ogt double %"$$reduc_pvt_t113_t271.0", %r643, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r645 = select i1 %r644, double %"$$reduc_pvt_t113_t271.0", double %r643, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r648 = add i32 %r635, %"$$induc_p68_t133.0", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r650 = sext i32 %r648 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r652.not = icmp sgt i64 %r633, %r650, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r652.not, label %"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821", label %"file Jacobi.f90, line 358, bb147", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb147":               ; preds = %"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821", %"file Jacobi.f90, line 358, bb138"
  %"$$reduc_pvt_t113_t271.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 358, bb138" ], [ %r645, %"file Jacobi.f90, line 358, in inner loop at depth 0, bb146821" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r656 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast849 = sext i32 %r656 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r657 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast849, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r658 = getelementptr double, double* %r657, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r659 = addrspacecast double* %r658 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %"$$reduc_pvt_t113_t271.1", double addrspace(3)* %r659, align 8, !dbg !249, !CrayMri !215 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r660 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast850 = sext i32 %r660 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r661 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast850, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r662 = getelementptr double, double* %r661, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r663 = addrspacecast double* %r662 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r664 = load volatile double, double addrspace(3)* %r663, align 8, !dbg !249, !CrayMri !216 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r665 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r666 = icmp ult i32 %r665, 128, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r666, label %"file Jacobi.f90, line 358, bb149", label %"file Jacobi.f90, line 358, bb150", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb149":               ; preds = %"file Jacobi.f90, line 358, bb147"
  %r669 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast851 = sext i32 %r669 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r670 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast851, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r671 = getelementptr double, double* %r670, i64 129, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r672 = addrspacecast double* %r671 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r673 = load volatile double, double addrspace(3)* %r672, align 8, !dbg !249, !CrayMri !217 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r676 = fcmp ogt double %r664, %r673, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r677 = select i1 %r676, double %r664, double %r673, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r679 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast852 = sext i32 %r679 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r680 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast852, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r681 = getelementptr double, double* %r680, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r682 = addrspacecast double* %r681 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r677, double addrspace(3)* %r682, align 8, !dbg !249, !CrayMri !218 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb150", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb150":               ; preds = %"file Jacobi.f90, line 358, bb149", %"file Jacobi.f90, line 358, bb147"
  %"$redfold_left_temp_t159.0" = phi double [ %r664, %"file Jacobi.f90, line 358, bb147" ], [ %r677, %"file Jacobi.f90, line 358, bb149" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r683 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r684 = icmp ult i32 %r683, 64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r684, label %"file Jacobi.f90, line 358, bb152", label %"file Jacobi.f90, line 358, bb153", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb152":               ; preds = %"file Jacobi.f90, line 358, bb150"
  %r687 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast853 = sext i32 %r687 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r688 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast853, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r689 = getelementptr double, double* %r688, i64 65, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r690 = addrspacecast double* %r689 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r691 = load volatile double, double addrspace(3)* %r690, align 8, !dbg !249, !CrayMri !219 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r694 = fcmp ogt double %"$redfold_left_temp_t159.0", %r691, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r695 = select i1 %r694, double %"$redfold_left_temp_t159.0", double %r691, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r697 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast854 = sext i32 %r697 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r698 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast854, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r699 = getelementptr double, double* %r698, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r700 = addrspacecast double* %r699 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r695, double addrspace(3)* %r700, align 8, !dbg !249, !CrayMri !220 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb153", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb153":               ; preds = %"file Jacobi.f90, line 358, bb152", %"file Jacobi.f90, line 358, bb150"
  %"$redfold_left_temp_t159.1" = phi double [ %"$redfold_left_temp_t159.0", %"file Jacobi.f90, line 358, bb150" ], [ %r695, %"file Jacobi.f90, line 358, bb152" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r701 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r702 = icmp ult i32 %r701, 32, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r702, label %"file Jacobi.f90, line 358, bb155", label %"file Jacobi.f90, line 358, bb156", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb155":               ; preds = %"file Jacobi.f90, line 358, bb153"
  %r705 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast855 = sext i32 %r705 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r706 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast855, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r707 = getelementptr double, double* %r706, i64 33, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r708 = addrspacecast double* %r707 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r709 = load volatile double, double addrspace(3)* %r708, align 8, !dbg !249, !CrayMri !221 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r712 = fcmp ogt double %"$redfold_left_temp_t159.1", %r709, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r713 = select i1 %r712, double %"$redfold_left_temp_t159.1", double %r709, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r715 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast856 = sext i32 %r715 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r716 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast856, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r717 = getelementptr double, double* %r716, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r718 = addrspacecast double* %r717 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r713, double addrspace(3)* %r718, align 8, !dbg !249, !CrayMri !222 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb156", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb156":               ; preds = %"file Jacobi.f90, line 358, bb155", %"file Jacobi.f90, line 358, bb153"
  %"$redfold_left_temp_t159.2" = phi double [ %"$redfold_left_temp_t159.1", %"file Jacobi.f90, line 358, bb153" ], [ %r713, %"file Jacobi.f90, line 358, bb155" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r719 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r720 = icmp ult i32 %r719, 16, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r720, label %"file Jacobi.f90, line 358, bb158", label %"file Jacobi.f90, line 358, bb159", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb158":               ; preds = %"file Jacobi.f90, line 358, bb156"
  %r723 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast857 = sext i32 %r723 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r724 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast857, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r725 = getelementptr double, double* %r724, i64 17, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r726 = addrspacecast double* %r725 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r727 = load volatile double, double addrspace(3)* %r726, align 8, !dbg !249, !CrayMri !223 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r730 = fcmp ogt double %"$redfold_left_temp_t159.2", %r727, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r731 = select i1 %r730, double %"$redfold_left_temp_t159.2", double %r727, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r733 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast858 = sext i32 %r733 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r734 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast858, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r735 = getelementptr double, double* %r734, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r736 = addrspacecast double* %r735 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r731, double addrspace(3)* %r736, align 8, !dbg !249, !CrayMri !224 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb159", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb159":               ; preds = %"file Jacobi.f90, line 358, bb158", %"file Jacobi.f90, line 358, bb156"
  %"$redfold_left_temp_t159.3" = phi double [ %"$redfold_left_temp_t159.2", %"file Jacobi.f90, line 358, bb156" ], [ %r731, %"file Jacobi.f90, line 358, bb158" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r737 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r738 = icmp ult i32 %r737, 8, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r738, label %"file Jacobi.f90, line 358, bb161", label %"file Jacobi.f90, line 358, bb162", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb161":               ; preds = %"file Jacobi.f90, line 358, bb159"
  %r741 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast859 = sext i32 %r741 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r742 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast859, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r743 = getelementptr double, double* %r742, i64 9, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r744 = addrspacecast double* %r743 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r745 = load volatile double, double addrspace(3)* %r744, align 8, !dbg !249, !CrayMri !225 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r748 = fcmp ogt double %"$redfold_left_temp_t159.3", %r745, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r749 = select i1 %r748, double %"$redfold_left_temp_t159.3", double %r745, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r751 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast860 = sext i32 %r751 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r752 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast860, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r753 = getelementptr double, double* %r752, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r754 = addrspacecast double* %r753 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r749, double addrspace(3)* %r754, align 8, !dbg !249, !CrayMri !226 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb162", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb162":               ; preds = %"file Jacobi.f90, line 358, bb161", %"file Jacobi.f90, line 358, bb159"
  %"$redfold_left_temp_t159.4" = phi double [ %"$redfold_left_temp_t159.3", %"file Jacobi.f90, line 358, bb159" ], [ %r749, %"file Jacobi.f90, line 358, bb161" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r755 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r756 = icmp ult i32 %r755, 4, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r756, label %"file Jacobi.f90, line 358, bb164", label %"file Jacobi.f90, line 358, bb165", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb164":               ; preds = %"file Jacobi.f90, line 358, bb162"
  %r759 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast861 = sext i32 %r759 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r760 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast861, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r761 = getelementptr double, double* %r760, i64 5, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r762 = addrspacecast double* %r761 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r763 = load volatile double, double addrspace(3)* %r762, align 8, !dbg !249, !CrayMri !227 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r766 = fcmp ogt double %"$redfold_left_temp_t159.4", %r763, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r767 = select i1 %r766, double %"$redfold_left_temp_t159.4", double %r763, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r769 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast862 = sext i32 %r769 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r770 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast862, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r771 = getelementptr double, double* %r770, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r772 = addrspacecast double* %r771 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r767, double addrspace(3)* %r772, align 8, !dbg !249, !CrayMri !228 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb165", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb165":               ; preds = %"file Jacobi.f90, line 358, bb164", %"file Jacobi.f90, line 358, bb162"
  %"$redfold_left_temp_t159.5" = phi double [ %"$redfold_left_temp_t159.4", %"file Jacobi.f90, line 358, bb162" ], [ %r767, %"file Jacobi.f90, line 358, bb164" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r773 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r774 = icmp ult i32 %r773, 2, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r774, label %"file Jacobi.f90, line 358, bb167", label %"file Jacobi.f90, line 358, bb168", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb167":               ; preds = %"file Jacobi.f90, line 358, bb165"
  %r777 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast863 = sext i32 %r777 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r778 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast863, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r779 = getelementptr double, double* %r778, i64 3, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r780 = addrspacecast double* %r779 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r781 = load volatile double, double addrspace(3)* %r780, align 8, !dbg !249, !CrayMri !229 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r784 = fcmp ogt double %"$redfold_left_temp_t159.5", %r781, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r785 = select i1 %r784, double %"$redfold_left_temp_t159.5", double %r781, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r787 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast864 = sext i32 %r787 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r788 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast864, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r789 = getelementptr double, double* %r788, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r790 = addrspacecast double* %r789 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r785, double addrspace(3)* %r790, align 8, !dbg !249, !CrayMri !230 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb168", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb168":               ; preds = %"file Jacobi.f90, line 358, bb167", %"file Jacobi.f90, line 358, bb165"
  %"$redfold_left_temp_t159.6" = phi double [ %"$redfold_left_temp_t159.5", %"file Jacobi.f90, line 358, bb165" ], [ %r785, %"file Jacobi.f90, line 358, bb167" ], !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r791 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r792.not = icmp eq i32 %r791, 0, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r792.not, label %"file Jacobi.f90, line 358, bb170", label %"file Jacobi.f90, line 358, bb280", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb170":               ; preds = %"file Jacobi.f90, line 358, bb168"
  %r795 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast865 = sext i32 %r795 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r796 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast865, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r797 = getelementptr double, double* %r796, i64 2, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r798 = addrspacecast double* %r797 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r799 = load volatile double, double addrspace(3)* %r798, align 8, !dbg !249, !CrayMri !231 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r802 = fcmp ogt double %"$redfold_left_temp_t159.6", %r799, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r803 = select i1 %r802, double %"$redfold_left_temp_t159.6", double %r799, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r805 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %cic-gep-idxcast866 = sext i32 %r805 to i64, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r806 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 %cic-gep-idxcast866, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r807 = getelementptr double, double* %r806, i64 1, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r808 = addrspacecast double* %r807 to double addrspace(3)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r803, double addrspace(3)* %r808, align 8, !dbg !249, !CrayMri !232 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb280", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb280":               ; preds = %"file Jacobi.f90, line 358, bb170", %"file Jacobi.f90, line 358, bb168"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r809 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t155_AMD_LDS_11" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !249, !CrayMri !233 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r809, double addrspace(5)* %"$redfinal_t161", align 8, !dbg !249, !CrayMri !234 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  tail call void @llvm.amdgcn.s.barrier(), !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r810 = load volatile double, double addrspace(5)* %"$redfinal_t161", align 8, !dbg !249, !CrayMri !235 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br i1 %r591.not, label %"file Jacobi.f90, line 358, bb283", label %"file Jacobi.f90, line 358, bb302", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb283":               ; preds = %"file Jacobi.f90, line 358, bb280"
  %r813 = load volatile double, double addrspace(5)* %"$redfinal_t161", align 8, !dbg !249, !CrayMri !236 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r815 = inttoptr i64 %"$$arg_ptr_acc_residual_t62_t26610" to double addrspace(1)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r816 = load double, double addrspace(1)* %r815, align 8, !dbg !249, !CrayMri !237 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r817 = fcmp ogt double %r813, %r816, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r818 = select i1 %r817, double %r813, double %r816, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  %r820 = inttoptr i64 %"$$arg_ptr_acc_residual_t62_t26610" to double addrspace(1)*, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  store double %r818, double addrspace(1)* %r820, align 8, !dbg !249, !CrayMri !238 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
  br label %"file Jacobi.f90, line 358, bb302", !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358

"file Jacobi.f90, line 358, bb302":               ; preds = %"file Jacobi.f90, line 358, bb283", %"file Jacobi.f90, line 358, bb280", %"file Jacobi.f90, line 358, bb136"
  ret void, !dbg !249 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:358
}

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L393_41"(i64 %"$$arg_dvmbr_p22_t2591", i64 %"$$arg_dvmbr_p23_t2602", i64 %"$$arg_dvmbr_p25_t2613", i64 %"$$arg_dvmbr_p26_t2624", i64 %"$$arg_dvmbr_p28_t2635", i64 %"$$arg_dvmbr_p29_t2646", i64 %"$$arg_dvmbr_p31_t2657", i64 %"$$arg_dvmbr_p33_t2668", i64 %"$$arg_dvmbr_p34_t2679", i64 %"$$arg_ptr_acc_ncells_t64_t26810", i64 %"$$arg_ptr_acc_t_t66_t26911", i64 %"$$arg_ptr_acc_t_new_t68_t27012") #0 !dbg !255 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb25":
  %r15 = sub i64 2, %"$$arg_dvmbr_p23_t2602", !dbg !256 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394
  %r16 = mul i64 %"$$arg_dvmbr_p22_t2591", %r15, !dbg !256 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394
  %r17 = inttoptr i64 %"$$arg_ptr_acc_ncells_t64_t26810" to i32*, !dbg !256 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394
  %r18 = getelementptr i32, i32* %r17, i64 %r16, !dbg !256 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394
  %r19 = addrspacecast i32* %r18 to i32 addrspace(1)*, !dbg !256 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394
  %r20 = load i32, i32 addrspace(1)* %r19, align 4, !dbg !256, !CrayMri !257 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394
  %r22 = icmp sgt i32 %r20, 0, !dbg !256 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394
  br i1 %r22, label %"file Jacobi.f90, line 394, bb29", label %"file Jacobi.f90, line 401, bb44", !dbg !256 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:394

"file Jacobi.f90, line 394, bb29":                ; preds = %", bb25"
  %r28 = sub i64 1, %"$$arg_dvmbr_p23_t2602", !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r29 = mul i64 %"$$arg_dvmbr_p22_t2591", %r28, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r30 = inttoptr i64 %"$$arg_ptr_acc_ncells_t64_t26810" to i32*, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r31 = getelementptr i32, i32* %r30, i64 %r29, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r32 = addrspacecast i32* %r31 to i32 addrspace(1)*, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r33 = load i32, i32 addrspace(1)* %r32, align 4, !dbg !258, !CrayMri !259 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r35 = icmp sgt i32 %r33, 0, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  br i1 %r35, label %"file Jacobi.f90, line 395, bb31", label %"file Jacobi.f90, line 401, bb44", !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395

"file Jacobi.f90, line 395, bb31":                ; preds = %"file Jacobi.f90, line 394, bb29"
  %r38 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r39 = trunc i64 %r38 to i32, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r41 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r42 = trunc i64 %r41 to i32, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r43 = mul i32 %r39, %r42, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r45 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r46 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r47 = mul i32 %r45, %r39, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r48 = add i32 %r46, %r47, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r52 = mul i32 %r20, %r33, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r55.not = icmp slt i32 %r48, %r52, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  br i1 %r55.not, label %"file Jacobi.f90, line 396, bb33", label %"file Jacobi.f90, line 401, bb44", !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395

"file Jacobi.f90, line 396, bb33":                ; preds = %"file Jacobi.f90, line 395, bb31"
  %r64 = sub i64 1, %"$$arg_dvmbr_p29_t2646", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r65 = mul i64 %"$$arg_dvmbr_p28_t2635", %r64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r68 = sext i32 %r48 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r70 = sub i64 %r68, %"$$arg_dvmbr_p26_t2624", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r72 = mul i64 %"$$arg_dvmbr_p25_t2613", %r70, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r73 = add i64 %r65, %r72, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r76 = sub i64 2, %"$$arg_dvmbr_p26_t2624", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r78 = mul i64 %"$$arg_dvmbr_p25_t2613", %r76, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r79 = add i64 %r78, %r65, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r82 = sub i64 1, %"$$arg_dvmbr_p26_t2624", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r83 = mul i64 %"$$arg_dvmbr_p25_t2613", %r82, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r86 = sub i64 2, %"$$arg_dvmbr_p29_t2646", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r88 = mul i64 %"$$arg_dvmbr_p28_t2635", %r86, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r89 = add i64 %r83, %r88, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %0 = mul i64 %"$$arg_dvmbr_p28_t2635", %"$$arg_dvmbr_p29_t2646", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r95 = sub i64 %r83, %0, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r98 = sub i64 1, %"$$arg_dvmbr_p34_t2679", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r101 = mul i64 %"$$arg_dvmbr_p33_t2668", %r98, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r102 = sub i64 %r101, %"$$arg_dvmbr_p31_t2657", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r104 = sext i32 %r33 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r106 = mul i64 %"$$arg_dvmbr_p25_t2613", %r104, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r109 = sext i32 %r43 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r110 = mul i64 %"$$arg_dvmbr_p25_t2613", %r109, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r48.neg = sub i32 0, %r48
  %r116 = add i32 %r52, -1, !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  %r113 = add i32 %r116, %r48.neg, !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  %r117 = add i32 %r113, %r43, !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  %r119 = sdiv i32 %r117, %r43, !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  %r122 = icmp sgt i32 %r119, 3, !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  br i1 %r122, label %"file Jacobi.f90, line 395, bb35", label %"file Jacobi.f90, line 395, bb39", !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399

"file Jacobi.f90, line 395, bb35":                ; preds = %"file Jacobi.f90, line 396, bb33"
  %r129 = ashr i32 %r119, 1, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r130 = lshr i32 %r129, 30, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r131 = add i32 %r119, %r130, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r132 = and i32 %r131, -4, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r133.neg = sub i32 %r132, %r119, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r136 = mul i32 %r43, %r133.neg, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r137 = add i32 %r52, %r136, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r139 = shl i32 %r43, 2, !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  %r143 = mul i32 %r43, 3, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r145 = shl i32 %r43, 1, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  br label %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396

"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624": ; preds = %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624", %"file Jacobi.f90, line 395, bb35"
  %"$$induc_p50_t157.0" = phi i32 [ %r48, %"file Jacobi.f90, line 395, bb35" ], [ %r508, %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624" ], !dbg !262 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t160.0" = phi i64 [ %r73, %"file Jacobi.f90, line 395, bb35" ], [ %r502, %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624" ], !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r148 = sdiv i32 %"$$induc_p50_t157.0", %r33, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %1 = mul i32 %r33, %r148, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r154 = sub i32 %"$$induc_p50_t157.0", %1, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r155 = sext i32 %r154 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r158 = mul i64 %"$$arg_dvmbr_p25_t2613", %r155, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %2 = trunc i64 %"$$arg_dvmbr_p28_t2635" to i32, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r163 = mul i32 %2, %r148, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r168 = sext i32 %r148 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r169 = mul i64 %r106, %r168, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r170 = sub i64 %"$$sr_e5_t160.0", %r169, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r171 = mul i64 %r170, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r173 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r171, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r175 = inttoptr i64 %r173 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast = sext i32 %r163 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r176 = getelementptr double, double* %r175, i64 %cic-gep-idxcast, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r177 = addrspacecast double* %r176 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r178 = load double, double addrspace(1)* %r177, align 8, !dbg !260, !CrayMri !263, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r182 = add i64 %r79, %r158, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r183 = mul i64 %r182, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r184 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r183, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r186 = inttoptr i64 %r184 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast627 = sext i32 %r163 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r187 = getelementptr double, double* %r186, i64 %cic-gep-idxcast627, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r188 = addrspacecast double* %r187 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r189 = load double, double addrspace(1)* %r188, align 8, !dbg !260, !CrayMri !264, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r190 = fadd double %r178, %r189, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r194 = add i64 %r89, %r158, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r195 = mul i64 %r194, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r196 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r195, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r198 = inttoptr i64 %r196 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast628 = sext i32 %r163 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r199 = getelementptr double, double* %r198, i64 %cic-gep-idxcast628, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r200 = addrspacecast double* %r199 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r201 = load double, double addrspace(1)* %r200, align 8, !dbg !260, !CrayMri !265, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r205 = add i64 %r95, %r158, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r206 = mul i64 %r205, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r207 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r206, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r209 = inttoptr i64 %r207 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast629 = sext i32 %r163 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r210 = getelementptr double, double* %r209, i64 %cic-gep-idxcast629, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r211 = addrspacecast double* %r210 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r212 = load double, double addrspace(1)* %r211, align 8, !dbg !260, !CrayMri !266, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r213 = fadd double %r201, %r212, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r214 = fadd double %r190, %r213, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r215 = fmul double %r214, 2.500000e-01, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r219 = add i64 %r102, %r155, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r220 = mul i64 %r219, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r221 = add i64 %"$$arg_ptr_acc_t_new_t68_t27012", %r220, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r224 = sext i32 %r148 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r225 = mul i64 %"$$arg_dvmbr_p33_t2668", %r224, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r226 = inttoptr i64 %r221 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r227 = getelementptr double, double* %r226, i64 %r225, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r228 = getelementptr double, double* %r227, i64 1, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r229 = addrspacecast double* %r228 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  store double %r215, double addrspace(1)* %r229, align 8, !dbg !260, !CrayMri !267, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r232 = add i64 %r110, %"$$sr_e5_t160.0", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r235 = add i32 %r43, %"$$induc_p50_t157.0", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r238 = sdiv i32 %r235, %r33, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %3 = mul i32 %r33, %r238, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r244 = sub i32 %r235, %3, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r245 = sext i32 %r244 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r248 = mul i64 %"$$arg_dvmbr_p25_t2613", %r245, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %4 = trunc i64 %"$$arg_dvmbr_p28_t2635" to i32, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r253 = mul i32 %4, %r238, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r258 = sext i32 %r238 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r259 = mul i64 %r106, %r258, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r260 = sub i64 %r232, %r259, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r261 = mul i64 %r260, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r263 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r261, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r265 = inttoptr i64 %r263 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast630 = sext i32 %r253 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r266 = getelementptr double, double* %r265, i64 %cic-gep-idxcast630, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r267 = addrspacecast double* %r266 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r268 = load double, double addrspace(1)* %r267, align 8, !dbg !260, !CrayMri !268, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r272 = add i64 %r79, %r248, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r273 = mul i64 %r272, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r274 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r273, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r276 = inttoptr i64 %r274 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast631 = sext i32 %r253 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r277 = getelementptr double, double* %r276, i64 %cic-gep-idxcast631, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r278 = addrspacecast double* %r277 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r279 = load double, double addrspace(1)* %r278, align 8, !dbg !260, !CrayMri !269, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r280 = fadd double %r268, %r279, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r284 = add i64 %r89, %r248, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r285 = mul i64 %r284, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r286 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r285, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r288 = inttoptr i64 %r286 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast632 = sext i32 %r253 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r289 = getelementptr double, double* %r288, i64 %cic-gep-idxcast632, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r290 = addrspacecast double* %r289 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r291 = load double, double addrspace(1)* %r290, align 8, !dbg !260, !CrayMri !270, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r295 = add i64 %r95, %r248, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r296 = mul i64 %r295, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r297 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r296, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r299 = inttoptr i64 %r297 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast633 = sext i32 %r253 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r300 = getelementptr double, double* %r299, i64 %cic-gep-idxcast633, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r301 = addrspacecast double* %r300 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r302 = load double, double addrspace(1)* %r301, align 8, !dbg !260, !CrayMri !271, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r303 = fadd double %r291, %r302, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r304 = fadd double %r280, %r303, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r305 = fmul double %r304, 2.500000e-01, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r309 = add i64 %r102, %r245, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r310 = mul i64 %r309, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r311 = add i64 %"$$arg_ptr_acc_t_new_t68_t27012", %r310, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r314 = sext i32 %r238 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r315 = mul i64 %"$$arg_dvmbr_p33_t2668", %r314, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r316 = inttoptr i64 %r311 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r317 = getelementptr double, double* %r316, i64 %r315, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r318 = getelementptr double, double* %r317, i64 1, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r319 = addrspacecast double* %r318 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  store double %r305, double addrspace(1)* %r319, align 8, !dbg !260, !CrayMri !272, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r322 = add i64 %r110, %r232, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r325 = add i32 %r145, %"$$induc_p50_t157.0", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r328 = sdiv i32 %r325, %r33, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %5 = mul i32 %r33, %r328, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r334 = sub i32 %r325, %5, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r335 = sext i32 %r334 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r338 = mul i64 %"$$arg_dvmbr_p25_t2613", %r335, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %6 = trunc i64 %"$$arg_dvmbr_p28_t2635" to i32, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r343 = mul i32 %6, %r328, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r348 = sext i32 %r328 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r349 = mul i64 %r106, %r348, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r350 = sub i64 %r322, %r349, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r351 = mul i64 %r350, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r353 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r351, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r355 = inttoptr i64 %r353 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast634 = sext i32 %r343 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r356 = getelementptr double, double* %r355, i64 %cic-gep-idxcast634, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r357 = addrspacecast double* %r356 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r358 = load double, double addrspace(1)* %r357, align 8, !dbg !260, !CrayMri !273, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r362 = add i64 %r79, %r338, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r363 = mul i64 %r362, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r364 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r363, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r366 = inttoptr i64 %r364 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast635 = sext i32 %r343 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r367 = getelementptr double, double* %r366, i64 %cic-gep-idxcast635, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r368 = addrspacecast double* %r367 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r369 = load double, double addrspace(1)* %r368, align 8, !dbg !260, !CrayMri !274, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r370 = fadd double %r358, %r369, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r374 = add i64 %r89, %r338, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r375 = mul i64 %r374, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r376 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r375, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r378 = inttoptr i64 %r376 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast636 = sext i32 %r343 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r379 = getelementptr double, double* %r378, i64 %cic-gep-idxcast636, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r380 = addrspacecast double* %r379 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r381 = load double, double addrspace(1)* %r380, align 8, !dbg !260, !CrayMri !275, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r385 = add i64 %r95, %r338, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r386 = mul i64 %r385, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r387 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r386, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r389 = inttoptr i64 %r387 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast637 = sext i32 %r343 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r390 = getelementptr double, double* %r389, i64 %cic-gep-idxcast637, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r391 = addrspacecast double* %r390 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r392 = load double, double addrspace(1)* %r391, align 8, !dbg !260, !CrayMri !276, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r393 = fadd double %r381, %r392, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r394 = fadd double %r370, %r393, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r395 = fmul double %r394, 2.500000e-01, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r399 = add i64 %r102, %r335, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r400 = mul i64 %r399, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r401 = add i64 %"$$arg_ptr_acc_t_new_t68_t27012", %r400, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r404 = sext i32 %r328 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r405 = mul i64 %"$$arg_dvmbr_p33_t2668", %r404, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r406 = inttoptr i64 %r401 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r407 = getelementptr double, double* %r406, i64 %r405, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r408 = getelementptr double, double* %r407, i64 1, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r409 = addrspacecast double* %r408 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  store double %r395, double addrspace(1)* %r409, align 8, !dbg !260, !CrayMri !277, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r412 = add i64 %r110, %r322, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r415 = add i32 %r143, %"$$induc_p50_t157.0", !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %r418 = sdiv i32 %r415, %r33, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %7 = mul i32 %r33, %r418, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r424 = sub i32 %r415, %7, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r425 = sext i32 %r424 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r428 = mul i64 %"$$arg_dvmbr_p25_t2613", %r425, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %8 = trunc i64 %"$$arg_dvmbr_p28_t2635" to i32, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r433 = mul i32 %8, %r418, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r438 = sext i32 %r418 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r439 = mul i64 %r106, %r438, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r440 = sub i64 %r412, %r439, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r441 = mul i64 %r440, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r443 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r441, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r445 = inttoptr i64 %r443 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast638 = sext i32 %r433 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r446 = getelementptr double, double* %r445, i64 %cic-gep-idxcast638, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r447 = addrspacecast double* %r446 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r448 = load double, double addrspace(1)* %r447, align 8, !dbg !260, !CrayMri !278, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r452 = add i64 %r79, %r428, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r453 = mul i64 %r452, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r454 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r453, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r456 = inttoptr i64 %r454 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast639 = sext i32 %r433 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r457 = getelementptr double, double* %r456, i64 %cic-gep-idxcast639, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r458 = addrspacecast double* %r457 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r459 = load double, double addrspace(1)* %r458, align 8, !dbg !260, !CrayMri !279, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r460 = fadd double %r448, %r459, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r464 = add i64 %r89, %r428, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r465 = mul i64 %r464, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r466 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r465, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r468 = inttoptr i64 %r466 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast640 = sext i32 %r433 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r469 = getelementptr double, double* %r468, i64 %cic-gep-idxcast640, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r470 = addrspacecast double* %r469 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r471 = load double, double addrspace(1)* %r470, align 8, !dbg !260, !CrayMri !280, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r475 = add i64 %r95, %r428, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r476 = mul i64 %r475, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r477 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r476, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r479 = inttoptr i64 %r477 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast641 = sext i32 %r433 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r480 = getelementptr double, double* %r479, i64 %cic-gep-idxcast641, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r481 = addrspacecast double* %r480 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r482 = load double, double addrspace(1)* %r481, align 8, !dbg !260, !CrayMri !281, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r483 = fadd double %r471, %r482, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r484 = fadd double %r460, %r483, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r485 = fmul double %r484, 2.500000e-01, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r489 = add i64 %r102, %r425, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r490 = mul i64 %r489, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r491 = add i64 %"$$arg_ptr_acc_t_new_t68_t27012", %r490, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r494 = sext i32 %r418 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r495 = mul i64 %"$$arg_dvmbr_p33_t2668", %r494, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r496 = inttoptr i64 %r491 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r497 = getelementptr double, double* %r496, i64 %r495, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r498 = getelementptr double, double* %r497, i64 1, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r499 = addrspacecast double* %r498 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  store double %r485, double addrspace(1)* %r499, align 8, !dbg !260, !CrayMri !282, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r502 = add i64 %r110, %r412, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r508 = add i32 %r139, %"$$induc_p50_t157.0", !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  %r513.not = icmp slt i32 %r508, %r137, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  br i1 %r513.not, label %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624", label %"file Jacobi.f90, line 395, bb39", !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395

"file Jacobi.f90, line 395, bb39":                ; preds = %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624", %"file Jacobi.f90, line 396, bb33"
  %"$$induc_p50_t157.1" = phi i32 [ %r48, %"file Jacobi.f90, line 396, bb33" ], [ %r508, %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624" ], !dbg !262 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t160.1" = phi i64 [ %r73, %"file Jacobi.f90, line 396, bb33" ], [ %r502, %"file Jacobi.f90, line 396, in inner loop at depth 0, bb38624" ], !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r520.not = icmp slt i32 %"$$induc_p50_t157.1", %r52, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  br i1 %r520.not, label %"file Jacobi.f90, line 399, in inner loop at depth 0, bb43626", label %"file Jacobi.f90, line 401, bb44", !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395

"file Jacobi.f90, line 399, in inner loop at depth 0, bb43626": ; preds = %"file Jacobi.f90, line 395, bb39", %"file Jacobi.f90, line 399, in inner loop at depth 0, bb43626"
  %"$$induc_p50_t157.2" = phi i32 [ %r615, %"file Jacobi.f90, line 399, in inner loop at depth 0, bb43626" ], [ %"$$induc_p50_t157.1", %"file Jacobi.f90, line 395, bb39" ], !dbg !262 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$$sr_e5_t160.2" = phi i64 [ %r612, %"file Jacobi.f90, line 399, in inner loop at depth 0, bb43626" ], [ %"$$sr_e5_t160.1", %"file Jacobi.f90, line 395, bb39" ], !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r525 = sdiv i32 %"$$induc_p50_t157.2", %r33, !dbg !258 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:395
  %9 = mul i32 %r33, %r525, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r531 = sub i32 %"$$induc_p50_t157.2", %9, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r532 = sext i32 %r531 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r535 = mul i64 %"$$arg_dvmbr_p25_t2613", %r532, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %10 = trunc i64 %"$$arg_dvmbr_p28_t2635" to i32, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r540 = mul i32 %10, %r525, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r545 = sext i32 %r525 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r546 = mul i64 %r106, %r545, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r547 = sub i64 %"$$sr_e5_t160.2", %r546, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r548 = mul i64 %r547, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r550 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r548, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r552 = inttoptr i64 %r550 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast642 = sext i32 %r540 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r553 = getelementptr double, double* %r552, i64 %cic-gep-idxcast642, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r554 = addrspacecast double* %r553 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r555 = load double, double addrspace(1)* %r554, align 8, !dbg !260, !CrayMri !283, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r559 = add i64 %r79, %r535, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r560 = mul i64 %r559, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r561 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r560, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r563 = inttoptr i64 %r561 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast643 = sext i32 %r540 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r564 = getelementptr double, double* %r563, i64 %cic-gep-idxcast643, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r565 = addrspacecast double* %r564 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r566 = load double, double addrspace(1)* %r565, align 8, !dbg !260, !CrayMri !284, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r567 = fadd double %r555, %r566, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r571 = add i64 %r89, %r535, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r572 = mul i64 %r571, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r573 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r572, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r575 = inttoptr i64 %r573 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast644 = sext i32 %r540 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r576 = getelementptr double, double* %r575, i64 %cic-gep-idxcast644, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r577 = addrspacecast double* %r576 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r578 = load double, double addrspace(1)* %r577, align 8, !dbg !260, !CrayMri !285, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r582 = add i64 %r95, %r535, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r583 = mul i64 %r582, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r584 = add i64 %"$$arg_ptr_acc_t_t66_t26911", %r583, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r586 = inttoptr i64 %r584 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %cic-gep-idxcast645 = sext i32 %r540 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r587 = getelementptr double, double* %r586, i64 %cic-gep-idxcast645, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r588 = addrspacecast double* %r587 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r589 = load double, double addrspace(1)* %r588, align 8, !dbg !260, !CrayMri !286, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r590 = fadd double %r578, %r589, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r591 = fadd double %r567, %r590, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r592 = fmul double %r591, 2.500000e-01, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r596 = add i64 %r102, %r532, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r597 = mul i64 %r596, 8, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r598 = add i64 %"$$arg_ptr_acc_t_new_t68_t27012", %r597, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r601 = sext i32 %r525 to i64, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r602 = mul i64 %"$$arg_dvmbr_p33_t2668", %r601, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r603 = inttoptr i64 %r598 to double*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r604 = getelementptr double, double* %r603, i64 %r602, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r605 = getelementptr double, double* %r604, i64 1, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r606 = addrspacecast double* %r605 to double addrspace(1)*, !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  store double %r592, double addrspace(1)* %r606, align 8, !dbg !260, !CrayMri !287, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r612 = add i64 %r110, %"$$sr_e5_t160.2", !dbg !260 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:396
  %r615 = add i32 %r43, %"$$induc_p50_t157.2", !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  %r620.not = icmp slt i32 %r615, %r52, !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399
  br i1 %r620.not, label %"file Jacobi.f90, line 399, in inner loop at depth 0, bb43626", label %"file Jacobi.f90, line 401, bb44", !dbg !261 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:399

"file Jacobi.f90, line 401, bb44":                ; preds = %"file Jacobi.f90, line 399, in inner loop at depth 0, bb43626", %"file Jacobi.f90, line 395, bb39", %"file Jacobi.f90, line 395, bb31", %"file Jacobi.f90, line 394, bb29", %", bb25"
  ret void, !dbg !288 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:401
}

; Function Attrs: noinline
define amdgpu_kernel void @"compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L407_44"(i64 %"$$arg_dvmbr_p36_t2711", i64 %"$$arg_dvmbr_p37_t2722", i64 %"$$arg_dvmbr_p39_t2733", i64 %"$$arg_dvmbr_p40_t2744", i64 %"$$arg_dvmbr_p42_t2755", i64 %"$$arg_dvmbr_p43_t2766", i64 %"$$arg_dvmbr_p45_t2777", i64 %"$$arg_dvmbr_p47_t2788", i64 %"$$arg_dvmbr_p48_t2799", i64 %"$$arg_ptr_acc_residual_t70_t28010", i64 %"$$arg_ptr_acc_ncells_t72_t28111", i64 %"$$arg_ptr_acc_t_t74_t28212", i64 %"$$arg_ptr_acc_t_new_t76_t28313", i64 %"$$arg_ptr_reduc_ctl_t122_t28414", i64 %"$$arg_ptr_reduc_val_t126_t28615") #0 !dbg !289 !scalarlevel !18 !cachelevel !19 !fplevel !18 {
", bb46":
  %"$redfinal_t175" = alloca double, align 8, addrspace(5), !dbg !290 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:407
  %"$redfinal_t172" = alloca double, align 8, addrspace(5), !dbg !290 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:407
  %r19 = sub i64 2, %"$$arg_dvmbr_p37_t2722", !dbg !291 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409
  %r20 = mul i64 %"$$arg_dvmbr_p36_t2711", %r19, !dbg !291 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409
  %r21 = inttoptr i64 %"$$arg_ptr_acc_ncells_t72_t28111" to i32*, !dbg !291 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409
  %r22 = getelementptr i32, i32* %r21, i64 %r20, !dbg !291 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409
  %r23 = addrspacecast i32* %r22 to i32 addrspace(1)*, !dbg !291 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409
  %r24 = load i32, i32 addrspace(1)* %r23, align 4, !dbg !291, !CrayMri !292 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409
  %r25 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r27 = icmp sgt i32 %r24, 0, !dbg !291 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409
  br i1 %r27, label %"file Jacobi.f90, line 409, bb50", label %"file Jacobi.f90, line 407, bb65", !dbg !291 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:409

"file Jacobi.f90, line 409, bb50":                ; preds = %", bb46"
  %r33 = sub i64 1, %"$$arg_dvmbr_p37_t2722", !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r34 = mul i64 %"$$arg_dvmbr_p36_t2711", %r33, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r35 = inttoptr i64 %"$$arg_ptr_acc_ncells_t72_t28111" to i32*, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r36 = getelementptr i32, i32* %r35, i64 %r34, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r37 = addrspacecast i32* %r36 to i32 addrspace(1)*, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r38 = load i32, i32 addrspace(1)* %r37, align 4, !dbg !294, !CrayMri !295 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r40 = icmp sgt i32 %r38, 0, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  br i1 %r40, label %"file Jacobi.f90, line 410, bb52", label %"file Jacobi.f90, line 407, bb65", !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410

"file Jacobi.f90, line 410, bb52":                ; preds = %"file Jacobi.f90, line 409, bb50"
  %r43 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r44 = trunc i64 %r43 to i32, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r46 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r47 = trunc i64 %r46 to i32, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r48 = mul i32 %r44, %r47, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r49 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r51 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r53 = mul i32 %r51, %r44, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r54 = add i32 %r49, %r53, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r58 = mul i32 %r24, %r38, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r61.not = icmp slt i32 %r54, %r58, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  br i1 %r61.not, label %"file Jacobi.f90, line 411, bb54", label %"file Jacobi.f90, line 407, bb65", !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410

"file Jacobi.f90, line 411, bb54":                ; preds = %"file Jacobi.f90, line 410, bb52"
  %r66 = sub i64 1, %"$$arg_dvmbr_p43_t2766", !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r69 = sub i64 1, %"$$arg_dvmbr_p40_t2744", !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r70 = mul i64 %"$$arg_dvmbr_p39_t2733", %r69, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r71 = mul i64 %"$$arg_dvmbr_p42_t2755", %r66, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r72 = add i64 %r70, %r71, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r75 = sub i64 1, %"$$arg_dvmbr_p48_t2799", !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r78 = mul i64 %"$$arg_dvmbr_p47_t2788", %r75, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r79 = sub i64 %r78, %"$$arg_dvmbr_p45_t2777", !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r54.neg = sub i32 0, %r54
  %r85 = add i32 %r58, -1, !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  %r82 = add i32 %r85, %r54.neg, !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  %r86 = add i32 %r82, %r48, !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  %r88 = sdiv i32 %r86, %r48, !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  %r91 = icmp sgt i32 %r88, 3, !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  br i1 %r91, label %"file Jacobi.f90, line 410, bb56", label %"file Jacobi.f90, line 410, bb60", !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413

"file Jacobi.f90, line 410, bb56":                ; preds = %"file Jacobi.f90, line 411, bb54"
  %r98 = ashr i32 %r88, 1, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r99 = lshr i32 %r98, 30, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r100 = add i32 %r88, %r99, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r101 = and i32 %r100, -4, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r102.neg = sub i32 %r101, %r88, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r105 = mul i32 %r48, %r102.neg, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r106 = add i32 %r58, %r105, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r108 = shl i32 %r48, 2, !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  %r110 = mul i32 %r48, 3, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r112 = shl i32 %r48, 1, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  br label %", in inner reduction loop at depth 0, bb57", !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411

", in inner reduction loop at depth 0, bb57":     ; preds = %", in inner reduction loop at depth 0, bb57", %"file Jacobi.f90, line 410, bb56"
  %"$$induc_p54_t146.0" = phi i32 [ %r54, %"file Jacobi.f90, line 410, bb56" ], [ %r348, %", in inner reduction loop at depth 0, bb57" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t52.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 410, bb56" ], [ %r339, %", in inner reduction loop at depth 0, bb57" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r115 = sdiv i32 %"$$induc_p54_t146.0", %r38, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %0 = mul i32 %r38, %r115, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r121 = sub i32 %"$$induc_p54_t146.0", %0, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r122 = sext i32 %r121 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r126 = add i64 %r79, %r122, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r127 = mul i64 %r126, 8, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r128 = add i64 %"$$arg_ptr_acc_t_new_t76_t28313", %r127, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r131 = sext i32 %r115 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r132 = mul i64 %"$$arg_dvmbr_p47_t2788", %r131, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r133 = inttoptr i64 %r128 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r134 = getelementptr double, double* %r133, i64 %r132, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r135 = getelementptr double, double* %r134, i64 1, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r136 = addrspacecast double* %r135 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r137 = load double, double addrspace(1)* %r136, align 8, !dbg !296, !CrayMri !299, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r142 = mul i64 %"$$arg_dvmbr_p39_t2733", %r122, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r143 = add i64 %r72, %r142, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r144 = shl i64 %r143, 3, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r145 = add i64 %"$$arg_ptr_acc_t_t74_t28212", %r144, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %1 = trunc i64 %"$$arg_dvmbr_p42_t2755" to i32, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r150 = mul i32 %1, %r115, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r155 = inttoptr i64 %r145 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %cic-gep-idxcast = sext i32 %r150 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r156 = getelementptr double, double* %r155, i64 %cic-gep-idxcast, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r157 = addrspacecast double* %r156 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r158 = load double, double addrspace(1)* %r157, align 8, !dbg !296, !CrayMri !300, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r159 = fsub double %r137, %r158, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r160 = tail call double @llvm.fabs.f64(double %r159), !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r161 = fcmp ogt double %"$_pvt3_residual_t52.0", %r160, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r162 = select i1 %r161, double %"$_pvt3_residual_t52.0", double %r160, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r166 = inttoptr i64 %r145 to double*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %cic-gep-idxcast822 = sext i32 %r150 to i64, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r167 = getelementptr double, double* %r166, i64 %cic-gep-idxcast822, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r168 = addrspacecast double* %r167 to double addrspace(1)*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  store double %r137, double addrspace(1)* %r168, align 8, !dbg !301, !CrayMri !302, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r171 = add i32 %r48, %"$$induc_p54_t146.0", !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r174 = sdiv i32 %r171, %r38, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %2 = mul i32 %r38, %r174, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r180 = sub i32 %r171, %2, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r181 = sext i32 %r180 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r185 = add i64 %r79, %r181, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r186 = mul i64 %r185, 8, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r187 = add i64 %"$$arg_ptr_acc_t_new_t76_t28313", %r186, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r190 = sext i32 %r174 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r191 = mul i64 %"$$arg_dvmbr_p47_t2788", %r190, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r192 = inttoptr i64 %r187 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r193 = getelementptr double, double* %r192, i64 %r191, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r194 = getelementptr double, double* %r193, i64 1, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r195 = addrspacecast double* %r194 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r196 = load double, double addrspace(1)* %r195, align 8, !dbg !296, !CrayMri !303, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r201 = mul i64 %"$$arg_dvmbr_p39_t2733", %r181, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r202 = add i64 %r72, %r201, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r203 = shl i64 %r202, 3, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r204 = add i64 %"$$arg_ptr_acc_t_t74_t28212", %r203, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %3 = trunc i64 %"$$arg_dvmbr_p42_t2755" to i32, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r209 = mul i32 %3, %r174, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r214 = inttoptr i64 %r204 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %cic-gep-idxcast823 = sext i32 %r209 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r215 = getelementptr double, double* %r214, i64 %cic-gep-idxcast823, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r216 = addrspacecast double* %r215 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r217 = load double, double addrspace(1)* %r216, align 8, !dbg !296, !CrayMri !304, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r218 = fsub double %r196, %r217, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r219 = tail call double @llvm.fabs.f64(double %r218), !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r220 = fcmp ogt double %r162, %r219, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r221 = select i1 %r220, double %r162, double %r219, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r225 = inttoptr i64 %r204 to double*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %cic-gep-idxcast824 = sext i32 %r209 to i64, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r226 = getelementptr double, double* %r225, i64 %cic-gep-idxcast824, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r227 = addrspacecast double* %r226 to double addrspace(1)*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  store double %r196, double addrspace(1)* %r227, align 8, !dbg !301, !CrayMri !305, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r230 = add i32 %r112, %"$$induc_p54_t146.0", !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r233 = sdiv i32 %r230, %r38, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %4 = mul i32 %r38, %r233, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r239 = sub i32 %r230, %4, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r240 = sext i32 %r239 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r244 = add i64 %r79, %r240, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r245 = mul i64 %r244, 8, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r246 = add i64 %"$$arg_ptr_acc_t_new_t76_t28313", %r245, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r249 = sext i32 %r233 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r250 = mul i64 %"$$arg_dvmbr_p47_t2788", %r249, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r251 = inttoptr i64 %r246 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r252 = getelementptr double, double* %r251, i64 %r250, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r253 = getelementptr double, double* %r252, i64 1, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r254 = addrspacecast double* %r253 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r255 = load double, double addrspace(1)* %r254, align 8, !dbg !296, !CrayMri !306, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r260 = mul i64 %"$$arg_dvmbr_p39_t2733", %r240, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r261 = add i64 %r72, %r260, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r262 = shl i64 %r261, 3, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r263 = add i64 %"$$arg_ptr_acc_t_t74_t28212", %r262, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %5 = trunc i64 %"$$arg_dvmbr_p42_t2755" to i32, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r268 = mul i32 %5, %r233, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r273 = inttoptr i64 %r263 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %cic-gep-idxcast825 = sext i32 %r268 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r274 = getelementptr double, double* %r273, i64 %cic-gep-idxcast825, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r275 = addrspacecast double* %r274 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r276 = load double, double addrspace(1)* %r275, align 8, !dbg !296, !CrayMri !307, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r277 = fsub double %r255, %r276, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r278 = tail call double @llvm.fabs.f64(double %r277), !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r279 = fcmp ogt double %r221, %r278, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r280 = select i1 %r279, double %r221, double %r278, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r284 = inttoptr i64 %r263 to double*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %cic-gep-idxcast826 = sext i32 %r268 to i64, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r285 = getelementptr double, double* %r284, i64 %cic-gep-idxcast826, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r286 = addrspacecast double* %r285 to double addrspace(1)*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  store double %r255, double addrspace(1)* %r286, align 8, !dbg !301, !CrayMri !308, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r289 = add i32 %r110, %"$$induc_p54_t146.0", !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %r292 = sdiv i32 %r289, %r38, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %6 = mul i32 %r38, %r292, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r298 = sub i32 %r289, %6, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r299 = sext i32 %r298 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r303 = add i64 %r79, %r299, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r304 = mul i64 %r303, 8, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r305 = add i64 %"$$arg_ptr_acc_t_new_t76_t28313", %r304, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r308 = sext i32 %r292 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r309 = mul i64 %"$$arg_dvmbr_p47_t2788", %r308, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r310 = inttoptr i64 %r305 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r311 = getelementptr double, double* %r310, i64 %r309, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r312 = getelementptr double, double* %r311, i64 1, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r313 = addrspacecast double* %r312 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r314 = load double, double addrspace(1)* %r313, align 8, !dbg !296, !CrayMri !309, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r319 = mul i64 %"$$arg_dvmbr_p39_t2733", %r299, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r320 = add i64 %r72, %r319, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r321 = shl i64 %r320, 3, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r322 = add i64 %"$$arg_ptr_acc_t_t74_t28212", %r321, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %7 = trunc i64 %"$$arg_dvmbr_p42_t2755" to i32, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r327 = mul i32 %7, %r292, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r332 = inttoptr i64 %r322 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %cic-gep-idxcast827 = sext i32 %r327 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r333 = getelementptr double, double* %r332, i64 %cic-gep-idxcast827, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r334 = addrspacecast double* %r333 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r335 = load double, double addrspace(1)* %r334, align 8, !dbg !296, !CrayMri !310, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r336 = fsub double %r314, %r335, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r337 = tail call double @llvm.fabs.f64(double %r336), !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r338 = fcmp ogt double %r280, %r337, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r339 = select i1 %r338, double %r280, double %r337, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r343 = inttoptr i64 %r322 to double*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %cic-gep-idxcast828 = sext i32 %r327 to i64, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r344 = getelementptr double, double* %r343, i64 %cic-gep-idxcast828, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r345 = addrspacecast double* %r344 to double addrspace(1)*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  store double %r314, double addrspace(1)* %r345, align 8, !dbg !301, !CrayMri !311, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r348 = add i32 %r108, %"$$induc_p54_t146.0", !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  %r353.not = icmp slt i32 %r348, %r106, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  br i1 %r353.not, label %", in inner reduction loop at depth 0, bb57", label %"file Jacobi.f90, line 410, bb60", !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410

"file Jacobi.f90, line 410, bb60":                ; preds = %", in inner reduction loop at depth 0, bb57", %"file Jacobi.f90, line 411, bb54"
  %"$$induc_p54_t146.1" = phi i32 [ %r54, %"file Jacobi.f90, line 411, bb54" ], [ %r348, %", in inner reduction loop at depth 0, bb57" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t52.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 411, bb54" ], [ %r339, %", in inner reduction loop at depth 0, bb57" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r360.not = icmp slt i32 %"$$induc_p54_t146.1", %r58, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  br i1 %r360.not, label %"410utop1", label %"file Jacobi.f90, line 407, bb65", !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410

"410utop1":                                       ; preds = %"file Jacobi.f90, line 410, bb60", %"410utop1"
  %"$$induc_p54_t146.2" = phi i32 [ %r421, %"410utop1" ], [ %"$$induc_p54_t146.1", %"file Jacobi.f90, line 410, bb60" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t52.2" = phi double [ %r412, %"410utop1" ], [ %"$_pvt3_residual_t52.1", %"file Jacobi.f90, line 410, bb60" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r365 = sdiv i32 %"$$induc_p54_t146.2", %r38, !dbg !294 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:410
  %8 = mul i32 %r38, %r365, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r371 = sub i32 %"$$induc_p54_t146.2", %8, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r372 = sext i32 %r371 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r376 = add i64 %r79, %r372, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r377 = mul i64 %r376, 8, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r378 = add i64 %"$$arg_ptr_acc_t_new_t76_t28313", %r377, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r381 = sext i32 %r365 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r382 = mul i64 %"$$arg_dvmbr_p47_t2788", %r381, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r383 = inttoptr i64 %r378 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r384 = getelementptr double, double* %r383, i64 %r382, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r385 = getelementptr double, double* %r384, i64 1, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r386 = addrspacecast double* %r385 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r387 = load double, double addrspace(1)* %r386, align 8, !dbg !296, !CrayMri !312, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r392 = mul i64 %"$$arg_dvmbr_p39_t2733", %r372, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r393 = add i64 %r72, %r392, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r394 = shl i64 %r393, 3, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r395 = add i64 %"$$arg_ptr_acc_t_t74_t28212", %r394, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %9 = trunc i64 %"$$arg_dvmbr_p42_t2755" to i32, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r400 = mul i32 %9, %r365, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r405 = inttoptr i64 %r395 to double*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %cic-gep-idxcast829 = sext i32 %r400 to i64, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r406 = getelementptr double, double* %r405, i64 %cic-gep-idxcast829, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r407 = addrspacecast double* %r406 to double addrspace(1)*, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r408 = load double, double addrspace(1)* %r407, align 8, !dbg !296, !CrayMri !313, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r409 = fsub double %r387, %r408, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r410 = tail call double @llvm.fabs.f64(double %r409), !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r411 = fcmp ogt double %"$_pvt3_residual_t52.2", %r410, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r412 = select i1 %r411, double %"$_pvt3_residual_t52.2", double %r410, !dbg !296 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:411
  %r416 = inttoptr i64 %r395 to double*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %cic-gep-idxcast830 = sext i32 %r400 to i64, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r417 = getelementptr double, double* %r416, i64 %cic-gep-idxcast830, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r418 = addrspacecast double* %r417 to double addrspace(1)*, !dbg !301 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  store double %r387, double addrspace(1)* %r418, align 8, !dbg !301, !CrayMri !314, !looptrips !19, !autoprefetch !28, !nowrntedge !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:412
  %r421 = add i32 %r48, %"$$induc_p54_t146.2", !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  %r426.not = icmp slt i32 %r421, %r58, !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413
  br i1 %r426.not, label %"410utop1", label %"file Jacobi.f90, line 407, bb65", !dbg !297 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:413

"file Jacobi.f90, line 407, bb65":                ; preds = %"410utop1", %"file Jacobi.f90, line 410, bb60", %"file Jacobi.f90, line 410, bb52", %"file Jacobi.f90, line 409, bb50", %", bb46"
  %"$$pre_103_t182.0" = phi i32 [ %r25, %", bb46" ], [ %r25, %"file Jacobi.f90, line 409, bb50" ], [ %r49, %"file Jacobi.f90, line 410, bb52" ], [ %r49, %"file Jacobi.f90, line 410, bb60" ], [ %r49, %"410utop1" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %"$_pvt3_residual_t52.3" = phi double [ 0xFFF0000000000000, %", bb46" ], [ 0xFFF0000000000000, %"file Jacobi.f90, line 409, bb50" ], [ 0xFFF0000000000000, %"file Jacobi.f90, line 410, bb52" ], [ %"$_pvt3_residual_t52.1", %"file Jacobi.f90, line 410, bb60" ], [ %r412, %"410utop1" ], !dbg !298 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:0
  %r431 = fcmp ogt double %"$_pvt3_residual_t52.3", 0xFFF0000000000000, !dbg !290 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:407
  %r432 = select i1 %r431, double %"$_pvt3_residual_t52.3", double 0xFFF0000000000000, !dbg !290 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:407
  %r435 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast831 = sext i32 %r435 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r436 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast831, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r437 = getelementptr double, double* %r436, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r438 = addrspacecast double* %r437 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r432, double addrspace(3)* %r438, align 8, !dbg !293, !CrayMri !315 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r439 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast832 = sext i32 %r439 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r440 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast832, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r441 = getelementptr double, double* %r440, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r442 = addrspacecast double* %r441 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r443 = load volatile double, double addrspace(3)* %r442, align 8, !dbg !293, !CrayMri !316 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r444 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r445 = icmp ult i32 %r444, 128, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r445, label %"file Jacobi.f90, line 415, bb67", label %"file Jacobi.f90, line 415, bb68", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb67":                ; preds = %"file Jacobi.f90, line 407, bb65"
  %r448 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast833 = sext i32 %r448 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r449 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast833, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r450 = getelementptr double, double* %r449, i64 129, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r451 = addrspacecast double* %r450 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r452 = load volatile double, double addrspace(3)* %r451, align 8, !dbg !293, !CrayMri !317 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r455 = fcmp ogt double %r443, %r452, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r456 = select i1 %r455, double %r443, double %r452, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r458 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast834 = sext i32 %r458 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r459 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast834, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r460 = getelementptr double, double* %r459, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r461 = addrspacecast double* %r460 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r456, double addrspace(3)* %r461, align 8, !dbg !293, !CrayMri !318 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb68", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb68":                ; preds = %"file Jacobi.f90, line 415, bb67", %"file Jacobi.f90, line 407, bb65"
  %"$redfold_left_temp_t170.0" = phi double [ %r443, %"file Jacobi.f90, line 407, bb65" ], [ %r456, %"file Jacobi.f90, line 415, bb67" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r462 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r463 = icmp ult i32 %r462, 64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r463, label %"file Jacobi.f90, line 415, bb70", label %"file Jacobi.f90, line 415, bb71", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb70":                ; preds = %"file Jacobi.f90, line 415, bb68"
  %r466 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast835 = sext i32 %r466 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r467 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast835, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r468 = getelementptr double, double* %r467, i64 65, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r469 = addrspacecast double* %r468 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r470 = load volatile double, double addrspace(3)* %r469, align 8, !dbg !293, !CrayMri !319 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r473 = fcmp ogt double %"$redfold_left_temp_t170.0", %r470, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r474 = select i1 %r473, double %"$redfold_left_temp_t170.0", double %r470, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r476 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast836 = sext i32 %r476 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r477 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast836, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r478 = getelementptr double, double* %r477, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r479 = addrspacecast double* %r478 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r474, double addrspace(3)* %r479, align 8, !dbg !293, !CrayMri !320 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb71", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb71":                ; preds = %"file Jacobi.f90, line 415, bb70", %"file Jacobi.f90, line 415, bb68"
  %"$redfold_left_temp_t170.1" = phi double [ %"$redfold_left_temp_t170.0", %"file Jacobi.f90, line 415, bb68" ], [ %r474, %"file Jacobi.f90, line 415, bb70" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r480 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r481 = icmp ult i32 %r480, 32, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r481, label %"file Jacobi.f90, line 415, bb73", label %"file Jacobi.f90, line 415, bb74", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb73":                ; preds = %"file Jacobi.f90, line 415, bb71"
  %r484 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast837 = sext i32 %r484 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r485 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast837, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r486 = getelementptr double, double* %r485, i64 33, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r487 = addrspacecast double* %r486 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r488 = load volatile double, double addrspace(3)* %r487, align 8, !dbg !293, !CrayMri !321 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r491 = fcmp ogt double %"$redfold_left_temp_t170.1", %r488, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r492 = select i1 %r491, double %"$redfold_left_temp_t170.1", double %r488, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r494 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast838 = sext i32 %r494 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r495 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast838, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r496 = getelementptr double, double* %r495, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r497 = addrspacecast double* %r496 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r492, double addrspace(3)* %r497, align 8, !dbg !293, !CrayMri !322 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb74", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb74":                ; preds = %"file Jacobi.f90, line 415, bb73", %"file Jacobi.f90, line 415, bb71"
  %"$redfold_left_temp_t170.2" = phi double [ %"$redfold_left_temp_t170.1", %"file Jacobi.f90, line 415, bb71" ], [ %r492, %"file Jacobi.f90, line 415, bb73" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r498 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r499 = icmp ult i32 %r498, 16, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r499, label %"file Jacobi.f90, line 415, bb76", label %"file Jacobi.f90, line 415, bb77", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb76":                ; preds = %"file Jacobi.f90, line 415, bb74"
  %r502 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast839 = sext i32 %r502 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r503 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast839, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r504 = getelementptr double, double* %r503, i64 17, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r505 = addrspacecast double* %r504 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r506 = load volatile double, double addrspace(3)* %r505, align 8, !dbg !293, !CrayMri !323 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r509 = fcmp ogt double %"$redfold_left_temp_t170.2", %r506, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r510 = select i1 %r509, double %"$redfold_left_temp_t170.2", double %r506, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r512 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast840 = sext i32 %r512 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r513 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast840, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r514 = getelementptr double, double* %r513, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r515 = addrspacecast double* %r514 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r510, double addrspace(3)* %r515, align 8, !dbg !293, !CrayMri !324 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb77", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb77":                ; preds = %"file Jacobi.f90, line 415, bb76", %"file Jacobi.f90, line 415, bb74"
  %"$redfold_left_temp_t170.3" = phi double [ %"$redfold_left_temp_t170.2", %"file Jacobi.f90, line 415, bb74" ], [ %r510, %"file Jacobi.f90, line 415, bb76" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r516 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r517 = icmp ult i32 %r516, 8, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r517, label %"file Jacobi.f90, line 415, bb79", label %"file Jacobi.f90, line 415, bb80", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb79":                ; preds = %"file Jacobi.f90, line 415, bb77"
  %r520 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast841 = sext i32 %r520 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r521 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast841, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r522 = getelementptr double, double* %r521, i64 9, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r523 = addrspacecast double* %r522 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r524 = load volatile double, double addrspace(3)* %r523, align 8, !dbg !293, !CrayMri !325 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r527 = fcmp ogt double %"$redfold_left_temp_t170.3", %r524, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r528 = select i1 %r527, double %"$redfold_left_temp_t170.3", double %r524, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r530 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast842 = sext i32 %r530 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r531 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast842, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r532 = getelementptr double, double* %r531, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r533 = addrspacecast double* %r532 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r528, double addrspace(3)* %r533, align 8, !dbg !293, !CrayMri !326 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb80", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb80":                ; preds = %"file Jacobi.f90, line 415, bb79", %"file Jacobi.f90, line 415, bb77"
  %"$redfold_left_temp_t170.4" = phi double [ %"$redfold_left_temp_t170.3", %"file Jacobi.f90, line 415, bb77" ], [ %r528, %"file Jacobi.f90, line 415, bb79" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r534 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r535 = icmp ult i32 %r534, 4, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r535, label %"file Jacobi.f90, line 415, bb82", label %"file Jacobi.f90, line 415, bb83", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb82":                ; preds = %"file Jacobi.f90, line 415, bb80"
  %r538 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast843 = sext i32 %r538 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r539 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast843, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r540 = getelementptr double, double* %r539, i64 5, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r541 = addrspacecast double* %r540 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r542 = load volatile double, double addrspace(3)* %r541, align 8, !dbg !293, !CrayMri !327 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r545 = fcmp ogt double %"$redfold_left_temp_t170.4", %r542, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r546 = select i1 %r545, double %"$redfold_left_temp_t170.4", double %r542, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r548 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast844 = sext i32 %r548 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r549 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast844, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r550 = getelementptr double, double* %r549, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r551 = addrspacecast double* %r550 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r546, double addrspace(3)* %r551, align 8, !dbg !293, !CrayMri !328 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb83", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb83":                ; preds = %"file Jacobi.f90, line 415, bb82", %"file Jacobi.f90, line 415, bb80"
  %"$redfold_left_temp_t170.5" = phi double [ %"$redfold_left_temp_t170.4", %"file Jacobi.f90, line 415, bb80" ], [ %r546, %"file Jacobi.f90, line 415, bb82" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r552 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r553 = icmp ult i32 %r552, 2, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r553, label %"file Jacobi.f90, line 415, bb85", label %"file Jacobi.f90, line 415, bb86", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb85":                ; preds = %"file Jacobi.f90, line 415, bb83"
  %r556 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast845 = sext i32 %r556 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r557 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast845, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r558 = getelementptr double, double* %r557, i64 3, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r559 = addrspacecast double* %r558 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r560 = load volatile double, double addrspace(3)* %r559, align 8, !dbg !293, !CrayMri !329 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r563 = fcmp ogt double %"$redfold_left_temp_t170.5", %r560, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r564 = select i1 %r563, double %"$redfold_left_temp_t170.5", double %r560, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r566 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast846 = sext i32 %r566 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r567 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast846, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r568 = getelementptr double, double* %r567, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r569 = addrspacecast double* %r568 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r564, double addrspace(3)* %r569, align 8, !dbg !293, !CrayMri !330 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb86", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb86":                ; preds = %"file Jacobi.f90, line 415, bb85", %"file Jacobi.f90, line 415, bb83"
  %"$redfold_left_temp_t170.6" = phi double [ %"$redfold_left_temp_t170.5", %"file Jacobi.f90, line 415, bb83" ], [ %r564, %"file Jacobi.f90, line 415, bb85" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r570 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r571.not = icmp eq i32 %r570, 0, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r571.not, label %"file Jacobi.f90, line 415, bb88", label %"file Jacobi.f90, line 415, bb89", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb88":                ; preds = %"file Jacobi.f90, line 415, bb86"
  %r574 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast847 = sext i32 %r574 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r575 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast847, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r576 = getelementptr double, double* %r575, i64 2, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r577 = addrspacecast double* %r576 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r578 = load volatile double, double addrspace(3)* %r577, align 8, !dbg !293, !CrayMri !331 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r581 = fcmp ogt double %"$redfold_left_temp_t170.6", %r578, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r582 = select i1 %r581, double %"$redfold_left_temp_t170.6", double %r578, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r584 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast848 = sext i32 %r584 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r585 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast848, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r586 = getelementptr double, double* %r585, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r587 = addrspacecast double* %r586 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r582, double addrspace(3)* %r587, align 8, !dbg !293, !CrayMri !332 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb89", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb89":                ; preds = %"file Jacobi.f90, line 415, bb88", %"file Jacobi.f90, line 415, bb86"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r588 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !293, !CrayMri !333 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r588, double addrspace(5)* %"$redfinal_t172", align 8, !dbg !293, !CrayMri !334 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r589 = load volatile double, double addrspace(5)* %"$redfinal_t172", align 8, !dbg !293, !CrayMri !335 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r591.not = icmp eq i32 %"$$pre_103_t182.0", 0, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r591.not, label %"file Jacobi.f90, line 415, bb91", label %"file Jacobi.f90, line 415, bb95.critedge", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb91":                ; preds = %"file Jacobi.f90, line 415, bb89"
  %r595 = load volatile double, double addrspace(5)* %"$redfinal_t172", align 8, !dbg !293, !CrayMri !336 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r597 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r598 = zext i32 %r597 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r599 = inttoptr i64 %"$$arg_ptr_reduc_val_t126_t28615" to double*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r600 = getelementptr double, double* %r599, i64 %r598, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r601 = addrspacecast double* %r600 to double addrspace(1)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r595, double addrspace(1)* %r601, align 8, !dbg !293, !CrayMri !337 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  fence syncscope("agent") seq_cst, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r604 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r605 = trunc i64 %r604 to i32, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r606 = sub i32 1, %r605, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r607 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r608 = icmp eq i32 %r607, 0, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r611 = select i1 %r608, i32 %r606, i32 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r613 = inttoptr i64 %"$$arg_ptr_reduc_ctl_t122_t28414" to i32 addrspace(1)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r614 = addrspacecast i32 addrspace(1)* %r613 to i32*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %10 = atomicrmw add i32* %r614, i32 %r611 syncscope("agent") seq_cst, align 4, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r618 = add i32 %10, %r611, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store i32 %r618, i32 addrspace(3)* @reduc_share_ctl_c8_AMD_LDS_14, align 32, !dbg !293, !CrayMri !338 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb95", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb95.critedge":       ; preds = %"file Jacobi.f90, line 415, bb89"
  fence syncscope("agent") seq_cst, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb95", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb95":                ; preds = %"file Jacobi.f90, line 415, bb95.critedge", %"file Jacobi.f90, line 415, bb91"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r619 = load volatile i32, i32 addrspace(3)* @reduc_share_ctl_c8_AMD_LDS_14, align 32, !dbg !293, !CrayMri !339 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r620.not = icmp eq i32 %r619, 0, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r620.not, label %"file Jacobi.f90, line 415, bb97", label %"file Jacobi.f90, line 415, bb131", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb97":                ; preds = %"file Jacobi.f90, line 415, bb95"
  %r625 = tail call i64 @__ockl_get_num_groups(i32 0), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r626 = trunc i64 %r625 to i32, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r629.not = icmp ult i32 %"$$pre_103_t182.0", %r626, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r629.not, label %"file Jacobi.f90, line 415, bb101", label %"file Jacobi.f90, line 415, bb104", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb101":               ; preds = %"file Jacobi.f90, line 415, bb97"
  %r633 = and i64 %r625, 4294967295, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r634 = tail call i64 @__ockl_get_local_size(i32 0), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r635 = trunc i64 %r634 to i32, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821": ; preds = %"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821", %"file Jacobi.f90, line 415, bb101"
  %"$$reduc_pvt_t125_t285.0" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 415, bb101" ], [ %r645, %"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %"$$induc_p69_t147.0" = phi i32 [ %"$$pre_103_t182.0", %"file Jacobi.f90, line 415, bb101" ], [ %r648, %"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r639 = sext i32 %"$$induc_p69_t147.0" to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r640 = inttoptr i64 %"$$arg_ptr_reduc_val_t126_t28615" to double*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r641 = getelementptr double, double* %r640, i64 %r639, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r642 = addrspacecast double* %r641 to double addrspace(1)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r643 = load double, double addrspace(1)* %r642, align 8, !dbg !293, !CrayMri !340, !looptrips !19, !autoprefetch !28 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r644 = fcmp ogt double %"$$reduc_pvt_t125_t285.0", %r643, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r645 = select i1 %r644, double %"$$reduc_pvt_t125_t285.0", double %r643, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r648 = add i32 %r635, %"$$induc_p69_t147.0", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r650 = sext i32 %r648 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r652.not = icmp sgt i64 %r633, %r650, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r652.not, label %"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821", label %"file Jacobi.f90, line 415, bb104", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb104":               ; preds = %"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821", %"file Jacobi.f90, line 415, bb97"
  %"$$reduc_pvt_t125_t285.1" = phi double [ 0xFFF0000000000000, %"file Jacobi.f90, line 415, bb97" ], [ %r645, %"file Jacobi.f90, line 415, in inner loop at depth 0, bb103821" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r656 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast849 = sext i32 %r656 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r657 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast849, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r658 = getelementptr double, double* %r657, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r659 = addrspacecast double* %r658 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %"$$reduc_pvt_t125_t285.1", double addrspace(3)* %r659, align 8, !dbg !293, !CrayMri !341 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r660 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast850 = sext i32 %r660 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r661 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast850, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r662 = getelementptr double, double* %r661, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r663 = addrspacecast double* %r662 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r664 = load volatile double, double addrspace(3)* %r663, align 8, !dbg !293, !CrayMri !342 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r665 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r666 = icmp ult i32 %r665, 128, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r666, label %"file Jacobi.f90, line 415, bb106", label %"file Jacobi.f90, line 415, bb107", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb106":               ; preds = %"file Jacobi.f90, line 415, bb104"
  %r669 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast851 = sext i32 %r669 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r670 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast851, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r671 = getelementptr double, double* %r670, i64 129, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r672 = addrspacecast double* %r671 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r673 = load volatile double, double addrspace(3)* %r672, align 8, !dbg !293, !CrayMri !343 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r676 = fcmp ogt double %r664, %r673, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r677 = select i1 %r676, double %r664, double %r673, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r679 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast852 = sext i32 %r679 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r680 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast852, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r681 = getelementptr double, double* %r680, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r682 = addrspacecast double* %r681 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r677, double addrspace(3)* %r682, align 8, !dbg !293, !CrayMri !344 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb107", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb107":               ; preds = %"file Jacobi.f90, line 415, bb106", %"file Jacobi.f90, line 415, bb104"
  %"$redfold_left_temp_t173.0" = phi double [ %r664, %"file Jacobi.f90, line 415, bb104" ], [ %r677, %"file Jacobi.f90, line 415, bb106" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r683 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r684 = icmp ult i32 %r683, 64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r684, label %"file Jacobi.f90, line 415, bb109", label %"file Jacobi.f90, line 415, bb110", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb109":               ; preds = %"file Jacobi.f90, line 415, bb107"
  %r687 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast853 = sext i32 %r687 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r688 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast853, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r689 = getelementptr double, double* %r688, i64 65, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r690 = addrspacecast double* %r689 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r691 = load volatile double, double addrspace(3)* %r690, align 8, !dbg !293, !CrayMri !345 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r694 = fcmp ogt double %"$redfold_left_temp_t173.0", %r691, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r695 = select i1 %r694, double %"$redfold_left_temp_t173.0", double %r691, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r697 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast854 = sext i32 %r697 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r698 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast854, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r699 = getelementptr double, double* %r698, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r700 = addrspacecast double* %r699 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r695, double addrspace(3)* %r700, align 8, !dbg !293, !CrayMri !346 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb110", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb110":               ; preds = %"file Jacobi.f90, line 415, bb109", %"file Jacobi.f90, line 415, bb107"
  %"$redfold_left_temp_t173.1" = phi double [ %"$redfold_left_temp_t173.0", %"file Jacobi.f90, line 415, bb107" ], [ %r695, %"file Jacobi.f90, line 415, bb109" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r701 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r702 = icmp ult i32 %r701, 32, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r702, label %"file Jacobi.f90, line 415, bb112", label %"file Jacobi.f90, line 415, bb113", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb112":               ; preds = %"file Jacobi.f90, line 415, bb110"
  %r705 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast855 = sext i32 %r705 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r706 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast855, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r707 = getelementptr double, double* %r706, i64 33, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r708 = addrspacecast double* %r707 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r709 = load volatile double, double addrspace(3)* %r708, align 8, !dbg !293, !CrayMri !347 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r712 = fcmp ogt double %"$redfold_left_temp_t173.1", %r709, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r713 = select i1 %r712, double %"$redfold_left_temp_t173.1", double %r709, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r715 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast856 = sext i32 %r715 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r716 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast856, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r717 = getelementptr double, double* %r716, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r718 = addrspacecast double* %r717 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r713, double addrspace(3)* %r718, align 8, !dbg !293, !CrayMri !348 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb113", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb113":               ; preds = %"file Jacobi.f90, line 415, bb112", %"file Jacobi.f90, line 415, bb110"
  %"$redfold_left_temp_t173.2" = phi double [ %"$redfold_left_temp_t173.1", %"file Jacobi.f90, line 415, bb110" ], [ %r713, %"file Jacobi.f90, line 415, bb112" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r719 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r720 = icmp ult i32 %r719, 16, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r720, label %"file Jacobi.f90, line 415, bb115", label %"file Jacobi.f90, line 415, bb116", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb115":               ; preds = %"file Jacobi.f90, line 415, bb113"
  %r723 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast857 = sext i32 %r723 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r724 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast857, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r725 = getelementptr double, double* %r724, i64 17, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r726 = addrspacecast double* %r725 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r727 = load volatile double, double addrspace(3)* %r726, align 8, !dbg !293, !CrayMri !349 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r730 = fcmp ogt double %"$redfold_left_temp_t173.2", %r727, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r731 = select i1 %r730, double %"$redfold_left_temp_t173.2", double %r727, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r733 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast858 = sext i32 %r733 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r734 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast858, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r735 = getelementptr double, double* %r734, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r736 = addrspacecast double* %r735 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r731, double addrspace(3)* %r736, align 8, !dbg !293, !CrayMri !350 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb116", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb116":               ; preds = %"file Jacobi.f90, line 415, bb115", %"file Jacobi.f90, line 415, bb113"
  %"$redfold_left_temp_t173.3" = phi double [ %"$redfold_left_temp_t173.2", %"file Jacobi.f90, line 415, bb113" ], [ %r731, %"file Jacobi.f90, line 415, bb115" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r737 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r738 = icmp ult i32 %r737, 8, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r738, label %"file Jacobi.f90, line 415, bb118", label %"file Jacobi.f90, line 415, bb119", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb118":               ; preds = %"file Jacobi.f90, line 415, bb116"
  %r741 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast859 = sext i32 %r741 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r742 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast859, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r743 = getelementptr double, double* %r742, i64 9, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r744 = addrspacecast double* %r743 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r745 = load volatile double, double addrspace(3)* %r744, align 8, !dbg !293, !CrayMri !351 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r748 = fcmp ogt double %"$redfold_left_temp_t173.3", %r745, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r749 = select i1 %r748, double %"$redfold_left_temp_t173.3", double %r745, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r751 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast860 = sext i32 %r751 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r752 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast860, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r753 = getelementptr double, double* %r752, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r754 = addrspacecast double* %r753 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r749, double addrspace(3)* %r754, align 8, !dbg !293, !CrayMri !352 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb119", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb119":               ; preds = %"file Jacobi.f90, line 415, bb118", %"file Jacobi.f90, line 415, bb116"
  %"$redfold_left_temp_t173.4" = phi double [ %"$redfold_left_temp_t173.3", %"file Jacobi.f90, line 415, bb116" ], [ %r749, %"file Jacobi.f90, line 415, bb118" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r755 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r756 = icmp ult i32 %r755, 4, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r756, label %"file Jacobi.f90, line 415, bb121", label %"file Jacobi.f90, line 415, bb122", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb121":               ; preds = %"file Jacobi.f90, line 415, bb119"
  %r759 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast861 = sext i32 %r759 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r760 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast861, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r761 = getelementptr double, double* %r760, i64 5, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r762 = addrspacecast double* %r761 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r763 = load volatile double, double addrspace(3)* %r762, align 8, !dbg !293, !CrayMri !353 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r766 = fcmp ogt double %"$redfold_left_temp_t173.4", %r763, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r767 = select i1 %r766, double %"$redfold_left_temp_t173.4", double %r763, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r769 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast862 = sext i32 %r769 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r770 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast862, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r771 = getelementptr double, double* %r770, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r772 = addrspacecast double* %r771 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r767, double addrspace(3)* %r772, align 8, !dbg !293, !CrayMri !354 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb122", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb122":               ; preds = %"file Jacobi.f90, line 415, bb121", %"file Jacobi.f90, line 415, bb119"
  %"$redfold_left_temp_t173.5" = phi double [ %"$redfold_left_temp_t173.4", %"file Jacobi.f90, line 415, bb119" ], [ %r767, %"file Jacobi.f90, line 415, bb121" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r773 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r774 = icmp ult i32 %r773, 2, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r774, label %"file Jacobi.f90, line 415, bb124", label %"file Jacobi.f90, line 415, bb125", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb124":               ; preds = %"file Jacobi.f90, line 415, bb122"
  %r777 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast863 = sext i32 %r777 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r778 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast863, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r779 = getelementptr double, double* %r778, i64 3, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r780 = addrspacecast double* %r779 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r781 = load volatile double, double addrspace(3)* %r780, align 8, !dbg !293, !CrayMri !355 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r784 = fcmp ogt double %"$redfold_left_temp_t173.5", %r781, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r785 = select i1 %r784, double %"$redfold_left_temp_t173.5", double %r781, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r787 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast864 = sext i32 %r787 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r788 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast864, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r789 = getelementptr double, double* %r788, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r790 = addrspacecast double* %r789 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r785, double addrspace(3)* %r790, align 8, !dbg !293, !CrayMri !356 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb125", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb125":               ; preds = %"file Jacobi.f90, line 415, bb124", %"file Jacobi.f90, line 415, bb122"
  %"$redfold_left_temp_t173.6" = phi double [ %"$redfold_left_temp_t173.5", %"file Jacobi.f90, line 415, bb122" ], [ %r785, %"file Jacobi.f90, line 415, bb124" ], !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r791 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r792.not = icmp eq i32 %r791, 0, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r792.not, label %"file Jacobi.f90, line 415, bb127", label %"file Jacobi.f90, line 415, bb128", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb127":               ; preds = %"file Jacobi.f90, line 415, bb125"
  %r795 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast865 = sext i32 %r795 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r796 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast865, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r797 = getelementptr double, double* %r796, i64 2, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r798 = addrspacecast double* %r797 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r799 = load volatile double, double addrspace(3)* %r798, align 8, !dbg !293, !CrayMri !357 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r802 = fcmp ogt double %"$redfold_left_temp_t173.6", %r799, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r803 = select i1 %r802, double %"$redfold_left_temp_t173.6", double %r799, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r805 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %cic-gep-idxcast866 = sext i32 %r805 to i64, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r806 = getelementptr double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 %cic-gep-idxcast866, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r807 = getelementptr double, double* %r806, i64 1, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r808 = addrspacecast double* %r807 to double addrspace(3)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r803, double addrspace(3)* %r808, align 8, !dbg !293, !CrayMri !358 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb128", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb128":               ; preds = %"file Jacobi.f90, line 415, bb127", %"file Jacobi.f90, line 415, bb125"
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r809 = load volatile double, double addrspace(3)* addrspacecast (double* getelementptr (double, double* inttoptr (i64 ptrtoint ([257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15" to i64) to double*), i64 1) to double addrspace(3)*), align 8, !dbg !293, !CrayMri !359 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r809, double addrspace(5)* %"$redfinal_t175", align 8, !dbg !293, !CrayMri !360 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  tail call void @llvm.amdgcn.s.barrier(), !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r810 = load volatile double, double addrspace(5)* %"$redfinal_t175", align 8, !dbg !293, !CrayMri !361 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br i1 %r591.not, label %"file Jacobi.f90, line 415, bb130", label %"file Jacobi.f90, line 415, bb131", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb130":               ; preds = %"file Jacobi.f90, line 415, bb128"
  %r813 = load volatile double, double addrspace(5)* %"$redfinal_t175", align 8, !dbg !293, !CrayMri !362 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r815 = inttoptr i64 %"$$arg_ptr_acc_residual_t70_t28010" to double addrspace(1)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r816 = load double, double addrspace(1)* %r815, align 8, !dbg !293, !CrayMri !363 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r817 = fcmp ogt double %r813, %r816, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r818 = select i1 %r817, double %r813, double %r816, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  %r820 = inttoptr i64 %"$$arg_ptr_acc_residual_t70_t28010" to double addrspace(1)*, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  store double %r818, double addrspace(1)* %r820, align 8, !dbg !293, !CrayMri !364 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
  br label %"file Jacobi.f90, line 415, bb131", !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415

"file Jacobi.f90, line 415, bb131":               ; preds = %"file Jacobi.f90, line 415, bb130", %"file Jacobi.f90, line 415, bb128", %"file Jacobi.f90, line 415, bb95"
  ret void, !dbg !293 ; /pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90:415
}

attributes #0 = { noinline "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "uniform-work-group-size"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}
!nvvm.annotations = !{!3, !4, !5, !6, !7, !8, !9, !10}
!PDGFunctionMap = !{!11}
!PDGVariableMap = !{!12, !13}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_Fortran90, file: !2, producer: "Cray Fortran : Version 15.0.1", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug)
!2 = !DIFile(filename: "/pfs/lustrep3/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined/Jacobi.f90", directory: "/users/vaneckok/openmp-offload/Jacobi-olcf/Fortran/6-combined")
!3 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams$jacobi_form_$ck_L224_9", !"kernel", i32 1}
!4 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams$jacobi_form_$ck_L239_11", !"kernel", i32 1}
!5 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L280_17", !"kernel", i32 1}
!6 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L295_20", !"kernel", i32 1}
!7 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L336_29", !"kernel", i32 1}
!8 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L350_32", !"kernel", i32 1}
!9 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L393_41", !"kernel", i32 1}
!10 = !{void (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @"compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L407_44", !"kernel", i32 1}
!11 = !{i32 9, !"compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L407_44"}
!12 = !{i32 326, i32 addrspace(3)* @reduc_share_ctl_c8_AMD_LDS_14}
!13 = !{i32 749, [257 x double] addrspace(3)* @"$$_redfold_t169_AMD_LDS_15"}
!14 = distinct !DISubprogram(name: "compute_openmp_gpu_teams$jacobi_form_$ck_L224_9", linkageName: "compute_openmp_gpu_teams$jacobi_form_$ck_L224_9", scope: !2, file: !2, line: 224, type: !15, scopeLine: 224, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !{}
!18 = !{i64 3}
!19 = !{i64 0}
!20 = !DILocation(line: 226, scope: !14)
!21 = !{i64 8203387535498}
!22 = !DILocation(line: 227, scope: !14)
!23 = !{i64 8207682502796}
!24 = !DILocation(line: 228, scope: !14)
!25 = !DILocation(line: 231, scope: !14)
!26 = !DILocation(line: 0, scope: !14)
!27 = !{i64 8216272437420}
!28 = !{i32 1}
!29 = !{i64 7773890805932}
!30 = !{i64 7786775707820}
!31 = !{i64 7782480740524}
!32 = !{i64 18022610486952108}
!33 = !{i64 8224862372019}
!34 = !{i64 7808250544307}
!35 = !{i64 7821135446195}
!36 = !{i64 7816840478899}
!37 = !{i64 18022619076886707}
!38 = !{i64 8233452306618}
!39 = !{i64 7842610282682}
!40 = !{i64 7855495184570}
!41 = !{i64 7851200217274}
!42 = !{i64 18022627666821306}
!43 = !{i64 8242042241218}
!44 = !{i64 7876970021058}
!45 = !{i64 7889854922946}
!46 = !{i64 7885559955650}
!47 = !{i64 18022636256755906}
!48 = !{i64 8250632175821}
!49 = !{i64 7907034792141}
!50 = !{i64 7919919694029}
!51 = !{i64 7915624726733}
!52 = !{i64 18022644846690509}
!53 = !DILocation(line: 233, scope: !14)
!54 = distinct !DISubprogram(name: "compute_openmp_gpu_teams$jacobi_form_$ck_L239_11", linkageName: "compute_openmp_gpu_teams$jacobi_form_$ck_L239_11", scope: !2, file: !2, line: 239, type: !15, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!55 = !DILocation(line: 239, scope: !54)
!56 = !DILocation(line: 242, scope: !54)
!57 = !{i64 8254927143357}
!58 = !DILocation(line: 248, scope: !54)
!59 = !DILocation(line: 243, scope: !54)
!60 = !{i64 8259222110656}
!61 = !DILocation(line: 244, scope: !54)
!62 = !DILocation(line: 246, scope: !54)
!63 = !DILocation(line: 0, scope: !54)
!64 = !{i64 8263517077974}
!65 = !{i64 7980049236441}
!66 = !DILocation(line: 245, scope: !54)
!67 = !{i64 18022378558718426}
!68 = !{i64 8267812045278}
!69 = !{i64 8001524072929}
!70 = !{i64 18022400033554914}
!71 = !{i64 8272107012582}
!72 = !{i64 8022998909417}
!73 = !{i64 18022421508391402}
!74 = !{i64 8276401979887}
!75 = !{i64 8044473745906}
!76 = !{i64 18022442983227891}
!77 = !{i64 8280696947194}
!78 = !{i64 8061653615101}
!79 = !{i64 18022460163097086}
!80 = !{i64 18019071433900545}
!81 = !{i64 4672924418563}
!82 = !{i64 4677219385861}
!83 = !{i64 18019071433900551}
!84 = !{i64 4681514353162}
!85 = !{i64 18019071433900556}
!86 = !{i64 4685809320463}
!87 = !{i64 18019071433900561}
!88 = !{i64 4690104287764}
!89 = !{i64 18019071433900566}
!90 = !{i64 4694399255065}
!91 = !{i64 18019071433900571}
!92 = !{i64 4698694222366}
!93 = !{i64 18019071433900576}
!94 = !{i64 4702989189667}
!95 = !{i64 18019071433900581}
!96 = !{i64 4707284156968}
!97 = !{i64 18019071433900586}
!98 = !{i64 4522600563244}
!99 = !{i64 18018912520110636}
!100 = !{i64 4514010628654}
!101 = !{i64 18020634801996339}
!102 = !{i64 18015498021110329}
!103 = !{i64 1099511628348}
!104 = !{i64 6244882448964}
!105 = !{i64 18019071433900615}
!106 = !{i64 4672924418633}
!107 = !{i64 4677219385931}
!108 = !{i64 18019071433900621}
!109 = !{i64 4681514353232}
!110 = !{i64 18019071433900626}
!111 = !{i64 4685809320533}
!112 = !{i64 18019071433900631}
!113 = !{i64 4690104287834}
!114 = !{i64 18019071433900636}
!115 = !{i64 4694399255135}
!116 = !{i64 18019071433900641}
!117 = !{i64 4698694222436}
!118 = !{i64 18019071433900646}
!119 = !{i64 4702989189737}
!120 = !{i64 18019071433900651}
!121 = !{i64 4707284157038}
!122 = !{i64 18019071433900656}
!123 = !{i64 4522600563314}
!124 = !{i64 18018933994947186}
!125 = !{i64 4535485465204}
!126 = !{i64 4535485465208}
!127 = !{i64 6249177416312}
!128 = !{i64 18020647686898296}
!129 = distinct !DISubprogram(name: "compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L280_17", linkageName: "compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L280_17", scope: !2, file: !2, line: 280, type: !15, scopeLine: 280, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!130 = !DILocation(line: 282, scope: !129)
!131 = !{i64 8431020802186}
!132 = !DILocation(line: 283, scope: !129)
!133 = !{i64 8435315769484}
!134 = !DILocation(line: 284, scope: !129)
!135 = !DILocation(line: 287, scope: !129)
!136 = !DILocation(line: 0, scope: !129)
!137 = !{i64 8443905704108}
!138 = !{i64 8001524072620}
!139 = !{i64 8014408974508}
!140 = !{i64 8010114007212}
!141 = !{i64 18022838120218796}
!142 = !{i64 8452495638707}
!143 = !{i64 8035883810995}
!144 = !{i64 8048768712883}
!145 = !{i64 8044473745587}
!146 = !{i64 18022846710153395}
!147 = !{i64 8461085573306}
!148 = !{i64 8070243549370}
!149 = !{i64 8083128451258}
!150 = !{i64 8078833483962}
!151 = !{i64 18022855300087994}
!152 = !{i64 8469675507906}
!153 = !{i64 8104603287746}
!154 = !{i64 8117488189634}
!155 = !{i64 8113193222338}
!156 = !{i64 18022863890022594}
!157 = !{i64 8478265442509}
!158 = !{i64 8134668058829}
!159 = !{i64 8147552960717}
!160 = !{i64 8143257993421}
!161 = !{i64 18022872479957197}
!162 = !DILocation(line: 289, scope: !129)
!163 = distinct !DISubprogram(name: "compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L295_20", linkageName: "compute_openmp_gpu_teams_parallel$jacobi_form_$ck_L295_20", scope: !2, file: !2, line: 295, type: !15, scopeLine: 295, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!164 = !DILocation(line: 295, scope: !163)
!165 = !DILocation(line: 298, scope: !163)
!166 = !{i64 8482560410054}
!167 = !DILocation(line: 304, scope: !163)
!168 = !DILocation(line: 299, scope: !163)
!169 = !{i64 8486855377353}
!170 = !DILocation(line: 300, scope: !163)
!171 = !DILocation(line: 302, scope: !163)
!172 = !DILocation(line: 0, scope: !163)
!173 = !{i64 8491150344670}
!174 = !{i64 8207682503137}
!175 = !DILocation(line: 301, scope: !163)
!176 = !{i64 18022606191985123}
!177 = !{i64 8495445311975}
!178 = !{i64 8229157339626}
!179 = !{i64 18022627666821612}
!180 = !{i64 8499740279280}
!181 = !{i64 8250632176115}
!182 = !{i64 18022649141658101}
!183 = !{i64 8504035246586}
!184 = !{i64 8272107012605}
!185 = !{i64 18022670616494590}
!186 = !{i64 8508330213893}
!187 = !{i64 8289286881800}
!188 = !{i64 18022687796363785}
!189 = !{i64 18019226052723214}
!190 = !{i64 4827543241232}
!191 = !{i64 4831838208530}
!192 = !{i64 18019226052723220}
!193 = !{i64 4836133175831}
!194 = !{i64 18019226052723225}
!195 = !{i64 4840428143132}
!196 = !{i64 18019226052723230}
!197 = !{i64 4844723110433}
!198 = !{i64 18019226052723235}
!199 = !{i64 4849018077734}
!200 = !{i64 18019226052723240}
!201 = !{i64 4853313045035}
!202 = !{i64 18019226052723245}
!203 = !{i64 4857608012336}
!204 = !{i64 18019226052723250}
!205 = !{i64 4861902979637}
!206 = !{i64 18019226052723255}
!207 = !{i64 4668629451321}
!208 = !{i64 18019058548998713}
!209 = !{i64 4660039516731}
!210 = !{i64 4660039516736}
!211 = !{i64 18020853845328448}
!212 = !{i64 18015571035554374}
!213 = !{i64 1172526072393}
!214 = !{i64 6463925781073}
!215 = !{i64 18019226052723284}
!216 = !{i64 4827543241302}
!217 = !{i64 4831838208600}
!218 = !{i64 18019226052723290}
!219 = !{i64 4836133175901}
!220 = !{i64 18019226052723295}
!221 = !{i64 4840428143202}
!222 = !{i64 18019226052723300}
!223 = !{i64 4844723110503}
!224 = !{i64 18019226052723305}
!225 = !{i64 4849018077804}
!226 = !{i64 18019226052723310}
!227 = !{i64 4853313045105}
!228 = !{i64 18019226052723315}
!229 = !{i64 4857608012406}
!230 = !{i64 18019226052723320}
!231 = !{i64 4861902979707}
!232 = !{i64 18019226052723325}
!233 = !{i64 4668629451391}
!234 = !{i64 18019080023835263}
!235 = !{i64 4681514353281}
!236 = !{i64 4681514353285}
!237 = !{i64 6468220748421}
!238 = !{i64 18020866730230405}
!239 = distinct !DISubprogram(name: "compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L336_29", linkageName: "compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L336_29", scope: !2, file: !2, line: 336, type: !15, scopeLine: 336, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!240 = !DILocation(line: 337, scope: !239)
!241 = !DILocation(line: 338, scope: !239)
!242 = !DILocation(line: 339, scope: !239)
!243 = !DILocation(line: 342, scope: !239)
!244 = !DILocation(line: 0, scope: !239)
!245 = !DILocation(line: 344, scope: !239)
!246 = distinct !DISubprogram(name: "compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L350_32", linkageName: "compute_openmp_gpu_teams_parallel_implicit_map$jacobi_form_$ck_L350_32", scope: !2, file: !2, line: 350, type: !15, scopeLine: 350, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!247 = !DILocation(line: 350, scope: !246)
!248 = !DILocation(line: 352, scope: !246)
!249 = !DILocation(line: 358, scope: !246)
!250 = !DILocation(line: 353, scope: !246)
!251 = !DILocation(line: 354, scope: !246)
!252 = !DILocation(line: 356, scope: !246)
!253 = !DILocation(line: 0, scope: !246)
!254 = !DILocation(line: 355, scope: !246)
!255 = distinct !DISubprogram(name: "compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L393_41", linkageName: "compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L393_41", scope: !2, file: !2, line: 393, type: !15, scopeLine: 393, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!256 = !DILocation(line: 394, scope: !255)
!257 = !{i64 9461812953243}
!258 = !DILocation(line: 395, scope: !255)
!259 = !{i64 9466107920541}
!260 = !DILocation(line: 396, scope: !255)
!261 = !DILocation(line: 399, scope: !255)
!262 = !DILocation(line: 0, scope: !255)
!263 = !{i64 9474697855165}
!264 = !{i64 9032316223677}
!265 = !{i64 9045201125565}
!266 = !{i64 9040906158269}
!267 = !{i64 18023868912369853}
!268 = !{i64 9483287789764}
!269 = !{i64 9066675962052}
!270 = !{i64 9079560863940}
!271 = !{i64 9075265896644}
!272 = !{i64 18023877502304452}
!273 = !{i64 9491877724363}
!274 = !{i64 9101035700427}
!275 = !{i64 9113920602315}
!276 = !{i64 9109625635019}
!277 = !{i64 18023886092239051}
!278 = !{i64 9500467658963}
!279 = !{i64 9135395438803}
!280 = !{i64 9148280340691}
!281 = !{i64 9143985373395}
!282 = !{i64 18023894682173651}
!283 = !{i64 9509057593566}
!284 = !{i64 9165460209886}
!285 = !{i64 9178345111774}
!286 = !{i64 9174050144478}
!287 = !{i64 18023903272108254}
!288 = !DILocation(line: 401, scope: !255)
!289 = distinct !DISubprogram(name: "compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L407_44", linkageName: "compute_openmp_gpu_teams_parallel_data$jacobi_form_$ck_L407_44", scope: !2, file: !2, line: 407, type: !15, scopeLine: 407, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !17)
!290 = !DILocation(line: 407, scope: !289)
!291 = !DILocation(line: 409, scope: !289)
!292 = !{i64 9513352561112}
!293 = !DILocation(line: 415, scope: !289)
!294 = !DILocation(line: 410, scope: !289)
!295 = !{i64 9517647528411}
!296 = !DILocation(line: 411, scope: !289)
!297 = !DILocation(line: 413, scope: !289)
!298 = !DILocation(line: 0, scope: !289)
!299 = !{i64 9521942495728}
!300 = !{i64 9238474654195}
!301 = !DILocation(line: 412, scope: !289)
!302 = !{i64 18023636984136181}
!303 = !{i64 9526237463033}
!304 = !{i64 9259949490684}
!305 = !{i64 18023658458972670}
!306 = !{i64 9530532430338}
!307 = !{i64 9281424327173}
!308 = !{i64 18023679933809159}
!309 = !{i64 9534827397644}
!310 = !{i64 9302899163663}
!311 = !{i64 18023701408645648}
!312 = !{i64 9539122364951}
!313 = !{i64 9320079032858}
!314 = !{i64 18023718588514843}
!315 = !{i64 18019599714877984}
!316 = !{i64 5201205396002}
!317 = !{i64 5205500363300}
!318 = !{i64 18019599714877990}
!319 = !{i64 5209795330601}
!320 = !{i64 18019599714877995}
!321 = !{i64 5214090297902}
!322 = !{i64 18019599714878000}
!323 = !{i64 5218385265203}
!324 = !{i64 18019599714878005}
!325 = !{i64 5222680232504}
!326 = !{i64 18019599714878010}
!327 = !{i64 5226975199805}
!328 = !{i64 18019599714878015}
!329 = !{i64 5231270167106}
!330 = !{i64 18019599714878020}
!331 = !{i64 5235565134407}
!332 = !{i64 18019599714878025}
!333 = !{i64 5042291606091}
!334 = !{i64 18019432211153483}
!335 = !{i64 5033701671501}
!336 = !{i64 5033701671506}
!337 = !{i64 18021240392385106}
!338 = !{i64 18015768604050008}
!339 = !{i64 1370094568027}
!340 = !{i64 6850472837731}
!341 = !{i64 18019599714878054}
!342 = !{i64 5201205396072}
!343 = !{i64 5205500363370}
!344 = !{i64 18019599714878060}
!345 = !{i64 5209795330671}
!346 = !{i64 18019599714878065}
!347 = !{i64 5214090297972}
!348 = !{i64 18019599714878070}
!349 = !{i64 5218385265273}
!350 = !{i64 18019599714878075}
!351 = !{i64 5222680232574}
!352 = !{i64 18019599714878080}
!353 = !{i64 5226975199875}
!354 = !{i64 18019599714878085}
!355 = !{i64 5231270167176}
!356 = !{i64 18019599714878090}
!357 = !{i64 5235565134477}
!358 = !{i64 18019599714878095}
!359 = !{i64 5042291606161}
!360 = !{i64 18019453685990033}
!361 = !{i64 5055176508051}
!362 = !{i64 5055176508055}
!363 = !{i64 6854767805079}
!364 = !{i64 18021253277287063}
