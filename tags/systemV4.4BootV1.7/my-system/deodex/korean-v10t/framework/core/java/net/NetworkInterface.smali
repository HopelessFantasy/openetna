.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final CHECK_CONNECT_NO_PORT:I = -0x1

.field static final NO_INTERFACE_INDEX:I = 0x0

.field static final UNSET_INTERFACE_INDEX:I = -0x1


# instance fields
.field addresses:[Ljava/net/InetAddress;

.field private displayName:Ljava/lang/String;

.field private hashCode:I

.field private interfaceIndex:I

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I)V
    .registers 5
    .parameter "name"
    .parameter "displayName"
    .parameter "addresses"
    .parameter "interfaceIndex"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    .line 87
    iput p4, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    .line 88
    return-void
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .registers 6
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 262
    if-nez p0, :cond_e

    .line 263
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "K0331"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 271
    :cond_e
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 272
    .local v0, interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v0, :cond_4c

    .line 273
    :cond_14
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 274
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 280
    .local v1, netif:Ljava/net/NetworkInterface;
    iget-object v3, v1, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    if-eqz v3, :cond_14

    iget-object v3, v1, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    array-length v3, v3

    if-eqz v3, :cond_14

    .line 281
    new-instance v3, Ljava/util/Vector;

    iget-object v4, v1, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 283
    .local v2, netifAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v2, :cond_14

    .line 284
    :cond_3a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 285
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move-object v3, v1

    .line 293
    .end local v1           #netif:Ljava/net/NetworkInterface;
    .end local v2           #netifAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_4b
    return-object v3

    :cond_4c
    const/4 v3, 0x0

    goto :goto_4b
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 5
    .parameter "interfaceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 225
    if-nez p0, :cond_e

    .line 226
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "K0330"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_e
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 234
    .local v0, interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v0, :cond_2c

    .line 235
    :cond_14
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 236
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 237
    .local v1, netif:Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v1

    .line 242
    .end local v1           #netif:Ljava/net/NetworkInterface;
    :goto_2b
    return-object v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesImpl()[Ljava/net/NetworkInterface;

    move-result-object v6

    .line 310
    .local v6, interfaces:[Ljava/net/NetworkInterface;
    if-nez v6, :cond_8

    .line 311
    const/4 v10, 0x0

    .line 331
    :goto_7
    return-object v10

    .line 314
    :cond_8
    move-object v2, v6

    .local v2, arr$:[Ljava/net/NetworkInterface;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v2           #arr$:[Ljava/net/NetworkInterface;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_c
    if-ge v5, v7, :cond_49

    aget-object v9, v2, v5

    .line 317
    .local v9, netif:Ljava/net/NetworkInterface;
    iget-object v10, v9, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    if-eqz v10, :cond_45

    .line 318
    iget-object v3, v9, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    .local v3, arr$:[Ljava/net/InetAddress;
    array-length v8, v3

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_18
    if-ge v4, v8, :cond_45

    aget-object v1, v3, v4

    .line 319
    .local v1, addr:Ljava/net/InetAddress;
    const/16 v10, 0x10

    iget-object v11, v1, Ljava/net/InetAddress;->ipaddress:[B

    array-length v11, v11

    if-ne v10, v11, :cond_42

    .line 320
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v10

    if-nez v10, :cond_2f

    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v10

    if-eqz v10, :cond_42

    .line 322
    :cond_2f
    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v10, v0

    iput-object v9, v10, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 323
    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v10, v0

    iget-object v11, v9, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iput-object v11, v10, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 324
    check-cast v1, Ljava/net/Inet6Address;

    .end local v1           #addr:Ljava/net/InetAddress;
    const/4 v10, 0x1

    iput-boolean v10, v1, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 318
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 314
    .end local v3           #arr$:[Ljava/net/InetAddress;
    .end local v4           #i$:I
    .end local v8           #len$:I
    :cond_45
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_c

    .line 331
    .end local v9           #netif:Ljava/net/NetworkInterface;
    :cond_49
    new-instance v10, Ljava/util/Vector;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v10

    goto :goto_7
.end method

.method private static native getNetworkInterfacesImpl()[Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, ""

    .line 351
    if-ne p1, p0, :cond_8

    move v4, v7

    .line 406
    .end local p0
    :goto_7
    return v4

    .line 355
    .restart local p0
    :cond_8
    instance-of v4, p1, Ljava/net/NetworkInterface;

    if-eqz v4, :cond_90

    .line 361
    move-object v0, p1

    check-cast v0, Ljava/net/NetworkInterface;

    move-object v2, v0

    .line 363
    .local v2, netif:Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    iget v5, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    if-eq v4, v5, :cond_1a

    move v4, v6

    .line 364
    goto :goto_7

    .line 367
    :cond_1a
    iget-object v4, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    move v4, v6

    .line 368
    goto :goto_7

    .line 371
    :cond_32
    iget-object v4, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    move v4, v6

    .line 372
    goto :goto_7

    .line 376
    :cond_4a
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 377
    .local v3, netifAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 378
    .local v1, localifAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-nez v3, :cond_58

    if-eqz v1, :cond_58

    move v4, v6

    .line 379
    goto :goto_7

    .line 382
    :cond_58
    if-nez v3, :cond_5e

    if-nez v1, :cond_5e

    move v4, v7

    .line 384
    goto :goto_7

    .line 387
    :cond_5e
    if-eqz v3, :cond_8d

    .line 389
    .end local p0
    :cond_60
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 390
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    move v4, v6

    .line 392
    goto :goto_7

    .line 399
    :cond_7e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_8a

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_8d

    :cond_8a
    move v4, v6

    .line 401
    goto/16 :goto_7

    :cond_8d
    move v4, v7

    .line 404
    goto/16 :goto_7

    .end local v1           #localifAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #netif:Ljava/net/NetworkInterface;
    .end local v3           #netifAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local p0
    :cond_90
    move v4, v6

    .line 406
    goto/16 :goto_7
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 203
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 205
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    goto :goto_c
.end method

.method getFirstAddress()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    .line 109
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 111
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method getIndex()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 141
    iget-object v7, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    if-nez v7, :cond_f

    .line 142
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7, v9}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 187
    :goto_e
    return-object v7

    .line 149
    :cond_f
    new-instance v0, Ljava/util/Vector;

    iget-object v7, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    array-length v7, v7

    invoke-direct {v0, v7}, Ljava/util/Vector;-><init>(I)V

    .line 156
    .local v0, accessibleAddresses:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/InetAddress;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 157
    .local v5, security:Ljava/lang/SecurityManager;
    if-nez v5, :cond_2d

    .line 158
    new-instance v7, Ljava/util/Vector;

    iget-object v8, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    goto :goto_e

    .line 166
    :cond_2d
    iget-object v1, p0, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_31
    if-ge v3, v4, :cond_45

    aget-object v2, v1, v3

    .line 167
    .local v2, element:Ljava/net/InetAddress;
    if-eqz v5, :cond_42

    .line 173
    :try_start_37
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_42} :catch_5e

    .line 166
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 181
    .end local v2           #element:Ljava/net/InetAddress;
    :cond_45
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 183
    .local v6, theAccessibleElements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_54

    .line 184
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    goto :goto_e

    .line 187
    :cond_54
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7, v9}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    goto :goto_e

    .line 176
    .end local v6           #theAccessibleElements:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v2       #element:Ljava/net/InetAddress;
    :catch_5e
    move-exception v7

    goto :goto_42
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Ljava/net/NetworkInterface;->hashCode:I

    if-nez v0, :cond_c

    .line 420
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/net/NetworkInterface;->hashCode:I

    .line 422
    :cond_c
    iget v0, p0, Ljava/net/NetworkInterface;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const-string v5, "]"

    const-string v4, "["

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    .local v1, string:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v3, "]["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v3, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v3, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 446
    .local v2, theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v2, :cond_48

    .line 447
    :goto_2a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 448
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 449
    .local v0, nextAddress:Ljava/net/InetAddress;
    const-string v3, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v3, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 454
    .end local v0           #nextAddress:Ljava/net/InetAddress;
    :cond_48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
