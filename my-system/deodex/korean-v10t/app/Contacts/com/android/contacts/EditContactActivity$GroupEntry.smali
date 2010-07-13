.class Lcom/android/contacts/EditContactActivity$GroupEntry;
.super Ljava/lang/Object;
.source "EditContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupEntry"
.end annotation


# instance fields
.field check:Z

.field confirm:Z

.field groupDispName:Ljava/lang/String;

.field groupId:J

.field groupName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/EditContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/EditContactActivity;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4119
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$GroupEntry;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    .line 4123
    iput-boolean v2, p0, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 4124
    iput-boolean v2, p0, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4119
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity$GroupEntry;-><init>(Lcom/android/contacts/EditContactActivity;)V

    return-void
.end method
