.class Lorg/apache/harmony/security/x509/GeneralName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    packed-switch v2, :pswitch_data_8e

    .line 899
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.191"

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 868
    :pswitch_13
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/OtherName;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/OtherName;)V

    .line 901
    .local v0, result:Lorg/apache/harmony/security/x509/GeneralName;
    :goto_1c
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->access$202(Lorg/apache/harmony/security/x509/GeneralName;[B)[B

    .line 902
    return-object v0

    .line 872
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_24
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 873
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_1c

    .line 875
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_30
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/ORAddress;)V

    .line 876
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_1c

    .line 878
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_3a
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    .line 879
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_1c

    .line 881
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_44
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V

    .line 882
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_1c

    .line 884
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_4e
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 885
    .local v1, uri:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_67

    .line 886
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.190"

    invoke-static {v3, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    :cond_67
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 890
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_1c

    .line 892
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v1           #uri:Ljava/lang/String;
    :pswitch_6f
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/GeneralName;-><init>([B)V

    .line 893
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_1c

    .line 895
    .end local v0           #result:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local p0
    :pswitch_7b
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 897
    .restart local v0       #result:Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_1c

    .line 866
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_24
        :pswitch_24
        :pswitch_30
        :pswitch_3a
        :pswitch_44
        :pswitch_4e
        :pswitch_6f
        :pswitch_7b
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 861
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$100(Lorg/apache/harmony/security/x509/GeneralName;)I

    move-result v0

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "value"

    .prologue
    .line 857
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    .end local p1
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->access$000(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
