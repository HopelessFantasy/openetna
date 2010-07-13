.class public Lorg/bouncycastle/asn1/x509/RoleSyntax;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "RoleSyntax.java"


# instance fields
.field private roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private roleName:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "roleName"

    .prologue
    .line 95
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x6

    if-nez p1, :cond_e

    const-string v2, ""

    :goto_7
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/RoleSyntax;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 97
    return-void

    :cond_e
    move-object v2, p1

    .line 95
    goto :goto_7
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 109
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_12

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2f

    .line 111
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_2f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_5d

    .line 117
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 118
    .local v1, taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_5e

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown tag in RoleSyntax"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :pswitch_4d
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 115
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 124
    :pswitch_56
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    goto :goto_53

    .line 130
    .end local v1           #taggedObject:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_5d
    return-void

    .line 118
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_56
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3
    .parameter "roleName"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/RoleSyntax;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5
    .parameter "roleAuthority"
    .parameter "roleName"

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 64
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERString;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 68
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the role name MUST be non empty and MUST use the URI option of GeneralName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_26
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 72
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 73
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/RoleSyntax;
    .registers 3
    .parameter "obj"

    .prologue
    .line 44
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;

    if-eqz v0, :cond_a

    .line 46
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;

    .end local p0
    move-object v0, p0

    .line 50
    :goto_9
    return-object v0

    .line 48
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/x509/RoleSyntax;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/RoleSyntax;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 52
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown object in RoleSyntax factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRoleAuthority()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getRoleAuthorityAsString()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 171
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-nez v4, :cond_8

    .line 173
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 190
    :goto_7
    return-object v4

    .line 176
    :cond_8
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 177
    .local v1, names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 178
    .local v2, namesString:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v4, v1

    if-ge v0, v4, :cond_31

    .line 180
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    .line 181
    .local v3, value:Lorg/bouncycastle/asn1/DEREncodable;
    instance-of v4, v3, Lorg/bouncycastle/asn1/DERString;

    if-eqz v4, :cond_2a

    .line 183
    check-cast v3, Lorg/bouncycastle/asn1/DERString;

    .end local v3           #value:Lorg/bouncycastle/asn1/DEREncodable;
    invoke-interface {v3}, Lorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 178
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 187
    .restart local v3       #value:Lorg/bouncycastle/asn1/DEREncodable;
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_27

    .end local v3           #value:Lorg/bouncycastle/asn1/DEREncodable;
    :cond_31
    move-object v4, v2

    .line 190
    goto :goto_7
.end method

.method public getRoleName()Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getRoleNameAsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERString;

    .line 161
    .local v0, str:Lorg/bouncycastle/asn1/DERString;
    invoke-interface {v0}, Lorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 206
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 207
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_14

    .line 209
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 211
    :cond_14
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 213
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleNameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, buff:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_39

    .line 222
    :cond_2f
    const-string v3, "N/A"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :goto_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 226
    :cond_39
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleAuthorityAsString()[Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, names:[Ljava/lang/String;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const/4 v1, 0x1

    .local v1, i:I
    :goto_4a
    array-length v3, v2

    if-ge v1, v3, :cond_5b

    .line 230
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 232
    :cond_5b
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34
.end method
