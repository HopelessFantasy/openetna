.class Lcom/android/mms/ui/UndeliveredMessagesActivity$1;
.super Ljava/lang/Object;
.source "UndeliveredMessagesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;->initActivity()V
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
    .line 147
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 149
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 150
    .local v3, msgId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, msgType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$100(Lcom/android/mms/ui/UndeliveredMessagesActivity;JJLjava/lang/String;)V

    .line 152
    return-void
.end method
