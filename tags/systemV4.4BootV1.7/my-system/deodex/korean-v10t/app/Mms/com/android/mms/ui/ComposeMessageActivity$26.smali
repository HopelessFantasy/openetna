.class Lcom/android/mms/ui/ComposeMessageActivity$26;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$dests:[Ljava/lang/String;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4146
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$dests:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$mmsUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4147
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$dests:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$mmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 4148
    return-void
.end method
