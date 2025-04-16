# Prerequesties
run bootstrapbackend first to create storage acccount and contianer for tfstate file
cd bootstrap-backend
terraform plan -var-file="../environments/dev/backend.tfvars" 
terraform apply -var-file="../environments/dev/backend.tfvars" 
./scripts/generate-backend.sh dev

./scripts/init.sh dev

Standard_D2a_v4

name: Default
          demands: agent.name -equals Udeeks-MacBook-Air-2

standard_a2_v2,standard_a2m_v2,standard_a4_v2,standard_a4m_v2,standard_a8_v2,standard_a8m_v2,standard_b12ms,standard_b16ms,standard_b16pls_v2,standard_b16ps_v2,standard_b20ms,standard_b2ms,standard_b2pls_v2,standard_b2ps_v2,standard_b2pts_v2,standard_b2s,standard_b4ms,standard_b4pls_v2,standard_b4ps_v2,standard_b8ms,standard_b8pls_v2,standard_b8ps_v2,standard_d128ds_v6,standard_d128lds_v6,standard_d128ls_v6,standard_d128s_v6,standard_d15_v2,standard_d16_v3,standard_d16_v4,standard_d16ads_v6,standard_d16alds_v6,standard_d16als_v6,standard_d16as_v6,standard_d16d_v4,standard_d16ds_v4,standard_d16ds_v6,standard_d16lds_v6,standard_d16ls_v6,standard_d16pds_v5,standard_d16pds_v6,standard_d16plds_v5,standard_d16plds_v6,standard_d16pls_v5,standard_d16pls_v6,standard_d16ps_v5,standard_d16ps_v6,standard_d16s_v3,standard_d16s_v4,standard_d16s_v6,standard_d192ds_v6,standard_d2_v3,standard_d2_v4,standard_d2ads_v6,standard_d2alds_v6,standard_d2als_v6,standard_d2as_v6,standard_d2d_v4,standard_d2ds_v4,standard_d2ds_v6,standard_d2lds_v6,standard_d2ls_v6,standard_d2pds_v5,standard_d2pds_v6,standard_d2plds_v5,standard_d2plds_v6,standard_d2pls_v5,standard_d2pls_v6,standard_d2ps_v5,standard_d2ps_v6,standard_d2s_v3,standard_d2s_v4,standard_d2s_v6,standard_d32_v3,standard_d32_v4,standard_d32ads_v6,standard_d32alds_v6,standard_d32als_v6,standard_d32as_v6,standard_d32d_v4,standard_d32ds_v4,standard_d32ds_v6,standard_d32lds_v6,standard_d32ls_v6,standard_d32pds_v5,standard_d32pds_v6,standard_d32plds_v5,standard_d32plds_v6,standard_d32pls_v5,standard_d32pls_v6,standard_d32ps_v5,standard_d32ps_v6,standard_d32s_v3,standard_d32s_v4,standard_d32s_v6,standard_d48_v3,standard_d48_v4,standard_d48ads_v6,standard_d48alds_v6,standard_d48als_v6,standard_d48as_v6,standard_d48d_v4,standard_d48ds_v4,standard_d48ds_v6,standard_d48lds_v6,standard_d48ls_v6,standard_d48pds_v5,standard_d48pds_v6,standard_d48plds_v5,standard_d48plds_v6,standard_d48pls_v5,standard_d48pls_v6,standard_d48ps_v5,standard_d48ps_v6,standard_d48s_v3,standard_d48s_v4,standard_d48s_v6,standard_d4_v3,standard_d4_v4,standard_d4ads_v6,standard_d4alds_v6,standard_d4als_v6,standard_d4as_v6,standard_d4d_v4,standard_d4ds_v4,standard_d4ds_v6,standard_d4lds_v6,standard_d4ls_v6,standard_d4pds_v5,standard_d4pds_v6,standard_d4plds_v5,standard_d4plds_v6,standard_d4pls_v5,standard_d4pls_v6,standard_d4ps_v5,standard_d4ps_v6,standard_d4s_v3,standard_d4s_v4,standard_d4s_v6,standard_d64_v3,standard_d64_v4,standard_d64ads_v6,standard_d64alds_v6,standard_d64als_v6,standard_d64as_v6,standard_d64d_v4,standard_d64ds_v4,standard_d64ds_v6,standard_d64lds_v6,standard_d64ls_v6,standard_d64pds_v5,standard_d64pds_v6,standard_d64plds_v5,standard_d64plds_v6,standard_d64pls_v5,standard_d64pls_v6,standard_d64ps_v5,standard_d64ps_v6,standard_d64s_v3,standard_d64s_v4,standard_d64s_v6,standard_d8_v3,standard_d8_v4,standard_d8ads_v6,standard_d8alds_v6,standard_d8als_v6,standard_d8as_v6,standard_d8d_v4,standard_d8ds_v4,standard_d8ds_v6,standard_d8lds_v6,standard_d8ls_v6,standard_d8pds_v5,standard_d8pds_v6,standard_d8plds_v5,standard_d8plds_v6,standard_d8pls_v5,standard_d8pls_v6,standard_d8ps_v5,standard_d8ps_v6,standard_d8s_v3,standard_d8s_v4,standard_d8s_v6,standard_d96ads_v6,standard_d96alds_v6,standard_d96als_v6,standard_d96as_v6,standard_d96ds_v6,standard_d96lds_v6,standard_d96ls_v6,standard_d96pds_v6,standard_d96plds_v6,standard_d96pls_v6,standard_d96ps_v6,standard_d96s_v6,standard_dc16ads_cc_v5,standard_dc16ads_v5,standard_dc16as_cc_v5,standard_dc16as_v5,standard_dc16ds_v3,standard_dc16s_v3,standard_dc24ds_v3,standard_dc24s_v3,standard_dc2ads_v5,standard_dc2as_v5,standard_dc2ds_v3,standard_dc2s_v2,standard_dc2s_v3,standard_dc32ads_cc_v5,standard_dc32ads_v5,standard_dc32as_cc_v5,standard_dc32as_v5,standard_dc32ds_v3,standard_dc32s_v3,standard_dc48ads_cc_v5,standard_dc48ads_v5,standard_dc48as_cc_v5,standard_dc48as_v5,standard_dc48ds_v3,standard_dc48s_v3,standard_dc4ads_cc_v5,standard_dc4ads_v5,standard_dc4as_cc_v5,standard_dc4as_v5,standard_dc4ds_v3,standard_dc4s_v2,standard_dc4s_v3,standard_dc64ads_cc_v5,standard_dc64ads_v5,standard_dc64as_cc_v5,standard_dc64as_v5,standard_dc8_v2,standard_dc8ads_cc_v5,standard_dc8ads_v5,standard_dc8as_cc_v5,standard_dc8as_v5,standard_dc8ds_v3,standard_dc8s_v3,standard_dc96ads_cc_v5,standard_dc96ads_v5,standard_dc96as_cc_v5,standard_dc96as_v5,standard_ds15_v2,standard_e16-4ds_v4,standard_e16-4ds_v6,standard_e16-4s_v3,standard_e16-4s_v4,standard_e16-4s_v6,standard_e16-8ds_v4,standard_e16-8ds_v6,standard_e16-8s_v3,standard_e16-8s_v4,standard_e16-8s_v6,standard_e16_v3,standard_e16_v4,standard_e16ads_v6,standard_e16as_v6,standard_e16d_v4,standard_e16ds_v4,standard_e16ds_v6,standard_e16pds_v5,standard_e16pds_v6,standard_e16ps_v5,standard_e16ps_v6,standard_e16s_v3,standard_e16s_v4,standard_e16s_v6,standard_e20_v3,standard_e20_v4,standard_e20ads_v6,standard_e20as_v6,standard_e20d_v4,standard_e20ds_v4,standard_e20ds_v6,standard_e20pds_v5,standard_e20ps_v5,standard_e20s_v3,standard_e20s_v4,standard_e20s_v6,standard_e2_v3,standard_e2_v4,standard_e2ads_v6,standard_e2as_v6,standard_e2d_v4,standard_e2ds_v4,standard_e2ds_v6,standard_e2pds_v5,standard_e2pds_v6,standard_e2ps_v5,standard_e2ps_v6,standard_e2s_v3,standard_e2s_v4,standard_e2s_v6,standard_e32-16ds_v4,standard_e32-16ds_v6,standard_e32-16s_v3,standard_e32-16s_v4,standard_e32-16s_v6,standard_e32-8ds_v4,standard_e32-8ds_v6,standard_e32-8s_v3,standard_e32-8s_v4,standard_e32-8s_v6,standard_e32_v3,standard_e32_v4,standard_e32ads_v6,standard_e32as_v6,standard_e32d_v4,standard_e32ds_v4,standard_e32ds_v6,standard_e32pds_v5,standard_e32pds_v6,standard_e32ps_v5,standard_e32ps_v6,standard_e32s_v3,standard_e32s_v4,standard_e32s_v6,standard_e4-2ds_v4,standard_e4-2s_v3,standard_e4-2s_v4,standard_e4-2s_v6,standard_e48_v3,standard_e48_v4,standard_e48ads_v6,standard_e48as_v6,standard_e48d_v4,standard_e48ds_v4,standard_e48ds_v6,standard_e48pds_v6,standard_e48ps_v6,standard_e48s_v3,standard_e48s_v4,standard_e48s_v6,standard_e4_v3,standard_e4_v4,standard_e4ads_v6,standard_e4as_v6,standard_e4d_v4,standard_e4ds_v4,standard_e4ds_v6,standard_e4pds_v5,standard_e4pds_v6,standard_e4ps_v5,standard_e4ps_v6,standard_e4s_v3,standard_e4s_v4,standard_e4s_v6,standard_e64-16ds_v4,standard_e64-16ds_v6,standard_e64-16s_v3,standard_e64-16s_v4,standard_e64-16s_v6,standard_e64-32ds_v4,standard_e64-32ds_v6,standard_e64-32s_v3,standard_e64-32s_v4,standard_e64-32s_v6,standard_e64_v3,standard_e64_v4,standard_e64ads_v6,standard_e64as_v6,standard_e64d_v4,standard_e64ds_v4,standard_e64ds_v6,standard_e64i_v3,standard_e64is_v3,standard_e64pds_v6,standard_e64ps_v6,standard_e64s_v3,standard_e64s_v4,standard_e64s_v6,standard_e8-2ds_v4,standard_e8-2ds_v6,standard_e8-2s_v3,standard_e8-2s_v4,standard_e8-2s_v6,standard_e8-4ds_v4,standard_e8-4ds_v6,standard_e8-4s_v3,standard_e8-4s_v4,standard_e8-4s_v6,standard_e80ids_v4,standard_e80is_v4,standard_e8_v3,standard_e8_v4,standard_e8ads_v6,standard_e8as_v6,standard_e8d_v4,standard_e8ds_v4,standard_e8ds_v6,standard_e8pds_v5,standard_e8pds_v6,standard_e8ps_v5,standard_e8ps_v6,standard_e8s_v3,standard_e8s_v4,standard_e8s_v6,standard_e96-24ads_v6,standard_e96-24ds_v6,standard_e96-24s_v6,standard_e96-48ads_v6,standard_e96-48ds_v6,standard_e96-48s_v6,standard_e96ads_v6,standard_e96as_v6,standard_e96ds_v6,standard_e96pds_v6,standard_e96ps_v6,standard_e96s_v6,standard_ec16ads_cc_v5,standard_ec16ads_v5,standard_ec16as_cc_v5,standard_ec16as_v5,standard_ec20ads_cc_v5,standard_ec20ads_v5,standard_ec20as_cc_v5,standard_ec20as_v5,standard_ec2ads_v5,standard_ec2as_v5,standard_ec32ads_cc_v5,standard_ec32ads_v5,standard_ec32as_cc_v5,standard_ec32as_v5,standard_ec48ads_cc_v5,standard_ec48ads_v5,standard_ec48as_cc_v5,standard_ec48as_v5,standard_ec4ads_cc_v5,standard_ec4ads_v5,standard_ec4as_cc_v5,standard_ec4as_v5,standard_ec64ads_cc_v5,standard_ec64ads_v5,standard_ec64as_cc_v5,standard_ec64as_v5,standard_ec8ads_cc_v5,standard_ec8ads_v5,standard_ec8as_cc_v5,standard_ec8as_v5,standard_ec96ads_cc_v5,standard_ec96ads_v5,standard_ec96as_cc_v5,standard_ec96as_v5,standard_ec96iads_v5,standard_ec96ias_v5,standard_f16,standard_f16als_v6,standard_f16ams_v6,standard_f16as_v6,standard_f16s,standard_f16s_v2,standard_f2,standard_f2als_v6,standard_f2ams_v6,standard_f2as_v6,standard_f2s,standard_f2s_v2,standard_f32als_v6,standard_f32ams_v6,standard_f32as_v6,standard_f32s_v2,standard_f4,standard_f48als_v6,standard_f48ams_v6,standard_f48as_v6,standard_f48s_v2,standard_f4als_v6,standard_f4ams_v6,standard_f4as_v6,standard_f4s,standard_f4s_v2,standard_f64als_v6,standard_f64ams_v6,standard_f64as_v6,standard_f64s_v2,standard_f72s_v2,standard_f8,standard_f8als_v6,standard_f8ams_v6,standard_f8as_v6,standard_f8s,standard_f8s_v2,standard_fx12mds,standard_fx24mds,standard_fx36mds,standard_fx48mds,standard_fx4mds,standard_g1,standard_g2,standard_g3,standard_g4,standard_g5,standard_gs1,standard_gs2,standard_gs3,standard_gs4,standard_gs4-4,standard_gs4-8,standard_gs5,standard_gs5-16,standard_gs5-8,standard_hb120-16rs_v2,standard_hb120-16rs_v3,standard_hb120-32rs_v2,standard_hb120-32rs_v3,standard_hb120-64rs_v2,standard_hb120-64rs_v3,standard_hb120-96rs_v2,standard_hb120-96rs_v3,standard_hb120rs_v2,standard_hb120rs_v3,standard_hb176-144rs_v4,standard_hb176-24rs_v4,standard_hb176-48rs_v4,standard_hb176-96rs_v4,standard_hb176rs_v4,standard_hc44-16rs,standard_hc44-32rs,standard_hc44rs,standard_hx176-144rs,standard_hx176-24rs,standard_hx176-48rs,standard_hx176-96rs,standard_hx176rs,standard_m128,standard_m128-32ms,standard_m128-64bds_3_v3,standard_m128-64bds_v3,standard_m128-64bs_v3,standard_m128-64ms,standard_m128bds_3_v3,standard_m128bds_v3,standard_m128bs_v3,standard_m128dms_v2,standard_m128ds_v2,standard_m128m,standard_m128ms,standard_m128ms_v2,standard_m128s,standard_m128s_v2,standard_m12ds_v3,standard_m12s_v3,standard_m16-4ms,standard_m16-8ms,standard_m16bds_v3,standard_m16bs_v3,standard_m16ms,standard_m176-88bds_4_v3,standard_m176-88bds_v3,standard_m176-88bs_v3,standard_m176bds_4_v3,standard_m176bds_v3,standard_m176bs_v3,standard_m176ds_3_v3,standard_m176ds_4_v3,standard_m176s_3_v3,standard_m176s_4_v3,standard_m192idms_v2,standard_m192ids_v2,standard_m192ims_v2,standard_m192is_v2,standard_m208ms_v2,standard_m208s_v2,standard_m24ds_v3,standard_m24s_v3,standard_m32-16ms,standard_m32-8ms,standard_m32bds_v3,standard_m32bs_v3,standard_m32dms_v2,standard_m32ls,standard_m32ms,standard_m32ms_v2,standard_m32ts,standard_m416-208ms_v2,standard_m416-208s_v2,standard_m416ds_6_v3,standard_m416ds_8_v3,standard_m416ms_v2,standard_m416s_10_v2,standard_m416s_6_v3,standard_m416s_8_v2,standard_m416s_8_v3,standard_m416s_9_v2,standard_m416s_v2,standard_m48bds_v3,standard_m48bs_v3,standard_m48ds_1_v3,standard_m48s_1_v3,standard_m624ds_12_v3,standard_m624s_12_v3,standard_m64,standard_m64-16ms,standard_m64-32bds_1_v3,standard_m64-32ms,standard_m64bds_1_v3,standard_m64bds_v3,standard_m64bs_v3,standard_m64dms_v2,standard_m64ds_v2,standard_m64ls,standard_m64m,standard_m64ms,standard_m64ms_v2,standard_m64s,standard_m64s_v2,standard_m8-2ms,standard_m8-4ms,standard_m832ds_12_v3,standard_m832ids_16_v3,standard_m832is_16_v3,standard_m832s_12_v3,standard_m8ms,standard_m96-48bds_2_v3,standard_m96bds_2_v3,standard_m96bds_v3,standard_m96bs_v3,standard_m96ds_1_v3,standard_m96ds_2_v3,standard_m96s_1_v3,standard_m96s_2_v3,standard_nc16as_t4_v3,standard_nc40ads_h100_v5,standard_nc4as_t4_v3,standard_nc64as_t4_v3,standard_nc80adis_h100_v5,standard_nc8as_t4_v3,standard_nv12ads_a10_v5,standard_nv16as_v4,standard_nv18ads_a10_v5,standard_nv32as_v4,standard_nv36adms_a10_v5,standard_nv36ads_a10_v5,standard_nv4as_v4,standard_nv6ads_a10_v5,standard_nv72ads_a10_v5,standard_nv8as_v4