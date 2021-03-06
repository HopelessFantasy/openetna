.class public Lcom/android/mms/dom/NodeListImpl;
.super Ljava/lang/Object;
.source "NodeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private mDeepSearch:Z

.field private mRootNode:Lorg/w3c/dom/Node;

.field private mSearchNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .registers 4
    .parameter "rootNode"
    .parameter "tagName"
    .parameter "deepSearch"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    .line 47
    iput-object p2, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    .line 49
    return-void
.end method

.method private fillList(Lorg/w3c/dom/Node;)V
    .registers 4
    .parameter "node"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_1d

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    .line 113
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 117
    :goto_f
    if-eqz p1, :cond_49

    .line 118
    iget-boolean v0, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    if-eqz v0, :cond_33

    .line 119
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 125
    :cond_18
    :goto_18
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_f

    .line 107
    :cond_1d
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    :cond_2d
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 121
    :cond_33
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_43

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 122
    :cond_43
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 127
    :cond_49
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 65
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 66
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_f
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "index"

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, node:Lorg/w3c/dom/Node;
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v2, :cond_15

    .line 75
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v2}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 77
    :try_start_a
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_14} :catch_22

    .line 88
    :goto_14
    return-object v1

    .line 83
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_14

    .line 84
    :catch_20
    move-exception v2

    goto :goto_14

    .line 78
    :catch_22
    move-exception v2

    goto :goto_14
.end method
