.class Lcom/lge/android/memo/DialogLauncher$MinimiseButton$1;
.super Ljava/lang/Object;
.source "DialogLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/memo/DialogLauncher$MinimiseButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/android/memo/DialogLauncher$MinimiseButton;


# direct methods
.method constructor <init>(Lcom/lge/android/memo/DialogLauncher$MinimiseButton;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton$1;->this$1:Lcom/lge/android/memo/DialogLauncher$MinimiseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton$1;->this$1:Lcom/lge/android/memo/DialogLauncher$MinimiseButton;

    iget-object v0, v0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-virtual {v0}, Lcom/lge/android/memo/DialogLauncher;->closeStyle()V

    .line 325
    return-void
.end method
