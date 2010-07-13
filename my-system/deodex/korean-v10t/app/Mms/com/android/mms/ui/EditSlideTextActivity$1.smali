.class Lcom/android/mms/ui/EditSlideTextActivity$1;
.super Ljava/lang/Object;
.source "EditSlideTextActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditSlideTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditSlideTextActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditSlideTextActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mms/ui/EditSlideTextActivity$1;->this$0:Lcom/android/mms/ui/EditSlideTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 116
    :goto_8
    return v0

    .line 110
    :cond_9
    packed-switch p2, :pswitch_data_14

    :goto_c
    move v0, v1

    .line 116
    goto :goto_8

    .line 113
    :pswitch_e
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideTextActivity$1;->this$0:Lcom/android/mms/ui/EditSlideTextActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditSlideTextActivity;->editDone()V

    goto :goto_c

    .line 110
    :pswitch_data_14
    .packed-switch 0x17
        :pswitch_e
    .end packed-switch
.end method
