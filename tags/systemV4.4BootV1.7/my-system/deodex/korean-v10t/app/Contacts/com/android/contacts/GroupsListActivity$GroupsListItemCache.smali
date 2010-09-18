.class final Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;
.super Ljava/lang/Object;
.source "GroupsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupsListItemCache"
.end annotation


# instance fields
.field public choiceView:Landroid/widget/CheckedTextView;

.field public groupMemberView:Landroid/widget/TextView;

.field public nameView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
