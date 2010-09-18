.class final Lcom/android/contacts/GroupsListActivity$ViewEntry;
.super Lcom/android/contacts/GroupEntryAdapter$Entry;
.source "GroupsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public hasPhoto:Z

.field public numMembersCursor:Landroid/database/Cursor;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1167
    invoke-direct {p0}, Lcom/android/contacts/GroupEntryAdapter$Entry;-><init>()V

    .line 1168
    iput-object v1, p0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->hasPhoto:Z

    .line 1170
    iput-object v1, p0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    return-void
.end method
