.class Lcom/lge/android/memo/DialogTextEditor$2;
.super Ljava/lang/Object;
.source "DialogTextEditor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/memo/DialogTextEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/memo/DialogTextEditor;


# direct methods
.method constructor <init>(Lcom/lge/android/memo/DialogTextEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lge/android/memo/DialogTextEditor$2;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 219
    :goto_8
    return v1

    .line 214
    :pswitch_9
    invoke-static {}, Lcom/lge/android/memo/DialogTextEditor;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/memo/DialogLauncher;->setMUri(Landroid/net/Uri;)V

    .line 215
    sput-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 216
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor$2;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    invoke-static {v0}, Lcom/lge/android/memo/DialogTextEditor;->access$100(Lcom/lge/android/memo/DialogTextEditor;)V

    goto :goto_8

    .line 212
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
