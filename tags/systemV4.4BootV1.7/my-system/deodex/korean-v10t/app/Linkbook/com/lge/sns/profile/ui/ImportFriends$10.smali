.class Lcom/lge/sns/profile/ui/ImportFriends$10;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends;->onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;ILandroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$10;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iput p2, p0, Lcom/lge/sns/profile/ui/ImportFriends$10;->val$position:I

    iput-object p3, p0, Lcom/lge/sns/profile/ui/ImportFriends$10;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 658
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$10;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$100(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    move-result-object v0

    iget v1, p0, Lcom/lge/sns/profile/ui/ImportFriends$10;->val$position:I

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends$10;->val$v:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$10;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ImportFriends;->access$000(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 659
    return-void
.end method
