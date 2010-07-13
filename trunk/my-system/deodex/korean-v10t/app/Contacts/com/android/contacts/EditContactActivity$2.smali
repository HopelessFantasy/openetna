.class Lcom/android/contacts/EditContactActivity$2;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$2;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 12
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 403
    new-instance v0, Ljava/util/Date;

    const/16 v4, 0x76c

    sub-int v4, p2, v4

    invoke-direct {v0, v4, p3, p4}, Ljava/util/Date;-><init>(III)V

    .line 404
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 406
    .local v2, time:J
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$2;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v5, p0, Lcom/android/contacts/EditContactActivity$2;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v5}, Lcom/android/contacts/EditContactActivity;->access$100(Lcom/android/contacts/EditContactActivity;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "contact_methods"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/android/contacts/EditContactActivity$EditEntry;->newBirthdayEntry(Lcom/android/contacts/EditContactActivity;JLandroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 408
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$2;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v4, v4, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$2;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/contacts/EditContactActivity;->access$202(Lcom/android/contacts/EditContactActivity;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;

    .line 410
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$2;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v4}, Lcom/android/contacts/EditContactActivity;->access$000(Lcom/android/contacts/EditContactActivity;)V

    .line 413
    return-void
.end method
