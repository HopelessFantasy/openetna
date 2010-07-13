.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$Service;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient changedProperties:Ljava/util/Properties;

.field private info:Ljava/lang/String;

.field private transient lastAlgorithm:Ljava/lang/String;

.field private transient lastServiceName:Ljava/lang/String;

.field private transient lastServicesByType:Ljava/security/Provider$Service;

.field private transient lastServicesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient lastType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transient propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient providerNumber:I

.field private transient returnedService:Ljava/security/Provider$Service;

.field private transient serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private version:D

.field private transient versionString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "version"
    .parameter "info"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Provider;->providerNumber:I

    .line 112
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 113
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    .line 114
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    .line 115
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    .line 117
    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "servAlg"
    .parameter "attribute"
    .parameter "val"

    .prologue
    const/4 v3, 0x1

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, attributeValue:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 408
    const-string v1, "KeySize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_3a

    move v1, v3

    .line 420
    :goto_31
    return v1

    .line 415
    :cond_32
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v3

    .line 416
    goto :goto_31

    .line 420
    :cond_3a
    const/4 v1, 0x0

    goto :goto_31
.end method

.method private getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    .line 891
    invoke-virtual {p0, p1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, res:Ljava/lang/String;
    if-eqz v2, :cond_8

    move-object v3, v2

    .line 901
    :goto_7
    return-object v3

    .line 895
    :cond_8
    invoke-virtual {p0}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 896
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 897
    .local v1, pname:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 898
    invoke-virtual {p0, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 901
    .end local v1           #pname:Ljava/lang/String;
    :cond_23
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private myPutAll(Ljava/util/Map;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, t:Ljava/util/Map;,"Ljava/util/Map<**>;"
    iget-object v5, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-nez v5, :cond_b

    .line 243
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    .line 245
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 248
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 251
    .local v3, key:Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_33

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Provider."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 255
    :cond_33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 256
    .local v4, value:Ljava/lang/Object;
    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v5, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v5, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_45

    .line 258
    invoke-direct {p0, v3}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    .line 260
    :cond_45
    iget-object v5, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v5, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 262
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v3           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_4b
    iget v5, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_53

    .line 264
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 266
    :cond_53
    return-void
.end method

.method private putProviderInfo()V
    .registers 4

    .prologue
    const-string v2, "null"

    .line 879
    const-string v0, "Provider.id name"

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    :goto_a
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v0, "Provider.id version"

    iget-object v1, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v0, "Provider.id info"

    iget-object v1, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    if-eqz v1, :cond_31

    iget-object v1, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    :goto_1c
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v0, "Provider.id className"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    return-void

    .line 879
    :cond_2d
    const-string v1, "null"

    move-object v1, v2

    goto :goto_a

    .line 881
    :cond_31
    const-string v1, "null"

    move-object v1, v2

    goto :goto_1c
.end method

.method private removeFromPropertyServiceTable(Ljava/lang/Object;)V
    .registers 18
    .parameter "key"

    .prologue
    .line 669
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move v14, v0

    if-nez v14, :cond_a

    .line 735
    .end local p1
    :cond_9
    :goto_9
    return-void

    .line 672
    .restart local p1
    :cond_a
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 673
    .local v8, k:Ljava/lang/String;
    const-string v14, "Provider."

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, algorithm:Ljava/lang/String;
    const/4 v3, 0x0

    .line 681
    .local v3, attribute:Ljava/lang/String;
    const-string v14, "Alg.Alias."

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 683
    const/16 v14, 0xa

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 684
    .local v13, service_alias:Ljava/lang/String;
    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 685
    .local v4, i:I
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 686
    .local v12, serviceName:Ljava/lang/String;
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, aliasName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    if-eqz v14, :cond_4b

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    if-eqz v14, :cond_9

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 692
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 693
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/Provider$Service;

    .line 694
    .local v10, s:Ljava/security/Provider$Service;
    invoke-static {v10}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5f

    .line 695
    invoke-static {v10}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 702
    .end local v2           #aliasName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    .end local v10           #s:Ljava/security/Provider$Service;
    .end local v12           #serviceName:Ljava/lang/String;
    .end local v13           #service_alias:Ljava/lang/String;
    :cond_7d
    const-string v14, "."

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 703
    .local v7, j:I
    const/4 v14, -0x1

    if-eq v7, v14, :cond_9

    .line 707
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 708
    .restart local v4       #i:I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_e0

    .line 709
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 710
    .restart local v12       #serviceName:Ljava/lang/String;
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    if-eqz v14, :cond_9

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/Provider$Service;

    .line 713
    .local v11, ser:Ljava/security/Provider$Service;
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    if-eqz v14, :cond_9

    invoke-static {v11}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 715
    invoke-static {v11}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_c7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    .line 723
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11           #ser:Ljava/security/Provider$Service;
    .end local v12           #serviceName:Ljava/lang/String;
    .restart local p1
    :cond_e0
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 724
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 725
    .restart local v12       #serviceName:Ljava/lang/String;
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v8, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    if-eqz v14, :cond_9

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v14, v0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 729
    .local v9, o:Ljava/lang/Object;
    if-eqz v9, :cond_9

    .line 730
    move-object v0, v9

    check-cast v0, Ljava/security/Provider$Service;

    move-object v10, v0

    .line 731
    .restart local v10       #s:Ljava/security/Provider$Service;
    invoke-static {v10}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9
.end method

.method private serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    .registers 8
    .parameter "s"

    .prologue
    const-string v5, "."

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 651
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 655
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_63
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_b4

    .line 656
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 657
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 658
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 661
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_b4
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_bc

    .line 663
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 665
    :cond_bc
    return-void
.end method

.method private serviceInfoToProperties(Ljava/security/Provider$Service;)V
    .registers 8
    .parameter "s"

    .prologue
    const-string v5, "."

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$300(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 630
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 634
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6b
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_c0

    .line 635
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 636
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 637
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 641
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_c0
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c8

    .line 643
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 645
    :cond_c8
    return-void
.end method

.method private servicesChanged()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 870
    iput-object v0, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    .line 871
    iput-object v0, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    .line 872
    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    .line 873
    return-void
.end method

.method private updatePropertyServiceTable()V
    .registers 36

    .prologue
    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    move-object v5, v0

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Properties;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 867
    :cond_12
    :goto_12
    return-void

    .line 747
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 748
    .local v30, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_20
    :goto_20
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_284

    .line 749
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 750
    .local v28, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    .line 751
    .local v22, _key:Ljava/lang/Object;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    .line 752
    .local v23, _value:Ljava/lang/Object;
    if-eqz v22, :cond_20

    if-eqz v23, :cond_20

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/String;

    move v5, v0

    if-eqz v5, :cond_20

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/String;

    move v5, v0

    if-eqz v5, :cond_20

    .line 756
    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/String;

    move-object/from16 v32, v0

    .line 757
    .local v32, key:Ljava/lang/String;
    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 758
    .local v14, value:Ljava/lang/String;
    const-string v5, "Provider"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 762
    const-string v5, "Alg.Alias."

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14b

    .line 764
    const/16 v5, 0xa

    move-object/from16 v0, v32

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 765
    .local v34, service_alias:Ljava/lang/String;
    const-string v5, "."

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    .line 766
    .local v29, i:I
    const/4 v5, 0x0

    move-object/from16 v0, v34

    move v1, v5

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 767
    .local v6, serviceName:Ljava/lang/String;
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, v34

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 768
    .local v26, aliasName:Ljava/lang/String;
    move-object v7, v14

    .line 769
    .local v7, algorithm:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    .line 770
    .local v25, algUp:Ljava/lang/String;
    const/16 v33, 0x0

    .line 771
    .local v33, o:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    if-nez v5, :cond_d4

    .line 772
    new-instance v5, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 776
    .end local v33           #o:Ljava/lang/Object;
    :goto_a6
    if-eqz v33, :cond_e2

    .line 777
    move-object/from16 v0, v33

    check-cast v0, Ljava/security/Provider$Service;

    move-object v4, v0

    .line 779
    .local v4, s:Ljava/security/Provider$Service;
    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    if-nez v5, :cond_c6

    .line 782
    new-instance v5, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    .end local v7           #algorithm:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 784
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 774
    .end local v4           #s:Ljava/security/Provider$Service;
    .restart local v7       #algorithm:Ljava/lang/String;
    .restart local v33       #o:Ljava/lang/Object;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    goto :goto_a6

    .line 787
    .end local v33           #o:Ljava/lang/Object;
    :cond_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    move-object v5, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 789
    .local v8, className:Ljava/lang/String;
    if-eqz v8, :cond_20

    .line 790
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v9, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v9

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    new-instance v4, Ljava/security/Provider$Service;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 794
    .restart local v4       #s:Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    if-nez v5, :cond_13d

    .line 796
    new-instance v5, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    .end local v7           #algorithm:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 798
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 804
    .end local v4           #s:Ljava/security/Provider$Service;
    .end local v6           #serviceName:Ljava/lang/String;
    .end local v8           #className:Ljava/lang/String;
    .end local v9           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v25           #algUp:Ljava/lang/String;
    .end local v26           #aliasName:Ljava/lang/String;
    .end local v29           #i:I
    .end local v34           #service_alias:Ljava/lang/String;
    :cond_14b
    const-string v5, "."

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    .line 805
    .local v31, j:I
    const/4 v5, -0x1

    move/from16 v0, v31

    move v1, v5

    if-eq v0, v1, :cond_20

    .line 808
    const-string v5, " "

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    .line 809
    .restart local v29       #i:I
    const/4 v5, -0x1

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_1d6

    .line 810
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move v1, v5

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 811
    .restart local v6       #serviceName:Ljava/lang/String;
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v0, v32

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 812
    .restart local v7       #algorithm:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 813
    .local v24, alg:Ljava/lang/String;
    const/16 v33, 0x0

    .line 814
    .restart local v33       #o:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    if-eqz v5, :cond_196

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 817
    .end local v33           #o:Ljava/lang/Object;
    :cond_196
    if-eqz v33, :cond_1a2

    .line 818
    move-object/from16 v0, v33

    check-cast v0, Ljava/security/Provider$Service;

    move-object v4, v0

    .line 819
    .restart local v4       #s:Ljava/security/Provider$Service;
    invoke-static {v4, v14}, Ljava/security/Provider$Service;->access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 822
    .end local v4           #s:Ljava/security/Provider$Service;
    :cond_1a2
    new-instance v4, Ljava/security/Provider$Service;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v16

    move-object v10, v4

    move-object/from16 v11, p0

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v10 .. v16}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 826
    .restart local v4       #s:Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    if-nez v5, :cond_1c7

    .line 827
    new-instance v5, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 829
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 834
    .end local v4           #s:Ljava/security/Provider$Service;
    .end local v6           #serviceName:Ljava/lang/String;
    .end local v7           #algorithm:Ljava/lang/String;
    .end local v24           #alg:Ljava/lang/String;
    :cond_1d6
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move v1, v5

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 835
    .restart local v6       #serviceName:Ljava/lang/String;
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v0, v32

    move v1, v5

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 836
    .restart local v7       #algorithm:Ljava/lang/String;
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, v32

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 837
    .local v27, attribute:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 838
    .restart local v24       #alg:Ljava/lang/String;
    const/16 v33, 0x0

    .line 839
    .restart local v33       #o:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    if-eqz v5, :cond_20e

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 842
    .end local v33           #o:Ljava/lang/Object;
    :cond_20e
    if-eqz v33, :cond_21e

    .line 843
    move-object/from16 v0, v33

    check-cast v0, Ljava/security/Provider$Service;

    move-object v4, v0

    .line 845
    .restart local v4       #s:Ljava/security/Provider$Service;
    move-object v0, v4

    move-object/from16 v1, v27

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider$Service;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 848
    .end local v4           #s:Ljava/security/Provider$Service;
    :cond_21e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    move-object v5, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 850
    .restart local v8       #className:Ljava/lang/String;
    if-eqz v8, :cond_20

    .line 851
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 852
    .local v21, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    new-instance v4, Ljava/security/Provider$Service;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v4

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v21}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 855
    .restart local v4       #s:Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    if-nez v5, :cond_275

    .line 856
    new-instance v5, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    .end local v8           #className:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 858
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 863
    .end local v4           #s:Ljava/security/Provider$Service;
    .end local v6           #serviceName:Ljava/lang/String;
    .end local v7           #algorithm:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    .end local v21           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #_key:Ljava/lang/Object;
    .end local v23           #_value:Ljava/lang/Object;
    .end local v24           #alg:Ljava/lang/String;
    .end local v27           #attribute:Ljava/lang/String;
    .end local v28           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v29           #i:I
    .end local v31           #j:I
    .end local v32           #key:Ljava/lang/String;
    :cond_284
    invoke-direct/range {p0 .. p0}, Ljava/security/Provider;->servicesChanged()V

    .line 865
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    goto/16 :goto_12
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 4

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 179
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1f

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearProviderProperties."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 182
    :cond_1f
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    .line 183
    iget-object v1, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v1, :cond_2b

    .line 184
    iget-object v1, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    .line 186
    :cond_2b
    iget-object v1, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v1, :cond_34

    .line 187
    iget-object v1, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    .line 189
    :cond_34
    iget-object v1, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v1, :cond_3d

    .line 190
    iget-object v1, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    .line 192
    :cond_3d
    iget-object v1, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v1, :cond_46

    .line 193
    iget-object v1, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    .line 196
    :cond_46
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    .line 198
    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    .line 199
    iget v1, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_54

    .line 201
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 203
    :cond_54
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 204
    monitor-exit p0

    return-void

    .line 178
    .end local v0           #sm:Ljava/lang/SecurityManager;
    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method getProviderNumber()I
    .registers 2

    .prologue
    .line 440
    iget v0, p0, Ljava/security/Provider;->providerNumber:I

    return v0
.end method

.method declared-synchronized getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 5
    .parameter "type"

    .prologue
    .line 448
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    .line 449
    iget-object v2, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    if-eqz v2, :cond_14

    iget-object v2, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 450
    iget-object v2, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3a

    .line 461
    :goto_12
    monitor-exit p0

    return-object v2

    .line 453
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 455
    .local v1, service:Ljava/security/Provider$Service;
    invoke-static {v1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 456
    iput-object p1, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    .line 457
    iput-object v1, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_3a

    move-object v2, v1

    .line 458
    goto :goto_12

    .line 461
    .end local v1           #service:Ljava/security/Provider$Service;
    :cond_38
    const/4 v2, 0x0

    goto :goto_12

    .line 448
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 7
    .parameter "type"
    .parameter "algorithm"

    .prologue
    .line 483
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_e

    .line 484
    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 483
    :catchall_b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 487
    :cond_e
    :try_start_e
    iget-object v2, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 489
    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_b

    .line 516
    :goto_20
    monitor-exit p0

    return-object v2

    .line 492
    :cond_22
    :try_start_22
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, alg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 494
    .local v1, o:Ljava/lang/Object;
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_31

    .line 495
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 497
    .end local v1           #o:Ljava/lang/Object;
    :cond_31
    if-nez v1, :cond_6c

    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_6c

    .line 498
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #o:Ljava/lang/Object;
    move-object v2, v1

    .line 500
    .end local v1           #o:Ljava/lang/Object;
    :goto_3e
    if-nez v2, :cond_43

    .line 501
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    .line 503
    :cond_43
    if-nez v2, :cond_50

    iget-object v3, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v3, :cond_50

    .line 504
    iget-object v2, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #o:Ljava/lang/Object;
    move-object v2, v1

    .line 506
    .end local v1           #o:Ljava/lang/Object;
    :cond_50
    if-nez v2, :cond_5d

    iget-object v3, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v3, :cond_5d

    .line 507
    iget-object v2, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #o:Ljava/lang/Object;
    move-object v2, v1

    .line 510
    .end local v1           #o:Ljava/lang/Object;
    :cond_5d
    if-eqz v2, :cond_6a

    .line 511
    iput-object p1, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    .line 512
    iput-object p2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    .line 513
    check-cast v2, Ljava/security/Provider$Service;

    iput-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;

    .line 514
    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_69
    .catchall {:try_start_22 .. :try_end_69} :catchall_b

    goto :goto_20

    .line 516
    :cond_6a
    const/4 v2, 0x0

    goto :goto_20

    :cond_6c
    move-object v2, v1

    goto :goto_3e
.end method

.method public declared-synchronized getServices()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    .line 529
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    if-eqz v0, :cond_c

    .line 530
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3f

    .line 541
    :goto_a
    monitor-exit p0

    return-object v0

    .line 532
    :cond_c
    :try_start_c
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_37

    .line 533
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    .line 537
    :goto_1d
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_2c

    .line 538
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    iget-object v1, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 540
    :cond_2c
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    .line 541
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    goto :goto_a

    .line 535
    :cond_37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_3f

    goto :goto_1d

    .line 528
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()D
    .registers 3

    .prologue
    .line 136
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "serv"
    .parameter "alg"
    .parameter "attribute"
    .parameter "val"

    .prologue
    const-string v4, "."

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, servAlg:Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, prop:Ljava/lang/String;
    if-nez v0, :cond_6a

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 387
    if-eqz p2, :cond_6a

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_6a
    if-eqz v0, :cond_8c

    .line 393
    if-nez p3, :cond_70

    .line 394
    const/4 v2, 0x1

    .line 399
    :goto_6f
    return v2

    .line 396
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3, p4}, Ljava/security/Provider;->checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_6f

    .line 399
    :cond_8c
    const/4 v2, 0x0

    goto :goto_6f
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 208
    .local v0, tmp:Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 209
    invoke-direct {p0, v0}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 210
    monitor-exit p0

    return-void

    .line 207
    .end local v0           #tmp:Ljava/util/Properties;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 303
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1f

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putProviderProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 306
    :cond_1f
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_32

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "Provider."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_5e

    move-result v2

    if-eqz v2, :cond_32

    .line 308
    const/4 v2, 0x0

    .line 321
    :goto_30
    monitor-exit p0

    return-object v2

    .line 310
    :cond_32
    :try_start_32
    iget v2, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 312
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 314
    :cond_3a
    iget-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-eqz v2, :cond_49

    iget-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_49

    .line 315
    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    .line 317
    :cond_49
    iget-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-nez v2, :cond_54

    .line 318
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    .line 320
    :cond_54
    iget-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v2, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_32 .. :try_end_5c} :catchall_5e

    move-result-object v2

    goto :goto_30

    .line 302
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_5e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, t:Ljava/util/Map;,"Ljava/util/Map<**>;"
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 235
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1f

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putProviderProperty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 238
    :cond_1f
    invoke-direct {p0, p1}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 239
    monitor-exit p0

    return-void

    .line 234
    .end local v0           #sm:Ljava/lang/SecurityManager;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 561
    monitor-enter p0

    if-nez p1, :cond_c

    .line 562
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 561
    :catchall_9
    move-exception v2

    monitor-exit p0

    throw v2

    .line 564
    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 565
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2a

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putProviderProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 568
    :cond_2a
    const-string v2, "Provider"

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_9

    move-result v2

    if-eqz v2, :cond_38

    .line 586
    :goto_36
    monitor-exit p0

    return-void

    .line 572
    :cond_38
    :try_start_38
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    .line 573
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v2, :cond_48

    .line 574
    new-instance v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 576
    :cond_48
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 578
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v2, :cond_6c

    .line 579
    new-instance v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 581
    :cond_6c
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 582
    iget-object v3, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 585
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8a
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoToProperties(Ljava/security/Provider$Service;)V
    :try_end_8d
    .catchall {:try_start_38 .. :try_end_8d} :catchall_9

    goto :goto_36
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 344
    monitor-enter p0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 345
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_20

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeProviderProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 348
    :cond_20
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_33

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "Provider."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_5a

    move-result v2

    if-eqz v2, :cond_33

    move-object v2, v4

    .line 364
    :goto_31
    monitor-exit p0

    return-object v2

    .line 352
    :cond_33
    :try_start_33
    iget v2, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    .line 354
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 356
    :cond_3b
    iget-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-eqz v2, :cond_55

    iget-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_55

    .line 357
    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    .line 359
    iget-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->size()I

    move-result v2

    if-nez v2, :cond_55

    .line 360
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    .line 364
    :cond_55
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_5a

    move-result-object v2

    goto :goto_31

    .line 344
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_5a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized removeService(Ljava/security/Provider$Service;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 607
    monitor-enter p0

    if-nez p1, :cond_c

    .line 608
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 607
    :catchall_9
    move-exception v2

    monitor-exit p0

    throw v2

    .line 610
    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 611
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2a

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeProviderProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 614
    :cond_2a
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    .line 615
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_42

    .line 616
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_42
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_6a

    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 619
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 620
    iget-object v3, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 623
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6a
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    :try_end_6d
    .catchall {:try_start_c .. :try_end_6d} :catchall_9

    .line 624
    monitor-exit p0

    return-void
.end method

.method setProviderNumber(I)V
    .registers 2
    .parameter "n"

    .prologue
    .line 430
    iput p1, p0, Ljava/security/Provider;->providerNumber:I

    .line 431
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/security/Provider;->version:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
