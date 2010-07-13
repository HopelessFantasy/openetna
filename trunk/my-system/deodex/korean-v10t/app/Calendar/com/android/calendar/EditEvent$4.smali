.class Lcom/android/calendar/EditEvent$4;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 911
    if-nez p2, :cond_31

    .line 912
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$2500(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    move v1, v2

    :goto_11
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2402(Lcom/android/calendar/EditEvent;I)I

    .line 923
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2400(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v2, :cond_4c

    .line 924
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 925
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 929
    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    move v1, v4

    .line 912
    goto :goto_11

    .line 914
    :cond_31
    if-ne p2, v4, :cond_44

    .line 915
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$2500(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    move v1, v5

    :goto_3e
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2402(Lcom/android/calendar/EditEvent;I)I

    goto :goto_14

    :cond_42
    move v1, v2

    goto :goto_3e

    .line 917
    :cond_44
    if-ne p2, v2, :cond_14

    .line 918
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0, v5}, Lcom/android/calendar/EditEvent;->access$2402(Lcom/android/calendar/EditEvent;I)I

    goto :goto_14

    .line 926
    :cond_4c
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2400(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v4, :cond_2e

    .line 927
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2600(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2e
.end method
