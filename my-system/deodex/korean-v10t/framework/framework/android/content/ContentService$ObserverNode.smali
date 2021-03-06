.class public final Landroid/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 412
    iput-object p1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 413
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserver(Landroid/net/Uri;ILandroid/database/IContentObserver;Z)V
    .registers 11
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "notifyForDescendents"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v4

    if-ne p2, v4, :cond_11

    .line 443
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    invoke-direct {v5, p0, p3, p4}, Landroid/content/ContentService$ObserverNode$ObserverEntry;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :goto_10
    return-void

    .line 448
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, segment:Ljava/lang/String;
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 450
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v0, :cond_37

    .line 451
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentService$ObserverNode;

    .line 452
    .local v2, node:Landroid/content/ContentService$ObserverNode;
    iget-object v4, v2, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 453
    add-int/lit8 v4, p2, 0x1

    invoke-direct {v2, p1, v4, p3, p4}, Landroid/content/ContentService$ObserverNode;->addObserver(Landroid/net/Uri;ILandroid/database/IContentObserver;Z)V

    goto :goto_10

    .line 450
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 459
    .end local v2           #node:Landroid/content/ContentService$ObserverNode;
    :cond_37
    new-instance v2, Landroid/content/ContentService$ObserverNode;

    invoke-direct {v2, v3}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v2       #node:Landroid/content/ContentService$ObserverNode;
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v4, p2, 0x1

    invoke-direct {v2, p1, v4, p3, p4}, Landroid/content/ContentService$ObserverNode;->addObserver(Landroid/net/Uri;ILandroid/database/IContentObserver;Z)V

    goto :goto_10
.end method

.method private collectMyObservers(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .registers 12
    .parameter "uri"
    .parameter "leaf"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p5, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 498
    .local v0, N:I
    if-nez p3, :cond_22

    const/4 v4, 0x0

    move-object v3, v4

    .line 499
    .local v3, observerBinder:Landroid/os/IBinder;
    :goto_a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_3b

    .line 500
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 504
    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_28

    if-nez p4, :cond_28

    .line 499
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 498
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .end local v2           #i:I
    .end local v3           #observerBinder:Landroid/os/IBinder;
    :cond_22
    invoke-interface {p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v3, v4

    goto :goto_a

    .line 509
    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v2       #i:I
    .restart local v3       #observerBinder:Landroid/os/IBinder;
    :cond_28
    if-nez p2, :cond_30

    if-nez p2, :cond_1f

    iget-boolean v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    if-eqz v4, :cond_1f

    .line 510
    :cond_30
    new-instance v4, Landroid/content/ContentService$ObserverCall;

    iget-object v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-direct {v4, p0, v5, p4}, Landroid/content/ContentService$ObserverCall;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 513
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3b
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .registers 3
    .parameter "uri"

    .prologue
    .line 428
    if-nez p1, :cond_4

    .line 429
    const/4 v0, 0x0

    .line 431
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 5
    .parameter "uri"
    .parameter "index"

    .prologue
    .line 416
    if-eqz p1, :cond_18

    .line 417
    if-nez p2, :cond_9

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 423
    .end local p0
    :goto_8
    return-object v0

    .line 420
    .restart local p0
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_8

    .line 423
    .restart local p0
    :cond_18
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addObserver(Landroid/net/Uri;Landroid/database/IContentObserver;Z)V
    .registers 5
    .parameter "uri"
    .parameter "observer"
    .parameter "notifyForDescendents"

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/content/ContentService$ObserverNode;->addObserver(Landroid/net/Uri;ILandroid/database/IContentObserver;Z)V

    .line 436
    return-void
.end method

.method public collectObservers(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .registers 16
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p5, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    const/4 v8, 0x0

    .line 518
    .local v8, segment:Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v9

    .line 519
    .local v9, segmentCount:I
    if-lt p2, v9, :cond_37

    .line 521
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectMyObservers(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 528
    :cond_10
    :goto_10
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 529
    .local v6, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_17
    if-ge v7, v6, :cond_36

    .line 530
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .line 531
    .local v0, node:Landroid/content/ContentService$ObserverNode;
    if-eqz v8, :cond_2b

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 533
    :cond_2b
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectObservers(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 534
    if-eqz v8, :cond_47

    .line 539
    .end local v0           #node:Landroid/content/ContentService$ObserverNode;
    :cond_36
    return-void

    .line 522
    .end local v6           #N:I
    .end local v7           #i:I
    :cond_37
    if-ge p2, v9, :cond_10

    .line 523
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    .line 525
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectMyObservers(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    goto :goto_10

    .line 529
    .restart local v0       #node:Landroid/content/ContentService$ObserverNode;
    .restart local v6       #N:I
    .restart local v7       #i:I
    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_17
.end method

.method public removeObserver(Landroid/database/IContentObserver;)Z
    .registers 9
    .parameter "observer"

    .prologue
    const/4 v6, 0x0

    .line 465
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 466
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_24

    .line 467
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v5, p1}, Landroid/content/ContentService$ObserverNode;->removeObserver(Landroid/database/IContentObserver;)Z

    move-result v0

    .line 468
    .local v0, empty:Z
    if-eqz v0, :cond_21

    .line 469
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 470
    add-int/lit8 v2, v2, -0x1

    .line 471
    add-int/lit8 v4, v4, -0x1

    .line 466
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 475
    .end local v0           #empty:Z
    :cond_24
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 476
    .local v3, observerBinder:Landroid/os/IBinder;
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 477
    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v4, :cond_49

    .line 478
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 479
    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v3, :cond_5b

    .line 480
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 482
    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 487
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_49
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5e

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5e

    .line 488
    const/4 v5, 0x1

    .line 490
    :goto_5a
    return v5

    .line 477
    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_5e
    move v5, v6

    .line 490
    goto :goto_5a
.end method
