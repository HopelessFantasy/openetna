.class Lcom/android/contacts/ViewContactActivity$2;
.super Landroid/database/ContentObserver;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$2;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$2;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$100(Lcom/android/contacts/ViewContactActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$2;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$100(Lcom/android/contacts/ViewContactActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 268
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$2;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$000(Lcom/android/contacts/ViewContactActivity;)V

    .line 270
    :cond_19
    return-void
.end method
