.class Lcom/android/mms/ui/ManageSimMessages$2;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$2;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$2;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V

    .line 201
    return-void
.end method
