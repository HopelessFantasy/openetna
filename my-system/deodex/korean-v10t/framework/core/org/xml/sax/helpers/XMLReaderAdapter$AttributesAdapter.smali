.class final Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;
.super Ljava/lang/Object;
.source "XMLReaderAdapter.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xml/sax/helpers/XMLReaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AttributesAdapter"
.end annotation


# instance fields
.field private attributes:Lorg/xml/sax/Attributes;

.field final synthetic this$0:Lorg/xml/sax/helpers/XMLReaderAdapter;


# direct methods
.method constructor <init>(Lorg/xml/sax/helpers/XMLReaderAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->this$0:Lorg/xml/sax/helpers/XMLReaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 482
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 494
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "qName"

    .prologue
    .line 518
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 506
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "qName"

    .prologue
    .line 530
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 2
    .parameter "attributes"

    .prologue
    .line 458
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLReaderAdapter$AttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    .line 459
    return-void
.end method
