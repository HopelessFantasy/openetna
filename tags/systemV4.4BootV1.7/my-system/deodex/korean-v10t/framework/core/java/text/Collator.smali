.class public abstract Ljava/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static CACHE_SIZE:I = 0x0

.field public static final CANONICAL_DECOMPOSITION:I = 0x1

.field static final EQUAL:I = 0x0

.field public static final FULL_DECOMPOSITION:I = 0x2

.field static final GREATER:I = 0x1

.field public static final IDENTICAL:I = 0x3

.field static final LESS:I = -0x1

.field public static final NO_DECOMPOSITION:I = 0x0

.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2

.field private static cache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/text/Collator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field icuColl:Lcom/ibm/icu4jni/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x6

    .line 193
    new-instance v2, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v3, "collator.cache"

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, cacheSize:Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 197
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Ljava/text/Collator;->CACHE_SIZE:I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_16} :catch_20

    .line 206
    :goto_16
    new-instance v2, Ljava/util/Vector;

    sget v3, Ljava/text/Collator;->CACHE_SIZE:I

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    sput-object v2, Ljava/text/Collator;->cache:Ljava/util/Vector;

    return-void

    .line 198
    :catch_20
    move-exception v2

    move-object v1, v2

    .line 199
    .local v1, e:Ljava/lang/NumberFormatException;
    sput v4, Ljava/text/Collator;->CACHE_SIZE:I

    goto :goto_16

    .line 202
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_25
    sput v4, Ljava/text/Collator;->CACHE_SIZE:I

    goto :goto_16
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/Collator;->getInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/Collator;

    move-result-object v0

    iput-object v0, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    .line 225
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu4jni/text/Collator;)V
    .registers 2
    .parameter "wrapper"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    .line 213
    return-void
.end method

.method private decompositionMode_ICU_Java(I)I
    .registers 3
    .parameter "mode"

    .prologue
    .line 452
    move v0, p1

    .line 453
    .local v0, javaMode:I
    packed-switch p1, :pswitch_data_a

    .line 461
    :goto_4
    return v0

    .line 455
    :pswitch_5
    const/4 v0, 0x0

    .line 456
    goto :goto_4

    .line 458
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 453
    nop

    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private decompositionMode_Java_ICU(I)I
    .registers 3
    .parameter "mode"

    .prologue
    .line 439
    move v0, p1

    .line 440
    .local v0, icuDecomp:I
    packed-switch p1, :pswitch_data_c

    .line 448
    :goto_4
    return v0

    .line 442
    :pswitch_5
    const/16 v0, 0x11

    .line 443
    goto :goto_4

    .line 445
    :pswitch_8
    const/16 v0, 0x10

    goto :goto_4

    .line 440
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 326
    invoke-static {}, Lcom/ibm/icu4jni/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 360
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .registers 5
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    .line 373
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, key:Ljava/lang/String;
    sget-object v2, Ljava/text/Collator;->cache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_d
    if-ltz v0, :cond_32

    .line 375
    sget-object v2, Ljava/text/Collator;->cache:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Collator;

    invoke-virtual {v2, v1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 376
    sget-object v2, Ljava/text/Collator;->cache:Ljava/util/Vector;

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/Collator;

    invoke-virtual {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/Collator;

    move-object v2, p0

    .line 380
    :goto_2e
    return-object v2

    .line 374
    .restart local p0
    :cond_2f
    add-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 380
    :cond_32
    new-instance v2, Ljava/text/RuleBasedCollator;

    invoke-static {p0}, Lcom/ibm/icu4jni/text/Collator;->getInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/Collator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/RuleBasedCollator;-><init>(Lcom/ibm/icu4jni/text/Collator;)V

    goto :goto_2e
.end method

.method private strength_ICU_Java(I)I
    .registers 3
    .parameter "value"

    .prologue
    .line 485
    move v0, p1

    .line 486
    .local v0, javaValue:I
    sparse-switch p1, :sswitch_data_e

    .line 500
    :goto_4
    return v0

    .line 488
    :sswitch_5
    const/4 v0, 0x0

    .line 489
    goto :goto_4

    .line 491
    :sswitch_7
    const/4 v0, 0x1

    .line 492
    goto :goto_4

    .line 494
    :sswitch_9
    const/4 v0, 0x2

    .line 495
    goto :goto_4

    .line 497
    :sswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 486
    nop

    :sswitch_data_e
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_7
        0x2 -> :sswitch_9
        0xf -> :sswitch_b
    .end sparse-switch
.end method

.method private strength_Java_ICU(I)I
    .registers 3
    .parameter "value"

    .prologue
    .line 465
    move v0, p1

    .line 466
    .local v0, icuValue:I
    packed-switch p1, :pswitch_data_e

    .line 480
    :goto_4
    return v0

    .line 468
    :pswitch_5
    const/4 v0, 0x0

    .line 469
    goto :goto_4

    .line 471
    :pswitch_7
    const/4 v0, 0x1

    .line 472
    goto :goto_4

    .line 474
    :pswitch_9
    const/4 v0, 0x2

    .line 475
    goto :goto_4

    .line 477
    :pswitch_b
    const/16 v0, 0xf

    goto :goto_4

    .line 466
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 238
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Collator;

    .line 239
    .local v0, clone:Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-virtual {v2}, Lcom/ibm/icu4jni/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/Collator;

    iput-object p0, v0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_12

    move-object v2, v0

    .line 242
    .end local v0           #clone:Ljava/text/Collator;
    :goto_11
    return-object v2

    .line 241
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 242
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 263
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 294
    instance-of v2, p1, Ljava/text/Collator;

    if-nez v2, :cond_7

    move v2, v3

    .line 298
    :goto_6
    return v2

    .line 297
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/text/Collator;

    move-object v1, v0

    .line 298
    .local v1, collator:Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    if-nez v2, :cond_17

    iget-object v2, v1, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    if-nez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_6

    :cond_15
    move v2, v3

    goto :goto_6

    :cond_17
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    iget-object v3, v1, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-virtual {v2, v3}, Lcom/ibm/icu4jni/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_6
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "string1"
    .parameter "string2"

    .prologue
    .line 315
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public getDecomposition()I
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/Collator;->getDecomposition()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I

    move-result v0

    return v0
.end method

.method public getStrength()I
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/Collator;->getStrength()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->strength_ICU_Java(I)I

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public setDecomposition(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 420
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/Collator;->setDecomposition(I)V

    .line 421
    return-void
.end method

.method public setStrength(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 435
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-direct {p0, p1}, Ljava/text/Collator;->strength_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/Collator;->setStrength(I)V

    .line 436
    return-void
.end method
