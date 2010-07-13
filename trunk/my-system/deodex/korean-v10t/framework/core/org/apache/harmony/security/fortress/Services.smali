.class public Lorg/apache/harmony/security/fortress/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static needRefresh:Z

.field private static final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final providersNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static refreshNumber:I

.field private static final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x14

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    .line 59
    const/4 v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    .line 68
    new-instance v0, Lorg/apache/harmony/security/fortress/Services$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/fortress/Services$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 43
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->loadProviders()V

    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 2
    .parameter "name"

    .prologue
    .line 123
    if-nez p0, :cond_4

    .line 124
    const/4 v0, 0x0

    .line 126
    .end local p0
    :goto_3
    return-object v0

    .restart local p0
    :cond_4
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Provider;

    move-object v0, p0

    goto :goto_3
.end method

.method public static getProviders()[Ljava/security/Provider;
    .registers 2

    .prologue
    .line 104
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/Provider;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Provider;

    return-object v0
.end method

.method public static getProvidersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 2
    .parameter "key"

    .prologue
    .line 222
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Provider$Service;

    return-object p0
.end method

.method public static initServiceInfo(Ljava/security/Provider;)V
    .registers 12
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    const-string v10, "."

    .line 169
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v7, 0x80

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 171
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it1:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    .line 173
    .local v5, serv:Ljava/security/Provider$Service;
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, type:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, key:Ljava/lang/String;
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 178
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_50
    sget-object v7, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v7, v5}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getAliases(Ljava/security/Provider$Service;)Ljava/util/Iterator;

    move-result-object v2

    .local v2, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_56
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_56

    .line 186
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 190
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #serv:Ljava/security/Provider$Service;
    .end local v6           #type:Ljava/lang/String;
    :cond_8d
    return-void
.end method

.method public static insertProviderAt(Ljava/security/Provider;I)I
    .registers 5
    .parameter "provider"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 137
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    .local v0, size:I
    if-lt p1, v2, :cond_b

    if-le p1, v0, :cond_d

    .line 139
    :cond_b
    add-int/lit8 p1, v0, 0x1

    .line 141
    :cond_d
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 142
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 144
    return p1
.end method

.method public static isEmpty()Z
    .registers 1

    .prologue
    .line 210
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static loadProviders()V
    .registers 7

    .prologue
    .line 78
    const/4 v4, 0x0

    .line 79
    .local v4, providerClassName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 80
    .local v1, i:I
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    .local v0, cl:Ljava/lang/ClassLoader;
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "security.provider."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 86
    :try_start_21
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 89
    .local v3, p:Ljava/security/Provider;
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_41} :catch_43

    move v1, v2

    .line 93
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_6

    .line 92
    .end local v1           #i:I
    .end local v3           #p:Ljava/security/Provider;
    .restart local v2       #i:I
    :catch_43
    move-exception v5

    move v1, v2

    .line 93
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_6

    .line 95
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_46
    sget-object v5, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v5}, Lorg/apache/harmony/security/fortress/SecurityAccess;->renumProviders()V

    .line 96
    return-void
.end method

.method public static printServices()V
    .registers 6

    .prologue
    .line 230
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->refresh()V

    .line 231
    sget-object v3, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 232
    .local v2, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, key:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 236
    .end local v1           #key:Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method public static refresh()V
    .registers 1

    .prologue
    .line 251
    sget-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    if-eqz v0, :cond_d

    .line 252
    sget v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    .line 253
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->updateServiceInfo()V

    .line 255
    :cond_d
    return-void
.end method

.method public static removeProvider(I)V
    .registers 4
    .parameter "providerNumber"

    .prologue
    .line 153
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    const/4 v2, 0x1

    sub-int v2, p0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 154
    .local v0, p:Ljava/security/Provider;
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 156
    return-void
.end method

.method public static setNeedRefresh()V
    .registers 1

    .prologue
    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 244
    return-void
.end method

.method public static updateServiceInfo()V
    .registers 2

    .prologue
    .line 198
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 199
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Provider;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V

    goto :goto_b

    .line 202
    :cond_1b
    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 203
    return-void
.end method
