.class Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
.super Ljava/lang/Object;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NamespaceStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;
    }
.end annotation


# static fields
.field static final EMPTY:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;


# instance fields
.field private final depth:I

.field private final index:I

.field private final parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

.field private final prefix:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 359
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->EMPTY:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    .line 389
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->prefix:Ljava/lang/String;

    .line 390
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->uri:Ljava/lang/String;

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->index:I

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->depth:I

    .line 398
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "parent"
    .parameter "prefix"
    .parameter "uri"
    .parameter "depth"

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    .line 376
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->prefix:Ljava/lang/String;

    .line 377
    iput-object p3, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->uri:Ljava/lang/String;

    .line 378
    iget v0, p1, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->index:I

    .line 379
    iput p4, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->depth:I

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;Ljava/lang/String;Ljava/lang/String;ILorg/apache/harmony/xml/ExpatPullParser$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;-><init>(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->depth:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    return-object v0
.end method

.method private nodeAt(I)Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    .registers 5
    .parameter "index"

    .prologue
    .line 427
    iget v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->index:I

    if-le p1, v1, :cond_c

    .line 428
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index > size."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_c
    if-gez p1, :cond_16

    .line 431
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index < 0."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_16
    move-object v0, p0

    .line 435
    .local v0, node:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    :goto_17
    iget v1, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->index:I

    if-eq p1, v1, :cond_1e

    .line 436
    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    goto :goto_17

    .line 438
    :cond_1e
    return-object v0
.end method


# virtual methods
.method countAt(I)I
    .registers 5
    .parameter "depth"

    .prologue
    .line 445
    iget v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->depth:I

    if-le p1, v1, :cond_c

    .line 446
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Depth > maximum."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_c
    if-gez p1, :cond_16

    .line 449
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Depth < 0."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_16
    move-object v0, p0

    .line 453
    .local v0, node:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    :goto_17
    iget v1, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->depth:I

    if-ge p1, v1, :cond_1e

    .line 454
    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    goto :goto_17

    .line 456
    :cond_1e
    iget v1, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->index:I

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method prefixAt(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->nodeAt(I)Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method uriAt(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->nodeAt(I)Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->uri:Ljava/lang/String;

    return-object v0
.end method

.method uriFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "prefix"

    .prologue
    .line 401
    move-object v0, p0

    .local v0, node:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    :goto_1
    iget v1, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->index:I

    if-ltz v1, :cond_13

    .line 403
    iget-object v1, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->prefix:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 404
    iget-object v1, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->uri:Ljava/lang/String;

    .line 409
    :goto_f
    return-object v1

    .line 402
    :cond_10
    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    goto :goto_1

    .line 409
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method
