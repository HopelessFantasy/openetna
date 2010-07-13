.class Lcom/lge/sns/profile/ui/ImportFriends$5$1;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/ImportFriends$5;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends$5;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$5$1;->this$1:Lcom/lge/sns/profile/ui/ImportFriends$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$5$1;->this$1:Lcom/lge/sns/profile/ui/ImportFriends$5;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$1000(Lcom/lge/sns/profile/ui/ImportFriends;)V

    .line 232
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$5$1;->this$1:Lcom/lge/sns/profile/ui/ImportFriends$5;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$1100(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$5$1;->this$1:Lcom/lge/sns/profile/ui/ImportFriends$5;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$1100(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 234
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$5$1;->this$1:Lcom/lge/sns/profile/ui/ImportFriends$5;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ImportFriends$5;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$1100(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    :cond_2a
    return-void
.end method
