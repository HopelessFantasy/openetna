.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteAll:Z

.field private final mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "msgId"
    .parameter "type"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    const-string v0, "mms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 866
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 872
    :goto_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    .line 873
    return-void

    .line 869
    :cond_19
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_15
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .registers 4
    .parameter
    .parameter "uri"
    .parameter "all"

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 861
    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    .line 862
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 876
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    if-eqz v0, :cond_16

    const/16 v0, 0x25e5

    move v1, v0

    .line 878
    .local v1, token:I
    :goto_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 880
    return-void

    .line 876
    .end local v1           #token:I
    :cond_16
    const/16 v0, 0x25e4

    move v1, v0

    goto :goto_8
.end method
