.class public Lorg/bouncycastle/asn1/cms/AttributeTable;
.super Ljava/lang/Object;
.source "AttributeTable.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 19
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 36
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 38
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    .line 40
    .local v0, a:Lorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/cms/Attribute;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 42
    .end local v0           #a:Lorg/bouncycastle/asn1/cms/Attribute;
    :cond_23
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DEREncodableVector;->size()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 27
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->get(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    .line 29
    .local v0, a:Lorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/cms/Attribute;)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 31
    .end local v0           #a:Lorg/bouncycastle/asn1/cms/Attribute;
    :cond_23
    return-void
.end method

.method private addAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/cms/Attribute;)V
    .registers 7
    .parameter "oid"
    .parameter "a"

    .prologue
    .line 48
    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, value:Ljava/lang/Object;
    if-nez v2, :cond_e

    .line 52
    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_d
    return-void

    .line 58
    :cond_e
    instance-of v3, v2, Lorg/bouncycastle/asn1/cms/Attribute;

    if-eqz v3, :cond_23

    .line 60
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 62
    .local v1, v:Ljava/util/Vector;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 72
    :goto_1d
    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 67
    .end local v1           #v:Ljava/util/Vector;
    :cond_23
    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    .line 69
    .restart local v1       #v:Ljava/util/Vector;
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method private copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 6
    .parameter "in"

    .prologue
    .line 161
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 162
    .local v2, out:Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 164
    .local v0, e:Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 166
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 168
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 171
    .end local v1           #key:Ljava/lang/Object;
    :cond_1b
    return-object v2
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;
    .registers 4
    .parameter "oid"

    .prologue
    .line 85
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_15

    .line 89
    check-cast v0, Ljava/util/Vector;

    .end local v0           #value:Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/cms/Attribute;

    move-object v1, p0

    .line 92
    :goto_14
    return-object v1

    .restart local v0       #value:Ljava/lang/Object;
    .restart local p0
    :cond_15
    check-cast v0, Lorg/bouncycastle/asn1/cms/Attribute;

    .end local v0           #value:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_14
.end method

.method public getAll(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .registers 6
    .parameter "oid"

    .prologue
    .line 105
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 107
    .local v1, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_25

    .line 111
    check-cast v2, Ljava/util/Vector;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 113
    .end local p0
    .local v0, e:Ljava/util/Enumeration;
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 115
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_15

    .line 118
    .end local v0           #e:Ljava/util/Enumeration;
    .restart local v2       #value:Ljava/lang/Object;
    .restart local p0
    :cond_25
    if-eqz v2, :cond_2c

    .line 120
    check-cast v2, Lorg/bouncycastle/asn1/cms/Attribute;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 123
    .end local p0
    :cond_2c
    return-object v1
.end method

.method public toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .registers 6

    .prologue
    .line 133
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 134
    .local v2, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v4, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 136
    .local v0, e:Ljava/util/Enumeration;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 138
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 140
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Vector;

    if-eqz v4, :cond_31

    .line 142
    check-cast v3, Ljava/util/Vector;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 144
    .local v1, en:Ljava/util/Enumeration;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 146
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1f

    .line 151
    .end local v1           #en:Ljava/util/Enumeration;
    .restart local v3       #value:Ljava/lang/Object;
    :cond_31
    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_b

    .line 155
    .end local v3           #value:Ljava/lang/Object;
    :cond_39
    return-object v2
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
