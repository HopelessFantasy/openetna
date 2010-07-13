.class public Lorg/bouncycastle/asn1/util/ASN1Dump;
.super Ljava/lang/Object;
.source "ASN1Dump.java"


# static fields
.field private static TAB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-string v0, "    "

    sput-object v0, Lorg/bouncycastle/asn1/util/ASN1Dump;->TAB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;
    .registers 14
    .parameter "indent"
    .parameter "obj"

    .prologue
    const-string v11, "["

    const-string v10, ")"

    const-string v9, "NULL"

    const-string v7, ") "

    const-string v8, "line.separator"

    .line 21
    instance-of v5, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v5, :cond_ae

    .line 23
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v1, buf:Ljava/lang/StringBuffer;
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 25
    .local v2, e:Ljava/util/Enumeration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/util/ASN1Dump;->TAB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, tab:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    instance-of v5, p1, Lorg/bouncycastle/asn1/BERConstructedSequence;

    if-eqz v5, :cond_69

    .line 30
    const-string v5, "BER ConstructedSequence"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :goto_3a
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :goto_43
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 53
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, o:Ljava/lang/Object;
    if-eqz v3, :cond_57

    sget-object v5, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 58
    :cond_57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v5, "NULL"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 32
    .end local v3           #o:Ljava/lang/Object;
    :cond_69
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERConstructedSequence;

    if-eqz v5, :cond_73

    .line 34
    const-string v5, "DER ConstructedSequence"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 36
    :cond_73
    instance-of v5, p1, Lorg/bouncycastle/asn1/BERSequence;

    if-eqz v5, :cond_7d

    .line 38
    const-string v5, "BER Sequence"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 40
    :cond_7d
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERSequence;

    if-eqz v5, :cond_87

    .line 42
    const-string v5, "DER Sequence"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 46
    :cond_87
    const-string v5, "Sequence"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 62
    .restart local v3       #o:Ljava/lang/Object;
    :cond_8d
    instance-of v5, v3, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v5, :cond_9b

    .line 64
    check-cast v3, Lorg/bouncycastle/asn1/DERObject;

    .end local v3           #o:Ljava/lang/Object;
    invoke-static {v4, v3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 68
    .restart local v3       #o:Ljava/lang/Object;
    :cond_9b
    check-cast v3, Lorg/bouncycastle/asn1/DEREncodable;

    .end local v3           #o:Ljava/lang/Object;
    invoke-interface {v3}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 72
    :cond_a9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #tab:Ljava/lang/String;
    .end local p1
    :goto_ad
    return-object v5

    .line 74
    .restart local p1
    :cond_ae
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v5, :cond_12c

    .line 76
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/util/ASN1Dump;->TAB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .restart local v4       #tab:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    instance-of v5, p1, Lorg/bouncycastle/asn1/BERTaggedObject;

    if-eqz v5, :cond_11a

    .line 82
    const-string v5, "BER Tagged ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :goto_d6
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    move-object v3, v0

    .line 91
    .local v3, o:Lorg/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERTaggedObject;->isExplicit()Z

    move-result v5

    if-nez v5, :cond_f5

    .line 96
    const-string v5, " IMPLICIT "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_f5
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERTaggedObject;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v5, "EMPTY"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :goto_115
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_ad

    .line 86
    .end local v3           #o:Lorg/bouncycastle/asn1/DERTaggedObject;
    :cond_11a
    const-string v5, "Tagged ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d6

    .line 109
    .restart local v3       #o:Lorg/bouncycastle/asn1/DERTaggedObject;
    :cond_120
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_115

    .line 114
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #o:Lorg/bouncycastle/asn1/DERTaggedObject;
    .end local v4           #tab:Ljava/lang/String;
    :cond_12c
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERConstructedSet;

    if-eqz v5, :cond_19f

    .line 116
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 118
    .restart local v2       #e:Ljava/util/Enumeration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/util/ASN1Dump;->TAB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    .restart local v4       #tab:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v5, "ConstructedSet"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :goto_15f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_199

    .line 126
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_17d

    .line 130
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v5, "NULL"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15f

    .line 134
    :cond_17d
    instance-of v5, v3, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v5, :cond_18b

    .line 136
    check-cast v3, Lorg/bouncycastle/asn1/DERObject;

    .end local v3           #o:Ljava/lang/Object;
    invoke-static {v4, v3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15f

    .line 140
    .restart local v3       #o:Ljava/lang/Object;
    :cond_18b
    check-cast v3, Lorg/bouncycastle/asn1/DEREncodable;

    .end local v3           #o:Ljava/lang/Object;
    invoke-interface {v3}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15f

    .line 143
    :cond_199
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 145
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #tab:Ljava/lang/String;
    .restart local p1
    :cond_19f
    instance-of v5, p1, Lorg/bouncycastle/asn1/BERSet;

    if-eqz v5, :cond_212

    .line 147
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 149
    .restart local v2       #e:Ljava/util/Enumeration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/util/ASN1Dump;->TAB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .restart local v4       #tab:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v5, "BER Set"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_1d2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_20c

    .line 157
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 159
    .restart local v3       #o:Ljava/lang/Object;
    if-nez v3, :cond_1f0

    .line 161
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v5, "NULL"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d2

    .line 165
    :cond_1f0
    instance-of v5, v3, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v5, :cond_1fe

    .line 167
    check-cast v3, Lorg/bouncycastle/asn1/DERObject;

    .end local v3           #o:Ljava/lang/Object;
    invoke-static {v4, v3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d2

    .line 171
    .restart local v3       #o:Ljava/lang/Object;
    :cond_1fe
    check-cast v3, Lorg/bouncycastle/asn1/DEREncodable;

    .end local v3           #o:Ljava/lang/Object;
    invoke-interface {v3}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d2

    .line 174
    :cond_20c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 176
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #tab:Ljava/lang/String;
    .restart local p1
    :cond_212
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERSet;

    if-eqz v5, :cond_285

    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 180
    .restart local v2       #e:Ljava/util/Enumeration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/util/ASN1Dump;->TAB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4       #tab:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v5, "DER Set"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :goto_245
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_27f

    .line 188
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 190
    .restart local v3       #o:Ljava/lang/Object;
    if-nez v3, :cond_263

    .line 192
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v5, "NULL"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v5, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_245

    .line 196
    :cond_263
    instance-of v5, v3, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v5, :cond_271

    .line 198
    check-cast v3, Lorg/bouncycastle/asn1/DERObject;

    .end local v3           #o:Ljava/lang/Object;
    invoke-static {v4, v3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_245

    .line 202
    .restart local v3       #o:Ljava/lang/Object;
    :cond_271
    check-cast v3, Lorg/bouncycastle/asn1/DEREncodable;

    .end local v3           #o:Ljava/lang/Object;
    invoke-interface {v3}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_245

    .line 205
    :cond_27f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 207
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #tab:Ljava/lang/String;
    .restart local p1
    :cond_285
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v5, :cond_2b8

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ObjectIdentifier("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 211
    .restart local p1
    :cond_2b8
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v5, :cond_2eb

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Boolean("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERBoolean;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 215
    .restart local p1
    :cond_2eb
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v5, :cond_31e

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Integer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERInteger;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 219
    .restart local p1
    :cond_31e
    instance-of v5, p1, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    if-eqz v5, :cond_358

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BER Constructed Octet String"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 223
    .restart local p1
    :cond_358
    instance-of v5, p1, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v5, :cond_392

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DER Octet String"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 227
    .restart local p1
    :cond_392
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v5, :cond_3de

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DER Bit String"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DERBitString;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERBitString;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 231
    .restart local p1
    :cond_3de
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v5, :cond_411

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IA5String("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERIA5String;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 235
    .restart local p1
    :cond_411
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v5, :cond_444

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF8String("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERUTF8String;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 239
    .restart local p1
    :cond_444
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERPrintableString;

    if-eqz v5, :cond_477

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PrintableString("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERPrintableString;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 243
    .restart local p1
    :cond_477
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERVisibleString;

    if-eqz v5, :cond_4aa

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "VisibleString("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERVisibleString;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 247
    .restart local p1
    :cond_4aa
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERBMPString;

    if-eqz v5, :cond_4dd

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BMPString("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERBMPString;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 251
    .restart local p1
    :cond_4dd
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERT61String;

    if-eqz v5, :cond_510

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "T61String("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERT61String;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 255
    .restart local p1
    :cond_510
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v5, :cond_543

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTCTime("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERUTCTime;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERUTCTime;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 259
    .restart local p1
    :cond_543
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v5, :cond_576

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GeneralizedTime("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 263
    .restart local p1
    :cond_576
    instance-of v5, p1, Lorg/bouncycastle/asn1/DERUnknownTag;

    if-eqz v5, :cond_5c4

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Unknown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DERUnknownTag;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERUnknownTag;->getTag()I

    move-result v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    check-cast p1, Lorg/bouncycastle/asn1/DERUnknownTag;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERUnknownTag;->getData()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad

    .line 269
    .restart local p1
    :cond_5c4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ad
.end method

.method public static dumpAsString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "obj"

    .prologue
    const-string v1, ""

    .line 281
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_f

    .line 283
    const-string v0, ""

    check-cast p0, Lorg/bouncycastle/asn1/DERObject;

    .end local p0
    invoke-static {v1, p0}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_e
    return-object v0

    .line 285
    .restart local p0
    :cond_f
    instance-of v0, p0, Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_20

    .line 287
    const-string v0, ""

    check-cast p0, Lorg/bouncycastle/asn1/DEREncodable;

    .end local p0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 290
    .restart local p0
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
