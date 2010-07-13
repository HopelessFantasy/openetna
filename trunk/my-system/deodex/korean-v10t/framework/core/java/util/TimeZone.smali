.class public abstract Ljava/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static Default:Ljava/util/TimeZone; = null

.field static GMT:Ljava/util/TimeZone; = null

.field public static final LONG:I = 0x1

.field public static final SHORT:I = 0x0

.field private static final serialVersionUID:J = 0x31b3e9f57744aca1L


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .registers 7
    .parameter "buffer"
    .parameter "count"
    .parameter "value"

    .prologue
    .line 146
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, string:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le p2, v2, :cond_1b

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p2, v2

    if-ge v0, v2, :cond_1b

    .line 149
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 152
    .end local v0           #i:I
    :cond_1b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    return-void
.end method

.method private static formatTimeZoneName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .parameter "name"
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x3a

    const-string v7, ":"

    .line 485
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 486
    .local v0, buf:Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 487
    .local v2, length:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    :goto_17
    if-ge v1, v2, :cond_43

    .line 490
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eq v3, v6, :cond_39

    .line 491
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 492
    add-int/lit8 v3, v1, 0x1

    sub-int v3, v2, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_36

    .line 493
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 498
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 495
    :cond_39
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_36

    .line 496
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 501
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_57

    .line 502
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 503
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6a

    .line 507
    const/4 v3, 0x4

    const/16 v4, 0x30

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 510
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getAvailableIDs()[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .registers 3
    .parameter "offset"

    .prologue
    .line 229
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getAvailableIDs(I)[Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefault()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 241
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/util/TimeZone;->Default:Ljava/util/TimeZone;

    if-nez v0, :cond_d

    .line 242
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljava/util/TimeZone;->Default:Ljava/util/TimeZone;

    .line 244
    :cond_d
    sget-object v0, Ljava/util/TimeZone;->Default:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 241
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .parameter "name"

    .prologue
    const/16 v12, 0x2d

    const/4 v10, 0x3

    const/4 v11, -0x1

    .line 446
    const-class v8, Ljava/util/TimeZone;

    monitor-enter v8

    :try_start_7
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 448
    .local v7, zone:Ljava/util/TimeZone;
    if-nez v7, :cond_a0

    .line 449
    const-string v9, "GMT"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_9e

    .line 450
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 451
    .local v6, sign:C
    const/16 v9, 0x2b

    if-eq v6, v9, :cond_26

    if-ne v6, v12, :cond_9e

    .line 452
    :cond_26
    const/4 v9, 0x1

    new-array v4, v9, [I

    .line 453
    .local v4, position:[I
    const/4 v9, 0x4

    invoke-static {p0, v9}, Ljava/util/TimeZone;->formatTimeZoneName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, formattedName:Ljava/lang/String;
    const/4 v9, 0x4

    invoke-static {v0, v9, v4}, Ljava/util/TimeZone;->parseNumber(Ljava/lang/String;I[I)I

    move-result v1

    .line 455
    .local v1, hour:I
    if-ltz v1, :cond_39

    const/16 v9, 0x17

    if-le v1, v9, :cond_44

    .line 456
    :cond_39
    sget-object v9, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v9}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/TimeZone;
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_85

    move-object v9, p0

    .line 481
    .end local v0           #formattedName:Ljava/lang/String;
    .end local v1           #hour:I
    .end local v4           #position:[I
    .end local v6           #sign:C
    :goto_42
    monitor-exit v8

    return-object v9

    .line 458
    .restart local v0       #formattedName:Ljava/lang/String;
    .restart local v1       #hour:I
    .restart local v4       #position:[I
    .restart local v6       #sign:C
    .restart local p0
    :cond_44
    const/4 v9, 0x0

    :try_start_45
    aget v2, v4, v9

    .line 459
    .local v2, index:I
    if-eq v2, v11, :cond_9e

    .line 460
    const v9, 0x36ee80

    mul-int v5, v1, v9

    .line 461
    .local v5, raw:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_88

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_88

    .line 463
    add-int/lit8 v9, v2, 0x1

    invoke-static {v0, v9, v4}, Ljava/util/TimeZone;->parseNumber(Ljava/lang/String;I[I)I

    move-result v3

    .line 465
    .local v3, minute:I
    const/4 v9, 0x0

    aget v9, v4, v9

    if-eq v9, v11, :cond_6d

    if-ltz v3, :cond_6d

    const/16 v9, 0x3b

    if-le v3, v9, :cond_77

    .line 466
    :cond_6d
    sget-object v9, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v9}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/TimeZone;

    move-object v9, p0

    goto :goto_42

    .line 468
    .restart local p0
    :cond_77
    const v9, 0xea60

    mul-int/2addr v9, v3

    add-int/2addr v5, v9

    .line 472
    .end local v3           #minute:I
    :cond_7c
    :goto_7c
    if-ne v6, v12, :cond_7f

    .line 473
    neg-int v5, v5

    .line 475
    :cond_7f
    new-instance v9, Ljava/util/SimpleTimeZone;

    invoke-direct {v9, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V
    :try_end_84
    .catchall {:try_start_45 .. :try_end_84} :catchall_85

    goto :goto_42

    .line 446
    .end local v0           #formattedName:Ljava/lang/String;
    .end local v1           #hour:I
    .end local v2           #index:I
    .end local v4           #position:[I
    .end local v5           #raw:I
    .end local v6           #sign:C
    .end local v7           #zone:Ljava/util/TimeZone;
    .end local p0
    :catchall_85
    move-exception v9

    monitor-exit v8

    throw v9

    .line 469
    .restart local v0       #formattedName:Ljava/lang/String;
    .restart local v1       #hour:I
    .restart local v2       #index:I
    .restart local v4       #position:[I
    .restart local v5       #raw:I
    .restart local v6       #sign:C
    .restart local v7       #zone:Ljava/util/TimeZone;
    .restart local p0
    :cond_88
    const/16 v9, 0x1e

    if-ge v1, v9, :cond_8f

    const/4 v9, 0x6

    if-le v2, v9, :cond_7c

    .line 470
    :cond_8f
    :try_start_8f
    div-int/lit8 v9, v1, 0x64

    const v10, 0x36ee80

    mul-int/2addr v9, v10

    rem-int/lit8 v10, v1, 0x64

    const v11, 0xea60

    mul-int/2addr v10, v11

    add-int v5, v9, v10

    goto :goto_7c

    .line 479
    .end local v0           #formattedName:Ljava/lang/String;
    .end local v1           #hour:I
    .end local v2           #index:I
    .end local v4           #position:[I
    .end local v5           #raw:I
    .end local v6           #sign:C
    :cond_9e
    sget-object v7, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    .line 481
    :cond_a0
    invoke-virtual {v7}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/TimeZone;
    :try_end_a6
    .catchall {:try_start_8f .. :try_end_a6} :catchall_85

    move-object v9, p0

    goto :goto_42
.end method

.method private static parseNumber(Ljava/lang/String;I[I)I
    .registers 10
    .parameter "string"
    .parameter "offset"
    .parameter "position"

    .prologue
    const/4 v6, -0x1

    .line 543
    move v1, p1

    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 545
    .local v3, result:I
    :goto_7
    if-ge v1, v2, :cond_1c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    if-eq v0, v6, :cond_1c

    .line 546
    add-int/lit8 v1, v1, 0x1

    .line 547
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_7

    .line 549
    .end local v0           #digit:I
    :cond_1c
    const/4 v4, 0x0

    if-ne v1, p1, :cond_23

    move v5, v6

    :goto_20
    aput v5, p2, v4

    .line 550
    return v3

    :cond_23
    move v5, v1

    .line 549
    goto :goto_20
.end method

.method public static declared-synchronized setDefault(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timezone"

    .prologue
    .line 572
    const-class v0, Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_3
    sput-object p0, Ljava/util/TimeZone;->Default:Ljava/util/TimeZone;

    .line 575
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->setDefault(Ljava/util/TimeZone;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 613
    monitor-exit v0

    return-void

    .line 572
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 166
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_8

    .local v1, zone:Ljava/util/TimeZone;
    move-object v2, v1

    .line 169
    .end local v1           #zone:Ljava/util/TimeZone;
    :goto_7
    return-object v2

    .line 168
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 169
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public getDSTSavings()I
    .registers 2

    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 374
    const v0, 0x36ee80

    .line 376
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 256
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .parameter "locale"

    .prologue
    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .registers 4
    .parameter "daylightTime"
    .parameter "style"

    .prologue
    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 13
    .parameter "daylightTime"
    .parameter "style"
    .parameter "locale"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 306
    if-eqz p2, :cond_6

    if-ne p2, v7, :cond_63

    .line 307
    :cond_6
    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_1f

    move v5, v7

    .line 321
    .local v5, useDaylight:Z
    :goto_f
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, p2, v7}, Lcom/ibm/icu4jni/util/Resources;->getDisplayTimeZone(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, result:Ljava/lang/String;
    if-eqz v3, :cond_22

    move-object v6, v3

    .line 343
    :goto_1e
    return-object v6

    .line 307
    .end local v3           #result:Ljava/lang/String;
    .end local v5           #useDaylight:Z
    :cond_1f
    const/4 v6, 0x0

    move v5, v6

    goto :goto_f

    .line 327
    .restart local v3       #result:Ljava/lang/String;
    .restart local v5       #useDaylight:Z
    :cond_22
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 328
    .local v2, offset:I
    if-eqz v5, :cond_35

    instance-of v6, p0, Ljava/util/SimpleTimeZone;

    if-eqz v6, :cond_35

    .line 329
    move-object v0, p0

    check-cast v0, Ljava/util/SimpleTimeZone;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/SimpleTimeZone;->getDSTSavings()I

    move-result v6

    add-int/2addr v2, v6

    .line 331
    :cond_35
    const v6, 0xea60

    div-int/2addr v2, v6

    .line 332
    const/16 v4, 0x2b

    .line 333
    .local v4, sign:C
    if-gez v2, :cond_40

    .line 334
    const/16 v4, 0x2d

    .line 335
    neg-int v2, v2

    .line 337
    :cond_40
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v6, 0x9

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 338
    .local v1, buffer:Ljava/lang/StringBuffer;
    const-string v6, "GMT"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    div-int/lit8 v6, v2, 0x3c

    invoke-direct {p0, v1, v8, v6}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 341
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    rem-int/lit8 v6, v2, 0x3c

    invoke-direct {p0, v1, v8, v6}, Ljava/util/TimeZone;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1e

    .line 345
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #offset:I
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #sign:C
    .end local v5           #useDaylight:Z
    :cond_63
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .registers 5
    .parameter "time"

    .prologue
    .line 390
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 391
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    goto :goto_14
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 5
    .parameter "zone"

    .prologue
    const/4 v2, 0x0

    .line 524
    if-nez p1, :cond_5

    move v0, v2

    .line 527
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_4

    :cond_11
    move v0, v2

    goto :goto_4
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 623
    if-nez p1, :cond_8

    .line 624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 626
    :cond_8
    iput-object p1, p0, Ljava/util/TimeZone;->ID:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
