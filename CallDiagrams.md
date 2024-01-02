The Apr36ANNECTest call sequence:
```mermaid
graph TD;
    Apr36ANNECTest-->annec.f90-ANNEC;
 %%   wresl-->annec.f90-AnnEC_matchDSM2;
 %%   annec.f90-AnnEC_matchDSM2-->ConservativeSpline.f90-ConservativeSpline7Months;
 %%   annec.f90-AnnEC_matchDSM2-->ann_ext.f90-ANN_Month;
    annec.f90-ANNEC-->ann_ext.f90-ANN_Month;
    ann_ext.f90-ANN_Month-->ann.f90-calcDaily;
    ann.f90-calcDaily-->scaleAndCopyDaily;
    ann.f90-calcDaily-->fn_jp.f90-fnet-$LOCATION$-engine;
    fn_jp.f90-fnet-$LOCATION$-engine-->neural-net;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet-jp-engine;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet-orrsel-engine;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet-emm-engine;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet-antioch-engine;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet-CO-engine;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet-mallard-engine;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_LosVaqueros_engine;
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_MidR_intake_engine
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_Victoria_intake_engine
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_CVP_intake_engine
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_CCFB_engine
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_CCFB_intake_engine
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_beldan_engine
%%    ann.f90-calcDaily-->fn_jp.f90-fnet_MTZ_engine
%%
%%    fn_jp.f90-fnet-jp-engine-->neural-net;
%%    fn_jp.f90-fnet-orrsel-engine-->neural-net;
%%    fn_jp.f90-fnet-emm-engine-->neural-net;
%%    fn_jp.f90-fnet-antioch-engine-->neural-net;
%%    fn_jp.f90-fnet-CO-engine-->neural-net;
%%    fn_jp.f90-fnet-mallard-engine-->neural-net;
%%    fn_jp.f90-fnet_LosVaqueros_engine-->neural-net;
%%    fn_jp.f90-fnet_MidR_intake_engine-->neural-net;
%%    fn_jp.f90-fnet_Victoria_intake_engine-->neural-net;
%%    fn_jp.f90-fnet_CVP_intake_engine-->neural-net;
%%    fn_jp.f90-fnet_CCFB_engine-->neural-net;
%%    fn_jp.f90-fnet_CCFB_intake_engine-->neural-net;
%%    fn_jp.f90-fnet_beldan_engine-->neural-net;
%%    fn_jp.f90-fnet_MTZ_engine-->neural-net;
    
    
```
ANN_Month called with ave_type =1 which is monthly_ave
ANNEC:  https://github.com/rma-rripken/AnnLineGen_RMA/blob/a0861788fe050fa4b421a0e3625c936d66e9dd9a/src/annec.f90#L38

The Apr36ANNx2Test call sequence:
```mermaid
graph TD;
    Apr36ANNX2Test-->X2.f90-ANN_x2;
    X2.f90-ANN_x2-->ANNx2.f90-AnnX2;
    ANNx2.f90-AnnX2-->ann_x2_ext.f90-ANN_X2_Month;
    ann_x2_ext.f90-ANN_X2_Month-->ann.f90-calcx2daily;
    ann.f90-calcx2daily-->ann.f90-scaleAndCopyDailyX2;
    ann.f90-calcx2daily-->fnet_X2.f90-fnet_X2_engine;
    fnet_X2.f90-fnet_X2_engine-->neural-net;
    
    
```

Note:
ANN_x2 calls ANNX2 with same parameters but hard-coded "location" 13


