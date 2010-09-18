.class final Ljavax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet$SecureIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TSST;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SET_Principal:I = 0x0

.field private static final SET_PrivCred:I = 0x1

.field private static final SET_PubCred:I = 0x2

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TSST;>;"
        }
    .end annotation
.end field

.field private transient permission:Ljavax/security/auth/AuthPermission;

.field private setType:I

.field final synthetic this$0:Ljavax/security/auth/Subject;


# direct methods
.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V
    .registers 4
    .parameter
    .parameter "perm"

    .prologue
    .line 562
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 563
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    .line 564
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 565
    return-void
.end method

.method protected constructor <init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V
    .registers 8
    .parameter
    .parameter "perm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/AuthPermission;",
            "Ljava/util/Collection",
            "<+TSST;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p3, s:Ljava/util/Collection;,"Ljava/util/Collection<+TSST;>;"
    invoke-direct {p0, p1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    .line 574
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_30

    const/4 v3, 0x1

    move v2, v3

    .line 576
    .local v2, trust:Z
    :goto_f
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 577
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TSST;>;"
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 579
    .local v1, o:Ljava/lang/Object;,"TSST;"
    invoke-direct {p0, v1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 580
    if-nez v2, :cond_2a

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 581
    :cond_2a
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 574
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TSST;>;"
    .end local v1           #o:Ljava/lang/Object;,"TSST;"
    .end local v2           #trust:Z
    :cond_30
    const/4 v3, 0x0

    move v2, v3

    goto :goto_f

    .line 584
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TSST;>;"
    .restart local v2       #trust:Z
    :cond_33
    return-void
.end method

.method static synthetic access$600(Ljavax/security/auth/Subject$SecureSet;)Ljavax/security/auth/AuthPermission;
    .registers 2
    .parameter "x0"

    .prologue
    .line 522
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 716
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 718
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    packed-switch v1, :pswitch_data_38

    .line 729
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 720
    :pswitch_e
    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    .line 732
    :goto_14
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 733
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TSST;>;"
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 734
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    goto :goto_1a

    .line 723
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TSST;>;"
    :pswitch_28
    invoke-static {}, Ljavax/security/auth/Subject;->access$300()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    goto :goto_14

    .line 726
    :pswitch_2f
    invoke-static {}, Ljavax/security/auth/Subject;->access$500()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    goto :goto_14

    .line 736
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TSST;>;"
    :cond_36
    return-void

    .line 718
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_e
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method private verifyElement(Ljava/lang/Object;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 589
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    if-nez p1, :cond_8

    .line 590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 592
    :cond_8
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_28

    const-class v0, Ljava/security/Principal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.0B"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_28
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$300()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    if-ne v1, v2, :cond_1d

    .line 742
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TSST;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 743
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_c

    .line 745
    :cond_16
    const/4 v1, 0x1

    iput v1, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    .line 752
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TSST;>;"
    :goto_19
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 753
    return-void

    .line 746
    :cond_1d
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$000()Ljavax/security/auth/AuthPermission;

    move-result-object v2

    if-ne v1, v2, :cond_29

    .line 747
    const/4 v1, 0x0

    iput v1, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_19

    .line 749
    :cond_29
    const/4 v1, 0x2

    iput v1, p0, Ljavax/security/auth/Subject$SecureSet;->setType:I

    goto :goto_19
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSST;)Z"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, o:Ljava/lang/Object;,"TSST;"
    invoke-direct {p0, p1}, Ljavax/security/auth/Subject$SecureSet;->verifyElement(Ljava/lang/Object;)V

    .line 606
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    invoke-static {v0}, Ljavax/security/auth/Subject;->access$100(Ljavax/security/auth/Subject;)V

    .line 607
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {v0}, Ljavax/security/auth/Subject;->access$200(Ljava/security/Permission;)V

    .line 609
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 610
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected final get(Ljava/lang/Class;)Ljava/util/Set;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    if-nez p1, :cond_8

    .line 663
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 666
    :cond_8
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$2;

    invoke-direct {v2, p0, p1}, Ljavax/security/auth/Subject$SecureSet$2;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V

    .line 705
    .local v2, s:Ljava/util/AbstractSet;,"Ljava/util/AbstractSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TSST;>;"
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 706
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 707
    .local v1, o:Ljava/lang/Object;,"TSST;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 708
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/Subject$SecureSet$2;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 711
    .end local v1           #o:Ljava/lang/Object;,"TSST;"
    :cond_2d
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->permission:Ljavax/security/auth/AuthPermission;

    invoke-static {}, Ljavax/security/auth/Subject;->access$300()Ljavax/security/auth/AuthPermission;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 625
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$1;

    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$1;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 639
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;

    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    goto :goto_13
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-nez p1, :cond_8

    .line 646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 648
    :cond_8
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 653
    .local p0, this:Ljavax/security/auth/Subject$SecureSet;,"Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
