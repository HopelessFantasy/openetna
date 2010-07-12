.class Landroid/app/SearchManager$SearchManagerCallback;
.super Landroid/app/ISearchManagerCallback$Stub;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchManagerCallback"
.end annotation


# instance fields
.field private final mFireOnCancel:Ljava/lang/Runnable;

.field private final mFireOnDismiss:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/app/SearchManager;


# direct methods
.method private constructor <init>(Landroid/app/SearchManager;)V
    .registers 3
    .parameter

    .prologue
    .line 1804
    iput-object p1, p0, Landroid/app/SearchManager$SearchManagerCallback;->this$0:Landroid/app/SearchManager;

    invoke-direct {p0}, Landroid/app/ISearchManagerCallback$Stub;-><init>()V

    .line 1806
    new-instance v0, Landroid/app/SearchManager$SearchManagerCallback$1;

    invoke-direct {v0, p0}, Landroid/app/SearchManager$SearchManagerCallback$1;-><init>(Landroid/app/SearchManager$SearchManagerCallback;)V

    iput-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback;->mFireOnDismiss:Ljava/lang/Runnable;

    .line 1815
    new-instance v0, Landroid/app/SearchManager$SearchManagerCallback$2;

    invoke-direct {v0, p0}, Landroid/app/SearchManager$SearchManagerCallback$2;-><init>(Landroid/app/SearchManager$SearchManagerCallback;)V

    iput-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback;->mFireOnCancel:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/SearchManager;Landroid/app/SearchManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1804
    invoke-direct {p0, p1}, Landroid/app/SearchManager$SearchManagerCallback;-><init>(Landroid/app/SearchManager;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 1831
    iget-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback;->this$0:Landroid/app/SearchManager;

    iget-object v0, v0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/SearchManager$SearchManagerCallback;->mFireOnCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1832
    return-void
.end method

.method public onDismiss()V
    .registers 3

    .prologue
    .line 1826
    iget-object v0, p0, Landroid/app/SearchManager$SearchManagerCallback;->this$0:Landroid/app/SearchManager;

    iget-object v0, v0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/SearchManager$SearchManagerCallback;->mFireOnDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1827
    return-void
.end method
