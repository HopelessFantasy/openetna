.class Landroid/view/ViewDebug$2;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private forceLayout(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 754
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 755
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1c

    .line 756
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 757
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 758
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v1, :cond_1c

    .line 759
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    .line 758
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 762
    .end local v1           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_1c
    return-void
.end method


# virtual methods
.method public bridge synthetic post([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 768
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$2;->post([Ljava/lang/Void;)V

    return-void
.end method

.method public varargs post([Ljava/lang/Void;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 769
    return-void
.end method

.method public bridge synthetic pre()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/view/ViewDebug$2;->pre()[Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public pre()[Ljava/lang/Void;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 768
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$2;->run([Ljava/lang/Void;)V

    return-void
.end method

.method public varargs run([Ljava/lang/Void;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 765
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mOldWidthMeasureSpec:I

    iget-object v2, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mOldHeightMeasureSpec:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 766
    return-void
.end method
