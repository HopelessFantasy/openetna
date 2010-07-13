.class Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;
.super Lorg/apache/harmony/xml/ExpatPullParser$Event;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartTagEvent"
.end annotation


# instance fields
.field final attributes:Lorg/xml/sax/Attributes;

.field final name:Ljava/lang/String;

.field final namespace:Ljava/lang/String;

.field final processNamespaces:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser;ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;Z)V
    .registers 8
    .parameter "namespace"
    .parameter "name"
    .parameter "expatParser"
    .parameter "depth"
    .parameter "namespaceStack"
    .parameter "processNamespaces"

    .prologue
    .line 583
    invoke-direct {p0, p4, p5}, Lorg/apache/harmony/xml/ExpatPullParser$Event;-><init>(ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V

    .line 584
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->namespace:Ljava/lang/String;

    .line 585
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->name:Ljava/lang/String;

    .line 586
    invoke-virtual {p3}, Lorg/apache/harmony/xml/ExpatParser;->cloneAttributes()Lorg/xml/sax/Attributes;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->attributes:Lorg/xml/sax/Attributes;

    .line 587
    iput-boolean p6, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->processNamespaces:Z

    .line 588
    return-void
.end method


# virtual methods
.method getAttributeCount()I
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method

.method getAttributeName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 612
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->processNamespaces:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAttributeValue(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 618
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 623
    if-nez p1, :cond_4

    .line 624
    const-string p1, ""

    .line 627
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x2

    return v0
.end method
