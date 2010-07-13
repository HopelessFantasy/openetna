.class Lcom/android/mms/ui/ComposeMessageActivity$28;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 4472
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 4473
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$28;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 4474
    return-void
.end method
