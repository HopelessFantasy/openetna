.class Landroid/app/SearchManager$SearchManagerCallback$1;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchManager$SearchManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/SearchManager$SearchManagerCallback;


# direct methods
.method constructor <init>(Landroid/app/SearchManager$SearchManagerCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 1807
    iput-object p1, p0, Landroid/app/SearchManager$SearchManagerCallback$1;->this$1:Landroid/app/SearchManager$SearchManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1809
    iget-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback$1;->this$1:Landroid/app/SearchManager$SearchManagerCallback;

    iget-object v0, v0, Landroid/app/SearchManager$SearchManagerCallback;->this$0:Landroid/app/SearchManager;

    iget-object v0, v0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    if-eqz v0, :cond_11

    .line 1810
    iget-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback$1;->this$1:Landroid/app/SearchManager$SearchManagerCallback;

    iget-object v0, v0, Landroid/app/SearchManager$SearchManagerCallback;->this$0:Landroid/app/SearchManager;

    iget-object v0, v0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnDismissListener;->onDismiss()V

    .line 1812
    :cond_11
    return-void
.end method
