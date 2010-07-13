.class Lcom/lge/sns/profile/ui/FriendsList$10;
.super Ljava/lang/Object;
.source "FriendsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsList;->onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 2
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$10;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList$10;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsList;->access$300(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 1137
    return-void
.end method
