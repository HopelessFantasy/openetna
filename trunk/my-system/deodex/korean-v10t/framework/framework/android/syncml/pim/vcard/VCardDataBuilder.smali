.class public Landroid/syncml/pim/vcard/VCardDataBuilder;
.super Ljava/lang/Object;
.source "VCardDataBuilder.java"

# interfaces
.implements Landroid/syncml/pim/VBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;
    }
.end annotation


# static fields
.field public static DEFAULT_CHARSET:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentParamType:Ljava/lang/String;

.field private mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

.field private mCurrentVNode:Landroid/syncml/pim/VNode;

.field private mHandler:Landroid/os/Handler;

.field private mLastNameComesBeforeFirstName:Z

.field private mMyContactsGroupId:J

.field private mOnProgressRunnable:Ljava/lang/Runnable;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressMessage:Ljava/lang/String;

.field private mProvider:Landroid/content/AbstractSyncableContentProvider;

.field private mSourceCharset:Ljava/lang/String;

.field private mStrictLineBreakParsing:Z

.field private mTargetCharset:Ljava/lang/String;

.field private mTimeCreateContactStruct:J

.field private mTimePushIntoContentResolver:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "VCardDataBuilder"

    sput-object v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    .line 57
    const-string v0, "UTF-8"

    sput-object v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->DEFAULT_CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "resolver"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTargetCharset:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 14
    .parameter "resolver"
    .parameter "progressDialog"
    .parameter "progressMessage"
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move v8, v7

    invoke-direct/range {v0 .. v8}, Landroid/syncml/pim/vcard/VCardDataBuilder;-><init>(Landroid/content/ContentResolver;Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 10
    .parameter "resolver"
    .parameter "progressDialog"
    .parameter "progressMessage"
    .parameter "handler"
    .parameter "sourceCharset"
    .parameter "targetCharset"
    .parameter "strictLineBreakParsing"
    .parameter "lastNameComesBeforeFirstName"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-eqz p5, :cond_1b

    .line 151
    iput-object p5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mSourceCharset:Ljava/lang/String;

    .line 155
    :goto_7
    if-eqz p6, :cond_20

    .line 156
    iput-object p6, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTargetCharset:Ljava/lang/String;

    .line 160
    :goto_b
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    iput-boolean p7, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mStrictLineBreakParsing:Z

    .line 162
    iput-object p4, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mHandler:Landroid/os/Handler;

    .line 163
    iput-object p2, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 164
    iput-object p3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressMessage:Ljava/lang/String;

    .line 165
    iput-boolean p8, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mLastNameComesBeforeFirstName:Z

    .line 167
    invoke-direct {p0}, Landroid/syncml/pim/vcard/VCardDataBuilder;->tryGetOriginalProvider()V

    .line 168
    return-void

    .line 153
    :cond_1b
    sget-object v0, Landroid/syncml/pim/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mSourceCharset:Ljava/lang/String;

    goto :goto_7

    .line 158
    :cond_20
    sget-object v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTargetCharset:Ljava/lang/String;

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;ZZ)V
    .registers 17
    .parameter "resolver"
    .parameter "progressDialog"
    .parameter "progressMessage"
    .parameter "handler"
    .parameter "charset"
    .parameter "strictLineBreakParsing"
    .parameter "lastNameComesBeforeFirstName"

    .prologue
    .line 134
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/syncml/pim/vcard/VCardDataBuilder;-><init>(Landroid/content/ContentResolver;Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Landroid/syncml/pim/vcard/VCardDataBuilder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/syncml/pim/vcard/VCardDataBuilder;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "originalString"
    .parameter "targetCharset"

    .prologue
    .line 287
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, p1

    .line 300
    :goto_9
    return-object v4

    .line 290
    :cond_a
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 291
    .local v2, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 294
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 295
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 297
    :try_start_1d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_9

    .line 298
    :catch_23
    move-exception v4

    move-object v3, v4

    .line 299
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_9
.end method

.method private handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 26
    .parameter "value"
    .parameter "targetCharset"
    .parameter "encoding"

    .prologue
    .line 305
    if-eqz p3, :cond_1e7

    .line 306
    const-string v19, "BASE64"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    const-string v19, "B"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 307
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 v19, p1

    .line 393
    :goto_30
    return-object v19

    .line 310
    :cond_31
    const-string v19, "QUOTED-PRINTABLE"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e7

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v4, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 315
    .local v13, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_47
    if-ge v10, v13, :cond_89

    .line 316
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 317
    .local v6, ch:C
    const/16 v19, 0x3d

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_85

    const/16 v19, 0x1

    sub-int v19, v13, v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_85

    .line 318
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 319
    .local v17, nextCh:C
    const/16 v19, 0x20

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_7a

    const/16 v19, 0x9

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_85

    .line 321
    :cond_7a
    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v10, v10, 0x1

    .line 315
    .end local v17           #nextCh:C
    :goto_82
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    .line 326
    :cond_85
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 328
    .end local v6           #ch:C
    :cond_89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 331
    .local v18, quotedPrintable:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mStrictLineBreakParsing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_cb

    .line 332
    const-string v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 362
    .local v15, lines:[Ljava/lang/String;
    :goto_9b
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_a3
    if-ge v11, v12, :cond_156

    aget-object v14, v3, v11

    .line 364
    .local v14, line:Ljava/lang/String;
    const-string v19, "="

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c5

    .line 365
    const/16 v19, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 367
    :cond_c5
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v11, v11, 0x1

    goto :goto_a3

    .line 334
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #lines:[Ljava/lang/String;
    :cond_cb
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 336
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    :goto_da
    if-ge v10, v13, :cond_132

    .line 338
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 339
    .restart local v6       #ch:C
    const/16 v19, 0xa

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_fd

    .line 340
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    :cond_fa
    :goto_fa
    add-int/lit8 v10, v10, 0x1

    goto :goto_da

    .line 342
    :cond_fd
    const/16 v19, 0xd

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_12e

    .line 343
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    const/16 v19, 0x1

    sub-int v19, v13, v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_fa

    .line 346
    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 347
    .restart local v17       #nextCh:C
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_fa

    .line 348
    add-int/lit8 v10, v10, 0x1

    goto :goto_fa

    .line 352
    .end local v17           #nextCh:C
    :cond_12e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fa

    .line 355
    .end local v6           #ch:C
    :cond_132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, finalLine:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_142

    .line 357
    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_142
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .restart local v15       #lines:[Ljava/lang/String;
    goto/16 :goto_9b

    .line 371
    .end local v9           #finalLine:Ljava/lang/String;
    .end local v16           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    :cond_156
    :try_start_156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_163
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_156 .. :try_end_163} :catch_19d

    move-result-object v5

    .line 378
    .local v5, bytes:[B
    :goto_164
    :try_start_164
    invoke-static {v5}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B
    :try_end_167
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_164 .. :try_end_167} :catch_1c7

    move-result-object v5

    .line 385
    :try_start_168
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_172
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_168 .. :try_end_172} :catch_174

    goto/16 :goto_30

    .line 386
    :catch_174
    move-exception v19

    move-object/from16 v7, v19

    .line 387
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_30

    .line 372
    .end local v5           #bytes:[B
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :catch_19d
    move-exception v19

    move-object/from16 v8, v19

    .line 373
    .local v8, e1:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_164

    .line 379
    .end local v8           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1c7
    move-exception v7

    .line 380
    .local v7, e:Lorg/apache/commons/codec/DecoderException;
    sget-object v19, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to decode quoted-printable: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v19, ""

    goto/16 :goto_30

    .line 393
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v5           #bytes:[B
    .end local v7           #e:Lorg/apache/commons/codec/DecoderException;
    .end local v10           #i:I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #length:I
    .end local v15           #lines:[Ljava/lang/String;
    .end local v18           #quotedPrintable:Ljava/lang/String;
    :cond_1e7
    invoke-direct/range {p0 .. p2}, Landroid/syncml/pim/vcard/VCardDataBuilder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_30
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 430
    .local v3, size:I
    if-le v3, v6, :cond_2f

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 433
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 434
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_11

    .line 436
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 439
    .end local v4           #type:Ljava/lang/String;
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_2e
    return-object v5

    .line 440
    .restart local p0
    :cond_2f
    if-ne v3, v6, :cond_3a

    .line 441
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_2e

    .line 443
    .restart local p0
    :cond_3a
    const-string v5, ""

    goto :goto_2e
