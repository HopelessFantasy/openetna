.class Lcom/android/launcher/Search$1$1;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Search$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher/Search$1;


# direct methods
.method constructor <init>(Lcom/android/launcher/Search$1;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/launcher/Search$1$1;->this$1:Lcom/android/launcher/Search$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher/Search$1$1;->this$1:Lcom/android/launcher/Search$1;

    iget-object v0, v0, Lcom/android/launcher/Search$1;->this$0:Lcom/android/launcher/Search;

    invoke-static {v0}, Lcom/android/launcher/Search;->access$100(Lcom/android/launcher/Search;)V

    .line 107
    return-void
.end method
