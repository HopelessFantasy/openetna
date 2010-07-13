.class public Ljava/security/Provider$Service;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;

.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private implementation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private lastClassName:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 8
    .parameter "provider"
    .parameter "type"
    .parameter "algorithm"
    .parameter "className"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 961
    .local p5, aliases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    if-nez p4, :cond_11

    .line 964
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 966
    :cond_11
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 967
    iput-object p2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 968
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 969
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 971
    if-eqz p5, :cond_36

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_36

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_25
    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 973
    if-eqz p6, :cond_38

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_38

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_33
    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 977
    return-void

    :cond_36
    move-object v0, p5

    .line 971
    goto :goto_25

    :cond_38
    move-object v0, p6

    .line 973
    goto :goto_33
.end method

.method static synthetic access$000(Ljava/security/Provider$Service;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/security/Provider$Service;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/security/Provider$Service;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Ljava/security/Provider$Service;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Ljava/security/Provider$Service;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Ljava/security/Provider$Service;)Ljava/security/Provider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic access$602(Ljava/security/Provider$Service;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    iput-object p1, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$702(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    iput-object p1, p0, Ljava/security/Provider$Service;->lastClassName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method addAlias(Ljava/lang/String;)V
    .registers 3
    .parameter "alias"

    .prologue
    .line 986
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 987
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 989
    :cond_13
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1026
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getAliases()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1061
    if-nez p1, :cond_8

    .line 1062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1064
    :cond_8
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    if-nez v0, :cond_e

    .line 1065
    const/4 v0, 0x0

    .line 1067
    .end local p0
    :goto_d
    return-object v0

    .restart local p0
    :cond_e
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_d
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter "constructorParameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "security.199"

    .line 1093
    iget-object v4, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    if-eqz v4, :cond_12

    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    iget-object v5, p0, Ljava/security/Provider$Service;->lastClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1094
    :cond_12
    new-instance v4, Ljava/security/Provider$Service$1;

    invoke-direct {v4, p0}, Ljava/security/Provider$Service$1;-><init>(Ljava/security/Provider$Service;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/NoSuchAlgorithmException;

    .line 1114
    .local v3, result:Ljava/security/NoSuchAlgorithmException;
    if-eqz v3, :cond_20

    .line 1115
    throw v3

    .line 1118
    .end local v3           #result:Ljava/security/NoSuchAlgorithmException;
    :cond_20
    if-nez p1, :cond_3b

    .line 1120
    :try_start_22
    iget-object v4, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_29

    move-result-object v4

    .line 1140
    :goto_28
    return-object v4

    .line 1121
    :catch_29
    move-exception v4

    move-object v0, v4

    .line 1122
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "security.199"

    iget-object v5, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-static {v8, v5, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1126
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3b
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 1127
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "security.12"

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1131
    :cond_4f
    new-array v2, v7, [Ljava/lang/Class;

    .line 1132
    .local v2, parameterTypes:[Ljava/lang/Class;
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 1134
    .local v1, initargs:[Ljava/lang/Object;
    :try_start_55
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    const-string v5, "CertStore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1135
    const/4 v4, 0x0

    const-string v5, "java.security.cert.CertStoreParameters"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1140
    :goto_68
    iget-object v4, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_28

    .line 1138
    :cond_73
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7a} :catch_7b

    goto :goto_68

    .line 1142
    :catch_7b
    move-exception v4

    move-object v0, v4

    .line 1143
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "security.199"

    iget-object v5, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    iget-object v6, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-static {v8, v5, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 999
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 1000
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1002
    :cond_13
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    return-void
.end method

.method public supportsParameter(Ljava/lang/Object;)Z
    .registers 3
    .parameter "parameter"

    .prologue
    .line 1160
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    if-eqz v1, :cond_5e

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAliases "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    :cond_5e
    iget-object v1, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_7f

    .line 1177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAttributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    :cond_7f
    return-object v0
.end method
