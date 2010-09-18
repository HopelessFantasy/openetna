.class Lcom/lge/android/memo/DialogTextEditor$1;
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
    .line 184
    iput-object p1, p0, Lcom/lge/android/memo/DialogTextEditor$1;->this$0:Lcom/lge/android/memo/DialogTextEditor;

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

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 198
    :goto_8
    return v1

    .line 187
    :pswitch_9
    sput-boolean v1, Lcom/lge/android/memo/DialogTextEditor;->isInEditorMode:Z

    .line 188
    invoke-static {}, Lcom/lge/android/memo/DialogTextEditor;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/memo/DialogLauncher;->setMUri(Landroid/net/Uri;)V

    .line 189
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor$1;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    invoke-virtual {v0}, Lcom/lge/android/memo/DialogTextEditor;->forSavingData()Z

    .line 190
    sput-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    .line 193
    invoke-static {}, Lcom/lge/android/memo/DialogLauncher;->notiOfChageStrings()V

    .line 195
    iget-object v0, p0, Lcom/lge/android/memo/DialogTextEditor$1;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    invoke-virtual {v0}, Lcom/lge/android/memo/DialogTextEditor;->finish()V

    goto :goto_8

    .line 185
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
