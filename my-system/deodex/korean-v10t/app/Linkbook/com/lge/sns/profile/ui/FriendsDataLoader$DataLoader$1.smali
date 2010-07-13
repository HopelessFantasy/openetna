.class Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader$1;
.super Ljava/lang/Object;
.source "FriendsDataLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->onSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

.field final synthetic val$flr:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader$1;->this$1:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader$1;->val$flr:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader$1;->val$flr:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->callbackMainMethod()V

    .line 205
    return-void
.end method
