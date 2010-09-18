.class Lcom/android/mms/ui/SlideEditorActivity$10;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$10;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 543
    packed-switch p2, :pswitch_data_1a

    .line 551
    :goto_3
    return-void

    .line 545
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$10;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeLayout(I)V

    goto :goto_3

    .line 548
    :pswitch_f
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$10;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeLayout(I)V

    goto :goto_3

    .line 543
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_f
    .end packed-switch
.end method
