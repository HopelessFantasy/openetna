.class Lcom/lge/sns/profile/ui/ProfileView$15;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView;->onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 2
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$15;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$15;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1081
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$15;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->profileUpdate()V

    .line 1083
    :cond_11
    return-void
.end method
