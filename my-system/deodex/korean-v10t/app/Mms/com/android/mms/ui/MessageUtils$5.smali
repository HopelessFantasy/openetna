.class Lcom/android/mms/ui/MessageUtils$5;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 961
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 963
    :cond_9
    return-void
.end method
