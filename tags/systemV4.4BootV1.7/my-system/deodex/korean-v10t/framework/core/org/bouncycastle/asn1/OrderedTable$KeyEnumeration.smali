.class Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;
.super Ljava/lang/Object;
.source "OrderedTable.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/OrderedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEnumeration"
.end annotation


# instance fields
.field private at:I

.field private final origSize:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/OrderedTable;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/OrderedTable;)V
    .registers 3
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->this$0:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->this$0:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/OrderedTable;->access$100(Lorg/bouncycastle/asn1/OrderedTable;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->origSize:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->at:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/asn1/OrderedTable;Lorg/bouncycastle/asn1/OrderedTable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;-><init>(Lorg/bouncycastle/asn1/OrderedTable;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->this$0:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/OrderedTable;->access$100(Lorg/bouncycastle/asn1/OrderedTable;)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->origSize:I

    if-eq v0, v1, :cond_10

    .line 209
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 212
    :cond_10
    iget v0, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->at:I

    iget v1, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->origSize:I

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->this$0:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/OrderedTable;->access$100(Lorg/bouncycastle/asn1/OrderedTable;)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->origSize:I

    if-eq v0, v1, :cond_10

    .line 218
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 221
    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->this$0:Lorg/bouncycastle/asn1/OrderedTable;

    iget v1, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->at:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/OrderedTable$KeyEnumeration;->at:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/OrderedTable;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    return-object v0
.end method
