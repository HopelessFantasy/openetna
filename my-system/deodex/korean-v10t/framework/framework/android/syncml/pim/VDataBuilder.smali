.class public Landroid/syncml/pim/VDataBuilder;
.super Ljava/lang/Object;
.source "VDataBuilder.java"

# interfaces
.implements Landroid/syncml/pim/VBuilder;


# static fields
.field public static DEFAULT_CHARSET:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCurrentParamType:Ljava/lang/String;

.field private mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

.field private mCurrentVNode:Landroid/syncml/pim/VNode;

.field private mNodeListPos:I

.field private mSourceCharset:Ljava/lang/String;

.field private mStrictLineBreakParsing:Z

.field private mTargetCharset:Ljava/lang/String;

.field public vNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/syncml/pim/VNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "VDATABuilder"

    sput-object v0, Landroid/syncml/pim/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    .line 46
    const-string v0, "UTF-8"

    sput-object v0, Landroid/syncml/pim/VDataBuilder;->DEFAULT_CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 68
    sget-object v0, Landroid/syncml/pim/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    sget-object v1, Landroid/syncml/pim/VDataBuilder;->DEFAULT_CHARSET:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/syncml/pim/VDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "sourceCharset"
    .parameter "targetCharset"
    .parameter "strictLineBreakParsing"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    .line 80
    if-eqz p1, :cond_18

    .line 81
    iput-object p1, p0, Landroid/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    .line 85
    :goto_11
    if-eqz p2, :cond_1d

    .line 86
    iput-object p2, p0, Landroid/syncml/pim/VDataBuilder;->mTargetCharset:Ljava/lang/String;

    .line 90
    :goto_15
    iput-boolean p3, p0, Landroid/syncml/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    .line 91
    return-void

    .line 83
    :cond_18
    sget-object v0, Landroid/syncml/pim/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    goto :goto_11

    .line 88
    :cond_1d
    sget-object v0, Landroid/syncml/pim/VDataBuilder;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mTargetCharset:Ljava/lang/String;

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "charset"
    .parameter "strictLineBreakParsing"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/syncml/pim/VDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "originalString"
    .parameter "targetCharset"

    .prologue
    .line 171
    iget-object v4, p0, Landroid/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, p1

    .line 184
    :goto_9
    return-object v4

    .line 174
    :cond_a
    iget-object v4, p0, Landroid/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 175
    .local v2, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 179
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 181
    :try_start_1d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_9

    .line 182
    :catch_23
    move-exception v4

    move-object v3, v4

    .line 183
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Landroid/syncml/pim/VDataBuilder;->LOG_TAG:Ljava/lang/String;

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

    .line 184
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
    .line 189
    if-eqz p3, :cond_1ad

    .line 190
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

    .line 192
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 v19, p1

    .line 260
    :goto_30
    return-object v19

    .line 195
    :cond_31
    const-string v19, "QUOTED-PRINTABLE"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ad

    .line 196
    const-string v19, "= "

    const-string v20, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "=\t"

    const-string v21, "\t"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 199
    .local v18, quotedPrintable:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/syncml/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_91

    .line 200
    const-string v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 229
    .local v15, lines:[Ljava/lang/String;
    :goto_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v4, builder:Ljava/lang/StringBuilder;
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_69
    if-ge v11, v12, :cond_11c

    aget-object v14, v3, v11

    .line 231
    .local v14, line:Ljava/lang/String;
    const-string v19, "="

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8b

    .line 232
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

    .line 234
    :cond_8b
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v11, v11, 0x1

    goto :goto_69

    .line 202
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #lines:[Ljava/lang/String;
    :cond_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 204
    .local v13, length:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_a0
    if-ge v10, v13, :cond_f8

    .line 206
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 207
    .local v6, ch:C
    const/16 v19, 0xa

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_c3

    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    :cond_c0
    :goto_c0
    add-int/lit8 v10, v10, 0x1

    goto :goto_a0

    .line 210
    :cond_c3
    const/16 v19, 0xd

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_f4

    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    const/16 v19, 0x1

    sub-int v19, v13, v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_c0

    .line 214
    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 215
    .local v17, nextCh:C
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_c0

    .line 216
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0

    .line 220
    .end local v17           #nextCh:C
    :cond_f4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c0

    .line 223
    .end local v6           #ch:C
    :cond_f8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, finalLine:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_108

    .line 225
    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_108
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
    goto/16 :goto_61

    .line 238
    .end local v9           #finalLine:Ljava/lang/String;
    .end local v10           #i:I
    .end local v13           #length:I
    .end local v16           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    :cond_11c
    :try_start_11c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_129
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11c .. :try_end_129} :catch_163

    move-result-object v5

    .line 245
    .local v5, bytes:[B
    :goto_12a
    :try_start_12a
    invoke-static {v5}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B
    :try_end_12d
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_12a .. :try_end_12d} :catch_18d

    move-result-object v5

    .line 252
    :try_start_12e
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_138
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12e .. :try_end_138} :catch_13a

    goto/16 :goto_30

    .line 253
    :catch_13a
    move-exception v19

    move-object/from16 v7, v19

    .line 254
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Landroid/syncml/pim/VDataBuilder;->LOG_TAG:Ljava/lang/String;

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

    .line 255
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_30

    .line 239
    .end local v5           #bytes:[B
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    :catch_163
    move-exception v19

    move-object/from16 v8, v19

    .line 240
    .local v8, e1:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Landroid/syncml/pim/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_12a

    .line 246
    .end local v8           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_18d
    move-exception v7

    .line 247
    .local v7, e:Lorg/apache/commons/codec/DecoderException;
    sget-object v19, Landroid/syncml/pim/VDataBuilder;->LOG_TAG:Ljava/lang/String;

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

    .line 248
    const-string v19, ""

    goto/16 :goto_30

    .line 260
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v5           #bytes:[B
    .end local v7           #e:Lorg/apache/commons/codec/DecoderException;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v15           #lines:[Ljava/lang/String;
    .end local v18           #quotedPrintable:Ljava/lang/String;
    :cond_1ad
    invoke-direct/range {p0 .. p2}, Landroid/syncml/pim/VDataBuilder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_30
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 11
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 290
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 291
    .local v2, size:I
    if-le v2, v7, :cond_43

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v4, typeListB:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 294
    .local v3, type:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 296
    .end local v3           #type:Ljava/lang/String;
    :cond_27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 297
    .local v1, len:I
    if-lez v1, :cond_3e

    sub-int v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_3e

    .line 298
    sub-int v5, v1, v7

    invoke-virtual {v4, v8, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 304
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #len:I
    .end local v4           #typeListB:Ljava/lang/StringBuilder;
    .end local p0
    :goto_3d
    return-object v5

    .line 300
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #len:I
    .restart local v4       #typeListB:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    .line 301
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #len:I
    .end local v4           #typeListB:Ljava/lang/StringBuilder;
    :cond_43
    if-ne v2, v7, :cond_4d

    .line 302
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_3d

    .line 304
    .restart local p0
    :cond_4d
    const-string v5, ""

    goto :goto_3d
.end method


# virtual methods
.method public end()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method public endProperty()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    iget-object v0, v0, Landroid/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public endRecord()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 128
    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/VNode;

    .line 129
    .local v0, endNode:Landroid/syncml/pim/VNode;
    const/4 v1, 0x0

    iput v1, v0, Landroid/syncml/pim/VNode;->parseStatus:I

    .line 130
    :cond_e
    iget v1, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    if-lez v1, :cond_25

    .line 131
    iget v1, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    .line 132
    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/syncml/pim/VNode;

    iget v1, v1, Landroid/syncml/pim/VNode;->parseStatus:I

    if-ne v1, v3, :cond_e

    .line 135
    :cond_25
    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/syncml/pim/VNode;

    iput-object v1, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    .line 136
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .registers 3
    .parameter "group"

    .prologue
    .line 152
    iget-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iput-object p1, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 156
    iput-object p1, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 162
    :cond_e
    iget-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 168
    return-void

    .line 164
    :cond_19
    iget-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

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

    .line 264
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_26

    .line 265
    :cond_a
    iget-object v5, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    .line 266
    iget-object v5, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v5, v5, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 267
    iget-object v5, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v5, v5, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    const-string v6, ""

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v5, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    const-string v6, ""

    iput-object v7, v5, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 287
    :goto_25
    return-void

    .line 272
    :cond_26
    iget-object v5, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v2, v5, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 274
    .local v2, paramMap:Landroid/content/ContentValues;
    const-string v5, "CHARSET"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/CharsetUtils;->nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, targetCharset:Ljava/lang/String;
    const-string v5, "ENCODING"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, encoding:Ljava/lang/String;
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_44

    .line 278
    :cond_42
    iget-object v3, p0, Landroid/syncml/pim/VDataBuilder;->mTargetCharset:Ljava/lang/String;

    .line 281
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

    .line 282
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v5, v5, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v4, v3, v0}, Landroid/syncml/pim/VDataBuilder;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 286
    .end local v4           #value:Ljava/lang/String;
    :cond_60
    iget-object v5, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v6, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    iget-object v6, v6, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v6}, Landroid/syncml/pim/VDataBuilder;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    goto :goto_25
.end method

.method public start()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public startProperty()V
    .registers 2

    .prologue
    .line 139
    new-instance v0, Landroid/syncml/pim/PropertyNode;

    invoke-direct {v0}, Landroid/syncml/pim/PropertyNode;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentPropNode:Landroid/syncml/pim/PropertyNode;

    .line 140
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .registers 5
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 117
    new-instance v0, Landroid/syncml/pim/VNode;

    invoke-direct {v0}, Landroid/syncml/pim/VNode;-><init>()V

    .line 118
    .local v0, vnode:Landroid/syncml/pim/VNode;
    iput v2, v0, Landroid/syncml/pim/VNode;->parseStatus:I

    .line 119
    iput-object p1, v0, Landroid/syncml/pim/VNode;->VName:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    .line 124
    iget-object v1, p0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Landroid/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/syncml/pim/VNode;

    iput-object v1, p0, Landroid/syncml/pim/VDataBuilder;->mCurrentVNode:Landroid/syncml/pim/VNode;

    .line 125
    return-void
.end method
