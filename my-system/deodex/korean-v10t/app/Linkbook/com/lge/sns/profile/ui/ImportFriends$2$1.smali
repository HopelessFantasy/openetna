.class Lcom/lge/sns/profile/ui/ImportFriends$2$1;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends$2;->onLoadFriends(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/ImportFriends$2;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends$2;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$2$1;->this$1:Lcom/lge/sns/profile/ui/ImportFriends$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends$2$1;->this$1:Lcom/lge/sns/profile/ui/ImportFriends$2;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/ImportFriends$2;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ImportFriends;->access$300(Lcom/lge/sns/profile/ui/ImportFriends;)V

    .line 110
    return-void
.end method
