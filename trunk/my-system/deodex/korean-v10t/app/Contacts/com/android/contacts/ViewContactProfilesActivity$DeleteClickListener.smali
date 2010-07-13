.class Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;
.super Ljava/lang/Object;
.source "ViewContactProfilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field private mAccountId:J

.field private mPosition:I

.field final synthetic this$0:Lcom/android/contacts/ViewContactProfilesActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ViewContactProfilesActivity;JI)V
    .registers 5
    .parameter
    .parameter "_id"
    .parameter "position"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide p2, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->mAccountId:J

    .line 149
    iput p4, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->mPosition:I

    .line 150
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-wide v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->mAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_52

    .line 154
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-static {v1}, Lcom/android/contacts/ViewContactProfilesActivity;->access$000(Lcom/android/contacts/ViewContactProfilesActivity;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sns_ids/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-virtual {v1}, Lcom/android/contacts/ViewContactProfilesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-static {v1}, Lcom/android/contacts/ViewContactProfilesActivity;->access$100(Lcom/android/contacts/ViewContactProfilesActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-static {v1}, Lcom/android/contacts/ViewContactProfilesActivity;->access$200(Lcom/android/contacts/ViewContactProfilesActivity;)Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    const v2, 0x7f06011b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    .end local v0           #uri:Landroid/net/Uri;
    :cond_52
    return-void
.end method
