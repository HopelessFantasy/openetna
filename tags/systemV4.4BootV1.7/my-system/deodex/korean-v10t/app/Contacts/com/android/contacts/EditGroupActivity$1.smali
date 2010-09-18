.class Lcom/android/contacts/EditGroupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "EditGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditGroupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/contacts/EditGroupActivity$1;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 163
    :cond_14
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity$1;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v1}, Lcom/android/contacts/EditGroupActivity;->access$000(Lcom/android/contacts/EditGroupActivity;)V

    .line 165
    :cond_19
    return-void
.end method
