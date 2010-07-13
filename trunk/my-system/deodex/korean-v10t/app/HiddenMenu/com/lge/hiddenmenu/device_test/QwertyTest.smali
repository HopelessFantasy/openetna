.class public Lcom/lge/hiddenmenu/device_test/QwertyTest;
.super Landroid/app/Activity;
.source "QwertyTest.java"


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field bShiftKeyLed:Ljava/lang/Integer;

.field private mViewList:[Landroid/view/View;

.field private final qwerty_key_id:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->qwerty_key_id:[I

    .line 85
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->qwerty_key_id:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    return-void

    .line 22
    :array_14
    .array-data 0x4
        0x93t 0x0t 0x7t 0x7ft
        0x94t 0x0t 0x7t 0x7ft
        0x95t 0x0t 0x7t 0x7ft
        0x96t 0x0t 0x7t 0x7ft
        0x97t 0x0t 0x7t 0x7ft
        0x98t 0x0t 0x7t 0x7ft
        0x99t 0x0t 0x7t 0x7ft
        0x9at 0x0t 0x7t 0x7ft
        0x9bt 0x0t 0x7t 0x7ft
        0x9ct 0x0t 0x7t 0x7ft
        0x9dt 0x0t 0x7t 0x7ft
        0x9et 0x0t 0x7t 0x7ft
        0x9ft 0x0t 0x7t 0x7ft
        0xa0t 0x0t 0x7t 0x7ft
        0xa1t 0x0t 0x7t 0x7ft
        0xa2t 0x0t 0x7t 0x7ft
        0xa3t 0x0t 0x7t 0x7ft
        0xa4t 0x0t 0x7t 0x7ft
        0xa5t 0x0t 0x7t 0x7ft
        0xa6t 0x0t 0x7t 0x7ft
        0xa7t 0x0t 0x7t 0x7ft
        0xa8t 0x0t 0x7t 0x7ft
        0xa9t 0x0t 0x7t 0x7ft
        0xaat 0x0t 0x7t 0x7ft
        0xabt 0x0t 0x7t 0x7ft
        0xact 0x0t 0x7t 0x7ft
        0xadt 0x0t 0x7t 0x7ft
        0xaet 0x0t 0x7t 0x7ft
        0xaft 0x0t 0x7t 0x7ft
        0xb0t 0x0t 0x7t 0x7ft
        0xb1t 0x0t 0x7t 0x7ft
        0xb2t 0x0t 0x7t 0x7ft
        0xb3t 0x0t 0x7t 0x7ft
        0xb4t 0x0t 0x7t 0x7ft
        0xb5t 0x0t 0x7t 0x7ft
        0xb6t 0x0t 0x7t 0x7ft
        0xb7t 0x0t 0x7t 0x7ft
        0xb8t 0x0t 0x7t 0x7ft
        0xb9t 0x0t 0x7t 0x7ft
        0xbat 0x0t 0x7t 0x7ft
        0xbbt 0x0t 0x7t 0x7ft
        0xbct 0x0t 0x7t 0x7ft
        0xbdt 0x0t 0x7t 0x7ft
        0xbet 0x0t 0x7t 0x7ft
        0xbft 0x0t 0x7t 0x7ft
        0xc0t 0x0t 0x7t 0x7ft
        0xc1t 0x0t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private setKeyStatus(IZ)V
    .registers 8
    .parameter "scancode"
    .parameter "set"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, v:Landroid/view/View;
    sparse-switch p1, :sswitch_data_19a

    .line 363
    :goto_6
    if-eqz v0, :cond_10

    .line 364
    if-eqz p2, :cond_191

    .line 365
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 370
    :cond_10
    :goto_10
    return-void

    .line 204
    :sswitch_11
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    aget-object v0, v1, v3

    .line 205
    goto :goto_6

    .line 207
    :sswitch_16
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    aget-object v0, v1, v4

    .line 208
    goto :goto_6

    .line 210
    :sswitch_1b
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 211
    goto :goto_6

    .line 213
    :sswitch_21
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .line 214
    goto :goto_6

    .line 216
    :sswitch_27
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .line 217
    goto :goto_6

    .line 219
    :sswitch_2d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    .line 220
    goto :goto_6

    .line 222
    :sswitch_33
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/4 v2, 0x6

    aget-object v0, v1, v2

    .line 223
    goto :goto_6

    .line 225
    :sswitch_39
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/4 v2, 0x7

    aget-object v0, v1, v2

    .line 226
    goto :goto_6

    .line 228
    :sswitch_3f
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x8

    aget-object v0, v1, v2

    .line 229
    goto :goto_6

    .line 231
    :sswitch_46
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x9

    aget-object v0, v1, v2

    .line 232
    goto :goto_6

    .line 235
    :sswitch_4d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0xa

    aget-object v0, v1, v2

    .line 236
    goto :goto_6

    .line 238
    :sswitch_54
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0xb

    aget-object v0, v1, v2

    .line 239
    goto :goto_6

    .line 241
    :sswitch_5b
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0xc

    aget-object v0, v1, v2

    .line 242
    goto :goto_6

    .line 244
    :sswitch_62
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0xd

    aget-object v0, v1, v2

    .line 245
    goto :goto_6

    .line 247
    :sswitch_69
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0xe

    aget-object v0, v1, v2

    .line 248
    goto :goto_6

    .line 250
    :sswitch_70
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0xf

    aget-object v0, v1, v2

    .line 251
    goto :goto_6

    .line 253
    :sswitch_77
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x10

    aget-object v0, v1, v2

    .line 254
    goto :goto_6

    .line 256
    :sswitch_7e
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x11

    aget-object v0, v1, v2

    .line 257
    goto :goto_6

    .line 259
    :sswitch_85
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x12

    aget-object v0, v1, v2

    .line 260
    goto/16 :goto_6

    .line 262
    :sswitch_8d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x13

    aget-object v0, v1, v2

    .line 263
    goto/16 :goto_6

    .line 266
    :sswitch_95
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x14

    aget-object v0, v1, v2

    .line 267
    goto/16 :goto_6

    .line 269
    :sswitch_9d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x15

    aget-object v0, v1, v2

    .line 270
    goto/16 :goto_6

    .line 272
    :sswitch_a5
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x16

    aget-object v0, v1, v2

    .line 273
    goto/16 :goto_6

    .line 275
    :sswitch_ad
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x17

    aget-object v0, v1, v2

    .line 276
    goto/16 :goto_6

    .line 278
    :sswitch_b5
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x18

    aget-object v0, v1, v2

    .line 279
    goto/16 :goto_6

    .line 281
    :sswitch_bd
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x19

    aget-object v0, v1, v2

    .line 282
    goto/16 :goto_6

    .line 284
    :sswitch_c5
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x1a

    aget-object v0, v1, v2

    .line 285
    goto/16 :goto_6

    .line 287
    :sswitch_cd
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x1b

    aget-object v0, v1, v2

    .line 288
    goto/16 :goto_6

    .line 290
    :sswitch_d5
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x1c

    aget-object v0, v1, v2

    .line 291
    goto/16 :goto_6

    .line 293
    :sswitch_dd
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x1d

    aget-object v0, v1, v2

    .line 294
    goto/16 :goto_6

    .line 297
    :sswitch_e5
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x1e

    aget-object v0, v1, v2

    .line 298
    goto/16 :goto_6

    .line 300
    :sswitch_ed
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x1f

    aget-object v0, v1, v2

    .line 301
    goto/16 :goto_6

    .line 303
    :sswitch_f5
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x20

    aget-object v0, v1, v2

    .line 304
    goto/16 :goto_6

    .line 306
    :sswitch_fd
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x21

    aget-object v0, v1, v2

    .line 307
    goto/16 :goto_6

    .line 309
    :sswitch_105
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x22

    aget-object v0, v1, v2

    .line 310
    goto/16 :goto_6

    .line 312
    :sswitch_10d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x23

    aget-object v0, v1, v2

    .line 313
    goto/16 :goto_6

    .line 315
    :sswitch_115
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x24

    aget-object v0, v1, v2

    .line 316
    goto/16 :goto_6

    .line 318
    :sswitch_11d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x25

    aget-object v0, v1, v2

    .line 319
    goto/16 :goto_6

    .line 321
    :sswitch_125
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x26

    aget-object v0, v1, v2

    .line 322
    goto/16 :goto_6

    .line 324
    :sswitch_12d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x27

    aget-object v0, v1, v2

    .line 325
    goto/16 :goto_6

    .line 328
    :sswitch_135
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x28

    aget-object v0, v1, v2

    .line 329
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bShiftKeyLed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_14e

    .line 331
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bShiftKeyLed:Ljava/lang/Integer;

    .line 332
    invoke-static {v4}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    goto/16 :goto_6

    .line 336
    :cond_14e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bShiftKeyLed:Ljava/lang/Integer;

    .line 337
    invoke-static {v3}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    goto/16 :goto_6

    .line 341
    :sswitch_159
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x29

    aget-object v0, v1, v2

    .line 342
    goto/16 :goto_6

    .line 344
    :sswitch_161
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x2a

    aget-object v0, v1, v2

    .line 345
    goto/16 :goto_6

    .line 347
    :sswitch_169
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x2b

    aget-object v0, v1, v2

    .line 348
    goto/16 :goto_6

    .line 350
    :sswitch_171
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x2c

    aget-object v0, v1, v2

    .line 351
    goto/16 :goto_6

    .line 353
    :sswitch_179
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x2d

    aget-object v0, v1, v2

    .line 354
    goto/16 :goto_6

    .line 356
    :sswitch_181
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x2e

    aget-object v0, v1, v2

    .line 357
    goto/16 :goto_6

    .line 359
    :sswitch_189
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    const/16 v2, 0x2f

    aget-object v0, v1, v2

    goto/16 :goto_6

    .line 367
    :cond_191
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_10

    .line 202
    nop

    :sswitch_data_19a
    .sparse-switch
        0x2 -> :sswitch_11
        0x3 -> :sswitch_16
        0x4 -> :sswitch_1b
        0x5 -> :sswitch_21
        0x6 -> :sswitch_27
        0x7 -> :sswitch_2d
        0x8 -> :sswitch_33
        0x9 -> :sswitch_39
        0xa -> :sswitch_3f
        0xb -> :sswitch_46
        0xe -> :sswitch_dd
        0x10 -> :sswitch_4d
        0x11 -> :sswitch_54
        0x12 -> :sswitch_5b
        0x13 -> :sswitch_62
        0x14 -> :sswitch_69
        0x15 -> :sswitch_70
        0x16 -> :sswitch_77
        0x17 -> :sswitch_7e
        0x18 -> :sswitch_85
        0x19 -> :sswitch_8d
        0x1c -> :sswitch_12d
        0x1e -> :sswitch_95
        0x1f -> :sswitch_9d
        0x20 -> :sswitch_a5
        0x21 -> :sswitch_ad
        0x22 -> :sswitch_b5
        0x23 -> :sswitch_bd
        0x24 -> :sswitch_c5
        0x25 -> :sswitch_cd
        0x26 -> :sswitch_d5
        0x2a -> :sswitch_135
        0x2c -> :sswitch_ed
        0x2d -> :sswitch_f5
        0x2e -> :sswitch_fd
        0x2f -> :sswitch_105
        0x30 -> :sswitch_10d
        0x31 -> :sswitch_115
        0x32 -> :sswitch_11d
        0x34 -> :sswitch_171
        0x39 -> :sswitch_169
        0x67 -> :sswitch_125
        0x69 -> :sswitch_179
        0x6a -> :sswitch_189
        0x6c -> :sswitch_181
        0x8b -> :sswitch_159
        0xd0 -> :sswitch_e5
        0xd9 -> :sswitch_161
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->setContentView(I)V

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->qwerty_key_id:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 93
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->mViewList:[Landroid/view/View;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->qwerty_key_id:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 100
    :cond_1e
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 132
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    invoke-direct {p0, v7, v9}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->setKeyStatus(IZ)V

    .line 138
    sparse-switch p1, :sswitch_data_8c

    move v7, v9

    .line 189
    :goto_c
    return v7

    .line 140
    :sswitch_d
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_5c

    .line 142
    const-string v5, "com.lge.hiddenmenu"

    .line 143
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 145
    .local v2, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 146
    .local v6, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 147
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test.sound_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    const-string v2, "RingTest_Auto"

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->finish()V

    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #packageName2:Ljava/lang/String;
    :cond_5c
    move v7, v9

    .line 160
    goto :goto_c

    .line 162
    :sswitch_5e
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_71

    .line 165
    const-string v7, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 166
    .local v4, mToast1:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v4           #mToast1:Landroid/widget/Toast;
    :goto_6f
    move v7, v9

    .line 173
    goto :goto_c

    .line 171
    :cond_71
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->finish()V

    goto :goto_6f

    .line 175
    :sswitch_75
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_88

    .line 178
    const-string v7, "Home Key doesn\'t work in Auto All Test"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 179
    .restart local v4       #mToast1:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v4           #mToast1:Landroid/widget/Toast;
    :goto_86
    move v7, v9

    .line 186
    goto :goto_c

    .line 184
    :cond_88
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->finish()V

    goto :goto_86

    .line 138
    :sswitch_data_8c
    .sparse-switch
        0x3 -> :sswitch_75
        0x4 -> :sswitch_5e
        0x52 -> :sswitch_d
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bShiftKeyLed:Ljava/lang/Integer;

    .line 125
    invoke-static {v1}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 126
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 115
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 116
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/QwertyTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 117
    :cond_2a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/QwertyTest;->bShiftKeyLed:Ljava/lang/Integer;

    .line 118
    invoke-static {v3}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 120
    return-void
.end method