.end method

.method private tryGetOriginalProvider()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 197
    .local v0, resolver:Landroid/content/ContentResolver;
    return-void
.end method


# virtual methods
.method public end()V
    .registers 1

    .prologue
    .line 207
    return-void
.end method

.method public endProperty()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    iget-object v0, v0, Landroid/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    .line 261
    return-void
.end method

.method public endRecord()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 224
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    iput v5, v3, Landroid/syncml/pim/VNode;->parseStatus:I

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 226
    .local v1, start:J
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    iget-boolean v4, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mLastNameComesBeforeFirstName:Z

    if-eqz v4, :cond_60

    const/4 v4, 0x1

    :goto_10
    invoke-static {v3, v4}, Landroid/syncml/pim/vcard/ContactStruct;->constructContactFromVNode(Landroid/syncml/pim/VNode;I)Landroid/syncml/pim/vcard/ContactStruct;

    move-result-object v0

    .line 229
    .local v0, contact:Landroid/syncml/pim/vcard/ContactStruct;
    iget-wide v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTimeCreateContactStruct:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTimeCreateContactStruct:J

    .line 230
    invoke-virtual {v0}, Landroid/syncml/pim/vcard/ContactStruct;->isIgnorable()Z

    move-result v3

    if-nez v3, :cond_53

    .line 231
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressMessage:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 232
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_62

    .line 233
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;

    invoke-direct {v4, p0, v0}, Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;-><init>(Landroid/syncml/pim/vcard/VCardDataBuilder;Landroid/syncml/pim/vcard/ContactStruct;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_3a
    :goto_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 240
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProvider:Landroid/content/AbstractSyncableContentProvider;

    if-eqz v3, :cond_85

    .line 241
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProvider:Landroid/content/AbstractSyncableContentProvider;

    iget-wide v4, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mMyContactsGroupId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/syncml/pim/vcard/ContactStruct;->pushIntoAbstractSyncableContentProvider(Landroid/content/AbstractSyncableContentProvider;J)V

    .line 246
    :goto_49
    iget-wide v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTimePushIntoContentResolver:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTimePushIntoContentResolver:J

    .line 248
    :cond_53
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mOnProgressRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_5c

    .line 249
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mOnProgressRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 251
    :cond_5c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    .line 252
    return-void

    .end local v0           #contact:Landroid/syncml/pim/vcard/ContactStruct;
    :cond_60
    move v4, v5

    .line 226
    goto :goto_10

    .line 235
    .restart local v0       #contact:Landroid/syncml/pim/vcard/ContactStruct;
    :cond_62
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mProgressMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/syncml/pim/vcard/ContactStruct;->displayString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 244
    :cond_85
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3}, Landroid/syncml/pim/vcard/ContactStruct;->pushIntoContentResolver(Landroid/content/ContentResolver;)V

    goto :goto_49
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .registers 3
    .parameter "group"

    .prologue
    .line 268
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 264
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iput-object p1, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 272
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 276
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentParamType:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 278
    :cond_e
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 284
    return-void

    .line 280
    :cond_19
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public propertyValues(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, ""

    .line 397
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_26

    .line 398
    :cond_a
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    .line 399
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v5, v5, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 400
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v5, v5, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    const-string v6, ""

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    const-string v6, ""

    iput-object v7, v5, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 420
    :goto_25
    return-void

    .line 405
    :cond_26
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v2, v5, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 407
    .local v2, paramMap:Landroid/content/ContentValues;
    const-string v5, "CHARSET"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/CharsetUtils;->nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, targetCharset:Ljava/lang/String;
    const-string v5, "ENCODING"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, encoding:Ljava/lang/String;
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_44

    .line 411
    :cond_42
    iget-object v3, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTargetCharset:Ljava/lang/String;

    .line 414
    :cond_44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 415
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v5, v5, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v4, v3, v0}, Landroid/syncml/pim/vcard/VCardDataBuilder;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 419
    .end local v4           #value:Ljava/lang/String;
    :cond_60
    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v6, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v6, v6, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v6}, Landroid/syncml/pim/vcard/VCardDataBuilder;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    goto :goto_25
.end method

.method public setOnProgressRunnable(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "runnable"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mOnProgressRunnable:Ljava/lang/Runnable;

    .line 201
    return-void
.end method

.method public showDebugInfo()V
    .registers 6

    .prologue
    const-string v4, " ms"

    .line 423
    sget-object v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time for creating ContactStruct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTimeCreateContactStruct:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time for insert ContactStruct to database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mTimePushIntoContentResolver:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method

.method public startProperty()V
    .registers 2

    .prologue
    .line 255
    new-instance v0, Landroid/syncml/pim/PropertyNode;

    invoke-direct {v0}, Landroid/syncml/pim/PropertyNode;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    .line 256
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 213
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    if-eqz v0, :cond_b

    .line 216
    sget-object v0, Landroid/syncml/pim/vcard/VCardDataBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Nested VCard code is not supported now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_b
    new-instance v0, Landroid/syncml/pim/VNode;

    invoke-direct {v0}, Landroid/syncml/pim/VNode;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    .line 219
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    const/4 v1, 0x1

    iput v1, v0, Landroid/syncml/pim/VNode;->parseStatus:I

    .line 220
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    iput-object p1, v0, Landroid/syncml/pim/VNode;->VName:Ljava/lang/String;

    .line 221
    return-void
.end method
