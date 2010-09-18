.class public final Lorg/apache/harmony/security/utils/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private group:Ljava/lang/Object;

.field private hash:I

.field private name:Ljava/lang/String;

.field private final oid:[I

.field private sOID:Ljava/lang/String;

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>([I)V
    .registers 3
    .parameter "oid"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    .line 72
    invoke-static {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->validateOid([I)V

    .line 74
    iput-object p1, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    .line 75
    return-void
.end method

.method public constructor <init>([ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "oid"
    .parameter "name"
    .parameter "oidGroup"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    .line 90
    if-nez p3, :cond_11

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.172"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_11
    iput-object p3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static hashIntArray([I)I
    .registers 5
    .parameter "array"

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_11

    const/4 v2, 0x4

    if-ge v0, v2, :cond_11

    .line 218
    aget v2, p0, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 220
    :cond_11
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method

.method public static validateOid([I)V
    .registers 4
    .parameter "oid"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 192
    if-nez p0, :cond_10

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.98"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_10
    array-length v0, p0

    if-ge v0, v1, :cond_1f

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.99"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1f
    aget v0, p0, v2

    if-le v0, v1, :cond_2f

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.9A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2f
    aget v0, p0, v2

    if-eq v0, v1, :cond_46

    const/4 v0, 0x1

    aget v0, p0, v0

    const/16 v1, 0x27

    if-le v0, v1, :cond_46

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.9B"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 133
    if-ne p0, p1, :cond_4

    .line 134
    const/4 v0, 0x1

    .line 139
    .end local p1
    :goto_3
    return v0

    .line 136
    .restart local p1
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 137
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 139
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_3
.end method

.method public getGroup()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()[I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 177
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 178
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hashIntArray([I)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    .line 180
    :cond_d
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    return v0
.end method

.method public toOIDString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    .line 151
    :cond_1d
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 160
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v2, :cond_36

    .line 161
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 163
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_25

    .line 164
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 165
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 167
    :cond_25
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    iget-object v3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v3, v3

    sub-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 170
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_36
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v2
.end method
