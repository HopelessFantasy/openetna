.class Lcom/android/music/DeleteItems$1;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/DeleteItems;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/DeleteItems;


# direct methods
.method constructor <init>(Lcom/android/music/DeleteItems;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v0}, Lcom/android/music/DeleteItems;->finish()V

    .line 62
    return-void
.end method
