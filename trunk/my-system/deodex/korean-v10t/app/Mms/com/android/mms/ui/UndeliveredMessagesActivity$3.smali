.class Lcom/android/mms/ui/UndeliveredMessagesActivity$3;
.super Ljava/lang/Object;
.source "UndeliveredMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-static {v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 346
    return-void
.end method
