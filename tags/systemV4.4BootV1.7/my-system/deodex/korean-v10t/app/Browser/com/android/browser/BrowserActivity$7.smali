.class Lcom/android/browser/BrowserActivity$7;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDiff:[F

.field private mLastGestureTime:J

.field private mPrev:[F

.field private mPrevDiff:[F

.field private mRevertDiff:[F

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 1101
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$7;->mPrev:[F

    .line 1027
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$7;->mPrevDiff:[F

    .line 1028
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    .line 1029
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$7;->mRevertDiff:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1104
    return-void
.end method

.method public onSensorChanged(I[F)V
    .registers 26
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 1032
    const/4 v15, 0x0

    .line 1033
    .local v15, show:Z
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object v7, v0

    .line 1035
    .local v7, diff:[F
    const/4 v10, 0x0

    .local v10, i:I
    :goto_9
    const/16 v19, 0x3

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_e4

    .line 1036
    aget v19, p2, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mPrev:[F

    move-object/from16 v20, v0

    aget v20, v20, v10

    sub-float v19, v19, v20

    aput v19, v7, v10

    .line 1037
    aget v19, v7, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2b

    .line 1038
    const/4 v15, 0x1

    .line 1040
    :cond_2b
    aget v19, v7, v10

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff0

    cmpl-double v19, v19, v21

    if-lez v19, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v10

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fc999999999999aL

    cmpg-double v19, v19, v21

    if-ltz v19, :cond_71

    :cond_4e
    aget v19, v7, v10

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, -0x4010

    cmpg-double v19, v19, v21

    if-gez v19, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v10

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, -0x4036666666666666L

    cmpl-double v19, v19, v21

    if-lez v19, :cond_b1

    .line 1043
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mRevertDiff:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v20, v0

    aget v20, v20, v10

    aput v20, v19, v10

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v20, v19, v10

    .line 1049
    :cond_8b
    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v19, v0

    aget v20, v19, v10

    aget v21, v7, v10

    add-float v20, v20, v21

    aput v20, v19, v10

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mPrevDiff:[F

    move-object/from16 v19, v0

    aget v20, v7, v10

    aput v20, v19, v10

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mPrev:[F

    move-object/from16 v19, v0

    aget v20, p2, v10

    aput v20, v19, v10

    .line 1035
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 1045
    :cond_b1
    aget v19, v7, v10

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, -0x4036666666666666L

    cmpl-double v19, v19, v21

    if-lez v19, :cond_8b

    aget v19, v7, v10

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fc999999999999aL

    cmpg-double v19, v19, v21

    if-gez v19, :cond_8b

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mRevertDiff:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v21, v20, v10

    aput v21, v19, v10

    goto :goto_8b

    .line 1067
    :cond_e4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1068
    .local v11, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/BrowserActivity$7;->mLastGestureTime:J

    move-wide/from16 v19, v0

    sub-long v19, v11, v19

    const-wide/16 v21, 0x3e8

    cmp-long v19, v19, v21

    if-lez v19, :cond_186

    .line 1069
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/BrowserActivity$7;->mLastGestureTime:J

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v17, v19, v20

    .line 1072
    .local v17, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mDiff:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v18, v19, v20

    .line 1073
    .local v18, z:F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1074
    .local v5, ay:F
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1075
    .local v6, az:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mRevertDiff:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v13, v19, v20

    .line 1076
    .local v13, ry:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->mRevertDiff:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v14, v19, v20

    .line 1077
    .local v14, rz:F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1078
    .local v3, ary:F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1079
    .local v4, arz:F
    const/high16 v19, 0x4020

    cmpl-float v19, v5, v19

    if-lez v19, :cond_187

    const/high16 v19, 0x3f80

    cmpl-float v19, v3, v19

    if-lez v19, :cond_187

    cmpl-float v19, v5, v3

    if-lez v19, :cond_187

    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1080
    .local v8, gestY:Z
    :goto_14a
    const/high16 v19, 0x4060

    cmpl-float v19, v6, v19

    if-lez v19, :cond_18c

    const/high16 v19, 0x3f80

    cmpl-float v19, v4, v19

    if-lez v19, :cond_18c

    cmpl-float v19, v6, v4

    if-lez v19, :cond_18c

    const/16 v19, 0x1

    move/from16 v9, v19

    .line 1082
    .local v9, gestZ:Z
    :goto_15e
    if-nez v8, :cond_162

    if-eqz v9, :cond_186

    :cond_162
    if-eqz v8, :cond_166

    if-nez v9, :cond_186

    .line 1083
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v16

    .line 1085
    .local v16, view:Landroid/webkit/WebView;
    if-eqz v16, :cond_181

    .line 1086
    if-eqz v9, :cond_195

    .line 1087
    const/16 v19, 0x0

    cmpg-float v19, v18, v19

    if-gez v19, :cond_191

    .line 1088
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebView;->zoomOut()Z

    .line 1096
    :cond_181
    :goto_181
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/browser/BrowserActivity$7;->mLastGestureTime:J

    .line 1099
    .end local v3           #ary:F
    .end local v4           #arz:F
    .end local v5           #ay:F
    .end local v6           #az:F
    .end local v8           #gestY:Z
    .end local v9           #gestZ:Z
    .end local v13           #ry:F
    .end local v14           #rz:F
    .end local v16           #view:Landroid/webkit/WebView;
    .end local v17           #y:F
    .end local v18           #z:F
    :cond_186
    return-void

    .line 1079
    .restart local v3       #ary:F
    .restart local v4       #arz:F
    .restart local v5       #ay:F
    .restart local v6       #az:F
    .restart local v13       #ry:F
    .restart local v14       #rz:F
    .restart local v17       #y:F
    .restart local v18       #z:F
    :cond_187
    const/16 v19, 0x0

    move/from16 v8, v19

    goto :goto_14a

    .line 1080
    .restart local v8       #gestY:Z
    :cond_18c
    const/16 v19, 0x0

    move/from16 v9, v19

    goto :goto_15e

    .line 1090
    .restart local v9       #gestZ:Z
    .restart local v16       #view:Landroid/webkit/WebView;
    :cond_191
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebView;->zoomIn()Z

    goto :goto_181

    .line 1093
    :cond_195
    const/16 v19, 0x0

    const/high16 v20, 0x42c8

    mul-float v20, v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_181
.end method
