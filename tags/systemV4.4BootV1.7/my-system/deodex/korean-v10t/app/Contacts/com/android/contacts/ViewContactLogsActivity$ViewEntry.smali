.class final Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
.super Lcom/android/contacts/LogEntryAdapter$Entry;
.source "ViewContactLogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactLogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public callDuration:J

.field public hasAttachment:Z

.field public intent:Landroid/content/Intent;

.field public read:Z

.field public typeIcon:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/android/contacts/LogEntryAdapter$Entry;-><init>()V

    .line 903
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 904
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->callDuration:J

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->hasAttachment:Z

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    return-void
.end method
