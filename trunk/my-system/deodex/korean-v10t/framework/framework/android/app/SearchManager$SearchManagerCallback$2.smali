.class Landroid/app/SearchManager$SearchManagerCallback$2;
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
    .line 1816
    iput-object p1, p0, Landroid/app/SearchManager$SearchManagerCallback$2;->this$1:Landroid/app/SearchManager$SearchManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1818
    iget-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback$2;->this$1:Landroid/app/SearchManager$SearchManagerCallback;

    iget-object v0, v0, Landroid/app/SearchManager$SearchManagerCallback;->this$0:Landroid/app/SearchManager;

    iget-object v0, v0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    if-eqz v0, :cond_11

    .line 1819
    iget-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback$2;->this$1:Landroid/app/SearchManager$SearchManagerCallback;

    iget-object v0, v0, Landroid/app/SearchManager$SearchManagerCallback;->this$0:Landroid/app/SearchManager;

    iget-object v0, v0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnCancelListener;->onCancel()V

    .line 1821
    :cond_11
    return-void
.end method
