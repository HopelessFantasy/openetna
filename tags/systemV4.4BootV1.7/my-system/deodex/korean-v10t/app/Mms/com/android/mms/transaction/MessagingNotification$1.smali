.class Lcom/android/mms/transaction/MessagingNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->updateAllNotifications(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 234
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 235
    return-void
.end method
