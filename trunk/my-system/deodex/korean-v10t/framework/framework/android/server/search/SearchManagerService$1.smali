.class Landroid/server/search/SearchManagerService$1;
.super Ljava/lang/Object;
.source "SearchManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Landroid/server/search/SearchManagerService$1;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/server/search/SearchManagerService$1;->this$0:Landroid/server/search/SearchManagerService;

    invoke-virtual {v0}, Landroid/server/search/SearchManagerService;->initialize()V

    .line 69
    return-void
.end method
