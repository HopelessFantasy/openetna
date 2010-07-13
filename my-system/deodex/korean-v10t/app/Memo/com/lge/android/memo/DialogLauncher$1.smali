.class Lcom/lge/android/memo/DialogLauncher$1;
.super Ljava/lang/Object;
.source "DialogLauncher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/memo/DialogLauncher;->setOnClickListnerOnText(Landroid/widget/TextView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/memo/DialogLauncher;

.field final synthetic val$actionToPerform:I


# direct methods
.method constructor <init>(Lcom/lge/android/memo/DialogLauncher;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/lge/android/memo/DialogLauncher$1;->this$0:Lcom/lge/android/memo/DialogLauncher;

    iput p2, p0, Lcom/lge/android/memo/DialogLauncher$1;->val$actionToPerform:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 257
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 254
    :pswitch_9
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher$1;->this$0:Lcom/lge/android/memo/DialogLauncher;

    iget v1, p0, Lcom/lge/android/memo/DialogLauncher$1;->val$actionToPerform:I

    invoke-virtual {v0, v1}, Lcom/lge/android/memo/DialogLauncher;->performActivityAction(I)V

    goto :goto_7

    .line 252
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
