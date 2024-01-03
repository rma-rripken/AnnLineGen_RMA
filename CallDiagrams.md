## EC

### Call sequence diagram

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
Note:  $LOCATION$ is a placeholder for one of: jp, orrsel, emm, antioch, CO, mallard, LosVaqueros, MidR_intake, Victoria_intake, CVP_intake, CCFB, CCFB_intake, beldan, MTZ

### Call sequence table

| File                                                                                                        | Method              | Calls Into                                                                                                                            |
| ----------------------------------------------------------------------------------------------------------- | ------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| [Apr36ANNECTest.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/test/Apr36ANNECTest.f90) | Apr36AnnLineGenTest | [ANNEC](https://github.com/rma-rripken/AnnLineGen_RMA/blob/bd132e2aaf480c033c706d615bb942fc3f30bab4/src/test/Apr36ANNECTest.f90#L112) |
| [annec.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/annec.f90)                        | ANNEC               | [ANN_Month](https://github.com/rma-rripken/AnnLineGen_RMA/blob/bd132e2aaf480c033c706d615bb942fc3f30bab4/src/ann_ext.f90#L48)          |
| [ann_ext.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/ann_ext.f90)                    | ANN_Month           | [calcdaily](https://github.com/rma-rripken/AnnLineGen_RMA/blob/bd132e2aaf480c033c706d615bb942fc3f30bab4/src/ann.f90#L106)             |
| [ann.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/ann.f90)                            | calcdaily           | [scaleAndCopyDaily](https://github.com/rma-rripken/AnnLineGen_RMA/blob/bd132e2aaf480c033c706d615bb942fc3f30bab4/src/ann.f90#L165)     |
| [ann.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/ann.f90)                            | calcdaily           | [fnet_jp_engine](https://github.com/rma-rripken/AnnLineGen_RMA/blob/bd132e2aaf480c033c706d615bb942fc3f30bab4/src/ann.f90#L188)        |

Note: ANN_Month called with ave_type=1 which == monthly_ave

## X2

### Call sequence diagram:

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
### Call sequence table

| File                                                                                                        | Method         | Calls Into                                                                                                                            |
| ----------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| [Apr36ANNX2Test.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/test/Apr36ANNX2Test.f90) | Apr36ANNX2Test | [ANN_x2](https://github.com/rma-rripken/AnnLineGen_RMA/blob/cf830330f4f717e487af41aa2be7954305335a74/src/test/Apr36ANNX2Test.f90#L68) |
| [X2.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/X2.f90)                              | ANN_x2         | [AnnX2](https://github.com/rma-rripken/AnnLineGen_RMA/blob/cf830330f4f717e487af41aa2be7954305335a74/src/X2.f90#L24)                   |
| [AnnX2.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/annx2.f90)                        | AnnX2          | [ANN_X2_Month](https://github.com/rma-rripken/AnnLineGen_RMA/blob/cf830330f4f717e487af41aa2be7954305335a74/src/annx2.f90#L128)        |
| [ann_x2_ext.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/ann_x2_ext.f90)              | ANN_X2_Month   | [calcx2daily](https://github.com/rma-rripken/AnnLineGen_RMA/blob/cf830330f4f717e487af41aa2be7954305335a74/src/ann_x2_ext.f90#L55)     |
| [ann.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/ann.f90)                            | calcx2daily    | [scaleAndCopyDailyX2](https://github.com/rma-rripken/AnnLineGen_RMA/blob/cf830330f4f717e487af41aa2be7954305335a74/src/ann.f90#L165)   |
| [ann.f90](https://github.com/rma-rripken/AnnLineGen_RMA/blob/master/src/ann.f90)                            | calcx2daily    | [fnet_X2_engine](https://github.com/rma-rripken/AnnLineGen_RMA/blob/cf830330f4f717e487af41aa2be7954305335a74/src/ann.f90#L188)        |

Note:
ANN_x2 calls ANNX2 with same parameters but hard-coded "location" 13
