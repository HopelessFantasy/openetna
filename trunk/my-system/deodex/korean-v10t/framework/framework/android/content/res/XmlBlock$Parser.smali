.class final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parser"
.end annotation


# instance fields
.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field mParseState:I

.field private mStarted:Z

.field final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor <init>(Landroid/content/res/XmlBlock;ILandroid/content/res/XmlBlock;)V
    .registers 5
    .parameter
    .parameter "parseState"
    .parameter "block"

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 463
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 464
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 465
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 78
    iput p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 79
    iput-object p3, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 80
    invoke-static {p3}, Landroid/content/res/XmlBlock;->access$008(Landroid/content/res/XmlBlock;)I

    .line 81
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 444
    :try_start_3
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-eqz v1, :cond_14

    .line 445
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1800(I)V

    .line 446
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 447
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1900(Landroid/content/res/XmlBlock;)V

    .line 449
    :cond_14
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "entityName"
    .parameter "replacementText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 454
    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .registers 5
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 375
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1000(II)I

    move-result v0

    .line 378
    .local v0, t:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1a

    .line 380
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 382
    :goto_17
    return v1

    .line 380
    :cond_18
    const/4 v1, 0x0

    goto :goto_17

    :cond_1a
    move v1, p2

    .line 382
    goto :goto_17
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 323
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1200(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, idx:I
    if-ltz v0, :cond_d

    .line 325
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    .line 327
    :goto_c
    return v1

    :cond_d
    move v1, p3

    goto :goto_c
.end method

.method public getAttributeCount()I
    .registers 3

    .prologue
    .line 197
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$800(I)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public getAttributeFloatValue(IF)F
    .registers 6
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 414
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1000(II)I

    move-result v0

    .line 417
    .local v0, t:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 418
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 421
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 356
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1200(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, idx:I
    if-ltz v0, :cond_d

    .line 358
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result v1

    .line 360
    :goto_c
    return v1

    :cond_d
    move v1, p3

    goto :goto_c
.end method

.method public getAttributeIntValue(II)I
    .registers 5
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 394
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1000(II)I

    move-result v0

    .line 397
    .local v0, t:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_15

    .line 399
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v1

    .line 401
    :goto_14
    return v1

    :cond_15
    move v1, p2

    goto :goto_14
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 339
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1200(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 340
    .local v0, idx:I
    if-ltz v0, :cond_d

    .line 341
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result v1

    .line 343
    :goto_c
    return v1

    :cond_d
    move v1, p3

    goto :goto_c
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .registers 7
    .parameter "idx"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 365
    iget v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v2, p1}, Landroid/content/res/XmlBlock;->access$1000(II)I

    move-result v0

    .line 366
    .local v0, t:I
    iget v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v2, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v1

    .line 367
    .local v1, v:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1e

    .line 368
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v2}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v2

    .line 371
    :goto_1d
    return v2

    :cond_1e
    move v2, v1

    goto :goto_1d
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 7
    .parameter "namespace"
    .parameter "attribute"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 315
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1200(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, idx:I
    if-ltz v0, :cond_d

    .line 317
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v1

    .line 319
    :goto_c
    return v1

    :cond_d
    move v1, p4

    goto :goto_c
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 5
    .parameter "index"

    .prologue
    .line 184
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$700(II)I

    move-result v0

    .line 186
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_17
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNameResource(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 310
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$1400(II)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 5
    .parameter "index"

    .prologue
    .line 177
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$600(II)I

    move-result v0

    .line 179
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    const-string v1, ""

    goto :goto_16

    .line 181
    :cond_1d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeResourceValue(II)I
    .registers 5
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 385
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1000(II)I

    move-result v0

    .line 388
    .local v0, t:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 389
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v1

    .line 391
    :goto_f
    return v1

    :cond_10
    move v1, p2

    goto :goto_f
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 331
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1200(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, idx:I
    if-ltz v0, :cond_d

    .line 333
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result v1

    .line 335
    :goto_c
    return v1

    :cond_d
    move v1, p3

    goto :goto_c
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 214
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .registers 5
    .parameter "idx"
    .parameter "defaultValue"

    .prologue
    .line 404
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1000(II)I

    move-result v0

    .line 407
    .local v0, t:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_15

    .line 409
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v1

    .line 411
    :goto_14
    return v1

    :cond_15
    move v1, p2

    goto :goto_14
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "namespace"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 348
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1200(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, idx:I
    if-ltz v0, :cond_d

    .line 350
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result v1

    .line 352
    :goto_c
    return v1

    :cond_d
    move v1, p3

    goto :goto_c
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 7
    .parameter "index"

    .prologue
    .line 200
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v0

    .line 202
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v3, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v3}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    :goto_16
    return-object v3

    .line 205
    :cond_17
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$1000(II)I

    move-result v1

    .line 206
    .local v1, t:I
    if-nez v1, :cond_29

    .line 207
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_29
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v2

    .line 211
    .local v2, v:I
    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_16
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 223
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1200(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, idx:I
    if-ltz v0, :cond_d

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getClassAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 429
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1600(I)I

    move-result v0

    .line 430
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 135
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .line 93
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 99
    :goto_a
    return v0

    .line 96
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 97
    goto :goto_a

    .line 99
    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getIdAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 425
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1500(I)I

    move-result v0

    .line 426
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getIdAttributeResourceValue(I)I
    .registers 4
    .parameter "defaultValue"

    .prologue
    .line 435
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$300(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 173
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$500(I)I

    move-result v0

    .line 174
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    .prologue
    .line 169
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$400(I)I

    move-result v0

    .line 170
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "prefix"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .registers 4
    .parameter "depth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getPooledString(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "id"

    .prologue
    .line 457
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleAttribute()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1700(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$100(I)I

    move-result v0

    .line 142
    .local v0, id:I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$200(Landroid/content/res/XmlBlock;)Landroid/content/res/StringBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getTextCharacters([I)[C
    .registers 7
    .parameter "holderForStartAndLength"

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, txt:Ljava/lang/String;
    const/4 v0, 0x0

    .line 160
    .local v0, chars:[C
    if-eqz v1, :cond_1e

    .line 161
    aput v4, p1, v4

    .line 162
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, p1, v2

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [C

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 166
    :cond_1e
    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 236
    iget-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    if-nez v1, :cond_a

    .line 237
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    move v1, v3

    .line 264
    :goto_9
    return v1

    .line 240
    :cond_a
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-nez v1, :cond_10

    move v1, v2

    .line 241
    goto :goto_9

    .line 243
    :cond_10
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1300(I)I

    move-result v0

    .line 244
    .local v0, ev:I
    iget-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v1, :cond_21

    .line 245
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 246
    iput-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 248
    :cond_21
    packed-switch v0, :pswitch_data_38

    .line 256
    :goto_24
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 257
    if-ne v0, v2, :cond_2b

    .line 262
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    :cond_2b
    move v1, v0

    .line 264
    goto :goto_9

    .line 250
    :pswitch_2d
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    goto :goto_24

    .line 253
    :pswitch_34
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_24

    .line 248
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_34
    .end packed-switch
.end method

.method public nextTag()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 298
    .local v0, eventType:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 299
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 301
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    .line 302
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 306
    :cond_35
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 273
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    .line 274
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG to read next text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 278
    :cond_26
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 279
    .local v0, eventType:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_56

    .line 280
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 282
    if-eq v0, v4, :cond_54

    .line 283
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_54
    move-object v2, v1

    .line 289
    .end local v1           #result:Ljava/lang/String;
    :goto_55
    return-object v2

    .line 288
    :cond_56
    if-ne v0, v4, :cond_5b

    .line 289
    const-string v2, ""

    goto :goto_55

    .line 291
    :cond_5b
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1e

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_12
    if-eqz p3, :cond_43

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 270
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_43
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 6
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 88
    :cond_a
    return-void

    .line 87
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_a

    .line 90
    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "inputStream"
    .parameter "inputEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
