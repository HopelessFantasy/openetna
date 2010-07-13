.class Lcom/lge/sns/profile/ui/ImportFriends$1;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ImportFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$1;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends$1;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ImportFriends;->access$000(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 85
    .local v1, curPosition:I
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends$1;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ImportFriends;->access$100(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->setSelect(I)V

    .line 87
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends$1;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ImportFriends;->access$000(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 88
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    if-ge v2, v0, :cond_3e

    .line 89
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends$1;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ImportFriends;->access$000(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, vi:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends$1;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ImportFriends;->access$100(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    move-result-object v4

    add-int v5, v1, v2

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ImportFriends$1;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v6}, Lcom/lge/sns/profile/ui/ImportFriends;->access$000(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 93
    .end local v3           #vi:Landroid/view/View;
    :cond_3e
    return-void
.end method
