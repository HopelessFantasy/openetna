.class public Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;
.super Ljava/lang/Object;
.source "AttributeTypeAndValueComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I
    .registers 11
    .parameter "oid1"
    .parameter "oid2"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 85
    if-ne p0, p1, :cond_7

    move v4, v7

    .line 106
    :goto_6
    return v4

    .line 89
    :cond_7
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v1

    .line 90
    .local v1, ioid1:[I
    invoke-virtual {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v2

    .line 91
    .local v2, ioid2:[I
    array-length v4, v1

    array-length v5, v2

    if-ge v4, v5, :cond_20

    array-length v4, v1

    move v3, v4

    .line 92
    .local v3, min:I
    :goto_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v3, :cond_46

    .line 93
    aget v4, v1, v0

    aget v5, v2, v0

    if-ge v4, v5, :cond_23

    move v4, v6

    .line 94
    goto :goto_6

    .line 91
    .end local v0           #i:I
    .end local v3           #min:I
    :cond_20
    array-length v4, v2

    move v3, v4

    goto :goto_15

    .line 96
    .restart local v0       #i:I
    .restart local v3       #min:I
    :cond_23
    aget v4, v1, v0

    aget v5, v2, v0

    if-le v4, v5, :cond_2b

    move v4, v8

    .line 97
    goto :goto_6

    .line 99
    :cond_2b
    add-int/lit8 v4, v0, 0x1

    array-length v5, v1

    if-ne v4, v5, :cond_37

    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    if-ge v4, v5, :cond_37

    move v4, v6

    .line 100
    goto :goto_6

    .line 102
    :cond_37
    add-int/lit8 v4, v0, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_43

    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    if-ne v4, v5, :cond_43

    move v4, v8

    .line 103
    goto :goto_6

    .line 92
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_46
    move v4, v7

    .line 106
    goto :goto_6
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 46
    if-ne p1, p2, :cond_4

    .line 47
    const/4 v5, 0x0

    .line 64
    :goto_3
    return v5

    .line 50
    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    move-object v1, v0

    .line 51
    .local v1, atav1:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    move-object v2, v0

    .line 52
    .local v2, atav2:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, kw1:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, kw2:Ljava/lang/String;
    if-eqz v3, :cond_22

    if-nez v4, :cond_22

    .line 55
    const/4 v5, -0x1

    goto :goto_3

    .line 57
    :cond_22
    if-nez v3, :cond_28

    if-eqz v4, :cond_28

    .line 58
    const/4 v5, 0x1

    goto :goto_3

    .line 60
    :cond_28
    if-eqz v3, :cond_31

    if-eqz v4, :cond_31

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 64
    :cond_31
    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;->compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I

    move-result v5

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
