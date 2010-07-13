.class Lcom/android/mms/ui/ClassZeroActivity$1;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 194
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "address"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ClassZeroActivity;->mAddressChars:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "date"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    iget-wide v3, v3, Lcom/android/mms/ui/ClassZeroActivity;->mDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v2, "protocol"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    iget v3, v3, Lcom/android/mms/ui/ClassZeroActivity;->mPID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v2, "read"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v2, "reply_path_present"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    iget-boolean v3, v3, Lcom/android/mms/ui/ClassZeroActivity;->mReplypath:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    const-string v2, "service_center"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ClassZeroActivity;->mSCAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "lgeMsgType"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v2, "body"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ClassZeroActivity;->mMessageChars:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ClassZeroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v3, v1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/media/AsyncPlayer;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 206
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->access$000(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/media/AsyncPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AsyncPlayer;->stop()V

    .line 207
    :cond_81
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    .line 208
    return-void
.end method
