.class Lcom/lge/sns/profile/ui/ProfileView$7;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileView;
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
    .line 748
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$7;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$7;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1800(Lcom/lge/sns/profile/ui/ProfileView;)V

    .line 750
    return-void
.end method
