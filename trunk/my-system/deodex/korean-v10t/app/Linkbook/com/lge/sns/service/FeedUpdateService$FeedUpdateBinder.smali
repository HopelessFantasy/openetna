.class public Lcom/lge/sns/service/FeedUpdateService$FeedUpdateBinder;
.super Landroid/os/Binder;
.source "FeedUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/service/FeedUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeedUpdateBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/service/FeedUpdateService;


# direct methods
.method public constructor <init>(Lcom/lge/sns/service/FeedUpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/sns/service/FeedUpdateService$FeedUpdateBinder;->this$0:Lcom/lge/sns/service/FeedUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/lge/sns/service/FeedUpdateService;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/sns/service/FeedUpdateService$FeedUpdateBinder;->this$0:Lcom/lge/sns/service/FeedUpdateService;

    return-object v0
.end method
