.class Lcom/android/mms/ui/ComposeMessageActivity$27;
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

.field final synthetic val$msgText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4155
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->val$dests:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->val$msgText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4156
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->val$dests:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$27;->val$msgText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6700(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4157
    return-void
.end method
