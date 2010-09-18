.class public final Ljava/net/SocketPermission;
.super Ljava/security/Permission;
.source "SocketPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HIGHEST_PORT:I = 0xffff

.field private static final LOWEST_PORT:I = 0x0

.field static final SP_ACCEPT:I = 0x4

.field static final SP_CONNECT:I = 0x1

.field static final SP_LISTEN:I = 0x2

.field static final SP_RESOLVE:I = 0x8

.field private static final actionNames:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x63faafcb61acf6beL


# instance fields
.field private actions:Ljava/lang/String;

.field transient actionsMask:I

.field transient hostName:Ljava/lang/String;

.field transient ipString:Ljava/lang/String;

.field private transient isPartialWild:Z

.field private transient isWild:Z

.field transient portMax:I

.field transient portMin:I

.field transient resolved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-string v3, ""

    .line 87
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v2, "connect"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "listen"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "accept"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, "resolve"

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "host"
    .parameter "action"

    .prologue
    const-string v1, ""

    .line 134
    const-string v0, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "localhost"

    :goto_c
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/SocketPermission;->portMin:I

    .line 110
    const v0, 0xffff

    iput v0, p0, Ljava/net/SocketPermission;->portMax:I

    .line 114
    const/16 v0, 0x8

    iput v0, p0, Ljava/net/SocketPermission;->actionsMask:I

    .line 135
    invoke-direct {p0, p1}, Ljava/net/SocketPermission;->getHostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    .line 136
    if-nez p2, :cond_2b

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_29
    move-object v0, p1

    .line 134
    goto :goto_c

    .line 139
    :cond_2b
    const-string v0, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 143
    :cond_39
    invoke-direct {p0, p2}, Ljava/net/SocketPermission;->setActions(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p2}, Ljava/net/SocketPermission;->toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ljava/net/SocketPermission;->parsePort(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private getHostString(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3a

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, " "

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 418
    const/4 v3, -0x1

    .line 419
    .local v3, idx:I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_36

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_36

    move v6, v9

    :goto_1f
    iput-boolean v6, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    .line 421
    iget-boolean v6, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    if-eqz v6, :cond_45

    .line 422
    iput-boolean v9, p0, Ljava/net/SocketPermission;->resolved:Z

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_38

    move v6, v9

    :goto_2e
    iput-boolean v6, p0, Ljava/net/SocketPermission;->isWild:Z

    .line 424
    iget-boolean v6, p0, Ljava/net/SocketPermission;->isWild:Z

    if-eqz v6, :cond_3a

    move-object v6, p1

    .line 471
    :goto_35
    return-object v6

    :cond_36
    move v6, v8

    .line 420
    goto :goto_1f

    :cond_38
    move v6, v8

    .line 423
    goto :goto_2e

    .line 427
    :cond_3a
    if-le v3, v10, :cond_40

    .line 428
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 430
    :cond_40
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_35

    .line 433
    :cond_45
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 435
    .local v5, lastIdx:I
    if-ne v3, v5, :cond_56

    .line 436
    if-eq v10, v3, :cond_51

    .line 438
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 440
    :cond_51
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_35

    .line 443
    :cond_56
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_74

    move v4, v9

    .line 444
    .local v4, isFirstBracket:Z
    :goto_5f
    if-nez v4, :cond_ac

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, colonNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_76

    .line 448
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_71

    .line 449
    add-int/lit8 v1, v1, 0x1

    .line 447
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .end local v1           #colonNum:I
    .end local v2           #i:I
    .end local v4           #isFirstBracket:Z
    :cond_74
    move v4, v8

    .line 443
    goto :goto_5f

    .line 453
    .restart local v1       #colonNum:I
    .restart local v2       #i:I
    .restart local v4       #isFirstBracket:Z
    :cond_76
    const/16 v6, 0x8

    if-ne v6, v1, :cond_7e

    .line 454
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 456
    :cond_7e
    invoke-static {p1}, Lorg/apache/harmony/luni/util/Inet6Util;->isIP6AddressInFullForm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_35

    .line 459
    :cond_89
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "K004a"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 463
    .end local v1           #colonNum:I
    .end local v2           #i:I
    :cond_ac
    const/16 v6, 0x5d

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 464
    .local v0, bbracketIdx:I
    if-ne v10, v0, :cond_d7

    .line 466
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "K004a"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 469
    :cond_d7
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-static {p1}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_35

    .line 473
    :cond_e9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "K004a"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getIPString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    iget-boolean v0, p0, Ljava/net/SocketPermission;->resolved:Z

    if-nez v0, :cond_f

    .line 396
    :try_start_4
    iget-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getHostNameInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_c} :catch_12

    .line 400
    :goto_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketPermission;->resolved:Z

    .line 402
    :cond_f
    iget-object v0, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;

    return-object v0

    .line 397
    :catch_12
    move-exception v0

    goto :goto_c
.end method

.method private parsePort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "hostPort"
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x50

    const/4 v7, 0x0

    const-string v9, " "

    .line 313
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, port:Ljava/lang/String;
    const-string v1, ""

    .line 316
    .local v1, emptyString:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 318
    iput v8, p0, Ljava/net/SocketPermission;->portMin:I

    .line 319
    iput v8, p0, Ljava/net/SocketPermission;->portMax:I

    .line 359
    :cond_19
    :goto_19
    return-void

    .line 323
    :cond_1a
    const-string v6, ":*"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 325
    iput v7, p0, Ljava/net/SocketPermission;->portMin:I

    .line 326
    const v6, 0xffff

    iput v6, p0, Ljava/net/SocketPermission;->portMax:I

    goto :goto_19

    .line 331
    :cond_2a
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 333
    .local v2, negIdx:I
    move-object v5, v1

    .line 334
    .local v5, strPortMin:Ljava/lang/String;
    move-object v4, v1

    .line 335
    .local v4, strPortMax:Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v6, v2, :cond_9e

    .line 337
    move-object v5, v3

    .line 338
    move-object v4, v3

    .line 350
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Ljava/net/SocketPermission;->portMin:I

    .line 351
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Ljava/net/SocketPermission;->portMax:I

    .line 353
    iget v6, p0, Ljava/net/SocketPermission;->portMin:I

    iget v7, p0, Ljava/net/SocketPermission;->portMax:I

    if-le v6, v7, :cond_19

    .line 354
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "K0049"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_79} :catch_79

    .line 356
    :catch_79
    move-exception v6

    move-object v0, v6

    .line 357
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "K004a"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 340
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_9e
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 341
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 343
    const-string v5, "0"

    .line 345
    :cond_b0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 346
    const-string v4, "65535"

    goto :goto_3c
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 503
    iput-boolean v0, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    .line 504
    iput-boolean v0, p0, Ljava/net/SocketPermission;->isWild:Z

    .line 505
    iput v0, p0, Ljava/net/SocketPermission;->portMin:I

    .line 506
    const v0, 0xffff

    iput v0, p0, Ljava/net/SocketPermission;->portMax:I

    .line 507
    const/16 v0, 0x8

    iput v0, p0, Ljava/net/SocketPermission;->actionsMask:I

    .line 508
    invoke-virtual {p0}, Ljava/net/SocketPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketPermission;->getHostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    .line 509
    invoke-virtual {p0}, Ljava/net/SocketPermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljava/net/SocketPermission;->parsePort(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/SocketPermission;->setActions(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private setActions(Ljava/lang/String;)V
    .registers 11
    .parameter "actions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 250
    :cond_8
    return-void

    .line 223
    :cond_9
    const/4 v3, 0x1

    .line 225
    .local v3, parsing:Z
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v6, sb:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 227
    .local v2, length:I
    :cond_14
    :goto_14
    if-eqz v3, :cond_8

    .line 229
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    move v5, v4

    .line 230
    .end local v4           #pos:I
    .local v5, pos:I
    :goto_1b
    if-ge v5, v2, :cond_2c

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:C
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_2d

    .line 231
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_1b

    .end local v1           #c:C
    :cond_2c
    move v4, v5

    .line 233
    .end local v5           #pos:I
    .restart local v4       #pos:I
    :cond_2d
    if-ne v4, v2, :cond_30

    .line 234
    const/4 v3, 0x0

    .line 236
    :cond_30
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, action:Ljava/lang/String;
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 238
    iget v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    goto :goto_14

    .line 239
    :cond_4e
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 240
    iget v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    goto :goto_14

    .line 241
    :cond_60
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 242
    iget v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    goto :goto_14

    .line 243
    :cond_72
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 246
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "K0048"

    invoke-static {v8, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "action"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/16 v2, 0x2c

    .line 370
    if-eqz p1, :cond_15

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    if-ne v1, v4, :cond_1a

    .line 371
    :cond_15
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v4

    .line 390
    :goto_19
    return-object v1

    .line 374
    :cond_1a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    .local v0, sb:Ljava/lang/StringBuffer;
    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_2f

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :cond_2f
    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_3f

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_3f
    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_4f

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 385
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    goto :goto_19
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 497
    return-void
.end method


# virtual methods
.method checkHost(Ljava/net/SocketPermission;)Z
    .registers 7
    .parameter "sp"

    .prologue
    const/4 v4, 0x1

    .line 481
    iget-boolean v1, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    if-eqz v1, :cond_23

    .line 482
    iget-boolean v1, p0, Ljava/net/SocketPermission;->isWild:Z

    if-eqz v1, :cond_b

    move v1, v4

    .line 491
    :goto_a
    return v1

    .line 485
    :cond_b
    iget-object v1, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v4

    .line 486
    .local v0, length:I
    iget-object v1, p1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_a

    .line 491
    .end local v0           #length:I
    :cond_23
    invoke-direct {p0}, Ljava/net/SocketPermission;->getIPString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;

    invoke-direct {p1}, Ljava/net/SocketPermission;->getIPString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_35
    iget-object v1, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_3f
    move v1, v4

    goto :goto_a

    :cond_41
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 183
    :goto_5
    return v2

    .line 166
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    .line 167
    goto :goto_5

    .line 169
    :cond_14
    move-object v0, p1

    check-cast v0, Ljava/net/SocketPermission;

    move-object v1, v0

    .line 170
    .local v1, sp:Ljava/net/SocketPermission;
    iget-object v2, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 171
    invoke-direct {p0}, Ljava/net/SocketPermission;->getIPString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;

    invoke-direct {v1}, Ljava/net/SocketPermission;->getIPString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_34
    move v2, v4

    .line 172
    goto :goto_5

    .line 175
    :cond_36
    iget v2, p0, Ljava/net/SocketPermission;->actionsMask:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4c

    .line 176
    iget v2, p0, Ljava/net/SocketPermission;->portMin:I

    iget v3, v1, Ljava/net/SocketPermission;->portMin:I

    if-eq v2, v3, :cond_44

    move v2, v4

    .line 177
    goto :goto_5

    .line 179
    :cond_44
    iget v2, p0, Ljava/net/SocketPermission;->portMax:I

    iget v3, v1, Ljava/net/SocketPermission;->portMax:I

    if-eq v2, v3, :cond_4c

    move v2, v4

    .line 180
    goto :goto_5

    .line 183
    :cond_4c
    iget v2, p0, Ljava/net/SocketPermission;->actionsMask:I

    iget v3, v1, Ljava/net/SocketPermission;->actionsMask:I

    if-ne v2, v3, :cond_54

    move v2, v5

    goto :goto_5

    :cond_54
    move v2, v4

    goto :goto_5
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/net/SocketPermission;->portMin:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/net/SocketPermission;->portMax:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 8
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 270
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/net/SocketPermission;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_12

    .line 277
    .local v2, sp:Ljava/net/SocketPermission;
    if-eqz v2, :cond_10

    iget v3, p0, Ljava/net/SocketPermission;->actionsMask:I

    iget v4, v2, Ljava/net/SocketPermission;->actionsMask:I

    and-int/2addr v3, v4

    iget v4, v2, Ljava/net/SocketPermission;->actionsMask:I

    if-eq v3, v4, :cond_15

    :cond_10
    move v3, v5

    .line 290
    .end local v2           #sp:Ljava/net/SocketPermission;
    :goto_11
    return v3

    .line 271
    :catch_12
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v5

    .line 272
    goto :goto_11

    .line 283
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #sp:Ljava/net/SocketPermission;
    :cond_15
    invoke-virtual {p1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resolve"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 284
    iget v3, v2, Ljava/net/SocketPermission;->portMin:I

    iget v4, p0, Ljava/net/SocketPermission;->portMin:I

    if-lt v3, v4, :cond_2d

    iget v3, v2, Ljava/net/SocketPermission;->portMax:I

    iget v4, p0, Ljava/net/SocketPermission;->portMax:I

    if-le v3, v4, :cond_2f

    :cond_2d
    move v3, v5

    .line 285
    goto :goto_11

    .line 290
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/net/SocketPermission;->checkHost(Ljava/net/SocketPermission;)Z

    move-result v3

    goto :goto_11
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 302
    new-instance v0, Ljava/net/SocketPermissionCollection;

    invoke-direct {v0}, Ljava/net/SocketPermissionCollection;-><init>()V

    return-object v0
.end method
