.class public Lcom/lge/render/EffectRenderer;
.super Ljava/lang/Object;
.source "EffectRenderer.java"

# interfaces
.implements Lcom/lge/render/RendererAttribute;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/render/EffectRenderer$1;,
        Lcom/lge/render/EffectRenderer$ScreenData;
    }
.end annotation


# static fields
.field private static final EFFECT_FINISH:I = 0x5

.field private static final EFFECT_MOTION1:I = 0x1

.field private static final EFFECT_MOTION2:I = 0x2

.field private static final EFFECT_NUM:I = 0x6

.field private static final EFFECT_OPT_MOTION1:I = 0x3

.field private static final EFFECT_OPT_MOTION2:I = 0x4

.field private static final EFFECT_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "EFFECT_RENDERER"

.field private static m_iFlag:I


# instance fields
.field private m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

.field private m_DrawOrder:[I

.field private m_DrawVertex:[I

.field private m_NewRender:I

.field private m_NowRender:I

.field private m_RenderListener:Lcom/lge/render/RenderAttListener;

.field private m_aibMotions:[Z

.field private m_fMovingDistance:F

.field private m_iDispCnt:I

.field private m_iDrawFlag:I

.field private m_iDrawTimer:J

.field private m_iMode:I


# direct methods
.method public constructor <init>(Lcom/lge/render/RenderAttListener;)V
    .registers 3
    .parameter "elRender"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 37
    iput-object p1, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    .line 39
    return-void
.end method

.method private Bound(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;I)Z
    .registers 22
    .parameter "canvas"
    .parameter "mgr"
    .parameter "land"

    .prologue
    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    move v3, v0

    if-nez v3, :cond_9

    .line 1153
    const/4 v3, 0x1

    .line 1195
    :goto_8
    return v3

    .line 1157
    :cond_9
    const/4 v15, 0x1

    .line 1158
    .local v15, finishcheck:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    move-object v3, v0

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_8d

    .line 1160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    move v3, v0

    sub-int v3, p3, v3

    div-int/lit8 v8, v3, 0x6

    .line 1161
    .local v8, minSpeed:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_5b

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    move-object v3, v0

    aget v17, v3, v16

    .line 1163
    .local v17, order:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 1165
    .local v4, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    const v7, 0x3f333333

    move-object/from16 v3, p0

    move/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v3

    and-int/2addr v15, v3

    .line 1168
    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 1161
    add-int/lit8 v16, v16, 0x1

    goto :goto_1f

    .line 1171
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    .end local v17           #order:I
    :cond_5b
    if-eqz v15, :cond_8a

    .line 1172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    move v3, v0

    sub-int v3, p3, v3

    div-int/lit8 v3, v3, 0x3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_6b

    .line 1173
    const/4 v3, 0x1

    goto :goto_8

    .line 1176
    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    move v3, v0

    sub-int v3, p3, v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    move v4, v0

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 1195
    .end local v8           #minSpeed:I
    :cond_8a
    :goto_8a
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 1180
    .end local v16           #i:I
    :cond_8d
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_8f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_d1

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    move-object v3, v0

    aget v17, v3, v16

    .line 1182
    .restart local v17       #order:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 1184
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v11, v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    move v12, v0

    const v13, 0x3ecccccd

    const/4 v14, 0x5

    move-object/from16 v9, p0

    move-object v10, v4

    invoke-direct/range {v9 .. v14}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v3

    and-int/2addr v15, v3

    .line 1187
    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 1180
    add-int/lit8 v16, v16, 0x1

    goto :goto_8f

    .line 1190
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    .end local v17           #order:I
    :cond_d1
    if-eqz v15, :cond_8a

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto :goto_8a
.end method

.method private CreateGridDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 15
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 966
    const/4 v6, 0x1

    .line 968
    .local v6, finishcheck:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v7, v0, :cond_58

    .line 969
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    aget v10, v0, v7

    .line 970
    .local v10, order:I
    invoke-virtual {p2, v10}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 973
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    const/16 v2, 0x74

    const/16 v3, 0x74

    const/high16 v4, 0x3f00

    const/16 v5, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 976
    const/16 v0, 0xef

    const v2, 0x3ecccccd

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 979
    rem-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x1d

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit8 v2, v7, 0x2

    mul-int/lit8 v2, v2, 0x74

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x3a

    div-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v3, v7, 0x2

    mul-int/lit8 v3, v3, 0x74

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3a

    iget v3, p0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    float-to-int v3, v3

    sub-int v3, v0, v3

    const v4, 0x3f19999a

    const/16 v5, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 990
    invoke-virtual {p2, v10, p1}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 968
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 994
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    .end local v10           #order:I
    :cond_58
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v11

    .line 995
    .local v11, rightisze:I
    const/4 v7, 0x0

    :goto_5d
    if-ge v7, v11, :cond_b4

    const/4 v0, 0x2

    if-ge v7, v0, :cond_b4

    .line 996
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 999
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    const/16 v2, 0x74

    const/16 v3, 0x74

    const/high16 v4, 0x3f00

    const/16 v5, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1002
    const/16 v0, 0xef

    const v2, 0x3e4ccccd

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1005
    rem-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x1d

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit8 v2, v7, 0x2

    mul-int/lit8 v2, v2, 0x74

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x3a

    add-int/lit8 v0, v7, 0x6

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v7, 0x6

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x74

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3a

    iget v3, p0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    float-to-int v3, v3

    sub-int v3, v0, v3

    const v4, 0x3f19999a

    const/16 v5, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1017
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 995
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 1020
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_b4
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v9

    .line 1021
    .local v9, leftsize:I
    const/4 v0, 0x1

    sub-int v7, v9, v0

    const/4 v8, 0x1

    .local v8, j:I
    :goto_bc
    if-ltz v7, :cond_107

    const/4 v0, 0x2

    if-gt v8, v0, :cond_107

    .line 1022
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1025
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    const/16 v2, 0x74

    const/16 v3, 0x74

    const/high16 v4, 0x3f00

    const/16 v5, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1028
    const/16 v0, 0xef

    const v2, 0x3e4ccccd

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1031
    rem-int/lit8 v0, v8, 0x2

    mul-int/lit8 v0, v0, 0x1d

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit8 v2, v8, 0x2

    mul-int/lit8 v2, v2, 0x74

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x3a

    const/16 v0, -0x73

    iget v3, p0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x3a

    const v4, 0x3f19999a

    const/16 v5, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1040
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 1021
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_bc

    .line 1043
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_107
    return v6
.end method

.method private CreateLandDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 14
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 1047
    const/16 v10, 0x76

    .line 1049
    .local v10, term:I
    const/4 v6, 0x1

    .line 1051
    .local v6, finishcheck:Z
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v8

    .line 1052
    .local v8, leftsize:I
    if-lez v8, :cond_40

    .line 1053
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v8}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1055
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    const/16 v2, 0x74

    const/16 v3, 0x74

    const v4, 0x3f333333

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1059
    const/16 v0, 0xef

    const v2, 0x3f19999a

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1062
    neg-int v0, v10

    add-int/lit8 v0, v0, 0x3a

    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    float-to-int v2, v2

    sub-int v2, v0, v2

    const/16 v3, 0x6b

    const v4, 0x3f19999a

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1067
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 1070
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_40
    const/4 v7, 0x0

    .local v7, i:I
    :goto_41
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v7, v0, :cond_7e

    .line 1071
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1074
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    const/16 v2, 0x74

    const/16 v3, 0x74

    const v4, 0x3f333333

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1078
    const/16 v0, 0xef

    const v2, 0x3f19999a

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1081
    mul-int v0, v7, v10

    add-int/lit8 v0, v0, 0x3a

    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    float-to-int v2, v2

    sub-int v2, v0, v2

    const/16 v3, 0x6b

    const v4, 0x3f19999a

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1086
    invoke-virtual {p2, v7, p1}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 1070
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 1089
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_7e
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v9

    .line 1090
    .local v9, rightsize:I
    if-lez v9, :cond_bc

    .line 1091
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1093
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    const/16 v2, 0x74

    const/16 v3, 0x74

    const v4, 0x3f333333

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1097
    const/16 v0, 0xef

    const v2, 0x3f19999a

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1100
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    mul-int/2addr v0, v10

    add-int/lit8 v0, v0, 0x3a

    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    float-to-int v2, v2

    sub-int v2, v0, v2

    const/16 v3, 0x6b

    const v4, 0x3f19999a

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1107
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 1109
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_bc
    return v6
.end method

.method private CreateWheelDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 27
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 917
    const/16 v16, 0x1

    .line 920
    .local v16, finished:Z
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_f3

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    move-object v5, v0

    aget v19, v5, v17

    .line 922
    .local v19, order:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    move-object v5, v0

    aget v5, v5, v19

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    move v6, v0

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 924
    .local v23, settingpx:F
    const/high16 v5, 0x4300

    const/high16 v6, 0x4120

    sub-float v6, v6, v23

    mul-float/2addr v5, v6

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    float-to-int v7, v5

    .line 926
    .local v7, size:I
    const/high16 v5, 0x40a0

    sub-float v18, v5, v23

    .line 927
    .local v18, inversepx:F
    const v5, 0x45cd0800

    mul-float v6, v18, v23

    const/high16 v8, 0x40a0

    sub-float v8, v8, v23

    mul-float/2addr v6, v8

    const/high16 v8, 0x4218

    div-float/2addr v6, v8

    sub-float v6, v23, v6

    mul-float/2addr v5, v6

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    .line 930
    .local v21, positionY:D
    const/high16 v5, 0x4761

    mul-float v6, v23, v23

    const/high16 v8, 0x4240

    mul-float/2addr v6, v8

    const/high16 v8, 0x4240

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    const/high16 v6, 0x41d8

    mul-float v6, v6, v23

    const/high16 v8, 0x40a0

    sub-float v8, v8, v23

    mul-float/2addr v6, v8

    const/high16 v8, 0x40a0

    div-float/2addr v6, v8

    float-to-int v6, v6

    sub-int v20, v5, v6

    .line 937
    .local v20, positionX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    move-object v5, v0

    aget v5, v5, v19

    if-gez v5, :cond_e4

    .line 945
    :cond_7d
    :goto_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    move-object v5, v0

    aget v5, v5, v19

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 946
    .local v15, alphaVaule:I
    mul-int v5, v15, v15

    div-int/lit8 v15, v5, 0x2

    .line 947
    const/16 v14, 0xff

    .line 948
    .local v14, alpha:I
    mul-int v5, v14, v15

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v14, v5

    .line 950
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v6

    .line 952
    .local v6, item:Lcom/lge/render/FCPhotoItem;
    const v5, 0x3f19999a

    const/16 v8, 0x2f

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v14

    move v3, v5

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v5

    and-int v16, v16, v5

    .line 953
    const v9, 0x3f19999a

    const/4 v10, 0x7

    move-object/from16 v5, p0

    move v8, v7

    invoke-direct/range {v5 .. v10}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v5

    and-int v16, v16, v5

    .line 954
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v5

    add-int v10, v5, v20

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v5

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move v7, v0

    add-int v11, v5, v7

    const v12, 0x3f19999a

    const/16 v13, 0x12

    move-object/from16 v8, p0

    move-object v9, v6

    invoke-direct/range {v8 .. v13}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    .end local v7           #size:I
    move-result v5

    and-int v16, v16, v5

    .line 958
    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 920
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 939
    .end local v6           #item:Lcom/lge/render/FCPhotoItem;
    .end local v14           #alpha:I
    .end local v15           #alphaVaule:I
    .restart local v7       #size:I
    :cond_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    move-object v5, v0

    aget v5, v5, v19

    if-lez v5, :cond_7d

    .line 940
    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    goto :goto_7d

    .line 961
    .end local v7           #size:I
    .end local v18           #inversepx:F
    .end local v19           #order:I
    .end local v20           #positionX:I
    .end local v21           #positionY:D
    .end local v23           #settingpx:F
    :cond_f3
    return v16
.end method

.method private EreaseContact(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 11
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/16 v5, 0xa

    const v4, 0x3ecccccd

    const/4 v7, 0x0

    .line 1113
    const/4 v6, 0x1

    .line 1115
    .local v6, check:Z
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v0

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 1116
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    packed-switch v0, :pswitch_data_8e

    .line 1142
    :goto_12
    :pswitch_12
    if-eqz v6, :cond_24

    .line 1143
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->clearGarbagePhotoItem()V

    .line 1145
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v3, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    invoke-interface {v2, v3}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    .line 1148
    :cond_24
    return v7

    .line 1118
    :pswitch_25
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateWheelDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1119
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getGarbagePhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1120
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    sget v0, Lcom/lge/render/EssentialRenderer;->SCREEN_WIDHT:I

    add-int/lit8 v2, v0, 0x50

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v0

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1123
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    goto :goto_12

    .line 1126
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :pswitch_47
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateGridDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1127
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getGarbagePhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1128
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    sget v0, Lcom/lge/render/EssentialRenderer;->SCREEN_WIDHT:I

    add-int/lit8 v2, v0, 0x50

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v0

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1131
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    goto :goto_12

    .line 1134
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :pswitch_69
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateLandDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1135
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getGarbagePhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1136
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    const/16 v3, -0x64

    const v4, 0x3e99999a

    const/4 v5, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1138
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    goto :goto_12

    .line 1116
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_25
        :pswitch_12
        :pswitch_69
    .end packed-switch
.end method

.method private GridToWheel(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 15
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 485
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v6, v6, v9

    if-eqz v6, :cond_19

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->ToMerge(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 488
    .local v0, check:Z
    if-eqz v0, :cond_18

    .line 489
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v9, v6, v9

    .line 490
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v10, v6, v10

    .line 541
    .end local v0           #check:Z
    :cond_18
    :goto_18
    return v9

    .line 492
    :cond_19
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v6, v6, v10

    if-eqz v6, :cond_c9

    .line 493
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    if-nez v6, :cond_75

    .line 494
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v5

    .line 495
    .local v5, size:I
    new-array v6, v5, [Lcom/lge/render/EffectRenderer$ScreenData;

    iput-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 496
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    if-ge v3, v5, :cond_70

    .line 497
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    new-instance v7, Lcom/lge/render/EffectRenderer$ScreenData;

    invoke-direct {v7, p0, v8}, Lcom/lge/render/EffectRenderer$ScreenData;-><init>(Lcom/lge/render/EffectRenderer;Lcom/lge/render/EffectRenderer$1;)V

    aput-object v7, v6, v3

    .line 498
    invoke-virtual {p2, v3}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 499
    .local v4, item:Lcom/lge/render/FCPhotoItem;
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v6, v6, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v7

    iput v7, v6, Lcom/lge/render/EffectRenderer$ScreenData;->x:I

    .line 500
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v6, v6, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v7

    iput v7, v6, Lcom/lge/render/EffectRenderer$ScreenData;->y:I

    .line 501
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v6, v6, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v7

    iput v7, v6, Lcom/lge/render/EffectRenderer$ScreenData;->width:I

    .line 502
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v6, v6, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v7

    iput v7, v6, Lcom/lge/render/EffectRenderer$ScreenData;->height:I

    .line 503
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v6, v6, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getColors()I

    move-result v7

    iput v7, v6, Lcom/lge/render/EffectRenderer$ScreenData;->colors:I

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 505
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_70
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v7, 0x3

    aput-boolean v10, v6, v7

    .line 507
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_75
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->InOutEffect(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 509
    .restart local v0       #check:Z
    if-eqz v0, :cond_18

    .line 510
    iput-object v8, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 511
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v7, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    sget v8, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    invoke-interface {v6, p0, v7, v8}, Lcom/lge/render/RenderAttListener;->finishedRender(Lcom/lge/render/RendererAttribute;II)V

    .line 513
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v9, v6, v10

    .line 514
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v10, v6, v11

    .line 515
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v6

    iput v6, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 517
    const/16 v2, 0x30

    .line 518
    .local v2, halfwidth:I
    const/16 v1, 0x30

    .line 519
    .local v1, halfheiht:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_99
    iget v6, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v3, v6, :cond_b1

    .line 520
    invoke-virtual {p2, v3}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 521
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v7}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 526
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_b1
    iget v6, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    invoke-virtual {p2, v6}, Lcom/lge/render/PhotoMgr;->getWheelDrawOrder(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    .line 527
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v6

    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v7

    invoke-static {v6, v7}, Lcom/lge/render/WheelRenderer;->getSettingVertexes(II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    goto/16 :goto_18

    .line 530
    .end local v0           #check:Z
    .end local v1           #halfheiht:I
    .end local v2           #halfwidth:I
    .end local v3           #i:I
    :cond_c9
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v6, v6, v11

    if-eqz v6, :cond_18

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateWheelDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 534
    .restart local v0       #check:Z
    if-eqz v0, :cond_18

    .line 535
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v9, v6, v11

    .line 536
    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-interface {v7, v11}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v7

    invoke-interface {v6, p0, v7}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    goto/16 :goto_18
.end method

.method private InOutEffect(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 13
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/4 v9, 0x3

    const/high16 v4, 0x3f00

    .line 1206
    const/4 v6, 0x1

    .line 1207
    .local v6, finishcheck:Z
    const v8, 0x3f4ccccd

    .line 1209
    .local v8, slant:F
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_3e

    .line 1210
    const/4 v7, 0x0

    .local v7, i:I
    :goto_e
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v7, v0, :cond_35

    .line 1211
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1213
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/lge/render/EffectRenderer$ScreenData;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v2, v0

    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/lge/render/EffectRenderer$ScreenData;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v3, v0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1217
    invoke-virtual {p2, v7, p1}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 1210
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1219
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_35
    if-eqz v6, :cond_3c

    .line 1220
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v9

    .line 1222
    :cond_3c
    const/4 v6, 0x0

    .line 1235
    :cond_3d
    return v6

    .line 1224
    .end local v7           #i:I
    :cond_3e
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3f
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v7, v0, :cond_3d

    .line 1225
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 1227
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v0, v0, v7

    iget v2, v0, Lcom/lge/render/EffectRenderer$ScreenData;->width:I

    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v0, v0, v7

    iget v3, v0, Lcom/lge/render/EffectRenderer$ScreenData;->height:I

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1231
    invoke-virtual {p2, v7, p1}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 1224
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f
.end method

.method private MoveContacts(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 7
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 1239
    const/4 v0, 0x1

    .line 1240
    .local v0, check:Z
    iget v1, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    packed-switch v1, :pswitch_data_2a

    .line 1252
    :goto_6
    :pswitch_6
    if-eqz v0, :cond_15

    .line 1253
    iget-object v1, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v3, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    invoke-interface {v2, v3}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    .line 1256
    :cond_15
    const/4 v1, 0x0

    return v1

    .line 1242
    :pswitch_17
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateGridDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1243
    goto :goto_6

    .line 1245
    :pswitch_1d
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateLandDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1246
    goto :goto_6

    .line 1248
    :pswitch_23
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateWheelDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_6

    .line 1240
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_23
        :pswitch_6
        :pswitch_1d
    .end packed-switch
.end method

.method private PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z
    .registers 9
    .parameter "item"
    .parameter "alpha"
    .parameter "speed"
    .parameter "minspeed"

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getAlpha()I

    move-result v2

    sub-int v0, v2, p2

    .line 393
    .local v0, Alpha:I
    int-to-float v2, v0

    mul-float v1, v2, p3

    .line 395
    .local v1, modialpha:F
    if-gez v0, :cond_22

    .line 397
    neg-float v2, v1

    int-to-float v3, p4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    .line 398
    neg-int v2, p4

    int-to-float v1, v2

    .line 400
    :cond_13
    int-to-float v2, v0

    sub-float/2addr v2, v1

    float-to-int v0, v2

    .line 402
    if-lez v0, :cond_19

    .line 403
    const/4 v0, 0x0

    .line 414
    :cond_19
    :goto_19
    add-int v2, v0, p2

    invoke-virtual {p1, v2}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 416
    if-eqz v0, :cond_31

    .line 417
    const/4 v2, 0x0

    .line 420
    :goto_21
    return v2

    .line 404
    :cond_22
    if-lez v0, :cond_19

    .line 405
    int-to-float v2, p4

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2a

    .line 406
    int-to-float v1, p4

    .line 408
    :cond_2a
    int-to-float v2, v0

    sub-float/2addr v2, v1

    float-to-int v0, v2

    .line 410
    if-gez v0, :cond_19

    .line 411
    const/4 v0, 0x0

    goto :goto_19

    .line 420
    :cond_31
    const/4 v2, 0x1

    goto :goto_21
.end method

.method private PhotoDisSel(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 7
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 870
    const/4 v0, 0x1

    .line 872
    .local v0, finishcheck:Z
    iget v1, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1c

    .line 873
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateLandDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 879
    :goto_b
    if-eqz v0, :cond_1a

    .line 880
    iget-object v1, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v3, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    invoke-interface {v2, v3}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    .line 885
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 874
    :cond_1c
    iget v1, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateWheelDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_b

    .line 877
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateGridDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_b
.end method

.method private PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z
    .registers 11
    .parameter "item"
    .parameter "moveX"
    .parameter "moveY"
    .parameter "speed"
    .parameter "minSpeed"

    .prologue
    .line 425
    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 426
    .local v1, photo_C_X:I
    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v3

    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p3

    .line 428
    .local v2, photo_C_Y:I
    if-gez v1, :cond_57

    .line 429
    int-to-float v3, v1

    mul-float v0, v3, p4

    .line 431
    .local v0, moving:F
    neg-float v3, v0

    int-to-float v4, p5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_53

    .line 432
    add-int/2addr v1, p5

    .line 436
    :goto_26
    if-lez v1, :cond_29

    .line 437
    const/4 v1, 0x0

    .line 450
    .end local v0           #moving:F
    :cond_29
    :goto_29
    if-gez v2, :cond_6e

    .line 451
    int-to-float v3, v2

    mul-float v0, v3, p4

    .line 453
    .restart local v0       #moving:F
    neg-float v3, v0

    int-to-float v4, p5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6a

    .line 454
    add-int/2addr v2, p5

    .line 458
    :goto_35
    if-lez v2, :cond_38

    .line 459
    const/4 v2, 0x0

    .line 472
    .end local v0           #moving:F
    :cond_38
    :goto_38
    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    add-int/2addr v3, p2

    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/2addr v4, p3

    invoke-virtual {p1, v3, v4}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 475
    if-nez v1, :cond_51

    if-eqz v2, :cond_81

    .line 476
    :cond_51
    const/4 v3, 0x0

    .line 479
    :goto_52
    return v3

    .line 434
    .restart local v0       #moving:F
    :cond_53
    int-to-float v3, v1

    sub-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_26

    .line 438
    .end local v0           #moving:F
    :cond_57
    if-lez v1, :cond_29

    .line 439
    int-to-float v3, v1

    mul-float v0, v3, p4

    .line 441
    .restart local v0       #moving:F
    int-to-float v3, p5

    cmpg-float v3, v0, v3

    if-gez v3, :cond_66

    .line 442
    sub-int/2addr v1, p5

    .line 446
    :goto_62
    if-gez v1, :cond_29

    .line 447
    const/4 v1, 0x0

    goto :goto_29

    .line 444
    :cond_66
    int-to-float v3, v1

    sub-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_62

    .line 456
    :cond_6a
    int-to-float v3, v2

    sub-float/2addr v3, v0

    float-to-int v2, v3

    goto :goto_35

    .line 460
    .end local v0           #moving:F
    :cond_6e
    if-lez v2, :cond_38

    .line 461
    int-to-float v3, v2

    mul-float v0, v3, p4

    .line 463
    .restart local v0       #moving:F
    int-to-float v3, p5

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7d

    .line 464
    sub-int/2addr v2, p5

    .line 468
    :goto_79
    if-gez v2, :cond_38

    .line 469
    const/4 v2, 0x0

    goto :goto_38

    .line 466
    :cond_7d
    int-to-float v3, v2

    sub-float/2addr v3, v0

    float-to-int v2, v3

    goto :goto_79

    .line 479
    .end local v0           #moving:F
    :cond_81
    const/4 v3, 0x1

    goto :goto_52
.end method

.method private PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z
    .registers 14
    .parameter "item"
    .parameter "wsize"
    .parameter "hsize"
    .parameter "speed"
    .parameter "minspeed"

    .prologue
    const/high16 v7, 0x4000

    .line 323
    invoke-virtual {p1}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 324
    .local v3, photoRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v4, v5, p2

    .line 325
    .local v4, width:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v0, v5, p3

    .line 326
    .local v0, height:I
    const/4 v2, 0x0

    .line 327
    .local v2, mwsize:F
    const/4 v1, 0x0

    .line 329
    .local v1, mhsize:F
    int-to-float v5, v4

    mul-float v2, v5, p4

    .line 330
    if-gez v4, :cond_58

    .line 331
    neg-float v5, v2

    int-to-float v6, p5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_21

    .line 332
    neg-int v5, p5

    int-to-float v2, v5

    .line 335
    :cond_21
    int-to-float v5, v4

    sub-float/2addr v5, v2

    float-to-int v4, v5

    .line 337
    if-lez v4, :cond_28

    .line 338
    int-to-float v2, v4

    .line 339
    const/4 v4, 0x0

    .line 355
    :cond_28
    :goto_28
    int-to-float v5, v0

    mul-float v1, v5, p4

    .line 356
    if-gez v0, :cond_68

    .line 357
    neg-float v5, v1

    int-to-float v6, p5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_35

    .line 358
    neg-int v5, p5

    int-to-float v1, v5

    .line 361
    :cond_35
    int-to-float v5, v0

    sub-float/2addr v5, v1

    float-to-int v0, v5

    .line 363
    if-lez v0, :cond_3c

    .line 364
    int-to-float v1, v0

    .line 365
    const/4 v0, 0x0

    .line 379
    :cond_3c
    :goto_3c
    add-int v5, v4, p2

    add-int v6, v0, p3

    invoke-virtual {p1, v5, v6}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 380
    iget v5, v3, Landroid/graphics/Rect;->left:I

    div-float v6, v2, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->top:I

    div-float v7, v1, v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 382
    if-nez v4, :cond_56

    if-eqz v0, :cond_78

    .line 383
    :cond_56
    const/4 v5, 0x0

    .line 386
    :goto_57
    return v5

    .line 341
    :cond_58
    if-lez v4, :cond_28

    .line 342
    int-to-float v5, p5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_60

    .line 343
    int-to-float v2, p5

    .line 347
    :cond_60
    int-to-float v5, v4

    sub-float/2addr v5, v2

    float-to-int v4, v5

    .line 349
    if-gez v4, :cond_28

    .line 350
    int-to-float v2, v4

    .line 351
    const/4 v4, 0x0

    goto :goto_28

    .line 367
    :cond_68
    if-lez v0, :cond_3c

    .line 368
    int-to-float v5, p5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_70

    .line 369
    int-to-float v1, p5

    .line 371
    :cond_70
    int-to-float v5, v0

    sub-float/2addr v5, v1

    float-to-int v0, v5

    .line 373
    if-gez v0, :cond_3c

    .line 374
    int-to-float v1, v0

    .line 375
    const/4 v0, 0x0

    goto :goto_3c

    .line 386
    :cond_78
    const/4 v5, 0x1

    goto :goto_57
.end method

.method private PhotosInSelect(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 16
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/16 v12, 0xa

    const/16 v5, 0x9

    const/high16 v4, 0x3f00

    const v11, 0x3ecccccd

    const/4 v2, 0x0

    .line 773
    const/4 v6, 0x1

    .line 775
    .local v6, finishcheck:Z
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v3, 0x3

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_fe

    .line 776
    const/4 v7, 0x0

    .local v7, i:I
    :goto_13
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v7, v0, :cond_3c

    .line 778
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    aget v9, v0, v7

    .line 779
    .local v9, order:I
    invoke-virtual {p2, v9}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 781
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 782
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0, v11, v12}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 784
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 788
    :cond_36
    invoke-virtual {p2, v9, p1}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 776
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 791
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    .end local v9           #order:I
    :cond_3c
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_99

    .line 792
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v10

    .line 793
    .local v10, rightsize:I
    const/4 v7, 0x0

    :goto_46
    if-ge v7, v10, :cond_6c

    const/4 v0, 0x2

    if-ge v7, v0, :cond_6c

    .line 794
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 796
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 797
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0, v11, v12}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 800
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 804
    :cond_66
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 793
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 807
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_6c
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v8

    .line 808
    .local v8, leftsize:I
    const/4 v7, 0x0

    :goto_71
    if-lez v8, :cond_ec

    const/4 v0, 0x2

    if-ge v7, v0, :cond_ec

    .line 809
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v8}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 811
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 812
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0, v11, v12}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 815
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 819
    :cond_93
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 808
    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    .line 823
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    .end local v8           #leftsize:I
    .end local v10           #rightsize:I
    :cond_99
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_ec

    .line 825
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v0

    if-lez v0, :cond_c2

    .line 826
    invoke-virtual {p2, v2}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 827
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 828
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0, v11, v12}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 831
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 835
    :cond_bf
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 838
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_c2
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v0

    if-lez v0, :cond_ec

    .line 840
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 841
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 842
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0, v11, v12}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 845
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v6, v0

    .line 849
    :cond_e9
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 853
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_ec
    if-eqz v6, :cond_fc

    .line 854
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v3, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    sget v4, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    invoke-interface {v0, p0, v3, v4}, Lcom/lge/render/RenderAttListener;->finishedRender(Lcom/lge/render/RendererAttribute;II)V

    .line 855
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    :cond_fc
    move v0, v2

    .line 859
    .end local v7           #i:I
    :goto_fd
    return v0

    :cond_fe
    move v0, v2

    goto :goto_fd
.end method

.method private ToGrid(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 13
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 609
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_7b

    .line 610
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    if-nez v5, :cond_5f

    .line 611
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v3

    .line 612
    .local v3, size:I
    new-array v5, v3, [Lcom/lge/render/EffectRenderer$ScreenData;

    iput-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 613
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v3, :cond_5a

    .line 614
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    new-instance v6, Lcom/lge/render/EffectRenderer$ScreenData;

    invoke-direct {v6, p0, v9}, Lcom/lge/render/EffectRenderer$ScreenData;-><init>(Lcom/lge/render/EffectRenderer;Lcom/lge/render/EffectRenderer$1;)V

    aput-object v6, v5, v1

    .line 615
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v2

    .line 616
    .local v2, item:Lcom/lge/render/FCPhotoItem;
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->x:I

    .line 617
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->y:I

    .line 618
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->width:I

    .line 619
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->height:I

    .line 620
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getColors()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->colors:I

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 622
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_5a
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v6, 0x3

    aput-boolean v7, v5, v6

    .line 625
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_5f
    iget v4, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 626
    .local v4, tmp:I
    iget v5, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-lez v5, :cond_67

    .line 627
    iput v7, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 629
    :cond_67
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->InOutEffect(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 631
    .local v0, check:Z
    iput v4, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 633
    if-eqz v0, :cond_79

    .line 634
    iput-object v9, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 635
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v8, v5, v8

    .line 636
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v7, v5, v7

    .end local v0           #check:Z
    .end local v4           #tmp:I
    :cond_79
    move v5, v8

    .line 649
    :goto_7a
    return v5

    .line 638
    :cond_7b
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_79

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateGridDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 641
    .restart local v0       #check:Z
    if-eqz v0, :cond_79

    .line 642
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v8, v5, v7

    .line 643
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-interface {v6, v7}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v6

    invoke-interface {v5, p0, v6}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    move v5, v7

    .line 646
    goto :goto_7a
.end method

.method private ToLand(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 15
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/16 v11, 0xa5

    const/16 v10, 0x31

    const/16 v9, 0x74

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 701
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_85

    .line 702
    iget v4, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 703
    .local v4, tmp:I
    iget v5, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-lez v5, :cond_16

    .line 704
    iput v8, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 706
    :cond_16
    const/16 v5, 0x6b

    invoke-direct {p0, p1, p2, v5}, Lcom/lge/render/EffectRenderer;->Bound(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;I)Z

    move-result v0

    .line 710
    .local v0, check:Z
    iput v4, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 712
    if-eqz v0, :cond_83

    .line 713
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v7, v5, v7

    .line 714
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v8, v5, v8

    .line 715
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v6, 0x3

    aput-boolean v8, v5, v6

    .line 716
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, left:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_32
    iget v5, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v1, v5, :cond_48

    .line 719
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v2

    .line 720
    .local v2, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v3

    .line 721
    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v5

    invoke-virtual {v2, v5, v10}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 734
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_48
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v5

    if-lez v5, :cond_63

    .line 735
    invoke-virtual {p2, v7}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v2

    .line 736
    .restart local v2       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, v3, v10}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 737
    invoke-virtual {v2, v9, v9}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 739
    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 741
    invoke-virtual {v2, v11}, Lcom/lge/render/FCPhotoItem;->setLand(I)V

    .line 742
    invoke-virtual {v2, v8}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 745
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_63
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v5

    if-lez v5, :cond_83

    .line 747
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {p2, v5}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v2

    .line 748
    .restart local v2       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, v3, v10}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 749
    invoke-virtual {v2, v9, v9}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 751
    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 753
    invoke-virtual {v2, v11}, Lcom/lge/render/FCPhotoItem;->setLand(I)V

    .line 754
    invoke-virtual {v2, v8}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .end local v0           #check:Z
    .end local v1           #i:I
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    .end local v3           #left:I
    .end local v4           #tmp:I
    :cond_83
    move v5, v7

    .line 768
    :goto_84
    return v5

    .line 757
    :cond_85
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_83

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateLandDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 760
    .restart local v0       #check:Z
    if-eqz v0, :cond_83

    .line 761
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v7, v5, v8

    .line 762
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v6

    invoke-interface {v5, p0, v6}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    move v5, v8

    .line 765
    goto :goto_84
.end method

.method private ToMerge(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 14
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/16 v2, 0x60

    const/high16 v7, 0x3f00

    .line 889
    const/4 v9, 0x1

    .line 891
    .local v9, finishcheck:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v10, v0, :cond_39

    .line 893
    invoke-virtual {p2, v10}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 896
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    const v4, 0x3f333333

    const/4 v5, 0x4

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/lge/render/EffectRenderer;->PhotoSizeModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v9, v0

    .line 900
    const/16 v0, 0xaf

    const/16 v3, 0xf

    invoke-direct {p0, v1, v0, v7, v3}, Lcom/lge/render/EffectRenderer;->PhotoAlphaModify(Lcom/lge/render/FCPhotoItem;IFI)Z

    move-result v0

    and-int/2addr v9, v0

    .line 902
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v5

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v6

    const/16 v8, 0xa

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/lge/render/EffectRenderer;->PhotoPositionModify(Lcom/lge/render/FCPhotoItem;IIFI)Z

    move-result v0

    and-int/2addr v9, v0

    .line 906
    invoke-virtual {p2, v10, p1}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    .line 891
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 909
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_39
    return v9
.end method

.method private ToWheel(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 13
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 655
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_7b

    .line 656
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    if-nez v5, :cond_5f

    .line 657
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v3

    .line 658
    .local v3, size:I
    new-array v5, v3, [Lcom/lge/render/EffectRenderer$ScreenData;

    iput-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 659
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v3, :cond_5a

    .line 660
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    new-instance v6, Lcom/lge/render/EffectRenderer$ScreenData;

    invoke-direct {v6, p0, v9}, Lcom/lge/render/EffectRenderer$ScreenData;-><init>(Lcom/lge/render/EffectRenderer;Lcom/lge/render/EffectRenderer$1;)V

    aput-object v6, v5, v1

    .line 661
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v2

    .line 662
    .local v2, item:Lcom/lge/render/FCPhotoItem;
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->x:I

    .line 663
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->y:I

    .line 664
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->width:I

    .line 665
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->height:I

    .line 666
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getColors()I

    move-result v6

    iput v6, v5, Lcom/lge/render/EffectRenderer$ScreenData;->colors:I

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 668
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_5a
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v6, 0x3

    aput-boolean v8, v5, v6

    .line 671
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_5f
    iget v4, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 672
    .local v4, tmp:I
    iget v5, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-lez v5, :cond_67

    .line 673
    iput v8, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 675
    :cond_67
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->InOutEffect(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 677
    .local v0, check:Z
    iput v4, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 679
    if-eqz v0, :cond_79

    .line 680
    iput-object v9, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 681
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v7, v5, v7

    .line 682
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v8, v5, v8

    .end local v0           #check:Z
    .end local v4           #tmp:I
    :cond_79
    move v5, v7

    .line 695
    :goto_7a
    return v5

    .line 684
    :cond_7b
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_79

    .line 685
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateWheelDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 687
    .restart local v0       #check:Z
    if-eqz v0, :cond_79

    .line 688
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    aput-boolean v7, v5, v8

    .line 689
    iget-object v5, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v6, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v6

    invoke-interface {v5, p0, v6}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    move v5, v8

    .line 692
    goto :goto_7a
.end method

.method private WheelToGrid(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 13
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 547
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_1b

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->ToMerge(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 550
    .local v0, check:Z
    if-eqz v0, :cond_19

    .line 551
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 552
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 603
    .end local v0           #check:Z
    :cond_19
    :goto_19
    const/4 v7, 0x0

    return v7

    .line 554
    :cond_1b
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x1

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_cb

    .line 555
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    if-nez v7, :cond_7a

    .line 556
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v6

    .line 557
    .local v6, size:I
    new-array v7, v6, [Lcom/lge/render/EffectRenderer$ScreenData;

    iput-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 558
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2f
    if-ge v3, v6, :cond_74

    .line 559
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    new-instance v8, Lcom/lge/render/EffectRenderer$ScreenData;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/lge/render/EffectRenderer$ScreenData;-><init>(Lcom/lge/render/EffectRenderer;Lcom/lge/render/EffectRenderer$1;)V

    aput-object v8, v7, v3

    .line 560
    invoke-virtual {p2, v3}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 561
    .local v4, item:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v7, v7, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getLeft()I

    move-result v8

    iput v8, v7, Lcom/lge/render/EffectRenderer$ScreenData;->x:I

    .line 562
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v7, v7, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v8

    iput v8, v7, Lcom/lge/render/EffectRenderer$ScreenData;->y:I

    .line 563
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v7, v7, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v8

    iput v8, v7, Lcom/lge/render/EffectRenderer$ScreenData;->width:I

    .line 564
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v7, v7, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v8

    iput v8, v7, Lcom/lge/render/EffectRenderer$ScreenData;->height:I

    .line 565
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    aget-object v7, v7, v3

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getColors()I

    move-result v8

    iput v8, v7, Lcom/lge/render/EffectRenderer$ScreenData;->colors:I

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 567
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_74
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x3

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 569
    .end local v3           #i:I
    .end local v6           #size:I
    :cond_7a
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->InOutEffect(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 571
    .restart local v0       #check:Z
    if-eqz v0, :cond_19

    .line 572
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v8, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    sget v9, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    invoke-interface {v7, p0, v8, v9}, Lcom/lge/render/RenderAttListener;->finishedRender(Lcom/lge/render/RendererAttribute;II)V

    .line 573
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lge/render/EffectRenderer;->m_Backup:[Lcom/lge/render/EffectRenderer$ScreenData;

    .line 575
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 576
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 577
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v7

    iput v7, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 579
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v5

    .line 580
    .local v5, rightsize:I
    const/16 v2, 0x30

    .line 581
    .local v2, halfwidth:I
    const/16 v1, 0x30

    .line 582
    .local v1, halfheiht:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_a7
    if-ge v3, v5, :cond_c0

    const/4 v7, 0x2

    if-ge v3, v7, :cond_c0

    .line 583
    invoke-virtual {p2, v3}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 584
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v4, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    .line 589
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_c0
    iget v7, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Lcom/lge/render/PhotoMgr;->getDefaultOrder(II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    goto/16 :goto_19

    .line 591
    .end local v0           #check:Z
    .end local v1           #halfheiht:I
    .end local v2           #halfwidth:I
    .end local v3           #i:I
    .end local v5           #rightsize:I
    :cond_cb
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x2

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_19

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->CreateGridDefault(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 595
    .restart local v0       #check:Z
    if-eqz v0, :cond_19

    .line 596
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 597
    iget-object v7, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v8, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v8

    invoke-interface {v7, p0, v8}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    goto/16 :goto_19
.end method

.method public static getRenderFlag()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    return v0
.end method

.method public static setRenderFlag(I)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 52
    shl-int/lit8 v0, p0, 0x8

    sput v0, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    .line 53
    return-void
.end method


# virtual methods
.method public FlingTouch(FFLcom/lge/render/PhotoMgr;)Z
    .registers 5
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "mgr"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 4
    .parameter "e"
    .parameter "mgr"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public ScrollTouch(FFLandroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 6
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "e"
    .parameter "mgr"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "mgr"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "mgr"
    .parameter "PressOrUp"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 301
    const/16 v0, 0x8

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    return v0
.end method

.method public getMovingDistance()F
    .registers 2

    .prologue
    .line 1283
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string v0, "EFFECT_RENDERER"

    return-object v0
.end method

.method public initMovingDistance()V
    .registers 1

    .prologue
    .line 1289
    return-void
.end method

.method public initailRender(Lcom/lge/render/PhotoMgr;)V
    .registers 14
    .parameter "mgr"

    .prologue
    .line 133
    sget v0, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    .line 134
    sget v0, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    .line 135
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v0

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    .line 138
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    if-nez v0, :cond_1e

    .line 139
    const/4 v7, 0x2

    .line 140
    .local v7, aa:I
    const/4 v7, 0x3

    .line 141
    const/4 v7, 0x4

    .line 142
    iput v7, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    .line 144
    .end local v7           #aa:I
    :cond_1e
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v1, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    invoke-interface {v0, v1}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/render/RendererAttribute;->getMovingDistance()F

    move-result v0

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_fMovingDistance:F

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2d
    const/4 v0, 0x6

    if-ge v1, v0, :cond_38

    .line 146
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 149
    :cond_38
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a3

    .line 150
    .end local v1           #i:I
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    .line 151
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_66

    .line 152
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/lge/render/PhotoMgr;->getDefaultOrder(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    .line 292
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 293
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 294
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 296
    :cond_65
    :goto_65
    return-void

    .line 154
    :cond_66
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v1, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    invoke-interface {v1, v2}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    goto :goto_65

    .line 158
    :cond_74
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 159
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_95

    .line 160
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v0

    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/render/WheelRenderer;->getSettingVertexes(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    .line 162
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    invoke-virtual {p1, v0}, Lcom/lge/render/PhotoMgr;->getWheelDrawOrder(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    goto :goto_53

    .line 164
    :cond_95
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v1, p0, Lcom/lge/render/EffectRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    invoke-interface {v1, v2}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    goto :goto_65

    .line 169
    :cond_a3
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    and-int/lit16 v0, v0, 0x101

    const/16 v1, 0x101

    if-ne v0, v1, :cond_cf

    .line 170
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 172
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c5

    .line 173
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    invoke-virtual {p1, v0}, Lcom/lge/render/PhotoMgr;->getWheelDrawOrder(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    goto :goto_53

    .line 175
    :cond_c5
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/lge/render/PhotoMgr;->getDefaultOrder(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    goto :goto_53

    .line 176
    :cond_cf
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1ca

    .line 177
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    if-nez v0, :cond_65

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/render/EffectRenderer;->m_iDrawTimer:J

    .line 184
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13c

    .line 185
    const/16 v9, 0x3a

    .line 186
    .local v9, halfwidth:I
    const/16 v8, 0x3a

    .line 187
    .local v8, halfheight:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ea
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v1, v0, :cond_107

    .line 188
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v0

    sub-int v2, v0, v9

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v0

    sub-int v3, v0, v8

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, 0xff

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->setPhotoPosition(IIIIII)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    .line 194
    :cond_107
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v11

    .line 195
    .local v11, rightsize:I
    const/4 v1, 0x0

    :goto_10c
    if-ge v1, v11, :cond_131

    const/4 v0, 0x2

    if-ge v1, v0, :cond_131

    .line 196
    invoke-virtual {p1, v1}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v10

    .line 197
    .local v10, item:Lcom/lge/render/FCPhotoItem;
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v10, v0, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 200
    const/16 v0, 0x74

    const/16 v2, 0x74

    invoke-virtual {v10, v0, v2}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 202
    const/16 v0, 0xff

    invoke-virtual {v10, v0}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_10c

    .line 205
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_131
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/lge/render/PhotoMgr;->getDefaultOrder(II)[I

    .end local v1           #i:I
    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    goto/16 :goto_53

    .line 206
    .end local v8           #halfheight:I
    .end local v9           #halfwidth:I
    .end local v11           #rightsize:I
    :cond_13c
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17b

    .line 207
    const/16 v9, 0x40

    .line 208
    .restart local v9       #halfwidth:I
    const/16 v8, 0x40

    .line 209
    .restart local v8       #halfheight:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_146
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v1, v0, :cond_163

    .line 210
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v0

    sub-int v2, v0, v9

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v0

    sub-int v3, v0, v8

    const/16 v4, 0x80

    const/16 v5, 0x80

    const/16 v6, 0xff

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->setPhotoPosition(IIIIII)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_146

    .line 215
    :cond_163
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v0

    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v1

    .end local v1           #i:I
    invoke-static {v0, v1}, Lcom/lge/render/WheelRenderer;->getSettingVertexes(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    .line 217
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    invoke-virtual {p1, v0}, Lcom/lge/render/PhotoMgr;->getWheelDrawOrder(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    goto/16 :goto_53

    .line 218
    .end local v8           #halfheight:I
    .end local v9           #halfwidth:I
    :cond_17b
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NewRender:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    .line 219
    iget-object v0, p0, Lcom/lge/render/EffectRenderer;->m_aibMotions:[Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 221
    const/16 v9, 0x3a

    .line 224
    .restart local v9       #halfwidth:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_189
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-ge v1, v0, :cond_1ae

    .line 225
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v0

    sub-int v2, v0, v9

    const/4 v3, 0x0

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, 0xff

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->setPhotoPosition(IIIIII)V

    .line 228
    invoke-virtual {p1, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v10

    .line 229
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    const/16 v0, 0xa5

    invoke-virtual {v10, v0}, Lcom/lge/render/FCPhotoItem;->setLand(I)V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_189

    .line 264
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1ae
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    if-lez v0, :cond_53

    .line 265
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/lge/render/PhotoMgr;->getDefaultOrder(II)[I

    .end local v1           #i:I
    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x3a

    iput v0, p0, Lcom/lge/render/EffectRenderer;->m_iDrawFlag:I

    goto/16 :goto_53

    .line 272
    .end local v9           #halfwidth:I
    :cond_1ca
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d4

    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e4

    .line 274
    :cond_1d4
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/lge/render/PhotoMgr;->getDefaultOrder(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    .line 276
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    goto/16 :goto_53

    .line 285
    :cond_1e4
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_NowRender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 286
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/render/WheelRenderer;->getSettingVertexes(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawVertex:[I

    .line 288
    iget v0, p0, Lcom/lge/render/EffectRenderer;->m_iDispCnt:I

    invoke-virtual {p1, v0}, Lcom/lge/render/PhotoMgr;->getWheelDrawOrder(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EffectRenderer;->m_DrawOrder:[I

    goto/16 :goto_53
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 13
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const-wide/16 v8, -0x1

    const/high16 v4, 0x4

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 89
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_11

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->GridToWheel(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    .line 127
    :goto_10
    return v2

    .line 92
    :cond_11
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1c

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->WheelToGrid(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto :goto_10

    .line 95
    :cond_1c
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    const/16 v3, 0x101

    if-ne v2, v3, :cond_27

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->PhotosInSelect(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto :goto_10

    .line 98
    :cond_27
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    const/16 v3, 0x102

    if-ne v2, v3, :cond_32

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->PhotoDisSel(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto :goto_10

    .line 100
    :cond_32
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v7, :cond_95

    .line 101
    iget-wide v2, p0, Lcom/lge/render/EffectRenderer;->m_iDrawTimer:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_77

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, cur:J
    iget-wide v2, p0, Lcom/lge/render/EffectRenderer;->m_iDrawTimer:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gez v2, :cond_51

    .line 105
    invoke-virtual {p2, v6, p1}, Lcom/lge/render/PhotoMgr;->onDrawPhoto(ILandroid/graphics/Canvas;)V

    move v2, v6

    .line 106
    goto :goto_10

    .line 108
    :cond_51
    const-string v2, "EffectRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ===  Wait Time === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/render/EffectRenderer;->m_iDrawTimer:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-wide v8, p0, Lcom/lge/render/EffectRenderer;->m_iDrawTimer:J

    .line 114
    .end local v0           #cur:J
    :cond_77
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_81

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->ToGrid(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto :goto_10

    .line 116
    :cond_81
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    if-ne v2, v7, :cond_8a

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->ToWheel(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto :goto_10

    .line 118
    :cond_8a
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_ad

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->ToLand(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto/16 :goto_10

    .line 122
    :cond_95
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    const v3, 0x10200

    if-ne v2, v3, :cond_a2

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->EreaseContact(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto/16 :goto_10

    .line 124
    :cond_a2
    iget v2, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_ad

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/lge/render/EffectRenderer;->MoveContacts(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v2

    goto/16 :goto_10

    :cond_ad
    move v2, v6

    .line 127
    goto/16 :goto_10
.end method

.method public setRenderMode(II)V
    .registers 3
    .parameter "mode"
    .parameter "flag"

    .prologue
    .line 313
    sput p2, Lcom/lge/render/EffectRenderer;->m_iFlag:I

    .line 314
    iput p1, p0, Lcom/lge/render/EffectRenderer;->m_iMode:I

    .line 315
    return-void
.end method
