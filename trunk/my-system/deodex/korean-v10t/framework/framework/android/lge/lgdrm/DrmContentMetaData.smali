.class public final Landroid/lge/lgdrm/DrmContentMetaData;
.super Ljava/lang/Object;
.source "DrmContentMetaData.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public album:Ljava/lang/StringBuffer;

.field public author:Ljava/lang/StringBuffer;

.field public category:Ljava/lang/StringBuffer;

.field public classification:Ljava/lang/StringBuffer;

.field public copyRight:Ljava/lang/StringBuffer;

.field public coverURI:Ljava/lang/StringBuffer;

.field public description:Ljava/lang/StringBuffer;

.field public lyricsURI:Ljava/lang/StringBuffer;

.field public performer:Ljava/lang/StringBuffer;

.field public recordingYear:Ljava/lang/StringBuffer;

.field public title:Ljava/lang/StringBuffer;

.field public trackNumber:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "DrmCmtMeta"

    sput-object v0, Landroid/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .registers 4
    .parameter "type"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, data:Ljava/lang/StringBuffer;
    packed-switch p1, :pswitch_data_32

    .line 240
    :goto_4
    if-nez v0, :cond_2c

    .line 242
    const/4 v1, 0x0

    .line 245
    :goto_7
    return-object v1

    .line 203
    :pswitch_8
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    .line 204
    goto :goto_4

    .line 206
    :pswitch_b
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    .line 207
    goto :goto_4

    .line 209
    :pswitch_e
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    .line 210
    goto :goto_4

    .line 212
    :pswitch_11
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    .line 213
    goto :goto_4

    .line 215
    :pswitch_14
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    .line 216
    goto :goto_4

    .line 218
    :pswitch_17
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    .line 219
    goto :goto_4

    .line 221
    :pswitch_1a
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    .line 222
    goto :goto_4

    .line 224
    :pswitch_1d
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    .line 225
    goto :goto_4

    .line 227
    :pswitch_20
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    .line 228
    goto :goto_4

    .line 230
    :pswitch_23
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    .line 231
    goto :goto_4

    .line 233
    :pswitch_26
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    .line 234
    goto :goto_4

    .line 236
    :pswitch_29
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    goto :goto_4

    .line 245
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 200
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public getDataList()[I
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, count:I
    const/16 v3, 0xd

    new-array v2, v3, [I

    .line 99
    .local v2, tmp:[I
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_10

    .line 101
    const/4 v3, 0x1

    aput v3, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 104
    :cond_10
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_19

    .line 106
    const/4 v3, 0x2

    aput v3, v2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 109
    :cond_19
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_22

    .line 111
    const/4 v3, 0x3

    aput v3, v2, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_22
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2b

    .line 116
    const/4 v3, 0x4

    aput v3, v2, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 119
    :cond_2b
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_34

    .line 121
    const/4 v3, 0x5

    aput v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_34
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_3d

    .line 126
    const/4 v3, 0x6

    aput v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_3d
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_46

    .line 131
    const/4 v3, 0x7

    aput v3, v2, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_46
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_50

    .line 136
    const/16 v3, 0x8

    aput v3, v2, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_50
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_5a

    .line 141
    const/16 v3, 0x9

    aput v3, v2, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 144
    :cond_5a
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_64

    .line 146
    const/16 v3, 0xa

    aput v3, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 149
    :cond_64
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_6e

    .line 151
    const/16 v3, 0xb

    aput v3, v2, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 154
    :cond_6e
    iget-object v3, p0, Landroid/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_78

    .line 156
    const/16 v3, 0xc

    aput v3, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_78
    if-nez v0, :cond_7c

    move-object v3, v5

    .line 173
    :goto_7b
    return-object v3

    .line 165
    :cond_7c
    new-array v1, v0, [I

    .line 166
    .local v1, list:[I
    if-nez v1, :cond_82

    move-object v3, v5

    .line 168
    goto :goto_7b

    .line 171
    :cond_82
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    .line 173
    goto :goto_7b
.end method

.method public setData(ILjava/lang/String;)I
    .registers 6
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v2, -0x1

    .line 278
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0xc

    if-le p1, v0, :cond_11

    .line 280
    :cond_8
    sget-object v0, Landroid/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string v1, "setData() : Type is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 330
    :goto_10
    return v0

    .line 283
    :cond_11
    if-nez p2, :cond_1c

    .line 285
    sget-object v0, Landroid/lge/lgdrm/DrmContentMetaData;->TAG:Ljava/lang/String;

    const-string v1, "setData() : Value is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 286
    goto :goto_10

    .line 290
    :cond_1c
    packed-switch p1, :pswitch_data_82

    .line 330
    :goto_1f
    const/4 v0, 0x0

    goto :goto_10

    .line 293
    :pswitch_21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->title:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 296
    :pswitch_29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->description:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 299
    :pswitch_31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->copyRight:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 302
    :pswitch_39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->performer:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 305
    :pswitch_41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->author:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 308
    :pswitch_49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->category:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 311
    :pswitch_51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->classification:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 314
    :pswitch_59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->album:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 317
    :pswitch_61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->recordingYear:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 320
    :pswitch_69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->coverURI:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 323
    :pswitch_71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->lyricsURI:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 326
    :pswitch_79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContentMetaData;->trackNumber:Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 290
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_39
        :pswitch_41
        :pswitch_49
        :pswitch_51
        :pswitch_59
        :pswitch_61
        :pswitch_69
        :pswitch_71
        :pswitch_79
    .end packed-switch
.end method
