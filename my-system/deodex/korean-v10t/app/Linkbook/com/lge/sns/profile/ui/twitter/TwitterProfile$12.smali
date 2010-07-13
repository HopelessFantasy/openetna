.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$12;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V
    .registers 2
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$12;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$12;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$900(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V

    .line 461
    return-void
.end method
